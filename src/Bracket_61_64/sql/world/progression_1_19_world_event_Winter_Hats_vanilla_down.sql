DELETE FROM `creature_loot_template` WHERE (`Entry` IN (1853, 9019, 9237, 10899, 10997, 11486)) AND (`Item` IN (21524, 21525));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 1) AND (`SourceGroup` IN (1853, 9019, 9237, 10899, 10997, 11486)) AND (`SourceEntry` IN (21524, 21525)) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 12) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 2) AND (`ConditionValue2` = 0) AND (`ConditionValue3` = 0);
