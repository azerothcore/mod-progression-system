-- Onyxia
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `lootid` = 10184 WHERE `entry` = 10184;

UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `lootid` = 0, `skinloot` = 0 WHERE `entry` IN (11262, 12129);

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
DELETE FROM `reference_loot_template` WHERE `Entry` IN (54001, 54002);

DELETE FROM `disables` WHERE `entry` = 12559 AND `sourceType` = 4;

DELETE FROM `disables` WHERE `entry` IN (12565, 12566, 12567, 12558) AND `sourceType` = 4;

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 15;

UPDATE `dungeon_access_template` SET `min_level` = 80 WHERE `map_id` = 249 AND `difficulty` = 0;

DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = 249;
