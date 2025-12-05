SET @REFIDTHREE = 35102,
@REFIDFOUR      = 527000,
@TANZAR         = 22699,
@KRAZ           = 22790,
@ASHLI          = 22797,
@HARKOR         = 22968;

DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (@TANZAR, @KRAZ, @ASHLI, @HARKOR)) AND (`Item` = @REFIDFOUR);
DELETE FROM `reference_loot_template` WHERE `Entry` = @REFIDFOUR;
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 10) AND (`SourceGroup` = @REFIDFOUR) AND (`ConditionTypeOrReference` = 13) AND (`ConditionValue1` = 17) AND (`ConditionValue2` = 4);
