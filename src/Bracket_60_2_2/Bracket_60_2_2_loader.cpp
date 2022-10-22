/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_boss_chromaggus_60_2_A();

void AddBracket_60_2_A_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_60_2_2", false)))
        return;

    // Time Lapse: This ability used to permanently reduce threat, but does not do so as of patch 2.0.1
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_70_4", false)))
    {
        AddSC_boss_chromaggus_60_2_A();
    }
}
