-- Enable Naxxramas Map (mapID: 533)
SET @MapID := 533;
DELETE FROM `disables` WHERE `entry` = @MapID;

-- Update map difficulty of Naxx25  to '0'
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = @MapID;
INSERT INTO `mapdifficulty_dbc`
(`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`)
VALUES
(128, @MapID, 0, 604800, 25, 'RAID_DIFFICULTY_25PLAYER');

-- Set access to min level 60 for Naxx25
UPDATE `dungeon_access_template` SET `min_level` = 60 WHERE `id` = 31;

-- By Default lvl60 players will enter map with difficulty 0
-- Update scripts to default to 25

-- Floating Naxxramas object, "naxxramas" id: 181056
DELETE FROM gameobject WHERE id=181056;
INSERT INTO gameobject
(id, `map`, zoneId, areaId, spawnMask, phaseMask, position_x, position_y,
position_z, orientation, rotation0, rotation1, rotation2, rotation3,
spawntimesecs, animprogress, state, ScriptName, VerifiedBuild)
VALUES
(181056, 0, 0, 0, 1, 1, 3132, -3731, 200, -2.148, 0.0, 0.0, 0,
0, 900, 100, 1, '', 0);

-- Update Naxx exits to somewhere in EPL
DELETE FROM areatrigger_teleport WHERE ID in (5196, 5197, 5198, 5199);
INSERT INTO areatrigger_teleport
(ID, Name, target_map, target_position_x, target_position_y, target_position_z,
target_orientation)
VALUES
(5196, 'Naxxramas (exit1)', 0, 3090.68, -3874.88, 138.36, 3.2138),
(5197, 'Naxxramas (exit2)', 0, 3090.68, -3874.88, 138.36, 3.2138),
(5198, 'Naxxramas (exit3)', 0, 3090.68, -3874.88, 138.36, 3.2138),
(5199, 'Naxxramas (exit4)', 0, 3090.68, -3874.88, 138.36, 3.2138);

