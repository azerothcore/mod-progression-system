/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_auto_balance_60_3_D();
void AddSC_naxx_entry_flag_60_3_D();
void AddSC_omarion_60_3_D();

void AddBracket_60_4_D_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER_3_D_NAXXRAMAS))
        return;
    AddSC_auto_balance_60_3_D();
    AddSC_naxx_entry_flag_60_3_D();
    AddSC_omarion_60_3_D();
}
