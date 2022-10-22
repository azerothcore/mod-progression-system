/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_temple_of_ahn_qiraj_tuning();

void AddBracket_60_3_C_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_60_3_3", false)))
        return;

    AddSC_temple_of_ahn_qiraj_tuning();
}
