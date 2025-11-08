-- 
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21215) AND (`Item` IN (34059));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21215, 34059, 34059, 100, 0, 1, 0, 1, 3, 'Leotheras the Blind - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21214) AND (`Item` IN (34060));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21214, 34060, 34060, 100, 0, 1, 0, 1, 3, 'Fathom-Lord Karathress - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21212) AND (`Item` IN (34062));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(21212, 34062, 34062, 100, 0, 1, 3, 1, 3, 'Lady Vashj - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 19516) AND (`Item` IN (34054));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19516, 34054, 34054, 100, 0, 1, 0, 1, 3, 'Void Reaver - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 19622) AND (`Item` IN (34056));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19622, 34056, 34056, 100, 0, 1, 3, 1, 3, 'Kael\'thas Sunstrider - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 17842) AND (`Item` IN (34067));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (17842, 34067, 34067, 100, 0, 1, 1, 1, 3, 'Azgalor - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 17968) AND (`Item` IN (34068));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (17968, 34068, 34068, 100, 0, 1, 0, 1, 3, 'Archimonde - (ReferenceTable)');