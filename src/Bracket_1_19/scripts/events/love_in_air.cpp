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

#include "ProgressionSystem.h"

///////////////////////////////////////
////// BOSS
///////////////////////////////////////

enum hummel
{
    QUEST_YOUVE_BEEN_SERVED         = 14488,
    NPC_APOTHECARY_HUMMEL           = 36296,
    NPC_APOTHECARY_FRYE             = 36272,
    NPC_APOTHECARY_BAXTER           = 36565,

    SPELL_COLOGNE_IMMUNE            = 68530,
    SPELL_COLOGNE_PASSIVE_DAMAGE    = 68947,
    SPELL_PERFUME_PASSIVE_DAMAGE    = 68641,

    SPELL_THROW_COLOGNE             = 68614,
    SPELL_THROW_PERFUME             = 68798,

    // Real fight
    SPELL_COLOGNE_SPRAY             = 68948,
    SPELL_ALLURING_PERFUME_SPRAY    = 68607,
    SPELL_CHAIN_REACTION            = 68821,

    ACTION_START_EVENT              = 1,
    ACTION_RELEASE_HELPER           = 2,

    EVENT_CALL_BAXTER               = 1,
    EVENT_CALL_FRYE                 = 2,
    EVENT_SPELL_PERFUME_SPRAY       = 3,
    EVENT_SPELL_CHAIN_REACTION      = 4,
    EVENT_SPELL_THROW               = 5,
};

enum HummelSay
{
    SAY_HUMMEL_0 = 0,
    SAY_HUMMEL_1 = 1,
    SAY_HUMMEL_2 = 2,
    SAY_HUMMEL_5 = 5
};

class npc_love_in_air_hummel_1_19 : public CreatureScript
{
public:
    npc_love_in_air_hummel_1_19() : CreatureScript("npc_love_in_air_hummel") { }

    struct npc_love_in_air_hummelAI_1_19 : public ScriptedAI
    {
        npc_love_in_air_hummelAI_1_19(Creature* creature) : ScriptedAI(creature), summons(me) { speachTimer = 0; }

        SummonList summons;
        EventMap events;
        uint32 speachTimer;

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }

            return player->getLevel() >= 55;
        }

        void Reset() override
        {
            speachTimer = 0;
            me->SetFaction(FACTION_FRIENDLY);
            summons.DespawnAll();
            events.Reset();
            me->SummonCreature(NPC_APOTHECARY_FRYE, -205.449f, 2219.56f, 79.7633f, 0.7f);
            me->SummonCreature(NPC_APOTHECARY_BAXTER, -209.602f, 2215.42f, 79.7633f, 0.723503f);
        }

        void DoAction(int32 param) override
        {
            if (param == ACTION_START_EVENT)
                speachTimer = 1;
        }

        void JustDied(Unit* /*killer*/) override
        {
            me->AI()->Talk(SAY_HUMMEL_5);
            Map::PlayerList const& players = me->GetMap()->GetPlayers();

            if (!players.IsEmpty() && players.begin()->GetSource() && players.begin()->GetSource()->GetGroup())
                sLFGMgr->FinishDungeon(players.begin()->GetSource()->GetGroup()->GetGUID(), lfg::LFG_DUNGEON_CROWN_CHEMICAL_CO, me->FindMap());

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

        void JustSummoned(Creature* cr) override
        {
            summons.Summon(cr);
            cr->SetFaction(FACTION_FRIENDLY);
            cr->SetControlled(true, UNIT_STATE_STUNNED);
            cr->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        }

        void UpdateAI(uint32 diff) override
        {
            if (speachTimer)
            {
                speachTimer += diff;
                if (speachTimer < 10000)
                {
                    me->AI()->Talk(SAY_HUMMEL_0);
                    speachTimer = 10000;
                }
                else if (speachTimer >= 16000 && speachTimer < 20000)
                {
                    me->AI()->Talk(SAY_HUMMEL_1);
                    speachTimer = 20000;
                }
                else if (speachTimer >= 26000 && speachTimer < 30000)
                {
                    me->AI()->Talk(SAY_HUMMEL_2);
                    speachTimer = 0;
                    me->SetFaction(FACTION_MONSTER_2);
                    me->SetInCombatWithZone();
                    if (Unit* target = SelectTargetFromPlayerList(40.0f))
                    {
                        AttackStart(target);
                        events.ScheduleEvent(EVENT_CALL_BAXTER, 10000);
                        events.ScheduleEvent(EVENT_CALL_FRYE, 20000);
                        events.ScheduleEvent(EVENT_SPELL_PERFUME_SPRAY, 7000);
                        events.ScheduleEvent(EVENT_SPELL_CHAIN_REACTION, 12000);
                    }
                    else
                        EnterEvadeMode();
                }
                return;
            }

            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
            case EVENT_CALL_BAXTER:
            {
                EntryCheckPredicate pred(NPC_APOTHECARY_BAXTER);
                summons.DoAction(ACTION_RELEASE_HELPER, pred);

                break;
            }
            case EVENT_CALL_FRYE:
            {
                EntryCheckPredicate pred(NPC_APOTHECARY_FRYE);
                summons.DoAction(ACTION_RELEASE_HELPER, pred);

                break;
            }
            case EVENT_SPELL_PERFUME_SPRAY:
                me->CastSpell(me->GetVictim(), SPELL_ALLURING_PERFUME_SPRAY, false);
                events.RepeatEvent(6000);
                break;
            case EVENT_SPELL_CHAIN_REACTION:
                me->CastSpell(me->GetVictim(), SPELL_CHAIN_REACTION, false);
                events.RepeatEvent(12000);
                break;
            }

            DoMeleeAttackIfReady();
        }
    };

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 /*action*/) override
    {
        creature->AI()->DoAction(ACTION_START_EVENT);
        CloseGossipMenuFor(player);
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_love_in_air_hummelAI_1_19(creature);
    };
};

