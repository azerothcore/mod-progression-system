-- Adds back Frozo the Renowned and it's show.
DELETE FROM `creature` WHERE `guid`=202846 AND `id1` = 40160;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES (202846, 40160, 0, 0, 571, 4395, 4620, 1, 1, 1, 5910.08, 720.278, 643.425, 3.26377, 120, 0, 0, 8508, 7981, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `npc_vendor` WHERE `entry` = 40160 AND `item` IN (35622, 35623, 35624, 35625, 35627, 36860, 36908, 45087, 47556, 54798);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(40160, 0, 35622, 0, 0, 2985, 0), -- Eternal Water
(40160, 0, 35623, 0, 0, 2985, 0), -- Eternal Air
(40160, 0, 35624, 0, 0, 2985, 0), -- Eternal Earth
(40160, 0, 35625, 0, 0, 2985, 0), -- Eternal Life
(40160, 0, 35627, 0, 0, 2985, 0), -- Eternal Shadow
(40160, 0, 36860, 0, 0, 2985, 0), -- Eternal Fire
(40160, 0, 36908, 0, 0, 2985, 0), -- Frost Lotus
(40160, 0, 45087, 0, 0, 2987, 0), -- Runed Orb
(40160, 0, 47556, 0, 0, 2986, 0), -- Crusader Orb
(40160, 0, 54798, 0, 0, 2986, 0); -- Pattern: Frosty Flying Carpet
