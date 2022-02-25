/*
  Lhara in Darkmoon Faire, entry: 14846
  Restores TBC items sold by Lhara in Darkmoon Faire
  items: (21887, 22572, 22573, 22574, 22575, 22576, 22577, 22578, 22787, 22789, 22790, 22791, 22792, 22793, 22794, 23436, 23437, 23438, 23439, 23440, 23441, 23793, 25707, 25708)
*/
DELETE FROM `npc_vendor` WHERE (`entry` = 14846) AND (`item` IN (21887, 22572, 22573, 22574, 22575, 22576, 22577, 22578, 22787, 22789, 22790, 22791, 22792, 22793, 22794, 23436, 23437, 23438, 23439, 23440, 23441, 23793, 25707, 25708));
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(14846, 0, 21887, 1, 900, 0, 0),
(14846, 0, 22572, 2, 900, 0, 0),
(14846, 0, 22573, 2, 900, 0, 0),
(14846, 0, 22574, 2, 900, 0, 0),
(14846, 0, 22575, 2, 900, 0, 0),
(14846, 0, 22576, 2, 900, 0, 0),
(14846, 0, 22577, 2, 900, 0, 0),
(14846, 0, 22578, 2, 900, 0, 0),
(14846, 0, 22787, 2, 7200, 0, 0),
(14846, 0, 22789, 1, 7200, 0, 0),
(14846, 0, 22790, 2, 7200, 0, 0),
(14846, 0, 22791, 1, 7200, 0, 0),
(14846, 0, 22792, 2, 7200, 0, 0),
(14846, 0, 22793, 1, 7200, 0, 0),
(14846, 0, 22794, 1, 7200, 0, 0),
(14846, 0, 23436, 1, 3600, 0, 0),
(14846, 0, 23437, 1, 3600, 0, 0),
(14846, 0, 23438, 1, 3600, 0, 0),
(14846, 0, 23439, 1, 3600, 0, 0),
(14846, 0, 23440, 1, 3600, 0, 0),
(14846, 0, 23441, 1, 3600, 0, 0),
(14846, 0, 23793, 1, 7200, 0, 0),
(14846, 0, 25707, 2, 900, 0, 0),
(14846, 0, 25708, 2, 900, 0, 0);

