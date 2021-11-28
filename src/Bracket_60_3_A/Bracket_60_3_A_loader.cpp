/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_boss_onyxia_60_3_A();
void AddSC_instance_onyxias_lair_60_3_A();

void AddBracket_60_3_A_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER_3_A_ZUL_GURUB))
        return;

    AddSC_boss_onyxia_60_3_A();
    AddSC_instance_onyxias_lair_60_3_A();
}
