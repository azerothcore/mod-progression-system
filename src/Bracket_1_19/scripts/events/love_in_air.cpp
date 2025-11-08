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
                    if (player->GetLevel() < 55)
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

        if (player->GetLevel() >= 55)
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
            case 68934: // Cologne Spill
            case 68927: // Perfume Spill
                spellInfo->Effects[EFFECT_0].BasePoints = 400;
                break;
            case 68607: // Alluring Perfume Spray
            case 68948: // Irresistible Collogne Spray
                spellInfo->Effects[EFFECT_0].BasePoints = 1000;
                spellInfo->Effects[EFFECT_1].BasePoints = 500;
                break;
            case 68821: // Chain Reaction
                spellInfo->Effects[EFFECT_0].BasePoints = 1000;
                break;
            case 68957: // Unstable Reaction
                spellInfo->Effects[EFFECT_2].BasePoints = 100;
                break;
        }
    }
};

void AddSC_event_love_in_the_air_1_19()
{
    new npc_lita_dungeonmaster();
    new npc_lita_investigator();
    new global_love_in_air_tuning_script();
}
