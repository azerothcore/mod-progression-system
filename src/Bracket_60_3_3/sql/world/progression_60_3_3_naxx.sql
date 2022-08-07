-- Enable Naxxramas Map (mapID: 533)
SET @MapID := 533;
DELETE FROM `disables` WHERE `entry` = @MapID;

-- Update map difficulty of Naxx25  to '1'
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = @MapID;
INSERT INTO `mapdifficulty_dbc`
(`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`)
VALUES
(128, @MapID, 1, 604800, 25, 'RAID_DIFFICULTY_25PLAYER');
-- Set access to min level 60 for Naxx25
UPDATE `dungeon_access_template` SET `min_level` = 60 WHERE `map_id` = @MapID AND `difficulty` = 1;

-- Update Graveyard Position from Dragonblight to EPL
-- https://wow.tools/dbc/?dbc=worldsafelocs&build=3.3.5.12340#page=1&search=909
-- https://wow.tools/dbc/?dbc=areatable&build=3.3.5.12340#page=1&search=3456
DELETE FROM `graveyard_zone` WHERE `GhostZone` = 3456;
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`)
VALUES
(909, 3456, 0, 'Naxxramas, Eastern Plaguelands - Blackwood Lake');

-- Set coordinates for Naxx in EPL
SET @PORTAL_X:= 3094.8951;
SET @PORTAL_Y:= -3873.87;
SET @PORTAL_Z:= 135.46;
SET @PORTAL_O:= 3.2138;
SET @EXIT_Z:= 138.36;
SET @FLOAT_Z:= 200;

-- Add Entrance portal object. Green circle (id: 190564)
DELETE FROM `gameobject` WHERE `id`=190564 AND `map`=0 AND `zoneId` = 0 AND `areaID` =0;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
`position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
`rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
`ScriptName`, `VerifiedBuild`) VALUES
(190564, 0, 0, 0, 1, 1, @PORTAL_X, @PORTAL_Y, @PORTAL_Z, @PORTAL_O, 0, 0,
-0.063658, -1, 1, 0, 1, '', 0);

-- Add Floating Naxx Object (id: 181056)
-- TODO: Fix visibility. Not always visible
DELETE FROM `gameobject` WHERE `id`=181056;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
`position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
`rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
`ScriptName`, `VerifiedBuild`) VALUES
(181056, 0, 0, 0, 1, 1, @PORTAL_X, @PORTAL_Y, @FLOAT_Z, -2.148, 0.0, 0.0, 0, 0, 900,
100, 1, '', 0);

-- Update Naxx exits (mapID: 533) to somewhere in EPL
DELETE FROM `areatrigger_teleport` WHERE `ID` in (5196, 5197, 5198, 5199);
INSERT INTO `areatrigger_teleport`
(`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`,
`target_position_z`, `target_orientation`)
VALUES
(5196, 'Naxxramas (exit1)', 0, @PORTAL_X, @PORTAL_Y, @EXIT_Z, @PORTAL_O),
(5197, 'Naxxramas (exit2)', 0, @PORTAL_X, @PORTAL_Y, @EXIT_Z, @PORTAL_O),
(5198, 'Naxxramas (exit3)', 0, @PORTAL_X, @PORTAL_Y, @EXIT_Z, @PORTAL_O),
(5199, 'Naxxramas (exit4)', 0, @PORTAL_X, @PORTAL_Y, @EXIT_Z, @PORTAL_O);

-- Meeting stone
DELETE FROM `gameobject` WHERE id=193166;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
`position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
`rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
`ScriptName`, `VerifiedBuild`) VALUES
(193166, 0, 0, 0, 1, 1, 3072.64, -3886.67, 130.449, 2.4011, 0.0, 0.0, -0.932239,
-0.361844, 300, 0, 1, '', 0);
-- Update meeting stone requirements (previous: minLvl 15)
-- AreaTable ID: 3456 ContinentID: 533
-- https://wow.tools/dbc/?dbc=areatable&build=3.3.5.12340#page=1&search=3456
DELETE FROM `gameobject_template` WHERE entry=193166;
SET @MINLEVEL:=55;
INSERT INTO `gameobject_template`
(`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`,
`size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`,
`Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`,
`Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`,
`AIName`, `ScriptName`, `VerifiedBuild`)
VALUES
(193166, 23, 5492, 'Meeting Stone', '', '', '', 0.75, @MINLEVEL, 255, 3456, 0,
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);