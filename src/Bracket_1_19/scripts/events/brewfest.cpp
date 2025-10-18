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
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"

#include "ProgressionSystem.h"

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
                    if (player->GetLevel() < 55 && sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_1_19", false))
                        _canTeleport = false;
                    else if (player->GetLevel() < 65 && sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_70_1_1", false))
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
            spellInfo->Effects[EFFECT_1].BasePoints = 1000;
        }
    }
};

void AddSC_event_brewfest_1_19()
{
    new npc_brewfest_dungeonmaster();
    new global_brewfest_tuning_script();
}
