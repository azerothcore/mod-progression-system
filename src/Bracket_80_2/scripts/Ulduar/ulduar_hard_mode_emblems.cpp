/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "AreaDefines.h"
#include "LootMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SharedDefines.h"

enum UlduarEmblems
{
    ITEM_EMBLEM_OF_VALOR    = 40753,
    ITEM_EMBLEM_OF_CONQUEST = 45624,
    LOOT_MODE_HARD_MODES    = LOOT_MODE_HARD_MODE_1 | LOOT_MODE_HARD_MODE_2 | LOOT_MODE_HARD_MODE_3 | LOOT_MODE_HARD_MODE_4
};

// Patch 3.1: Ulduar 10 hard modes drop Emblem of Conquest in place of Emblem of
// Valor. Flame Leviathan, XT-002, General Vezax and Yogg-Saron keep the default
// loot mode active next to their hard-mode bits, so their Valor rows cannot be
// excluded through loot modes alone. Swap the generated items instead.
class ulduar_hard_mode_emblems : public MiscScript
{
public:
    ulduar_hard_mode_emblems() : MiscScript("ulduar_hard_mode_emblems", { MISCHOOK_ON_AFTER_LOOT_TEMPLATE_PROCESS }) { }

    void OnAfterLootTemplateProcess(Loot* loot, LootTemplate const* /*tab*/, LootStore const& store, Player* lootOwner, bool /*personal*/, bool /*noEmptyError*/, uint16 lootMode) override
    {
        if (!(lootMode & LOOT_MODE_HARD_MODES) || &store != &LootTemplates_Creature)
            return;

        if (!lootOwner || lootOwner->GetMapId() != MAP_ULDUAR)
            return;

        for (LootItem& item : loot->items)
            if (item.itemid == ITEM_EMBLEM_OF_VALOR)
                item.itemid = ITEM_EMBLEM_OF_CONQUEST;
    }
};

void AddSC_ulduar_hard_mode_emblems_80_2()
{
    new ulduar_hard_mode_emblems();
}
