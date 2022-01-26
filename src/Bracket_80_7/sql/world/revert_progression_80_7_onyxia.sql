-- Onyxia
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `lootid` = 36538, `damagemodifier` = 70 WHERE `entry` = 36538;

UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `lootid` = 12129, `skinloot` = 12129 WHERE `entry` = 36572;

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
DELETE FROM `reference_loot_template` WHERE `Entry` IN (54001, 54002);

DELETE FROM `disables` WHERE `entry` = 12559 AND `sourceType` = 4;
