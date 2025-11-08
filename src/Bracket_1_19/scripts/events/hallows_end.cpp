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

#include "AreaDefines.h"
#include "Player.h"
#include "ScriptMgr.h"

#include "ProgressionSystem.h"

enum Misc
{
    QUEST_HEADLESS_HORSEMAN = 50000,

    EVENT_LITA              = 8,
    EVENT_HALLOWS_END       = 12,
    EVENT_BREWFEST          = 24,

    NPC_COREN_DIREBREW      = 23872,
    NPC_HEADLESS_HORSEMAN   = 23682,
    NPC_APOTHECARY_HUMMEL   = 36296
};

class mod_progression_eventquest_playerscript : public PlayerScript
{
public:
    mod_progression_eventquest_playerscript() : PlayerScript("mod_progression_eventquest_playerscript") { }

    void OnPlayerMapChanged(Player* player) override
    {
        if (player->GetMap()->GetId() == MAP_SCARLET_MONASTERY && sGameEventMgr->IsActiveEvent(EVENT_HALLOWS_END))
            if (Quest const* quest = sObjectMgr->GetQuestTemplate(QUEST_HEADLESS_HORSEMAN))
                if (player->CanTakeQuest(quest, false))
                    player->AddQuestAndCheckCompletion(quest, nullptr);
    }
};

class unit_custom_event_rewarder_script : public UnitScript
{
public:
    unit_custom_event_rewarder_script() : UnitScript("unit_custom_event_rewarder_script") { }

    void OnUnitDeath(Unit* me, Unit* killer) override
    {
        if (!me->EntryEquals(NPC_COREN_DIREBREW, NPC_HEADLESS_HORSEMAN, NPC_APOTHECARY_HUMMEL))
            return;

        if (!killer || !killer->GetMap() || !killer->GetMap()->IsDungeon())
            return;

        switch (killer->GetMapId())
        {
            case MAP_SCARLET_MONASTERY:

                if (!sGameEventMgr->IsActiveEvent(EVENT_HALLOWS_END))
                    return;

                killer->GetMap()->DoForAllPlayers([&](Player* player)
                {
                    if (player->HasQuest(QUEST_HEADLESS_HORSEMAN))
                    {
                        player->CompleteQuest(QUEST_HEADLESS_HORSEMAN);

                        if (Quest const* quest = sObjectMgr->GetQuestTemplate(QUEST_HEADLESS_HORSEMAN))
                            player->RewardQuest(quest, 0, nullptr, true, true);
                    }
                });
                break;
            case MAP_SHADOWFANG_KEEP:

                if (!sGameEventMgr->IsActiveEvent(EVENT_LITA))
                    return;

                me->GetMap()->DoForAllPlayers([&](Player* player)
                {
                    if (Quest const* quest = sObjectMgr->GetQuestTemplate(25485))
                        if (player->CanRewardQuest(quest, false))
                            player->RewardQuest(quest, 0, nullptr, false, true);
                });
                break;
            case MAP_BLACKROCK_DEPTHS:

                if (!sGameEventMgr->IsActiveEvent(EVENT_BREWFEST))
                    return;

                me->GetMap()->DoForAllPlayers([&](Player* player)
                {
                    if (Quest const* quest = sObjectMgr->GetQuestTemplate(25483))
                        if (player->CanRewardQuest(quest, false))
                            player->RewardQuest(quest, 0, nullptr, false, true);
                });
                break;
            default:
                break;
        }
    }
};

void AddSC_event_hallows_end_1_19()
{
    new mod_progression_eventquest_playerscript();
    new unit_custom_event_rewarder_script();
}
