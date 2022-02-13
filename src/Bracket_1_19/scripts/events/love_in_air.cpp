/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Cell.h"
#include "CellImpl.h"
#include "GossipDef.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "Group.h"
#include "LFGMgr.h"
#include "PassiveAI.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "TaskScheduler.h"

#include "ProgressionSystem.h"

enum ApothecarySpells
{
    SPELL_ALLURING_PERFUME = 68589,
    SPELL_PERFUME_SPRAY = 68607,
    SPELL_CHAIN_REACTION = 68821,
    SPELL_SUMMON_TABLE = 69218,
    SPELL_PERMANENT_FEIGN_DEATH = 29266,
    SPELL_QUIET_SUICIDE = 3617,
    SPELL_COLOGNE_SPRAY = 68948,
    SPELL_VALIDATE_AREA = 68644,
    SPELL_THROW_COLOGNE = 68841,
    SPELL_BUNNY_LOCKDOWN = 69039,
    SPELL_THROW_PERFUME = 68799,
    SPELL_PERFUME_SPILL = 68798,
    SPELL_COLOGNE_SPILL = 68614,
    SPELL_PERFUME_SPILL_DAMAGE = 68927,
    SPELL_COLOGNE_SPILL_DAMAGE = 68934
};

enum ApothecarySays
{
    SAY_INTRO_0 = 0,
    SAY_INTRO_1 = 1,
    SAY_INTRO_2 = 2,
    SAY_CALL_BAXTER = 3,
    SAY_CALL_FRYE = 4,
    SAY_HUMMEL_DEATH = 5,
    SAY_SUMMON_ADDS = 6,
    SAY_BAXTER_DEATH = 0,
    SAY_FRYE_DEATH = 0
};

enum ApothecaryMisc
{
    ACTION_START_EVENT = 1,
    ACTION_START_FIGHT = 2,
    GOSSIP_OPTION_START = 0,
    GOSSIP_MENU_HUMMEL = 10847,
    QUEST_YOUVE_BEEN_SERVED = 14488,
    NPC_APOTHECARY_FRYE = 36272,
    NPC_APOTHECARY_BAXTER = 36565,
    NPC_VIAL_BUNNY = 36530,
    NPC_CROWN_APOTHECARY = 36885,
    PHASE_ALL = 0,
    PHASE_INTRO = 1
};

// keep this aligned with shadowfang_keep.h
enum Misc
{
    DATA_APOTHECARY_HUMMEL = 4,
    DATA_SPAWN_VALENTINE_ADDS = 5
};

Position const BaxterMovePos = { -221.4115f, 2206.825f, 79.93151f, 0.0f };
Position const FryeMovePos = { -196.2483f, 2197.224f, 79.9315f, 0.0f };

class boss_apothecary_hummel_1_19 : public CreatureScript
{
public:
    boss_apothecary_hummel_1_19() : CreatureScript("boss_apothecary_hummel") { }

    struct boss_apothecary_hummelAI_1_19 : public BossAI
    {
        boss_apothecary_hummelAI_1_19(Creature* creature) : BossAI(creature, DATA_APOTHECARY_HUMMEL), _deadCount(0), _isDead(false)
        {
            _scheduler.SetValidator([this]
                {
                    return !me->HasUnitState(UNIT_STATE_CASTING);
                });
        }

        void sGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
        {
            if (menuId == GOSSIP_MENU_HUMMEL && gossipListId == GOSSIP_OPTION_START)
            {
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                CloseGossipMenuFor(player);
                DoAction(ACTION_START_EVENT);
            }
        }

        void Reset() override
        {
            _Reset();
            _deadCount = 0;
            _isDead = false;
            _phase = PHASE_ALL;
            me->SetFaction(FACTION_FRIENDLY);
            me->SummonCreatureGroup(1);
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
        }

        void EnterEvadeMode() override
        {
            summons.DespawnAll();
            _EnterEvadeMode();
        }

