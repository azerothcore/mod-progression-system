-- Onyxia
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 36538;

UPDATE `creature_template` SET `lootid` = 36538 WHERE `entry` = 36538;

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
DELETE FROM `reference_loot_template` WHERE `Entry` IN (54001, 54002);