/*
  Impact Shell and Wicked Arrow to vendors
  This ammunition was introduced in The Burning Crusade patch 2.5
  items: (28060,28053)
*/
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(734, 0, 28060, 0, 0, 0, 0),
(1149, 0, 28060, 0, 0, 0, 0),
(1285, 0, 28060, 0, 0, 0, 0),
(2084, 0, 28060, 0, 0, 0, 0),
(2401, 0, 28060, 0, 0, 0, 0),
(2685, 0, 28060, 0, 0, 0, 0),
(2803, 0, 28060, 0, 0, 0, 0),
(2806, 0, 28060, 0, 0, 0, 0),
(2808, 0, 28060, 0, 0, 0, 0),
(2820, 0, 28060, 0, 0, 0, 0),
(2908, 0, 28060, 0, 0, 0, 0),
(3313, 0, 28060, 0, 0, 0, 0),
(3322, 0, 28060, 0, 0, 0, 0),
(3350, 0, 28060, 0, 0, 0, 0),
(3541, 0, 28060, 0, 0, 0, 0),
(3625, 0, 28060, 0, 0, 0, 0),
(4170, 0, 28060, 0, 0, 0, 0),
(4241, 0, 28060, 0, 0, 0, 0),
(4555, 0, 28060, 0, 0, 0, 0),
(4896, 0, 28060, 0, 0, 0, 0),
(5101, 0, 28060, 0, 0, 0, 0),
(5134, 0, 28060, 0, 0, 0, 0),
(6028, 0, 28060, 0, 0, 0, 0),
(7942, 0, 28060, 0, 0, 0, 0),
(8131, 0, 28060, 0, 0, 0, 0),
(8139, 0, 28060, 0, 0, 0, 0),
(8362, 0, 28060, 0, 0, 0, 0),
(9548, 0, 28060, 0, 0, 0, 0),
(11038, 0, 28060, 0, 0, 0, 0),
(11184, 0, 28060, 0, 0, 0, 0),
(11555, 0, 28060, 0, 0, 0, 0),
(12021, 0, 28060, 0, 0, 0, 0),
(12027, 0, 28060, 0, 0, 0, 0),
(12246, 0, 28060, 0, 0, 0, 0),
(12959, 0, 28060, 0, 0, 0, 0),
(12960, 0, 28060, 0, 0, 0, 0),
(14624, 0, 28060, 0, 0, 0, 0),
(15174, 0, 28060, 0, 0, 0, 0),
(15397, 0, 28060, 0, 0, 0, 0),
(16191, 0, 28060, 0, 0, 0, 0),
(16602, 0, 28060, 0, 0, 0, 0),
(16732, 0, 28060, 0, 0, 0, 0),
(16826, 0, 28060, 0, 0, 0, 0),
(18011, 0, 28060, 0, 0, 0, 0),
(18907, 0, 28060, 0, 0, 0, 0),
(18959, 0, 28060, 0, 0, 0, 0),
(19020, 0, 28060, 0, 0, 0, 0),
(19021, 0, 28060, 0, 0, 0, 0),
(19053, 0, 28060, 0, 0, 0, 0),
(19197, 0, 28060, 0, 0, 0, 0),
(19243, 0, 28060, 0, 0, 0, 0),
(19314, 0, 28060, 0, 0, 0, 0),
(19315, 0, 28060, 0, 0, 0, 0),
(19339, 0, 28060, 0, 0, 0, 0),
(19343, 0, 28060, 0, 0, 0, 0),
(19351, 0, 28060, 0, 0, 0, 0),
(19374, 0, 28060, 0, 0, 0, 0),
(19436, 0, 28060, 0, 0, 0, 0),
(19452, 0, 28060, 0, 0, 0, 0),
(19473, 0, 28060, 0, 0, 0, 0),
(19474, 0, 28060, 0, 0, 0, 0),
(19498, 0, 28060, 0, 0, 0, 0),
(19534, 0, 28060, 0, 0, 0, 0),
(19560, 0, 28060, 0, 0, 0, 0),
(19574, 0, 28060, 0, 0, 0, 0),
(19625, 0, 28060, 0, 0, 0, 0),
(19649, 0, 28060, 0, 0, 0, 0),
(19679, 0, 28060, 0, 0, 0, 0),
(19694, 0, 28060, 0, 0, 0, 0),
(19718, 0, 28060, 0, 0, 0, 0),
(19836, 0, 28060, 0, 0, 0, 0),
(20080, 0, 28060, 0, 0, 0, 0),
(20092, 0, 28060, 0, 0, 0, 0),
(20194, 0, 28060, 0, 0, 0, 0),
(20231, 0, 28060, 0, 0, 0, 0),
(20249, 0, 28060, 0, 0, 0, 0),
(20892, 0, 28060, 0, 0, 0, 0),
(21082, 0, 28060, 0, 0, 0, 0),
(21111, 0, 28060, 0, 0, 0, 0),
(21172, 0, 28060, 0, 0, 0, 0),
(21183, 0, 28060, 0, 0, 0, 0),
(21483, 0, 28060, 0, 0, 0, 0),
(21488, 0, 28060, 0, 0, 0, 0),
(22099, 0, 28060, 0, 0, 0, 0),
(22270, 0, 28060, 0, 0, 0, 0),
(22491, 0, 28060, 0, 0, 0, 0),
(23143, 0, 28060, 0, 0, 0, 0),
(23373, 0, 28060, 0, 0, 0, 0),
(23862, 0, 28060, 0, 0, 0, 0),
(24028, 0, 28060, 0, 0, 0, 0),
(24053, 0, 28060, 0, 0, 0, 0),
(24141, 0, 28060, 0, 0, 0, 0),
(24348, 0, 28060, 0, 0, 0, 0),
(25035, 0, 28060, 0, 0, 0, 0),
(26718, 0, 28060, 0, 0, 0, 0),
(26901, 0, 28060, 0, 0, 0, 0),
(27055, 0, 28060, 0, 0, 0, 0),
(27071, 0, 28060, 0, 0, 0, 0),
(28040, 0, 28060, 0, 0, 0, 0),
(28792, 0, 28060, 0, 0, 0, 0),
(28800, 0, 28060, 0, 0, 0, 0),
(28807, 0, 28060, 0, 0, 0, 0),
(28813, 0, 28060, 0, 0, 0, 0),
(29014, 0, 28060, 0, 0, 0, 0),
(29207, 0, 28060, 0, 0, 0, 0),
(29493, 0, 28060, 0, 0, 0, 0),
(29945, 0, 28060, 0, 0, 0, 0),
(30572, 0, 28060, 0, 0, 0, 0),
(31025, 0, 28060, 0, 0, 0, 0),
(228, 0, 28053, 0, 0, 0, 0),
(734, 0, 28053, 0, 0, 0, 0),
(789, 0, 28053, 0, 0, 0, 0),
(1149, 0, 28053, 0, 0, 0, 0),
(1285, 0, 28053, 0, 0, 0, 0),
(1298, 0, 28053, 0, 0, 0, 0),
(1462, 0, 28053, 0, 0, 0, 0),
(2084, 0, 28053, 0, 0, 0, 0),
(2401, 0, 28053, 0, 0, 0, 0),
(2803, 0, 28053, 0, 0, 0, 0),
(2806, 0, 28053, 0, 0, 0, 0),
(2808, 0, 28053, 0, 0, 0, 0),
(2820, 0, 28053, 0, 0, 0, 0),
(2839, 0, 28053, 0, 0, 0, 0),
(2908, 0, 28053, 0, 0, 0, 0),
(3015, 0, 28053, 0, 0, 0, 0),
(3313, 0, 28053, 0, 0, 0, 0),
(3350, 0, 28053, 0, 0, 0, 0),
(3410, 0, 28053, 0, 0, 0, 0),
(3541, 0, 28053, 0, 0, 0, 0),
(3625, 0, 28053, 0, 0, 0, 0),
(4170, 0, 28053, 0, 0, 0, 0),
(4173, 0, 28053, 0, 0, 0, 0),
(4241, 0, 28053, 0, 0, 0, 0),
(4555, 0, 28053, 0, 0, 0, 0),
(4604, 0, 28053, 0, 0, 0, 0),
(4892, 0, 28053, 0, 0, 0, 0),
(4896, 0, 28053, 0, 0, 0, 0),
(5101, 0, 28053, 0, 0, 0, 0),
(5122, 0, 28053, 0, 0, 0, 0),
(5134, 0, 28053, 0, 0, 0, 0),
(6028, 0, 28053, 0, 0, 0, 0),
(7942, 0, 28053, 0, 0, 0, 0),
(8139, 0, 28053, 0, 0, 0, 0),
(8362, 0, 28053, 0, 0, 0, 0),
(9548, 0, 28053, 0, 0, 0, 0),
(9551, 0, 28053, 0, 0, 0, 0),
(9552, 0, 28053, 0, 0, 0, 0),
(9555, 0, 28053, 0, 0, 0, 0),
(11038, 0, 28053, 0, 0, 0, 0),
(11555, 0, 28053, 0, 0, 0, 0),
(12021, 0, 28053, 0, 0, 0, 0),
(12027, 0, 28053, 0, 0, 0, 0),
(12246, 0, 28053, 0, 0, 0, 0),
(12959, 0, 28053, 0, 0, 0, 0),
(12960, 0, 28053, 0, 0, 0, 0),
(14301, 0, 28053, 0, 0, 0, 0),
(14624, 0, 28053, 0, 0, 0, 0),
(15174, 0, 28053, 0, 0, 0, 0),
(15397, 0, 28053, 0, 0, 0, 0),
(16191, 0, 28053, 0, 0, 0, 0),
(16602, 0, 28053, 0, 0, 0, 0),
(16732, 0, 28053, 0, 0, 0, 0),
(16826, 0, 28053, 0, 0, 0, 0),
(16919, 0, 28053, 0, 0, 0, 0),
(17598, 0, 28053, 0, 0, 0, 0),
(18011, 0, 28053, 0, 0, 0, 0),
(18907, 0, 28053, 0, 0, 0, 0),
(18959, 0, 28053, 0, 0, 0, 0),
(19020, 0, 28053, 0, 0, 0, 0),
(19021, 0, 28053, 0, 0, 0, 0),
(19053, 0, 28053, 0, 0, 0, 0),
(19197, 0, 28053, 0, 0, 0, 0),
(19243, 0, 28053, 0, 0, 0, 0),
(19314, 0, 28053, 0, 0, 0, 0),
(19315, 0, 28053, 0, 0, 0, 0),
(19339, 0, 28053, 0, 0, 0, 0),
(19343, 0, 28053, 0, 0, 0, 0),
(19351, 0, 28053, 0, 0, 0, 0),
(19374, 0, 28053, 0, 0, 0, 0),
(19436, 0, 28053, 0, 0, 0, 0),
(19452, 0, 28053, 0, 0, 0, 0),
(19473, 0, 28053, 0, 0, 0, 0),
(19474, 0, 28053, 0, 0, 0, 0),
(19498, 0, 28053, 0, 0, 0, 0),
(19534, 0, 28053, 0, 0, 0, 0),
(19560, 0, 28053, 0, 0, 0, 0),
(19561, 0, 28053, 0, 0, 0, 0),
(19574, 0, 28053, 0, 0, 0, 0),
(19625, 0, 28053, 0, 0, 0, 0),
(19649, 0, 28053, 0, 0, 0, 0),
(19679, 0, 28053, 0, 0, 0, 0),
(19694, 0, 28053, 0, 0, 0, 0),
(19718, 0, 28053, 0, 0, 0, 0),
(20080, 0, 28053, 0, 0, 0, 0),
(20092, 0, 28053, 0, 0, 0, 0),
(20194, 0, 28053, 0, 0, 0, 0),
(20231, 0, 28053, 0, 0, 0, 0),
(20249, 0, 28053, 0, 0, 0, 0),
(20892, 0, 28053, 0, 0, 0, 0),
(21082, 0, 28053, 0, 0, 0, 0),
(21111, 0, 28053, 0, 0, 0, 0),
(21172, 0, 28053, 0, 0, 0, 0),
(21183, 0, 28053, 0, 0, 0, 0),
(21483, 0, 28053, 0, 0, 0, 0),
(21488, 0, 28053, 0, 0, 0, 0),
(22099, 0, 28053, 0, 0, 0, 0),
(22270, 0, 28053, 0, 0, 0, 0),
(23143, 0, 28053, 0, 0, 0, 0),
(23373, 0, 28053, 0, 0, 0, 0),
(23862, 0, 28053, 0, 0, 0, 0),
(24028, 0, 28053, 0, 0, 0, 0),
(24053, 0, 28053, 0, 0, 0, 0),
(24141, 0, 28053, 0, 0, 0, 0),
(24348, 0, 28053, 0, 0, 0, 0),
(25035, 0, 28053, 0, 0, 0, 0),
(26718, 0, 28053, 0, 0, 0, 0),
(26901, 0, 28053, 0, 0, 0, 0),
(27055, 0, 28053, 0, 0, 0, 0),
(27071, 0, 28053, 0, 0, 0, 0),
(28040, 0, 28053, 0, 0, 0, 0),
(28792, 0, 28053, 0, 0, 0, 0),
(28800, 0, 28053, 0, 0, 0, 0),
(28807, 0, 28053, 0, 0, 0, 0),
(28813, 0, 28053, 0, 0, 0, 0),
(29014, 0, 28053, 0, 0, 0, 0),
(29207, 0, 28053, 0, 0, 0, 0),
(29493, 0, 28053, 0, 0, 0, 0),
(30572, 0, 28053, 0, 0, 0, 0),
(31025, 0, 28053, 0, 0, 0, 0);

