-- 20-29 level range
DELETE FROM `disables` WHERE `entry` IN (34, 47, 90);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 34, 1, "", "", "Stormwind Stockades"),
(2, 47, 1, "", "", "Razorfen Kraul"),
(2, 90, 1, "", "", "Gnomeregan");

-- 30-39 level range
DELETE FROM `disables` WHERE `entry` IN (70, 129, 189);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 70, 1, "", "", "Uldaman"),
(2, 129, 1, "", "", "Razorfen Downs"),
(2, 189, 1, "", "", "Scarlet Monastery - All wings");

-- 40-49 level range
DELETE FROM `disables` WHERE `entry` IN (109, 209, 349);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 109, 1, "", "", "Sunken Temple Dungeon"),
(2, 209, 1, "", "", "Zul'Farrak (ZF)"),
(2, 349, 1, "", "", "Maraudon - All wings");

-- 50-59 level range
DELETE FROM `disables` WHERE `entry` IN (230, 429, 229, 289, 329);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 230, 1, "", "", "Blackrock Depths (BRD)"),
(2, 429, 1, "", "", "Dire Maul - All wings"),
(2, 229, 1, "", "", "Blackrock Spire - Both Lower (LBRS) & Upper (UBRS)"),
(2, 289, 1, "", "", "Scholomance"),
(2, 329, 1, "", "", "Stratholme");

-- 60 level range - Tier 1
DELETE FROM `disables` WHERE `entry` = 409;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 409, 1, "", "", "Molten Core");

-- 60 level range - Tier 2
DELETE FROM `disables` WHERE `entry` = 469;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 469, 1, "", "", "Blackwing Lair");

-- 60 level range - Zul’Gurub
DELETE FROM `disables` WHERE `entry` = 309;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 309, 1, "", "", "Zul’Gurub");

-- 60 level range - Ahn’Qiraj
DELETE FROM `disables` WHERE `entry` IN (509, 531);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 509, 1, "", "", "Ahn’Qiraj Runins"),
(2, 531, 1, "", "", "Ahn’Qiraj Temple");

-- 61-64 level range
DELETE FROM `disables` WHERE `entry` IN (542, 543, 546, 547, 557, 558, 560);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 542, 3, "", "", "The Blood Furnace"),
(2, 543, 3, "", "", "Hellfire Ramparts"),
(2, 546, 3, "", "", "The Underbog"),
(2, 547, 3, "", "", "The Slave Pens"),
(2, 557, 3, "", "", "Mana Tombs"),
(2, 558, 3, "", "", "Auchenai Crypts"),
(2, 560, 3, "", "", "The Escape from Durnholde");

-- 65-69 level range
DELETE FROM `disables` WHERE `entry` IN (269, 540, 545, 552, 553, 554, 555, 556, 585);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 269, 3, "", "", "The Black Morass"),
(2, 540, 3, "", "", "The Shattered Halls"),
(2, 545, 3, "", "", "The Steamvault"),
(2, 552, 3, "", "", "The Arcatraz"),
(2, 553, 3, "", "", "The Botanica"),
(2, 554, 3, "", "", "The Mechanar"),
(2, 555, 3, "", "", "Shadow Labyrinth"),
(2, 556, 3, "", "", "Sethekk Halls"),
(2, 585, 3, "", "", "Magisters' Terrace");

-- 70 level range
DELETE FROM `disables` WHERE `entry` IN (532, 534, 544, 548, 550, 564, 565, 568, 580);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 532, 15, "", "", "Karazhan"),
(2, 534, 15, "", "", "Hyjal Summit"),
(2, 544, 15, "", "", "Magtheiron’s Lair"),
(2, 548, 15, "", "", "Serpentshrine Cavern"),
(2, 550, 15, "", "", "The Eye"),
(2, 564, 15, "", "", "Black Temple"),
(2, 565, 15, "", "", "Gruul's Lair"),
(2, 568, 15, "", "", "Zul'Aman"),
(2, 580, 15, "", "", "Sunwell Plateau");

-- 71-74 level range
DELETE FROM `disables` WHERE `entry` IN (574, 576, 600, 601, 604, 608, 619);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 574, 3, "", "", "Utgarde Keep"),
(2, 576, 3, "", "", "The Nexus"),
(2, 600, 3, "", "", "Drak’Tharon Keep"),
(2, 601, 3, "", "", "Azjol-Nerub"),
(2, 604, 3, "", "", "Gundrak"),
(2, 608, 3, "", "", "Violet Hold"),
(2, 619, 3, "", "", "Ahn’kahet: The Old Kingdom");

-- 75-79 level range
DELETE FROM `disables` WHERE `entry` IN (575, 578, 595, 599, 602);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 575, 3, "", "", "Utgarde Pinnacle"),
(2, 578, 3, "", "", "The Oculus"),
(2, 595, 3, "", "", "The Culling of Stratholme"),
(2, 599, 3, "", "", "Halls of Stone"),
(2, 602, 3, "", "", "Halls of Lighting");

-- 80 level range
DELETE FROM `disables` WHERE `entry` IN (249, 533, 603, 615, 616, 624, 631, 632, 649, 650, 658, 668, 724);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 249, 15, "", "", "Onyxia Lair"),
(2, 533, 15, "", "", "Naxxramas"),
(2, 603, 15, "", "", "Ulduar"),
(2, 615, 15, "", "", "The Obsidian Sanctum"),
(2, 616, 15, "", "", "The Eye of Eternity"),
(2, 624, 15, "", "", "Vault of Archavon"),
(2, 631, 15, "", "", "Icecrown Citadel"),
(2, 632, 3, "", "", "The Forge of Souls"),
(2, 649, 15, "", "", "Trial of The Crusader"),
(2, 650, 3, "", "", "Trial of the Champion"),
(2, 658, 3, "", "", "Pit of Saron"),
(2, 668, 3, "", "", "Halls of Reflection"),
(2, 724, 15, "", "", "The Ruby Sanctum");
