/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Config.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellInfo.h"

enum SSCMisc
{
    GO_LADY_VASHJ_BRIDGE_CONSOLE = 184568,
    MAP_SSC                      = 548,
    DATA_VASHJ                   = 6
};



class GlobalSerpentshrineScript : public GlobalScript
{
public:
    GlobalSerpentshrineScript() : GlobalScript("GlobalSerpentshrineScript") { }

    void AfterInstanceGameObjectCreate(Map* /*map*/, GameObject* go) override
    {
        if (sConfigMgr->GetOption<int>("ProgressionSystem.70.SerpentshrineCavern.RequireAllBosses", 1))
        {
            if (go->GetEntry() == GO_LADY_VASHJ_BRIDGE_CONSOLE)
            {
                go->SetGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
            }
        }
    }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        switch (spellInfo->Id)
        {
            case 38236: // Caribdis - Spawn Spitfire Totem
                spellInfo->Effects[EFFECT_0].BasePoints = 60000;
                break;
        }
    }

    void OnBeforeSetBossState(uint32 bossId, EncounterState newState, EncounterState /*oldState*/, Map* map) override
    {
        if (sConfigMgr->GetOption<int>("ProgressionSystem.70.SerpentshrineCavern.RequireAllBosses", 1))
        {
            if (map->GetEntry()->MapID == MAP_SSC)
            {
                if (InstanceMap* instanceMap = map->ToInstanceMap())
                {
                    if (InstanceScript* instance = instanceMap->GetInstanceScript())
                    {
                        uint32 bossCount = instance->GetEncounterCount() - 3;
                        bool hasIncompleteBosses = false;
                        for (uint8 id = 0; id <= bossCount; ++id)
                        {
                            if (id == bossId && newState == DONE)
                            {
                                continue;
                            }

                            if (instance->GetBossState(id) != DONE)
                            {
                                hasIncompleteBosses = true;
                            }
                        }

                        if (!hasIncompleteBosses)
                        {
                            if (Creature* vashj = instance->GetCreature(DATA_VASHJ))
                            {
                                if (GameObject* console = vashj->FindNearestGameObject(GO_LADY_VASHJ_BRIDGE_CONSOLE, 600.0f))
                                {
                                    console->RemoveGameObjectFlag(GO_FLAG_NOT_SELECTABLE);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
};

void AddSC_serpentshrine_cavern_70()
{
    new GlobalSerpentshrineScript();
}
