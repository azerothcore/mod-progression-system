DELETE FROM `spell_dbc` WHERE `ID` BETWEEN 90001 AND 90004;

INSERT INTO `spell_dbc` (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`) VALUES
(90001,0,0,0,8388864,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,0,0,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,4,0,0,0,0,0,18,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351083,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7626,0,1,0,0,'Summon Corpse Scarabs (5)','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712172,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),  # 29105 - Corpse Scarabs (5)
(90002,0,0,0,8388864,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,0,0,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,9,0,0,0,0,0,18,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351083,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7626,0,1,0,0,'Summon Corpse Scarabs (10)','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712172,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),  # 28864 - Corpse Scarabs (10)
(90003,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,101,0,0,0,0,26,0,0,0,0,0,6,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351071,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,68,0,0,"Bombard Slime","","","","","","","","",0,0,0,0,0,0,0,16712190,"","","","","","","","","",0,0,0,0,0,0,0,16712190,"Bombards the area below with a Sewage Slime.","","","","","","","","",0,0,0,0,0,0,0,16712190,"","","","","","","","","",0,0,0,0,0,0,0,16712190,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0), # 28280 - Spell Bombard Slime - Sewage Slime (10)
(90004,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,70,70,6,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351041,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1952,0,0,"Dismount Deathcharger","","","","","","","","",0,0,0,0,0,0,0,16712190,"","","","","","","","","",0,0,0,0,0,0,0,16712188,"Summons a Skeletal Steed.","","","","","","","","",0,0,0,0,0,0,0,16712190,"","","","","","","","","",0,0,0,0,0,0,0,16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0); # 55294 - Dismount Deathcharger - Skeletal Steed (10)

-- Update Cavalier to use 90004, summon Skeletal Steed
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 351055) AND (`source_type` = 0) AND (`id` IN (6));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(351055, 0, 6, 0, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 90004, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Knight Cavalier - At 30% HP - Cast Dismount Deathcharger (Naxx 40)');
