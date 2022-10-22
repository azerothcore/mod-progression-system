/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_instance_blackrock_spire_50_59_B();
void AddSC_boss_drakkisath_50_59_B();

void AddBracket_50_59_B_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_50_59_2", false)))
        return;

    // Patch 3.0.8 (2009-01-20): No longer requires the Seal of Ascension to enter.
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_80_8", false)))
    {
        AddSC_instance_blackrock_spire_50_59_B();
        AddSC_boss_drakkisath_50_59_B();
    }
}
