-- Enable Naxxramas Map (mapID: 533)
-- Disable loot for non-bosses
UPDATE `creature_template` SET `lootid` = 0, `skinloot` = 0 WHERE `Entry` IN
(29356, 29824, 29823, 29831, 29833, 29842, 29825, 29828, 29835, 29576, 30097,
29837, 29898, 29899, 29900, 29242, 29241, 29243, 29229, 30389, 29286, 29247,
29613, 29248, 29575, 29574, 30075, 30087, 29347, 29353, 29362, 29359, 29363,
29355, 29371, 29609, 29608, 29603, 29601, 29612, 31542, 29852, 30424);
-- Skip Disable loot for non-bosses that are spawned as they don't drop loot
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