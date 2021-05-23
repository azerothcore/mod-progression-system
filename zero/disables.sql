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