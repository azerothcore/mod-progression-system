/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_ulduar_hard_mode_emblems_80_2();

void AddBracket_80_2_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_80_2", false)))
        return;

    AddSC_ulduar_hard_mode_emblems_80_2();
}
