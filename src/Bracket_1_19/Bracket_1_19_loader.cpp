/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_event_love_in_the_air_1_19();
void AddSC_event_brewfest_1_19();

void AddBracket_1_19_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_1_19", false)))
        return;

    AddSC_event_love_in_the_air_1_19();
    AddSC_event_brewfest_1_19();
}
