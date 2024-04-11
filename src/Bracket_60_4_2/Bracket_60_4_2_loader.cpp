/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_naxx_entry_flag_60_4_B();
void AddSC_omarion_60_4_B();
void AddSC_instance_naxxramas_combined();
void AddSC_boss_anubrekhan_60_4_B();
void AddSC_boss_faerlina_60_4_B();
void AddSC_boss_four_horsemen_60_4_B();
void AddSC_boss_gluth_60_4_B();
void AddSC_boss_gothik_60_4_B();
void AddSC_boss_grobbulus_60_4_B();
void AddSC_boss_heigan_60_4_B();
void AddSC_boss_kelthuzad_60_4_B();
void AddSC_boss_loatheb_60_4_B();
void AddSC_boss_maexxna_60_4_B();
void AddSC_boss_noth_60_4_B();
void AddSC_boss_patchwerk_60_4_B();
void AddSC_boss_razuvious_60_4_B();
void AddSC_boss_sapphiron_60_4_B();
void AddSC_boss_thaddius_60_4_B();

void AddBracket_60_4_B_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_60_4_2", false)))
        return;
    AddSC_naxx_entry_flag_60_4_B();
    AddSC_omarion_60_4_B();
    // Custom naxx40 scripts
    AddSC_instance_naxxramas_combined();
    AddSC_boss_anubrekhan_60_4_B();
    AddSC_boss_faerlina_60_4_B();
    AddSC_boss_four_horsemen_60_4_B();
    AddSC_boss_gluth_60_4_B();
    AddSC_boss_gothik_60_4_B();
    AddSC_boss_grobbulus_60_4_B();
    AddSC_boss_heigan_60_4_B();
    AddSC_boss_kelthuzad_60_4_B();
    AddSC_boss_loatheb_60_4_B();
    AddSC_boss_maexxna_60_4_B();
    AddSC_boss_noth_60_4_B();
    AddSC_boss_patchwerk_60_4_B();
    AddSC_boss_razuvious_60_4_B();
    AddSC_boss_sapphiron_60_4_B();
    AddSC_boss_thaddius_60_4_B();
}
