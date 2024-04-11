-- Restore TBC gems from Thorium prospecting
DELETE FROM `prospecting_loot_template` WHERE (`Entry` = 10620) AND (`Item` IN (1));
INSERT INTO `prospecting_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(10620, 1, -13001, 10, 0, 1, 1, 1, 1, '(ReferenceTable)');
