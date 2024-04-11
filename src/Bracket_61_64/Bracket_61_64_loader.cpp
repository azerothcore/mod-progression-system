/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_tbc_profession_spellcooldowns();

void AddBracket_61_64_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_61_64", false)))
        return;

    AddSC_tbc_profession_spellcooldowns();
}
