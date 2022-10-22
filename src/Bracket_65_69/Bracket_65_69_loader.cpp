/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddBracket_65_69_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Bracket_65_69", false)))
        return;
}