-- Sergeant Major Clate
-- Faction Alliance
-- InventoryType Head, Chest, Leg
-- Quality Rare
-- ExtendedCost 5k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 12785 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (1, 7, 5) AND `Quality` = 3);

-- Sergeant Major Clate
-- Faction Alliance
-- InventoryType Hand, Feet, Shoulder
-- Quality Rare
-- ExtendedCost 3k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 12785 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (10, 8, 3) AND `Quality` = 3);

-- First Sergeant Hola'mahi
-- Faction Horde
-- InventoryType Head, Chest, Leg
-- Quality Rare
-- ExtendedCost 5k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 444 WHERE `entry` = 12795 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (1, 7, 5) AND `Quality` = 3);

-- First Sergeant Hola'mahi
-- Faction Horde
-- InventoryType Hand, Feet, Shoulder
-- Quality Rare
-- ExtendedCost 3k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 12795 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (10, 8, 3) AND `Quality` = 3);

-- Thanthaldis Snowgleam
-- Faction Alliance
-- InventoryType Back, Neck
-- Quality Rare
-- ExtendedCost 1.6k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 13217 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (16, 2) AND `Quality` = 3);

-- Thanthaldis Snowgleam
-- Faction Alliance
-- InventoryType Waist
-- Quality Rare
-- ExtendedCost 3k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 13217 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (6) AND `Quality` = 3);

