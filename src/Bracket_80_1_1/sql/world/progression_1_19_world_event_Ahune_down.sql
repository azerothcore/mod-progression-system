-- Revert Ahune to the WotLK-era encounter (level 80) at the first WotLK phase.
-- The ilvl-232 cloaks are withheld here and unlocked in the Trial of the Crusader
-- phase (Bracket_80_3), since their item level matches phase-3 normal raid gear.
DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (28682, 28683));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(28682, 35498, 0, 3, 0, 1, 0, 1, 1, 'Ice Chest - Formula: Enchant Weapon - Deathfrost'),
(28682, 35557, 0, 100, 0, 1, 0, 2, 2, 'Ice Chest - Huge Snowball'),
(28682, 35720, 0, 3, 0, 1, 0, 6, 6, 'Ice Chest - Lord of Frost\'s Private Label'),
(28682, 35723, 0, 100, 0, 1, 0, 1, 1, 'Ice Chest - Shards of Ahune'),

(28683, 35498, 0, 3, 0, 1, 0, 1, 1, 'Ice Chest - Formula: Enchant Weapon - Deathfrost'),
(28683, 35557, 0, 28, 0, 1, 0, 1, 2, 'Ice Chest - Huge Snowball'),
(28683, 35720, 0, 3, 0, 1, 0, 5, 6, 'Ice Chest - Lord of Frost\'s Private Label'),
(28683, 35723, 0, 100, 0, 1, 0, 1, 1, 'Ice Chest - Shards of Ahune');

-- Change quest level requirement back to 75
UPDATE `quest_template` SET `MinLevel` = 75 WHERE (`ID` = 11972);
UPDATE `item_template` SET `RequiredLevel` = 75 WHERE (`entry` = 35723);

UPDATE `creature_template` SET `MaxLevel` = 80, `MinLevel` = 80 WHERE `entry` IN (25755, 25756, 25757, 26340, 26341, 26342, 25865, 26339, 40446);
UPDATE `creature_template` SET `MaxLevel` = 82, `MinLevel` = 82 WHERE `entry` IN (25740, 26338);