enum HummelHelperSay
{
    SAY_HUMMEL_HELPER_SAY_5 = 5,
};

class npc_love_in_air_hummel_helper_1_19 : public CreatureScript
{
public:
    npc_love_in_air_hummel_helper_1_19() : CreatureScript("npc_love_in_air_hummel_helper") { }

    struct npc_love_in_air_hummel_helperAI_1_19 : public ScriptedAI
    {
        npc_love_in_air_hummel_helperAI_1_19(Creature* creature) : ScriptedAI(creature) { }

        EventMap events;

        bool CanBeSeen(Player const* player) override
        {
            if (player->IsGameMaster())
            {
                return true;
            }

            return player->getLevel() >= 55;
        }

        void DoAction(int32 param) override
        {
            if (param == ACTION_RELEASE_HELPER)
            {
                me->SetControlled(false, UNIT_STATE_STUNNED);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->SetFaction(FACTION_MONSTER_2);
                me->SetInCombatWithZone();
                if (Unit* target = SelectTargetFromPlayerList(40.0f))
                    AttackStart(target);

                if (me->GetEntry() == NPC_APOTHECARY_BAXTER)
                {
                    events.ScheduleEvent(EVENT_SPELL_PERFUME_SPRAY, 7000);
                    events.ScheduleEvent(EVENT_SPELL_CHAIN_REACTION, 12000);
                }
                else
                    events.ScheduleEvent(EVENT_SPELL_THROW, 5000);
            }
        }

        void JustDied(Unit* /*killer*/) override
        {
            me->AI()->Talk(SAY_HUMMEL_HELPER_SAY_5);
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
            case EVENT_SPELL_PERFUME_SPRAY:
                me->CastSpell(me->GetVictim(), SPELL_COLOGNE_SPRAY, false);
                events.RepeatEvent(6000);
                break;
            case EVENT_SPELL_CHAIN_REACTION:
                me->CastSpell(me->GetVictim(), SPELL_CHAIN_REACTION, false);
                events.RepeatEvent(12000);
                break;
            case EVENT_SPELL_THROW:
                if (Unit* target = SelectTarget(SelectTargetMethod::Random))
                {
                    Position pos(*me);
                    me->Relocate(target);
                    me->CastSpell(me, RAND(SPELL_THROW_COLOGNE, SPELL_THROW_PERFUME), true, nullptr, nullptr, me->GetGUID());
                    me->Relocate(pos);
                }
                events.RepeatEvent(10000);
                break;
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_love_in_air_hummel_helperAI_1_19(creature);
    };
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
    new npc_love_in_air_hummel_1_19();
    new npc_love_in_air_hummel_helper_1_19();
    new npc_lita_dungeonmaster();
    new npc_lita_investigator();
    new global_love_in_air_tuning_script();
}
