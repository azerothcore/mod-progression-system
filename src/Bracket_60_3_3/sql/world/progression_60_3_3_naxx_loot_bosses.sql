SET @4HChest    := 25193;
SET @Anubrekhan := 29249;
SET @Faerlina   := 29268;
SET @Gluth      := 29417;
SET @Gothik     := 29955;
SET @Grobbulus  := 29373;
SET @Heigan     := 29701;
SET @Kelthuzad  := 30061;
SET @Loatheb    := 29718;
SET @Maexxna    := 29278;
SET @Noth       := 29615;
SET @Patchwerk  := 29324;
SET @Razuvious  := 29940;
SET @Sapphiron  := 29991;
SET @Thaddius   := 29448;

DELETE FROM `creature_loot_template` WHERE `Entry` IN (@4HChest, @Anubrekhan,
@Faerlina, @Gluth, @Gothik, @Grobbulus, @Heigan, @Kelthuzad, @Loatheb, @Maexxna,
@Noth, @Patchwerk, @Razuvious, @Sapphiron, @Thaddius);

-- Four Horsemen Chest
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

-- Patchwerk
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

-- Gobbulus
DELETE FROM `creature_loot_template` WHERE `Entry` = @Grobbulus;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Grobbulus, 34141, 34141, 100, 0, 1, 0, 1, 1, 'Grobbulus (1) - (ReferenceTable)'),
(@Grobbulus, 34100, 34100, 100, 0, 1, 0, 1, 1, 'Grobbulus (1) - (ReferenceTable)'),
(@Grobbulus, 47241,     0,  30, 0, 1, 0, 1, 1, 'Grobbulus (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34141);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34141, 22803, 0, 0, 0, 1, 1, 1, 1, 'Midnight Haze'),
(34141, 22810, 0, 0, 0, 1, 1, 1, 1, 'Toxin Injector'),
(34141, 22967, 0, 0, 0, 1, 1, 1, 1, 'Icy Scale Spaulders'),
(34141, 22968, 0, 0, 0, 1, 1, 1, 1, 'Glacial Mantle'),
(34141, 22988, 0, 0, 0, 1, 1, 1, 1, 'The End of Dreams');


-- Gluth
DELETE FROM `creature_loot_template` WHERE `Entry` = @Gluth;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Gluth, 3412,  34142, 100, 0, 1, 0, 1, 1, 'Gluth (1) - (ReferenceTable)'),
(@Gluth, 34383, 34383, 100, 0, 1, 0, 1, 1, 'Gluth (1) - (ReferenceTable)'),
(@Gluth, 47241,     0,  30, 0, 1, 0, 1, 1, 'Gluth (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34142, 34383);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34142, 22354, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Pauldrons'),
(34142, 22355, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Bracers'),
(34142, 22356, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Waistguard'),
(34142, 22358, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Sabatons'),
(34142, 22361, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Spaulders'),
(34142, 22362, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Wristguards'),
(34142, 22363, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Girdle'),
(34142, 22365, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Boots'),
(34142, 22368, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Shoulderpads'),
(34142, 22369, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Bindings'),
(34142, 22370, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Belt'),
(34142, 22372, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Sandals'),
(34383, 22813, 0, 0, 0, 1, 1, 1, 1, 'Claymore of Unholy Might'),
(34383, 22981, 0, 0, 0, 1, 1, 1, 1, 'Gluth\'s Missing Collar'),
(34383, 22983, 0, 0, 0, 1, 1, 1, 1, 'Rime Covered Mantle'),
(34383, 22994, 0, 0, 0, 1, 1, 1, 1, 'Digested Hand of Power'),
(34383, 23075, 0, 0, 0, 1, 1, 1, 1, 'Death\'s Bargain');

-- Thaddius
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

-- Noth the Plaguebringer
DELETE FROM `creature_loot_template` WHERE `Entry` = @Noth;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Noth, 34042, 34042, 100.0, 0, 1, 0, 1, 1, 'Noth the Plaguebringer (1) - (ReferenceTable)'),
(@Noth, 34147, 34147, 100.0, 0, 1, 0, 1, 1, 'Noth the Plaguebringer (1) - (ReferenceTable)'),
(@Noth, 22726,     0,  30, 0, 1, 0, 1, 1, 'Noth the Plaguebringer (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34042, 34147);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34042, 22356, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Waistguard'),
(34042, 22363, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Girdle'),
(34042, 22370, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Belt'),
(34147, 22816, 0, 0, 0, 1, 1, 1, 1, 'Hatchet of Sundered Bone'),
(34147, 23005, 0, 0, 0, 1, 1, 1, 1, 'Totam of Flowing Water'),
(34147, 23006, 0, 0, 0, 1, 1, 1, 1, 'Libram of Light'),
(34147, 23028, 0, 0, 0, 1, 1, 1, 1, 'Hailstone Band'),
(34147, 23029, 0, 0, 0, 1, 1, 1, 1, 'Noth\'s Friged Heart'),
(34147, 23030, 0, 0, 0, 1, 1, 1, 1, 'Cloak of the Scourge'),
(34147, 23031, 0, 0, 0, 1, 1, 1, 1, 'Band of the Inevitable');

-- Heigan the Unclean
DELETE FROM `creature_loot_template` WHERE `Entry` = @Heigan;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Heigan, 34042, 34042, 100, 0, 1, 0, 1, 1, 'Heigan the Unclean (1) - (ReferenceTable)'),
(@Heigan, 34148, 34148, 100, 0, 1, 0, 1, 1, 'Heigan the Unclean (1) - (ReferenceTable)'),
(@Heigan, 22726,     0,  30, 0, 1, 0, 1, 1, 'Heigan the Unclean (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34148);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34148, 23019, 0, 0, 0, 1, 1, 1, 1, 'Icebane Helmet'),
(34148, 23033, 0, 0, 0, 1, 1, 1, 1, 'Icy Scale Coif'),
(34148, 23035, 0, 0, 0, 1, 1, 1, 1, 'Preceptor\'s Hat'),
(34148, 23036, 0, 0, 0, 1, 1, 1, 1, 'Necklace of Necropsy'),
(34148, 23068, 0, 0, 0, 1, 1, 1, 1, 'Legplates of Carnage');

-- Loatheb
DELETE FROM `creature_loot_template` WHERE `Entry` = @Loatheb;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Loatheb, 34149, 34149, 100, 0, 1, 0, 1, 2, 'Loatheb (1) - (ReferenceTable)'),
(@Loatheb, 34381, 34381, 100, 0, 1, 0, 1, 1, 'Loatheb (1) - (ReferenceTable)'),
(@Loatheb, 22726,     0,  30, 0, 1, 0, 1, 1, 'Loatheb (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34149, 34381);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34149, 22352, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Legplates'),
(34149, 22359, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Legguards'),
(34149, 22366, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Leggings'),
(34381, 22800, 0, 0, 0, 1, 1, 1, 1, 'Brimstone Staff'),
(34381, 23037, 0, 0, 0, 1, 1, 1, 1, 'Ring of Spiritual Fervor'),
(34381, 23038, 0, 0, 0, 1, 1, 1, 1, 'Band of Unnatural Forces'),
(34381, 23039, 0, 0, 0, 1, 1, 1, 1, 'The Eye of Nerub'),
(34381, 23042, 0, 0, 0, 1, 1, 1, 1, 'Loatheb\'s Reflection');

-- Anub'Rekhan
DELETE FROM `creature_loot_template` WHERE `Entry` = @Anubrekhan;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Anubrekhan, 34137, 34137, 100, 0, 1, 0, 1, 1, 'Anub\'Rekhan (1) - (ReferenceTable)'),
(@Anubrekhan, 34098, 34098, 100, 0, 1, 0, 1, 1, 'Anub\'Rekhan (1) - (ReferenceTable)'),
(@Anubrekhan, 22726,     0,  30, 0, 1, 0, 1, 1, 'Anub\'Rekhan (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34137, 34098);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34137, 22355, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Bracers'),
(34137, 22362, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Wristguards'),
(34137, 22369, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Bindings'),
(34098, 22935, 0, 0, 0, 1, 1, 1, 1, 'Touch of Frost'),
(34098, 22936, 0, 0, 0, 1, 1, 1, 1, 'Wristguards of Vengeance'),
(34098, 22937, 0, 0, 0, 1, 1, 1, 1, 'Gem of Nerubis'),
(34098, 22938, 0, 0, 0, 1, 1, 1, 1, 'Cryptfiend Silk Cloak'),
(34098, 22939, 0, 0, 0, 1, 1, 1, 1, 'Band of Unanswered Prayers');

-- Grand Widow Faerlina
DELETE FROM `creature_loot_template` WHERE `Entry` = @Faerlina;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Faerlina, 34138, 34138, 100, 0, 1, 0, 1, 1, 'Grand Widow Faerlina (1) - (ReferenceTable)'),
(@Faerlina, 34137, 34137, 100, 0, 1, 0, 1, 1, 'Grand Widow Faerlina (1) - (ReferenceTable)'),
(@Faerlina, 22726,     0,  30, 0, 1, 0, 1, 1, 'Grand Widow Faerlina (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34138);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34138, 22806, 0, 0, 0, 1, 1, 1, 1, 'Widow\'s Remose'),
(34138, 22940, 0, 0, 0, 1, 1, 1, 1, 'Icebane Pauldrons'),
(34138, 22941, 0, 0, 0, 1, 1, 1, 1, 'Polar Shoulder Pads'),
(34138, 22942, 0, 0, 0, 1, 1, 1, 1, 'The Widow\'s Embrace'),
(34138, 22943, 0, 0, 0, 1, 1, 1, 1, 'Malice Stone Pendant');

-- Maexxna
DELETE FROM `creature_loot_template` WHERE `Entry` = @Maexxna;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Maexxna, 34040, 34040, 100, 0, 1, 0, 1, 2, 'Maexxna (1) - (ReferenceTable)'),
(@Maexxna, 34139, 34139, 100, 0, 1, 0, 1, 1, 'Maexxna (1) - (ReferenceTable)'),
(@Maexxna, 22726,     0,  30, 0, 1, 0, 1, 1, 'Maexxna (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34040, 34139);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34040, 22357, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Gauntlets'),
(34040, 22364, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Handguards'),
(34040, 22371, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Gloves'),
(34139, 22804, 0, 0, 0, 1, 1, 1, 1, 'Maexxna\'s Fang'),
(34139, 22807, 0, 0, 0, 1, 1, 1, 1, 'Wraith Blade'),
(34139, 22947, 0, 0, 0, 1, 1, 1, 1, 'Pendant of Forgotten Names'),
(34139, 22954, 0, 0, 0, 1, 1, 1, 1, 'Kiss of the Spider'),
(34139, 23220, 0, 0, 0, 1, 1, 1, 1, 'Crystal Webbed Robe');

-- Instructor Razuvious
DELETE FROM `creature_loot_template` WHERE `Entry` = @Razuvious;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Razuvious, 34102, 34102, 100, 0, 1, 0, 1, 1, 'Instructor Razuvious (1) - (ReferenceTable)'),
(@Razuvious, 34144, 34144, 100, 0, 1, 0, 1, 1, 'Instructor Razuvious (1) - (ReferenceTable)'),
(@Razuvious, 22726,     0,  30, 0, 1, 0, 1, 1, 'Instructor Razuvious (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34102, 34144);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34102, 22358, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Sabatons'),
(34102, 22365, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Boots'),
(34102, 22372, 0, 0, 0, 1, 1, 1, 1, 'Desecrated Sandals'),
(34144, 23004, 0, 0, 0, 1, 1, 1, 1, 'Idol of Longevity'),
(34144, 23009, 0, 0, 0, 1, 1, 1, 1, 'Wand of the Whispering Dead'),
(34144, 23014, 0, 0, 0, 1, 1, 1, 1, 'Iblis, Blade of the Fallen Seraph'),
(34144, 23017, 0, 0, 0, 1, 1, 1, 1, 'Veil of Eclipse'),
(34144, 23018, 0, 0, 0, 1, 1, 1, 1, 'Signet of the Fallen Defender'),
(34144, 23219, 0, 0, 0, 1, 1, 1, 1, 'Girdle of the Mentor');

-- Gothik the Harvester
DELETE FROM `creature_loot_template` WHERE `Entry` = @Gothik;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Gothik, 34102, 34102, 100, 0, 1, 0, 1, 1, 'Gothik the Harvester (1) - (ReferenceTable)'),
(@Gothik, 34145, 34145, 100, 0, 1, 0, 1, 1, 'Gothik the Harvester (1) - (ReferenceTable)'),
(@Gothik, 22726,     0,  30, 0, 1, 0, 1, 1, 'Gothik the Harvester (1) - Atiesh Splinter');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34145);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34145, 23020, 0, 0, 0, 1, 1, 1, 1, 'Polar Helmet'),
(34145, 23021, 0, 0, 0, 1, 1, 1, 1, 'The Soul harvester\'s Bndings'),
(34145, 23023, 0, 0, 0, 1, 1, 1, 1, 'Sadist\'s Collar'),
(34145, 23032, 0, 0, 0, 1, 1, 1, 1, 'Glacial Headdress'),
(34145, 23073, 0, 0, 0, 1, 1, 1, 1, 'Boots of Displacement');

-- Sapphiron
DELETE FROM `creature_loot_template` WHERE `Entry` = @Sapphiron;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Sapphiron, 34043, 34043, 100, 0, 1, 0, 1, 2, 'Sapphiron (1) - (ReferenceTable)'),
(@Sapphiron, 34101, 34101, 100, 0, 1, 0, 1, 1, 'Sapphiron (1) - (ReferenceTable)'),
(@Sapphiron, 34135, 34135, 100, 0, 1, 0, 1, 1, 'Sapphiron (1) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34043, 34101, 34135);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34043, 23040, 0, 0, 0, 1, 1, 1, 1, 'Glyph of Deflection'),
(34043, 23041, 0, 0, 0, 1, 1, 1, 1, 'Slayer\'s Crest'),
(34043, 23043, 0, 0, 0, 1, 1, 1, 1, 'The Face of Death'),
(34043, 23045, 0, 0, 0, 1, 1, 1, 1, 'Shroud of Dominion'),
(34043, 23046, 0, 0, 0, 1, 1, 1, 1, 'The Restrained Essence of Sapphiron'),
(34043, 23047, 0, 0, 0, 1, 1, 1, 1, 'Eye of Dead'),
(34043, 23048, 0, 0, 0, 1, 1, 1, 1, 'Sapphiron\'s Right Eye'),
(34043, 23049, 0, 0, 0, 1, 1, 1, 1, 'Sapphiron\'s Left Eye'),
(34043, 23050, 0, 0, 0, 1, 1, 1, 1, 'Cloak of the Necropolis'),
(34043, 23242, 0, 0, 0, 1, 1, 1, 1, 'Claw of the Frost Wyrm'),
(34101, 23545, 0, 0, 0, 1, 1, 1, 1, 'Power of the Scourge'),
(34101, 23547, 0, 0, 0, 1, 1, 1, 1, 'Resilience of the Scourge'),
(34135, 23548, 0, 0, 0, 1, 1, 1, 1, 'Might of the Scourge'),
(34135, 23549, 0, 0, 0, 1, 1, 1, 1, 'Fortitude of the Scourge');

-- Kel'Thuzad
DELETE FROM `creature_loot_template` WHERE `Entry` = @Kelthuzad;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(@Kelthuzad, 22520,     0,  30, 0, 1, 1, 1, 1, 'Kel\'Thuzad (1) - The Phylactery of Kel\'Thuzad'),
(@Kelthuzad, 22733,     0,  30, 1, 1, 2, 1, 1, 'Kel\'Thuzad (1) - Staff Head of Atiesh');
(@Kelthuzad, 34136, 34136, 100, 0, 1, 0, 1, 2, 'Kel\'Thuzad (1) - (ReferenceTable)'),
(@Kelthuzad, 34133, 34133, 100, 0, 1, 0, 1, 2, 'Kel\'Thuzad (1) - (ReferenceTable)'),
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34133, 34136);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34133, 22798, 0, 0, 0, 1, 1, 1, 1, 'Might of Menethil'),
(34133, 22799, 0, 0, 0, 1, 1, 1, 1, 'Soulseeker'),
(34133, 22802, 0, 0, 0, 1, 1, 1, 1, 'Kingsfall'),
(34133, 22812, 0, 0, 0, 1, 1, 1, 1, 'Nerubian Slavemaker'),
(34133, 22819, 0, 0, 0, 1, 1, 1, 1, 'Shield of Condemnation'),
(34133, 22821, 0, 0, 0, 1, 1, 1, 1, 'Doomfinger'),
(34133, 23053, 0, 0, 0, 1, 1, 1, 1, 'Stormrage\'s Talisman of Seething'),
(34133, 23054, 0, 0, 0, 1, 1, 1, 1, 'Gressil, Dawn of Ruin'),
(34133, 23056, 0, 0, 0, 1, 1, 1, 1, 'Hammer of the Twisting Nether'),
(34133, 23057, 0, 0, 0, 1, 1, 1, 1, 'Gem of Trapped Innocents'),
(34133, 23577, 0, 0, 0, 1, 1, 1, 1, 'The Hungering Cold'),
(34136, 23059, 0, 0, 0, 1, 1, 1, 1, 'Ring of the Dreadnaught'),
(34136, 23060, 0, 0, 0, 1, 1, 1, 1, 'Bonescythe Ring'),
(34136, 23061, 0, 0, 0, 1, 1, 1, 1, 'Ring of Faith'),
(34136, 23062, 0, 0, 0, 1, 1, 1, 1, 'Frostfire Ring'),
(34136, 23063, 0, 0, 0, 1, 1, 1, 1, 'Plagueheart Ring'),
(34136, 23064, 0, 0, 0, 1, 1, 1, 1, 'Ring of the Dreamwalker'),
(34136, 23065, 0, 0, 0, 1, 1, 1, 1, 'Ring of the Earthshatterer'),
(34136, 23066, 0, 0, 0, 1, 1, 1, 1, 'Ring of Redemption'),
(34136, 23067, 0, 0, 0, 1, 1, 1, 1, 'Ring of the Cryptstakler');