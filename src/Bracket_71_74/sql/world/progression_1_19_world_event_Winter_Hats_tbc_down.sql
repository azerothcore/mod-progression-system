DELETE FROM `creature_loot_template` WHERE (`Entry` IN (16807, 17862, 17975, 18373, 18732, 19221, 20306, 20521, 20568, 20653, 21558, 21536)) AND (`Item` IN (21524, 21525));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 1) AND (`SourceGroup` IN (16807, 17862, 17975, 18373, 18732, 19221, 20306, 20521, 20568, 20653, 21558, 21536)) AND (`SourceEntry` IN (21524, 21525)) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 12) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 2) AND (`ConditionValue2` = 0) AND (`ConditionValue3` = 0);
