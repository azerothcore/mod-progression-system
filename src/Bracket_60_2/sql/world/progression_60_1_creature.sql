-- restore world bosses spawns
DELETE FROM `creature` WHERE `id` IN (6109, 12397, 14890, 14889, 14888, 14887);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(52349,6109,1,0,0,1,1,0,0,2622.22,-5977.93,100.76,4.21209,868400,0,0,916025,0,0,0,0,0,'',0),
(32343,14887,1,0,0,1,1,15364,0,3301.05,-3732.57,173.544,2.9147,868400,0,0,1895000,0,0,0,0,0,'',0),
(52350,14888,0,0,0,1,1,0,0,753.619,-4012,93.043,3.193,868400,0,0,832750,0,0,0,0,0,'',0),
(50012,14889,1,0,0,1,1,15366,0,-2872.66,1884.25,52.7336,2.6529,868400,0,0,1895000,0,0,0,0,0,'',0),
(4256,14890,0,0,0,1,1,0,0,-10428.8,-392.176,43.7411,0.932375,868400,0,0,1895000,0,2,0,0,0,'',0);