        void DoAction(int32 action) override
        {
            if (action == ACTION_START_EVENT && events.IsInPhase(PHASE_ALL))
            {
                events.SetPhase(PHASE_INTRO);
                _phase = PHASE_INTRO;
                _scheduler.Schedule(1ms, [this](TaskContext /*context*/)
                    {
                        Talk(SAY_INTRO_0);
                    })
                    .Schedule(4s, [this](TaskContext /*context*/)
                        {
                            Talk(SAY_INTRO_1);
                        })
                        .Schedule(8s, [this](TaskContext /*context*/)
                            {
                                Talk(SAY_INTRO_2);
                            })
                            .Schedule(12s, [this](TaskContext context)
                            {
                                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
                                DoZoneInCombat();

                                context.Schedule(6s, [this](TaskContext /*context*/) // Call Baxter
                                {
                                    Talk(SAY_CALL_BAXTER);
                                    EntryCheckPredicate pred(NPC_APOTHECARY_BAXTER);
                                    summons.DoAction(ACTION_START_FIGHT, pred);
                                    summons.DoZoneInCombat(NPC_APOTHECARY_BAXTER);
                                })
                                .Schedule(14s, [this](TaskContext /*context*/) // Call Frye
                                {
                                    Talk(SAY_CALL_FRYE);
                                    EntryCheckPredicate pred(NPC_APOTHECARY_FRYE);
                                    summons.DoAction(ACTION_START_FIGHT, pred);
                                })
                                .Schedule(3640ms, [this](TaskContext context) // Perfume spray
                                {
                                    DoCastVictim(SPELL_PERFUME_SPRAY);
                                    context.Repeat(3640ms);
                                })
                                .Schedule(15s, [this](TaskContext context) // Chain Reaction
                                {
                                    DoCastVictim(SPELL_SUMMON_TABLE, true);
                                    DoCastAOE(SPELL_CHAIN_REACTION);
                                    context.Repeat(25s);
                                })
                                .Schedule(15s, [this](TaskContext /*context*/) // Call Crazed Apothecary (text)
                                {
                                    Talk(SAY_SUMMON_ADDS);
                                })
                                .Schedule(15s, [this](TaskContext context) // Call Crazed Apothecary
                                {
                                    instance->SetData(DATA_SPAWN_VALENTINE_ADDS, 0);
                                    context.Repeat(4s, 6s);
                                });

                                std::list<Creature*> trashs;
                                me->GetCreatureListWithEntryInGrid(trashs, NPC_CROWN_APOTHECARY, 100.f);
                                for (Creature* crea : trashs)
                                {
                                    crea->DespawnOrUnsummon();
                                }
                            });

                            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                            me->SetFaction(FACTION_MONSTER);
                            summons.DoAction(ACTION_START_EVENT);
            }
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType, SpellSchoolMask) override
        {
            if (damage >= me->GetHealth())
            {
                if (_deadCount < 2)
                {
                    damage = me->GetHealth() - 1;
                    if (!_isDead)
                    {
                        _isDead = true;
                        me->RemoveAurasDueToSpell(SPELL_ALLURING_PERFUME);
                        DoCastSelf(SPELL_PERMANENT_FEIGN_DEATH, true);
                        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                        Talk(SAY_HUMMEL_DEATH);
                    }
                }
            }
        }

        void SummonedCreatureDies(Creature* summon, Unit* /*killer*/) override
        {
            if (summon->GetEntry() == NPC_APOTHECARY_FRYE || summon->GetEntry() == NPC_APOTHECARY_BAXTER)
            {
                _deadCount++;
            }

            if (me->HasAura(SPELL_PERMANENT_FEIGN_DEATH) && _deadCount == 2)
            {
                DoCastSelf(SPELL_QUIET_SUICIDE, true);
            }
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (!_isDead)
            {
                Talk(SAY_HUMMEL_DEATH);
            }

            _scheduler.CancelAll();
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            instance->SetBossState(DATA_APOTHECARY_HUMMEL, DONE);

            Map::PlayerList const& players = me->GetMap()->GetPlayers();
            if (!players.IsEmpty())
            {
                if (Group* group = players.begin()->GetSource()->GetGroup())
                {
                    if (group->isLFGGroup())
                    {
                        sLFGMgr->FinishDungeon(group->GetGUID(), 288, me->GetMap());
                    }
                }
            }

            for (auto itr = players.begin(); itr != players.end(); ++itr)
            {
                Quest const* quest = sObjectMgr->GetQuestTemplate(25485);
                if (!quest)
                    continue;

                if (Player* player = itr->GetSource())
                {
                    // if we can take the quest, means that we haven't done this kind of "run"
                    if (player->CanRewardQuest(quest, false))
                        player->RewardQuest(quest, 0, nullptr, false, true);
                    else
                    {
                        // We don't reward them anything on the second run of the day.
                    }
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim() && _phase != PHASE_INTRO)
            {
                return;
            }

            _scheduler.Update(diff, [this]
                {
                    DoMeleeAttackIfReady();
                });
        }

    private:
        uint8 _deadCount;
        bool _isDead;
        TaskScheduler _scheduler;
        uint8 _phase;
    };

