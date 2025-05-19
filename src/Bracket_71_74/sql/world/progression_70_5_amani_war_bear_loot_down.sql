SET @REFIDTHREE = 35102,
@REFIDFOUR      = 527000,
@TANZAR         = 22699,
@KRAZ           = 22790,
@ASHLI          = 22797,
@HARKOR         = 22968;

DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (@TANZAR, @KRAZ, @ASHLI, @HARKOR)) AND (`Item` = @REFIDFOUR);

DELETE FROM `reference_loot_template` WHERE (`Entry` = @REFIDFOUR) AND (`Item` = 33809);

UPDATE `conditions` SET `ElseGroup` = 1 WHERE (`SourceTypeOrReferenceId` = 10) AND (`SourceGroup` = @REFIDTHREE) AND (`ConditionTypeOrReference` = 13) AND (`ConditionValue2` = 3);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 10) AND (`SourceGroup` = @REFIDFOUR) AND (`ConditionTypeOrReference` = 13) AND (`ConditionValue1` = 17) AND (`ConditionValue2` = 4);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 10) AND (`SourceGroup` = @REFIDTHREE) AND (`ConditionTypeOrReference` = 13) AND (`ConditionValue1` = 8) AND (`ConditionValue2` = 4);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(10, @REFIDTHREE, 33496, 0, 2, 13, 0, 8, 4, 0, 0, 0, 0, '', 'Yield third hostage loot if all hostages have been rescued'),
(10, @REFIDTHREE, 33497, 0, 2, 13, 0, 8, 4, 0, 0, 0, 0, '', 'Yield third hostage loot if all hostages have been rescued'),
(10, @REFIDTHREE, 33498, 0, 2, 13, 0, 8, 4, 0, 0, 0, 0, '', 'Yield third hostage loot if all hostages have been rescued'),
(10, @REFIDTHREE, 33499, 0, 2, 13, 0, 8, 4, 0, 0, 0, 0, '', 'Yield third hostage loot if all hostages have been rescued'),
(10, @REFIDTHREE, 33500, 0, 2, 13, 0, 8, 4, 0, 0, 0, 0, '', 'Yield third hostage loot if all hostages have been rescued');
