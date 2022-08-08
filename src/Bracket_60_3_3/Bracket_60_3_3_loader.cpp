/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_auto_balance_60_3_C();
void AddSC_naxx_entry_flag_60_3_C();

void AddBracket_60_3_C_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER3_C_NAXXRAMAS))
        return;
    AddSC_auto_balance_60_3_C();
    AddSC_naxx_entry_flag_60_3_C();
}
