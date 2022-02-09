UPDATE `creature_template` SET `ScriptName` = "npc_lita_dungeonmaster" WHERE `entry` = 40438;
UPDATE `creature_template` SET `ScriptName` = "npc_lita_investigator" WHERE `entry` = 38208;

DELETE FROM `creature` WHERE `guid` IN (3110427, 3110428, 3110429, 3110430, 3110431, 3110432, 3110433, 3110434) AND `id1` = 40438;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3110434, 40438, 0, 0, 530, 0, 0, 1, 1, 0, 9607.96, -7181.38, 14.281, 1.29767, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110433, 40438, 0, 0, 0, 0, 0, 1, 1, 0, 1630.16, 242.94, 63.7057, 5.96447, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110432, 40438, 0, 0, 1, 0, 0, 1, 1, 0, -1227.7, 72.1031, 129.882, 3.41711, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110431, 40438, 0, 0, 1, 0, 0, 1, 1, 0, 1651.85, -4433.67, 17.5257, 1.526, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110430, 40438, 0, 0, 530, 0, 0, 1, 1, 0, -4001.34, -11847.1, 0.221773, 4.25922, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110429, 40438, 0, 0, 0, 0, 0, 1, 1, 0, -4923.93, -984.195, 501.458, 1.89939, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110428, 40438, 0, 0, 1, 0, 0, 1, 1, 0, 9872.92, 2497.57, 1315.88, 5.48987, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0),
(3110427, 40438, 0, 0, 0, 0, 0, 1, 1, 0, -8870.44, 640.768, 96.0921, 0.318439, 300, 0, 0, 2215, 0, 0, 0, 0, 0, '', 0);

-- Heart Shapped Box Loot
DELETE FROM `item_loot_template` WHERE `Entry` = 54537;
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54537, 49715, 0, 0, 0, 1, 1, 1, 1, NULL),
(54537, 49927, 0, 100, 0, 1, 0, 5, 10, NULL),
(54537, 50250, 0, 0.1, 0, 1, 3, 1, 1, NULL),
(54537, 50446, 0, 0, 0, 1, 1, 1, 1, NULL),
(54537, 50471, 0, 0, 0, 1, 1, 1, 1, NULL);

UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62 WHERE `entry` IN (36565, 36296, 36272);
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 36296;

UPDATE `item_template` SET `RequiredLevel` = 40 WHERE `entry` = 50250; -- love rocket
