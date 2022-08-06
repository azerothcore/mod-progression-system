-- Enable Naxxramas Map (mapID: 533)
SET @MapID := 533;
DELETE FROM `disables` WHERE `entry` = @MapID;

-- Update map difficulty of Naxx25
-- See MapDifficultyDBC
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = @MapID;
INSERT INTO `mapdifficulty_dbc`
(`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`)
VALUES (128, @MapID, 1, 604800, 25, 'RAID_DIFFICULTY_25PLAYER');
-- maybe Difficulty should be 4, not 1

-- Set access to min level 60 for Naxx25
UPDATE `dungeon_access_template` SET `min_level` = 60 WHERE `map_id` = @MapID
AND `difficulty` = 1;

-- Disable achievements
DELETE FROM `disables` WHERE `entry` IN (2177, 1859, 2185, 1857, 575, 2140, 573, 2179, 2183, 2181, 563, 565, 579, 577, 2147, 569, 567, 2139, 2186) AND `sourceType` = 4;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`,
`comment`) VALUES
(4, 2177, 0, 0, 0, 'And They Would All Go Down Together (25 player)'),
(4, 1859, 0, 0, 0, 'Arachnophobia (25 player)'),
(4, 2185, 0, 0, 0, 'Just Can\'t Get Enough (25 player)'),
(4, 1857, 0, 0, 0, 'Make Quick Werk Of Him (25 player)'),
(4, 575,  0, 0, 0, 'Kel\'Thuzad\'s Defeat (25 player)'),
(4, 2140, 0, 0, 0, 'Momma Said Knock You Out (25 player)'),
(4, 573,  0, 0, 0, 'Sapphiron\'s Demise (25 player)'),
(4, 2179, 0, 0, 0, 'Shocking! (25 player)'),
(4, 2183, 0, 0, 0, 'Spore Loser (25 player)'),
(4, 2181, 0, 0, 0, 'Subtraction (25 player)'),
(4, 563,  0, 0, 0, 'The Arachnid Quarter (25 player)'),
(4, 565,  0, 0, 0, 'The Construct Quarter (25 player)'),
(4, 579,  0, 0, 0, 'The Dedicated Few (25 player)'),
(4, 577,  0, 0, 0, 'The Fall of Naxxramas (25 player)'),
(4, 2147, 0, 0, 0, 'The Hundred Club (25 player)'),
(4, 569,  0, 0, 0, 'The Military Quarter (25 player)'),
(4, 567, 0, 0, 0, 'The Plague Quarter (25 player)'),
(4, 2139, 0, 0, 0, 'The Safety Dance (25 player)'),
(4, 2186, 0, 0, 0, 'The Immortal');

-- Disable loot for non-bosses
UPDATE `creature_template` SET `lootid` = 0, `skinloot` = 0 WHERE `entry` IN
(29356, 29824, 29823, 29831, 29833, 29842, 29825, 29828, 29835, 29576, 30097,
29837, 29898, 29899, 29900, 29242, 29241, 29243, 29229, 30389, 29286, 29247,
29613, 29248, 29575, 29574, 30075, 30087, 29347, 29353, 29362, 29359, 29363,
29355, 29371, 29609, 29608, 29603, 29601, 29612, 31542, 29852, 30424);
-- Disable loot for non-bosses that are spawned
-- already disabled

-- Disable loot for bosses
DELETE FROM `creature_loot_template` WHERE `entry` IN (29373, 29417, 29701,
29268, 29615, 29249, 29718, 29324, 29955, 29940, 29448, 29278, 30603, 30601,
30600, 30602, 29991, 30061);

-- Add boss loot
-- Thaddius
SET @Thaddius := 29448;
INSERT INTO creature_loot_template (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(@Thaddius, 22726, 0, 30,  0, 1, 1, 1, 1, 'Atiesh Splinter'),
(@Thaddius, 22353, 0, 0, 0, 1, 2, 1, 1, 'Desecrated Helmet'),
(@Thaddius, 22360, 0, 0, 0, 1, 2, 1, 1, 'Desecrated Headpiece'),
(@Thaddius, 22367, 0, 0, 0, 1, 2, 1, 1, 'Desecrated Circlet'),
(@Thaddius, 22801, 0, 0, 0, 1, 3, 1, 1, 'Spire of Twilight'),
(@Thaddius, 22808, 0, 0, 0, 1, 3, 1, 1, 'The Castigator'),
(@Thaddius, 23000, 0, 0, 0, 1, 3, 1, 1, 'Plated Abomination Ribcage'),
(@Thaddius, 23001, 0, 0, 0, 1, 3, 1, 1, 'Eye of Diminution'),
(@Thaddius, 23070, 0, 0, 0, 1, 3, 1, 1, 'Leggings of Polarity');

-- ac-worldserver_1         | Table 'creature_loot_template' entry 29448 group 2 has total chance > 100% (300)
-- ac-worldserver_1         | Table 'creature_loot_template' entry 29448 group 3 has total chance > 100% (500)
