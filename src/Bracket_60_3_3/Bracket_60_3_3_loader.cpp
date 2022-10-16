/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_temple_of_ahn_qiraj_tuning();

void AddBracket_60_3_C_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER_3_C_AHN_QIRAJ))
        return;

    AddSC_temple_of_ahn_qiraj_tuning();
}
