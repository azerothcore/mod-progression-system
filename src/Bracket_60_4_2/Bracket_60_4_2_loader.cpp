/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_naxx_entry_flag_60_4_B();
void AddSC_omarion_60_4_B();

void AddBracket_60_4_B_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_60_4_2", false)))
        return;
    AddSC_naxx_entry_flag_60_4_B();
    AddSC_omarion_60_4_B();
}
