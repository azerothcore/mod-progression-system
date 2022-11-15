/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#ifndef _PROGRESSION_SYSTEM_H_
#define _PROGRESSION_SYSTEM_H_

#include "Config.h"
#include "ScriptMgr.h"

#define PROGRESSION_BRACKET_MAX 29
std::array<std::string, PROGRESSION_BRACKET_MAX> const ProgressionBracketsNames =
{
    "0",
    "1_19",
    "20_29",
    "30_39",
    "40_49",
    "50_59_1",
    "50_59_2",
    "60_1_1",
    "60_1_2",
    "60_2_1",
    "60_2_2",
    "60_3_1",
    "60_3_2",
    "60_3_3",
    "61_64",
    "65_69",
    "70_4",
    "70_5",
    "70_6_1",
    "70_6_2",
    "70_6_3",
    "71_74",
    "75_79",
    "80_7",
    "80_8",
    "80_9",
    "80_10_1",
    "80_10_2",
    "Custom"
};

#endif // _PROGRESSION_SYSTEM_H_
