/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddBracket_70_2_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_70_2", false)))
        return;
}
