DELETE FROM `creature_loot_template` WHERE (`Entry` IN (1853, 9019, 9237, 10899, 10997, 11486, 16807, 17862, 17975, 18373, 18732, 19221, 20306, 20521, 20568, 20653, 21558, 21536)) AND (`Item` IN (21524, 21525));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
-- Vanilla
(9019, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Emperor Dagran Thaurissan - Red Winter Hat'),
(9237, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - War Master Voone - Red Winter Hat'),
(10997, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Cannon Mister Willey - Red Winter Hat'),
-- TBC
(17862, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Captain Skarloc - Red Winter Hat'),
(20521, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Captain Skarloc (1) - Red Winter Hat'),
(17975, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - High Botanist Freywinn - Red Winter Hat'),
(21558, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - High Botanist Freywinn (1) - Red Winter Hat'),
(19221, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Nethermancer Sepethrea - Red Winter Hat'),
(21536, 21524, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Nethermancer Sepethrea (1) - Red Winter Hat'),

-- Vanilla
(1853, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Darkmaster Gandling - Green Winter Hat'),
(10899, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Goraluk Anvilcrack - Green Winter Hat'),
(11486, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Prince Tortheldrin - Green Winter Hat'),
-- TBC
(16807, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Grand Warlock Nethekurse - Green Winter Hat'),
(20568, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Grand Warlock Nethekurse (1) - Green Winter Hat'),
(18373, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Exarch Maladaar - Green Winter Hat'),
(20306, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Exarch Maladaar (1) - Green Winter Hat'),
(18732, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Grandmaster Vorpil - Green Winter Hat'),
(20653, 21525, 0, 100, 0, 1, 0, 1, 1, 'Winter Veil - Grandmaster Vorpil (1) - Green Winter Hat');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 1) AND (`SourceGroup` IN (1853, 9019, 9237, 10899, 10997, 11486, 16807, 17862, 17975, 18373, 18732, 19221, 20306, 20521, 20568, 20653, 21558, 21536)) AND (`SourceEntry` IN (21524, 21525)) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 12) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 2) AND (`ConditionValue2` = 0) AND (`ConditionValue3` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
-- Vanilla
(1, 9019, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Emperor Dagran Thaurissan - Red Winter Hat'),
(1, 9237, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - War Master Voone - Red Winter Hat'),
(1, 10997, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Cannon Mister Willey - Red Winter Hat'),
-- TBC
(1, 17862, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Captain Skarloc - Red Winter Hat'),
(1, 20521, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Captain Skarloc (1) - Red Winter Hat'),
(1, 17975, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - High Botanist Freywinn - Red Winter Hat'),
(1, 21558, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - High Botanist Freywinn (1) - Red Winter Hat'),
(1, 19221, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Nethermancer Sepethrea - Red Winter Hat'),
(1, 21536, 21524, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Nethermancer Sepethrea (1) - Red Winter Hat'),

-- Vanilla
(1, 1853, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Darkmaster Gandling - Green Winter Hat'),
(1, 10899, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Goraluk Anvilcrack - Green Winter Hat'),
(1, 11486, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Prince Tortheldrin - Green Winter Hat'),
-- TBC
(1, 16807, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Grand Warlock Nethekurse - Green Winter Hat'),
(1, 20568, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Grand Warlock Nethekurse (1) - Green Winter Hat'),
(1, 18373, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Exarch Maladaar - Green Winter Hat'),
(1, 20306, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Exarch Maladaar (1) - Green Winter Hat'),
(1, 18732, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Grandmaster Vorpil - Green Winter Hat'),
(1, 20653, 21525, 0, 0, 12, 0, 2, 0, 0, 0, 0, 0, '', 'Winter Veil - Grandmaster Vorpil (1) - Green Winter Hat');
