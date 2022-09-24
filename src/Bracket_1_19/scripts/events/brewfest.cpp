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

#include "Group.h"
#include "LFGMgr.h"
#include "PassiveAI.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "TaskScheduler.h"

#include "ProgressionSystem.h"

enum DirebrewSays
{
    SAY_INTRO                   = 0,
    SAY_INTRO1                  = 1,
    SAY_INTRO2                  = 2,
    SAY_INSULT                  = 3,
    SAY_ANTAGONIST_1            = 0,
    SAY_ANTAGONIST_2            = 1,
    SAY_ANTAGONIST_COMBAT       = 2
};

enum DirebrewActions
{
    ACTION_START_FIGHT          = -1,
    ACTION_ANTAGONIST_SAY_1     = -2,
    ACTION_ANTAGONIST_SAY_2     = -3,
    ACTION_ANTAGONIST_HOSTILE   = -4
};

enum DirebrewNpcs
{
    NPC_ILSA_DIREBREW           = 26764,
    NPC_URSULA_DIREBREW         = 26822,
    NPC_ANTAGONIST              = 23795
};

enum DirebrewSpells
{
    SPELL_MOLE_MACHINE_EMERGE           = 50313,
    SPELL_DIREBREW_DISARM_PRE_CAST      = 47407,
    SPELL_MOLE_MACHINE_TARGET_PICKER    = 47691,
    SPELL_MOLE_MACHINE_MINION_SUMMONER  = 47690,
    SPELL_DIREBREW_DISARM_GROW          = 47409,
    SPELL_DIREBREW_DISARM               = 47310,
    SPELL_CHUCK_MUG                     = 50276,
    SPELL_PORT_TO_COREN                 = 52850,
    SPELL_SEND_MUG_CONTROL_AURA         = 47369,
    SPELL_SEND_MUG_TARGET_PICKER        = 47370,
    SPELL_SEND_FIRST_MUG                = 47333,
    SPELL_SEND_SECOND_MUG               = 47339,
    SPELL_REQUEST_SECOND_MUG            = 47344,
    SPELL_HAS_DARK_BREWMAIDENS_BREW     = 47331,
    SPELL_BARRELED_CONTROL_AURA         = 50278,
    SPELL_BARRELED                      = 47442
};

enum DirebrewPhases
{
    PHASE_ALL = 1,
    PHASE_INTRO,
    PHASE_ONE,
    PHASE_TWO,
    PHASE_THREE
};

enum DirebrewEvents
{
    EVENT_INTRO_1 = 1,
    EVENT_INTRO_2,
    EVENT_INTRO_3,
    EVENT_DIREBREW_DISARM,
    EVENT_SUMMON_MOLE_MACHINE,
    EVENT_RESPAWN_ILSA,
    EVENT_RESPAWN_URSULA
};

enum DirebrewMisc
{
    GOSSIP_ID                           = 11388,
    GO_MOLE_MACHINE_TRAP                = 188509,
    GOSSIP_OPTION_FIGHT                 = 0,
    GOSSIP_OPTION_APOLOGIZE             = 1,
    DATA_TARGET_GUID                    = 1,
    MAX_ANTAGONISTS                     = 3,
    DATA_COREN                          = 33,
    GO_MACHINE_SUMMONER                 = 188508
};

Position const AntagonistPos[3] =
{
    { 895.3782f, -132.1722f, -49.66423f, 2.6529f   },
    { 893.9837f, -133.2879f, -49.66541f, 2.583087f },
    { 896.2667f, -130.483f,  -49.66249f, 2.600541f }
};

class npc_coren_direbrew_1_19 : CreatureScript
{
public:
    npc_coren_direbrew_1_19() : CreatureScript("npc_coren_direbrew") { }

    struct npc_coren_direbrewAI_1_19 : public ScriptedAI
    {
        npc_coren_direbrewAI_1_19(Creature* creature) : ScriptedAI(creature), _summons(me) {}

        void sGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
        {
            if (menuId != GOSSIP_ID)
            {
                return;
            }

            if (gossipListId == GOSSIP_OPTION_FIGHT)
            {
                Talk(SAY_INSULT, player);
                DoAction(ACTION_START_FIGHT);
            }
            else if (gossipListId == GOSSIP_OPTION_APOLOGIZE)
            {
                CloseGossipMenuFor(player);
            }
        }

        void Reset() override
        {
            _events.Reset();
            _summons.DespawnAll();
            me->SetImmuneToPC(true);
            me->SetFaction(FACTION_FRIENDLY);
            _events.SetPhase(PHASE_ALL);

            for (uint8 i = 0; i < MAX_ANTAGONISTS; ++i)
            {
                me->SummonCreature(NPC_ANTAGONIST, AntagonistPos[i], TEMPSUMMON_DEAD_DESPAWN);
            }

            std::list<GameObject*> machines;
            GetGameObjectListWithEntryInGrid(machines, me, GO_MACHINE_SUMMONER, 60.f);
            for (GameObject* go : machines)
            {
                go->Delete();
            }
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!_events.IsInPhase(PHASE_ALL) || who->GetTypeId() != TYPEID_PLAYER)
            {
                return;
            }

            _events.SetPhase(PHASE_INTRO);
            _events.ScheduleEvent(EVENT_INTRO_1, 6 * IN_MILLISECONDS, 0, PHASE_INTRO);
            Talk(SAY_INTRO);
        }

        void JustSummoned(Creature* creature) override
        {
            _summons.Summon(creature);
        }