    bool OnQuestReward(Player* /*player*/, Creature* creature, const Quest* quest, uint32 /*slot*/) override
    {
        if (quest->GetQuestId() == QUEST_YOUVE_BEEN_SERVED)
        {
            if (creature && creature->AI())
            {
                creature->AI()->DoAction(ACTION_START_EVENT);
            }
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new boss_apothecary_hummelAI_1_19(creature);
    }
};

class npc_lita_dungeonmaster : public CreatureScript
{
public:
    npc_lita_dungeonmaster() : CreatureScript("npc_lita_dungeonmaster") { }

    bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 action) override
    {
        if (action == 100)
        {
            bool _canTeleport = true;

            if (Group* group = player->GetGroup())
            {
                if (group->GetLeaderGUID() == player->GetGUID())
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        if (Player* groupMember = itr->GetSource())
                        {
                            groupMember->TeleportTo(WorldLocation(33, -220.035690f, 2145.058105f, 90.624962f, 2.792244f));
                        }
                    }

                    if (_canTeleport)
                        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Send us to Shadowfang Keep.", GOSSIP_SENDER_MAIN, 100);
                }
            }

            CloseGossipMenuFor(player);
        }

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        bool _canTeleport = true;

        if (Group* group = player->GetGroup())
        {
            for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
            {
                if (Player* player = itr->GetSource())
                {
                    if (player->getLevel() < 55)
                        _canTeleport = false;
                }
            }

            if (_canTeleport)
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Send us to Shadowfang Keep.", GOSSIP_SENDER_MAIN, 100);
        }

        SendGossipMenuFor(player, 15857, creature);
        return true;
    }
};

class npc_lita_investigator : public CreatureScript
{
public:
    npc_lita_investigator() : CreatureScript("npc_lita_investigator") { }

    bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 action) override
    {
        if (action == 100)
        {
            if (player->GetTeamId() == TEAM_ALLIANCE)
                player->TeleportTo(WorldLocation(0, -8840.988281f, 651.726135f, 96.999428f, 0.473160f));
            else
                player->TeleportTo(WorldLocation(1, 1660.330933f, -4425.020020f, 17.528446f, 5.051634f));

            CloseGossipMenuFor(player);
        }

        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->getLevel() >= 55)
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Send me back to my capital city.", GOSSIP_SENDER_MAIN, 100);

        SendGossipMenuFor(player, 15310, creature);
        return true;
    }
};

class global_love_in_air_tuning_script : public GlobalScript
{
public:
    global_love_in_air_tuning_script() : GlobalScript("global_love_in_air_tuning_script") { }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        switch (spellInfo->Id)
        {
            // Love's in the air
            case 68641: // Alluring Perfume
            case 68947: // Irresistible Collogne
                spellInfo->Effects[EFFECT_0].BasePoints = 800;
                break;
            case 68607: // Alluring Perfume Spray
            case 68948: // Irresistible Collogne Spray
                spellInfo->Effects[EFFECT_0].BasePoints = 2000;
                spellInfo->Effects[EFFECT_1].BasePoints = 500;
                break;
            case 68821: // Chain Reaction
                spellInfo->Effects[EFFECT_0].BasePoints = 2000;
                break;
            case 68957: // Unstable Reaction
                spellInfo->Effects[EFFECT_2].BasePoints = 1000;
                break;
        }
    }
};

void AddSC_event_love_in_the_air_1_19()
{
    new boss_apothecary_hummel_1_19();
    new npc_lita_dungeonmaster();
    new npc_lita_investigator();
    new global_love_in_air_tuning_script();
}