-- Jekyll Flandring
-- Faction Horde
-- InventoryType Back, Neck
-- Quality Rare
-- ExtendedCost 1.6k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 13219 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (16, 2) AND `Quality` = 3);

-- Jekyll Flandring
-- Faction Horde
-- InventoryType Waist
-- Quality Rare
-- ExtendedCost 3k Honor
UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 13219 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (6) AND `Quality` = 3);

-- Master Sergeant Biggins
-- Faction Alliance
-- InventoryType Back, Neck, Wrist
-- Quality Rare
-- ExtendedCost 1.6k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 12781 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (16, 2, 9) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Brave Stonehide
-- Faction Horde
-- InventoryType Back, Neck, Wrist
-- Quality Rare
-- ExtendedCost 1.6k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 12793 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (16, 2, 9) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Samuel Hawke
-- Faction Alliance
-- InventoryType Waist, Feet Trinket
-- Quality Rare
-- ExtendedCost 3k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 15127 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (6, 8, 12) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Rutherford Twing
-- Faction Horde
-- InventoryType Waist, Feet Trinket
-- Quality Rare
-- ExtendedCost 3k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 427 WHERE `entry` = 15126 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (6, 8, 12) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Illiyana Moonblaze
-- Faction Alliance
-- InventoryType Finger, Back, Neck
-- Quality Rare
-- ExtendedCost 1.6k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 14753 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (11, 16, 2) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Illiyana Moonblaze
-- Faction Alliance
-- InventoryType Dagger OneHand, Sword OneHand, Bow
-- Quality Rare
-- ExtendedCost 6k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 747 WHERE `entry` = 14753 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (15, 13) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Illiyana Moonblaze
-- Faction Alliance
-- InventoryType Staff (TwoHand)
-- Quality Rare
-- ExtendedCost 15k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 171 WHERE `entry` = 14753 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (17) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Illiyana Moonblaze
-- Faction Alliance
-- InventoryType Wirst
-- Quality Rare
-- ExtendedCost 700 Honor
-- RequiredLevel 50
UPDATE `npc_vendor` SET `ExtendedCost` = 837 WHERE `entry` = 14753 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (9) AND `Quality` = 3 AND `RequiredLevel` = 50);

-- Kelm Hargunth
-- Faction Horde
-- InventoryType Finger, Back, Neck
-- Quality Rare
-- ExtendedCost 1.6k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 491 WHERE `entry` = 14754 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (11, 16, 2) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Kelm Hargunth
-- Faction Horde
-- InventoryType Dagger OneHand, Sword OneHand, Bow
-- Quality Rare
-- ExtendedCost 6k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 747 WHERE `entry` = 14754 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (15, 13) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Kelm Hargunth
-- Faction Horde
-- InventoryType Staff (TwoHand)
-- Quality Rare
-- ExtendedCost 15k Honor
-- RequiredLevel 58
UPDATE `npc_vendor` SET `ExtendedCost` = 171 WHERE `entry` = 14754 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (17) AND `Quality` = 3 AND `RequiredLevel` = 58);

-- Kelm Hargunth
-- Faction Horde
-- InventoryType Wirst
-- Quality Rare
-- ExtendedCost 700 Honor
-- RequiredLevel 50
UPDATE `npc_vendor` SET `ExtendedCost` = 837 WHERE `entry` = 14754 AND `item` IN (SELECT `entry` FROM `item_template` WHERE `InventoryType` IN (9) AND `Quality` = 3 AND `RequiredLevel` = 50);
