UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` IN (23872, 23795, 26776, 26764, 26822);
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 23872;

DELETE FROM `item_loot_template` WHERE `Item` IN (48663, 49120, 49426) AND `Entry` = 54535;

UPDATE `creature_template` SET `ScriptName` = 'npc_brewfest_dungeonmaster' WHERE `entry` IN (40437, 40441);

DELETE FROM `creature` WHERE `id1` IN (40437, 40441) AND `guid` IN (3200500, 3200501);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3200500,40437,0,0,1,0,0,1,1,0,1612.37,-4391.63,10.5139,3.76202,300,0,0,2215,0,0,0,0,0,'',0),
(3200501,40441,0,0,0,0,0,1,1,0,-8872.23,639.728,96.0906,0.535996,300,0,0,2215,0,0,0,0,0,'',0);

DELETE FROM `game_event_creature` WHERE `eventEntry` = 24 AND `guid` IN (3200500, 3200501);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(24, 3200500),
(24, 3200501);
