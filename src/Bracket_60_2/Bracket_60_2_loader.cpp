/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_quest_jail_break_60_2();
void AddSC_quest_the_masquerade_60_2();
void AddSC_boss_onyxia_60_2();
void AddSC_instance_onyxias_lair_60_2();
void AddSC_boss_lord_kazzak_60_2();

void AddBracket_60_2_Scripts()
{
    if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & PROGRESSION_BRACKET_60_TIER_2))
        return;

    AddSC_quest_jail_break_60_2();
    AddSC_quest_the_masquerade_60_2();
    AddSC_boss_onyxia_60_2();
    AddSC_instance_onyxias_lair_60_2();
    AddSC_boss_lord_kazzak_60_2();
}
