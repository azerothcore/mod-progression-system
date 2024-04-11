/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"

void AddSC_naxx_entry_flag_60_4_B();
void AddSC_omarion_60_4_B();
void AddSC_instance_naxxramas_combined();
void AddSC_boss_anubrekhan_40();
void AddSC_boss_faerlina_40();
void AddSC_boss_four_horsemen_40();
void AddSC_boss_gluth_40();
void AddSC_boss_gothik_40();
void AddSC_boss_grobbulus_40();
void AddSC_boss_heigan_40();
void AddSC_boss_kelthuzad_40();
void AddSC_boss_loatheb_40();
void AddSC_boss_maexxna_40();
void AddSC_boss_noth_40();
void AddSC_boss_patchwerk_40();
void AddSC_boss_razuvious_40();
void AddSC_boss_sapphiron_40();
void AddSC_boss_thaddius_40();

void AddBracket_60_4_B_Scripts()
{
    if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_60_4_2", false)))
        return;
    AddSC_naxx_entry_flag_60_4_B();
    AddSC_omarion_60_4_B();
    // Custom naxx40 scripts
    void AddSC_instance_naxxramas_combined();
    void AddSC_boss_anubrekhan_40();
    void AddSC_boss_faerlina_40();
    void AddSC_boss_four_horsemen_40();
    void AddSC_boss_gluth_40();
    void AddSC_boss_gothik_40();
    void AddSC_boss_grobbulus_40();
    void AddSC_boss_heigan_40();
    void AddSC_boss_kelthuzad_40();
    void AddSC_boss_loatheb_40();
    void AddSC_boss_maexxna_40();
    void AddSC_boss_noth_40();
    void AddSC_boss_patchwerk_40();
    void AddSC_boss_razuvious_40();
    void AddSC_boss_sapphiron_40();
    void AddSC_boss_thaddius_40();
}
