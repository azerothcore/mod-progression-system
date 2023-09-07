DELETE FROM `creature_loot_template` WHERE `Entry` IN (15688, 15687, 16524) AND (`Item` IN (22560, 22561, 22559));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15687, 22559, 0, 4, 0, 1, 0, 1, 1, 'Moroes - Formula: Enchant Weapon - Mongoose'),
(16524, 22560, 0, 5, 0, 1, 0, 1, 1, 'Shade of Aran - Formula: Enchant Weapon - Sunfire'),
(15688, 22561, 0, 5, 0, 1, 0, 1, 1, 'Terestian Illhoof - Formula: Enchant Weapon - Soulfrost');
