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

#include "Player.h"
#include "ScriptMgr.h"

#include "ProgressionSystem.h"

enum Misc
{
    MAP_SCARLET_MONASTERY = 189,

    QUEST_HEADLESS_HORSEMAN = 50000,

    NPC_HEADLESS_HORSEMAN   = 23682
};

class mod_progression_eventquest_playerscript : public PlayerScript
{
public:
    mod_progression_eventquest_playerscript() : PlayerScript("mod_progression_eventquest_playerscript") { }

    void OnMapChanged(Player* player)
    {
        if (player->GetMap()->GetId() == MAP_SCARLET_MONASTERY && sGameEventMgr->IsActiveEvent(12))
        {
            if (Quest const* quest = sObjectMgr->GetQuestTemplate(QUEST_HEADLESS_HORSEMAN))
            {
                if (player->CanTakeQuest(quest, false))
                {
                    player->AddQuestAndCheckCompletion(quest, nullptr);
                }
            }
        }
    }
};

class unit_headless_horseman_script : public UnitScript
{
public:
    unit_headless_horseman_script() : UnitScript("unit_headless_horseman_script") { }

    void OnUnitDeath(Unit* me, Unit* killer) override
    {
        if (me->GetEntry() != NPC_HEADLESS_HORSEMAN)
        {
            return;
        }

        if (killer->GetMap() && killer->GetMap()->IsDungeon())
        {
            killer->GetMap()->DoForAllPlayers([&](Player* player)
            {
                player->CompleteQuest(QUEST_HEADLESS_HORSEMAN);

                if (Quest const* quest = sObjectMgr->GetQuestTemplate(QUEST_HEADLESS_HORSEMAN))
                {
                    player->RewardQuest(quest, 0, nullptr, true, true);
                }
            });
        }
    }
};

void AddSC_event_hallows_end_1_19()
{
    new mod_progression_eventquest_playerscript();
    new unit_headless_horseman_script();
}