        void DoAction(int32 action) override
        {
            if (action == ACTION_START_FIGHT)
            {
                _events.SetPhase(PHASE_ONE);
                me->SetImmuneToPC(false);
                me->SetFaction(FACTION_GOBLIN_DARK_IRON_BAR_PATRON);
                DoZoneInCombat();

                EntryCheckPredicate pred(NPC_ANTAGONIST);
                _summons.DoAction(ACTION_ANTAGONIST_HOSTILE, pred);

                _events.ScheduleEvent(EVENT_SUMMON_MOLE_MACHINE, 15 * IN_MILLISECONDS);
                _events.ScheduleEvent(EVENT_DIREBREW_DISARM, 20 * IN_MILLISECONDS);
            }
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellSchoolMask /*damageSchoolMask*/) override
        {
            if (me->HealthBelowPctDamaged(66, damage) && _events.IsInPhase(PHASE_ONE))
            {
                _events.SetPhase(PHASE_TWO);
                SummonSister(NPC_ILSA_DIREBREW);
            }
            else if (me->HealthBelowPctDamaged(33, damage) && _events.IsInPhase(PHASE_TWO))
            {
                _events.SetPhase(PHASE_THREE);
                SummonSister(NPC_URSULA_DIREBREW);
            }
        }

        void SummonedCreatureDies(Creature* summon, Unit* /*killer*/) override
        {
            if (summon->GetEntry() == NPC_ILSA_DIREBREW)
            {
                _events.ScheduleEvent(EVENT_RESPAWN_ILSA, 1 * IN_MILLISECONDS);
            }
            else if (summon->GetEntry() == NPC_URSULA_DIREBREW)
            {
                _events.ScheduleEvent(EVENT_RESPAWN_URSULA, 1 * IN_MILLISECONDS);
            }
        }

        void JustDied(Unit* /*killer*/) override
        {
            _events.Reset();
            _summons.DespawnAll();

            Map::PlayerList const& players = me->GetMap()->GetPlayers();
            if (!players.IsEmpty())
            {
                if (Group* group = players.begin()->GetSource()->GetGroup())
                {
                    if (group->isLFGGroup())
                    {
                        sLFGMgr->FinishDungeon(group->GetGUID(), 287, me->GetMap());
                    }
                }
            }

            me->GetMap()->DoForAllPlayers([&](Player* player)
            {
                if (Quest const* quest = sObjectMgr->GetQuestTemplate(25483))
                {
                    // if we can take the quest, means that we haven't done this kind of "run"
                    if (player->CanRewardQuest(quest, false))
                    {
                        player->RewardQuest(quest, 0, nullptr, false, true);
                    }
                }
            });
        }

        void SummonSister(uint32 entry)
        {
            if (Creature* sister = me->SummonCreature(entry, me->GetPosition(), TEMPSUMMON_DEAD_DESPAWN))
            {
                DoZoneInCombat(sister);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim() && !_events.IsInPhase(PHASE_INTRO))
            {
                return;
            }

            _events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
            {
                return;
            }

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_INTRO_1:
                    Talk(SAY_INTRO1);
                    _events.ScheduleEvent(EVENT_INTRO_2, 4 * IN_MILLISECONDS, 0, PHASE_INTRO);
                    break;
                case EVENT_INTRO_2:
                {
                    EntryCheckPredicate pred(NPC_ANTAGONIST);
                    _summons.DoAction(ACTION_ANTAGONIST_SAY_1, pred);
                    _events.ScheduleEvent(EVENT_INTRO_3, 3 * IN_MILLISECONDS, 0, PHASE_INTRO);
                    break;
                }
                case EVENT_INTRO_3:
                {
                    Talk(SAY_INTRO2);
                    EntryCheckPredicate pred(NPC_ANTAGONIST);
                    _summons.DoAction(ACTION_ANTAGONIST_SAY_2, pred);
                    break;
                }
                case EVENT_RESPAWN_ILSA:
                    SummonSister(NPC_ILSA_DIREBREW);
                    break;
                case EVENT_RESPAWN_URSULA:
                    SummonSister(NPC_URSULA_DIREBREW);
                    break;
                case EVENT_SUMMON_MOLE_MACHINE:
                {
                    me->CastCustomSpell(SPELL_MOLE_MACHINE_TARGET_PICKER, SPELLVALUE_MAX_TARGETS, 1, nullptr, true);
                    _events.RepeatEvent(15 * IN_MILLISECONDS);
                    break;
                }
                case EVENT_DIREBREW_DISARM:
                    DoCastSelf(SPELL_DIREBREW_DISARM_PRE_CAST, true);
                    _events.RepeatEvent(20 * IN_MILLISECONDS);
                    break;
                default:
                    break;
                }

                if (me->HasUnitState(UNIT_STATE_CASTING))
                {
                    return;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        SummonList _summons;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_coren_direbrewAI_1_19(creature);
    }
};

class npc_brewfest_dungeonmaster : public CreatureScript
{
public:
    npc_brewfest_dungeonmaster() : CreatureScript("npc_brewfest_dungeonmaster") { }

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
                            groupMember->TeleportTo(WorldLocation(230, 908.184814f, -160.890640f, -49.760090f, 2.042036f));
                        }
                    }

                    if (_canTeleport)
                        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Send us to the Grim Guzzler.", GOSSIP_SENDER_MAIN, 100);
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
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Send us to the Grim Guzzler.", GOSSIP_SENDER_MAIN, 100);
        }

        SendGossipMenuFor(player, player->GetGossipTextId(creature), creature);
        return true;
    }
};

class global_brewfest_tuning_script : public GlobalScript
{
public:
    global_brewfest_tuning_script() : GlobalScript("global_brewfest_tuning_script") { }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        if (spellInfo->Id == 50313)
        {
            spellInfo->Effects[EFFECT_1].BasePoints = 2000;
        }
    }
};

void AddSC_event_brewfest_1_19()
{
    new npc_coren_direbrew_1_19();
    new npc_brewfest_dungeonmaster();
    new global_brewfest_tuning_script();
}
