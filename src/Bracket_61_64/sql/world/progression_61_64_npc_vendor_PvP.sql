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
