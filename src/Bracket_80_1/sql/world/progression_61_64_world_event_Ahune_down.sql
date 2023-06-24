-- Revert Ahune loot to WotLK-Era
DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (28682, 28683));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(28682, 35498, 0, 3, 0, 1, 0, 1, 1, 'Ice Chest - Formula: Enchant Weapon - Deathfrost'),
(28682, 35557, 0, 100, 0, 1, 0, 2, 2, 'Ice Chest - Huge Snowball'),
(28682, 35720, 0, 3, 0, 1, 0, 6, 6, 'Ice Chest - Lord of Frost\'s Private Label'),
(28682, 35723, 0, 100, 0, 1, 0, 1, 1, 'Ice Chest - Shards of Ahune'),
(28682, 54801, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - Icebound Cloak'),
(28682, 54802, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - The Frost Lord\'s War Cloak'),
(28682, 54803, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - The Frost Lord\'s Battle Shroud'),
(28682, 54804, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - Shroud of Winter\'s Chill'),
(28682, 54805, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - Cloak of the Frigid Winds'),
(28683, 35498, 0, 3, 0, 1, 0, 1, 1, 'Ice Chest - Formula: Enchant Weapon - Deathfrost'),
(28683, 35557, 0, 28, 0, 1, 0, 1, 2, 'Ice Chest - Huge Snowball'),
(28683, 35720, 0, 3, 0, 1, 0, 5, 6, 'Ice Chest - Lord of Frost\'s Private Label'),
(28683, 35723, 0, 100, 0, 1, 0, 1, 1, 'Ice Chest - Shards of Ahune'),
(28683, 54801, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - Icebound Cloak'),
(28683, 54802, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - The Frost Lord\'s War Cloak'),
(28683, 54803, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - The Frost Lord\'s Battle Shroud'),
(28683, 54804, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - Shroud of Winter\'s Chill'),
(28683, 54805, 0, 0, 0, 1, 1, 1, 1, 'Ice Chest - Cloak of the Frigid Winds');

-- Change quest level requirement back to 75
UPDATE `quest_template` SET `MinLevel` = 75 WHERE (`ID` = 11972);
UPDATE `item_template` SET `RequiredLevel` = 75 WHERE (`entry` = 35723);
