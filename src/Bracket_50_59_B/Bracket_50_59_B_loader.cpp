/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_instance_blackrock_spire_50_59_B();

void AddBracket_50_59_B_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_50_59_TIER_B))
        return;

    // Patch 3.0.8 (2009-01-20): No longer requires the Seal of Ascension to enter.
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_80_TIER_8))
    {
        AddSC_instance_blackrock_spire_50_59_B();
    }
}
