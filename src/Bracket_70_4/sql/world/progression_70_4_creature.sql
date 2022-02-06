-- restore the 11 cultists from Un'Goro
DELETE FROM `waypoint_data` WHERE `id` in (286020,286040);
DELETE FROM `creature_addon` WHERE `guid` in (209102,209107,209111,209108,209110,209103,209109,209106,209104,209105,209112);
DELETE FROM `creature` WHERE `guid` in (209102,209107,209111,209108,209110,209103,209109,209106,209104,209105,209112);

INSERT INTO `creature` (`guid`,`id1`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(209102,28602,1,0,0,1,1,1,-6163.63,-1249.54,-159.733,3.11264,120,0,0,1,0,2,0,0,0,'',0),
(209103,28602,1,0,0,1,1,1,-6083.67,-1249.46,-143.482,0.01435,120,0,0,1,0,2,0,0,0,'',0),
(209104,28602,1,0,0,1,1,1,-6037.48,-1243.38,-146.828,5.98647,120,0,0,1,0,0,0,0,0,'',0),
(209105,28602,1,0,0,1,1,1,-6036.1,-1255.38,-146.828,1.15191,120,0,0,1,0,0,0,0,0,'',0),
(209106,28602,1,0,0,1,1,1,-6065.16,-1256.21,-143.361,3.10668,120,0,0,1,0,0,0,0,0,'',0),
(209107,28602,1,0,0,1,1,1,-6118.18,-1241.33,-143.281,3.12169,120,0,0,1,0,0,0,0,0,'',0),
(209108,28602,1,0,0,1,1,1,-6104.96,-1243.6,-143.192,3.12413,120,0,0,1,0,0,0,0,0,'',0),
(209109,28602,1,0,0,1,1,1,-6065.27,-1242.8,-143.33,3.14159,120,0,0,1,0,0,0,0,0,'',0),
(209110,28602,1,0,0,1,1,1,-6104.7,-1256.31,-143.192,3.05432,120,0,0,1,0,0,0,0,0,'',0),
(209111,28602,1,0,0,1,1,1,-6121.34,-1258.46,-143.192,2.9147,120,0,0,1,0,0,0,0,0,'',0),
(209112,28601,1,0,0,1,1,1,-6028.08,-1249.02,-146.764,3.05433,120,0,0,1,0,0,0,0,0,'',0);

INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`isLarge`,`auras`) VALUES (209102,286020,0,0,1,0,0,''),
(209103,286040,0,0,1,0,0,''),
(209104,0,0,8,0,0,0,''),
(209105,0,0,8,0,0,0,'');

INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES (286020,1,-6167.85,-1249.36,-162.651,0,0,0,0,100,0),
(286020,2,-6154.54,-1249.76,-155.479,0,0,0,0,100,0),
(286020,3,-6141.45,-1249.3,-147.71,0,0,0,0,100,0),
(286020,4,-6140.29,-1249.47,-147.229,0,0,0,0,100,0),
(286020,5,-6138.54,-1249.18,-145.979,0,0,0,0,100,0),
(286020,6,-6136.08,-1249.64,-143.298,0,0,0,0,100,0),
(286020,7,-6121,-1250.05,-143.296,0,0,0,0,100,0),
(286020,8,-6133.95,-1250.14,-143.348,0,0,0,0,100,0),
(286040,1,-6063.01,-1249.41,-143.429,0,0,0,0,100,0),
(286040,2,-6067.34,-1249.44,-143.206,0,0,0,0,100,0),
(286040,3,-6081.29,-1249.46,-143.475,0,0,0,0,100,0),
(286040,4,-6083.67,-1249.46,-143.482,0,0,0,0,100,0),
(286040,5,-6091.37,-1249.62,-143.625,0,0,0,0,100,0),
(286040,6,-6100.62,-1249.62,-143.375,0,0,0,0,100,0),
(286040,7,-6105.94,-1249.78,-143.276,0,0,0,0,100,0);
