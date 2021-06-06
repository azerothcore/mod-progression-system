-- 60 level range - Tier 1
DELETE FROM `disables` WHERE `entry` = 409;

-- 60 level range - Tier 2
DELETE FROM `disables` WHERE `entry` = 469;

-- 60 level range - Zul’Gurub
DELETE FROM `disables` WHERE `entry` = 309;

-- 60 level range - Ahn’Qiraj
DELETE FROM `disables` WHERE `entry` IN (509, 531);