-- Disable 25man achievements
-- https://wow.tools/dbc/?dbc=achievement_criteria&build=3.3.5.12340
DELETE FROM `disables` WHERE `entry` IN 
(13233, 13234, 13235, 13236, 382, 3834, 3835, 3836, 3837, 3838, 3839, 3840,
3841, 3842, 3843, 3844, 3845, 3847, 389, 390, 391, 392, 393, 394, 7127, 7129,
7159, 7160, 7161, 7162, 7163, 7164, 7165, 7166, 7167, 7168, 7169, 7170, 7171,
7172, 7193, 7548, 7549, 7568, 7601, 7603, 7605, 7613, 7615, 7616)
AND `sourceType` = 4;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`,
`comment`) VALUES
(4,  7601, 0, '', '', 'Disable And They Would All Go Down Together (25 player)'),
(4,  7129, 0, '', '', 'Disable Arachnophobia (25 player)'),
(4,  7615, 0, '', '', 'Disable Just Can\'t Get Enough (25 player)'),
(4,  7127, 0, '', '', 'Disable Make Quick Werk Of Him (25 player)'),
(4,   382, 0, '', '', 'Disable Kel\'Thuzad\'s Defeat (25 player)'),
(4,  7549, 0, '', '', 'Disable Momma Said Knock You Out (25 player)'),
(4,  3847, 0, '', '', 'Disable Sapphiron\'s Demise (25 player)'),
(4,  7605, 0, '', '', 'Disable Shocking! (25 player)'),
(4,  7613, 0, '', '', 'Disable Spore Loser (25 player)'),
(4,  7603, 0, '', '', 'Disable Subtraction (25 player)'),
(4,  3834, 0, '', '', 'Disable The Arachnid Quarter (25 player)'),
(4,  3835, 0, '', '', 'Disable The Arachnid Quarter (25 player)'),
(4,  3836, 0, '', '', 'Disable The Arachnid Quarter (25 player)'),
(4,  3837, 0, '', '', 'Disable The Construct Quarter (25 player)'),
(4,  3838, 0, '', '', 'Disable The Construct Quarter (25 player)'),
(4,  3839, 0, '', '', 'Disable The Construct Quarter (25 player)'),
(4,  3840, 0, '', '', 'Disable The Construct Quarter (25 player)'),
(4,  7159, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7167, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7163, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7170, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7160, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7172, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7161, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7171, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7168, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7164, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7162, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7165, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7169, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,  7166, 0, '', '', 'Disable The Dedicated Few (25 player)'),
(4,   389, 0, '', '', 'Disable The Fall of Naxxramas (25 player)'),
(4,   390, 0, '', '', 'Disable The Fall of Naxxramas (25 player)'),
(4,   391, 0, '', '', 'Disable The Fall of Naxxramas (25 player)'),
(4,   392, 0, '', '', 'Disable The Fall of Naxxramas (25 player)'),
(4,   393, 0, '', '', 'Disable The Fall of Naxxramas (25 player)'),
(4,   394, 0, '', '', 'Disable The Fall of Naxxramas (25 player)'),
(4,  7568, 0, '', '', 'Disable The Hundred Club (25 player)'),
(4,  3844, 0, '', '', 'Disable The Military Quarter (25 player)'),
(4,  3845, 0, '', '', 'Disable The Military Quarter (25 player)'),
(4,  7193, 0, '', '', 'Disable The Military Quarter (25 player)'),
(4,  3841, 0, '', '', 'Disable The Plague Quarter (25 player)'),
(4,  3842, 0, '', '', 'Disable The Plague Quarter (25 player)'),
(4,  3843, 0, '', '', 'Disable The Plague Quarter (25 player)'),
(4,  7548, 0, '', '', 'Disable The Safety Dance (25 player)'),
(4,  7616, 0, '', '', 'Disable The Immortal'),
(4, 13233, 0, '', '', 'Disable The Immortal'),
(4, 13234, 0, '', '', 'Disable The Immortal'),
(4, 13236, 0, '', '', 'Disable The Immortal'),
(4, 13235, 0, '', '', 'Disable The Immortal');

-- Disable loot for non-bosses
UPDATE `creature_template` SET `lootid` = 0, `skinloot` = 0 WHERE `Entry` IN
(29356, 29824, 29823, 29831, 29833, 29842, 29825, 29828, 29835, 29576, 30097,
29837, 29898, 29899, 29900, 29242, 29241, 29243, 29229, 30389, 29286, 29247,
29613, 29248, 29575, 29574, 30075, 30087, 29347, 29353, 29362, 29359, 29363,
29355, 29371, 29609, 29608, 29603, 29601, 29612, 31542, 29852, 30424);
-- Disable loot for non-bosses that are spawned
-- already disabled

-- Disable loot for bosses
DELETE FROM `creature_loot_template` WHERE `Entry` IN (29373, 29417, 29701,
29268, 29615, 29249, 29718, 29324, 29955, 29940, 29448, 29278, 30603, 30601,
30600, 30602, 29991, 30061);

-- Add boss loot
-- Four Horsemen Chest
SET @4HChest := 25193;
DELETE FROM `gameobject_loot_template` WHERE `Entry` = @4HChest;
INSERT INTO `gameobject_loot_template` VALUES
(@4HChest, 34146, 34146, 100, 0, 1, 0, 1, 1, 'Four Horsemen Chest - (ReferenceTable)'),
(@4HChest, 34382, 34382, 100, 0, 1, 0, 1, 2, 'Four Horsemen Chest - (ReferenceTable)'),
(@4HChest, 22726,     0,  30, 0, 1, 0, 1, 1, 'Four Horsemen Chest - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34146, 34382);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34146, 22691, 0, 0, 0, 1, 1, 1, 1, 'Corrupted Ashbringer'),
(34146, 22809, 0, 0, 0, 1, 1, 1, 1, 'Maul of the Redeemed Crusader'),
(34146, 22811, 0, 0, 0, 1, 1, 1, 1, 'Soulstring'),
(34146, 23025, 0, 0, 0, 1, 1, 1, 1, 'Seal of the Damned'),
(34146, 23027, 0, 0, 0, 1, 1, 1, 1, 'Warmth of Forgiveness'),
(34146, 23071, 0, 0, 0, 1, 1, 1, 1, 'Leggings of Apocalypse'),
(34382, 22349, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Breastplate'),
(34382, 22350, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Tunic'),
(34382, 22351, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Robe');

-- Thaddius
SET @Thaddius := 29448;
DELETE FROM `creature_loot_template` WHERE `Entry` = @Thaddius;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Thaddius, 34143, 34143, 100, 0, 1, 0, 1, 2, 'Thaddius (1) - (ReferenceTable)'),
(@Thaddius, 34380, 34380, 100, 0, 1, 0, 1, 2, 'Thaddius (1) - (ReferenceTable)'),
(@Thaddius, 22726,     0,  30, 0, 1, 0, 1, 1, 'Thaddius (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34143, 34380);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34143, 22801, 0, 0, 0, 1, 1, 1, 1, 'Spire of Twilight'),
(34143, 22808, 0, 0, 0, 1, 1, 1, 1, 'The Castigator'),
(34143, 23000, 0, 0, 0, 1, 1, 1, 1, 'Plated Abomination Ribcage'),
(34143, 23001, 0, 0, 0, 1, 1, 1, 1, 'Eye of Diminution'),
(34143, 23070, 0, 0, 0, 1, 1, 1, 1, 'Leggings of Polarity'),
(34380, 22353, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Helmet'),
(34380, 22360, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Headpiece'),
(34380, 22367, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Circlet');

-- Patchwerk
-- using unused reftable (Reference: 34100) Patchwerk10M (Entry: 16028)
SET @Patchwerk := 29324;
DELETE FROM `creature_loot_template` WHERE `Entry` = @Patchwerk;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Patchwerk, 34140, 34140, 100, 0, 1, 0, 1, 1, 'Patchwerk (1) - (ReferenceTable)'),
(@Patchwerk, 34100, 34100, 100, 0, 1, 0, 1, 1, 'Patchwerk (1) - (ReferenceTable)'),
(@Patchwerk, 22726,     0,  30, 0, 1, 0, 1, 1, 'Patchwerk (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34140, 34100);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34140, 22815, 0, 0, 0, 1, 1, 1, 1, 'Severance'),
(34140, 22818, 0, 0, 0, 1, 1, 1, 1, 'The The Plague Bearer'),
(34140, 22820, 0, 0, 0, 1, 1, 1, 1, 'Wand of Fates'),
(34140, 22960, 0, 0, 0, 1, 1, 1, 1, 'Cloak of Suturing'),
(34140, 22961, 0, 0, 0, 1, 1, 1, 1, 'Band of Reanimation'),
(34100, 22354, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Pauldrons'),
(34100, 22361, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Spaulders'),
(34100, 22368, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Shoulderpads');