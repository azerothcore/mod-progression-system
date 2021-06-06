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
(2, 509, 1, "", "", "Ahn’Qiraj Ruins"),
(2, 531, 1, "", "", "Ahn’Qiraj Temple");
