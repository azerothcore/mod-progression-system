#include "Player.h"
#include "MapMgr.h"
#include "ScriptMgr.h"

#include "ProgressionSystem.h"


class NaxxEntryFlag_AllMapScript : public AllMapScript
{
    public:
    NaxxEntryFlag_AllMapScript()
        : AllMapScript("NaxxEntryFlag_AllMapScript")
        {
        }

        void OnPlayerEnterAll(Map* map, Player* player)
        {
            if (player->IsGameMaster())
                return;

            // Check if mapId equals to Naxxramas (mapId: 533)
            if (map->GetId() != 533)
                return;

            // Cast on player Naxxramas Entry Flag Trigger DND - Classic (spellID: 29296)
            player->CastSpell(player, 29296, true);

        }
};

void AddSC_naxx_entry_flag_60_3_C()
{
    new NaxxEntryFlag_AllMapScript();
}
