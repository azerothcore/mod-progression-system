/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_boss_chromaggus_60_2_A();

void AddBracket_60_2_A_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER_2_A))
        return;

    // Time Lapse: This ability used to permanently reduce threat, but does not do so as of patch 2.0.1
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_70_TIER_4))
    {
        AddSC_boss_chromaggus_60_2_A();
    }
}
