-- Enable Naxxramas Map (mapID: 533)
SET @MAP_ID := 533;
DELETE FROM `disables` WHERE `entry` = @MAP_ID;

-- Set coordinates for Naxx in EPL
-- Exit EPL Player
SET @EXIT_X:= 3094.8951;
SET @EXIT_Y:= -3873.87;
SET @EXIT_Z:= 135.46;
SET @EXIT_O:= 3.2138;
SET @EXIT_Z:= 138.36;
SET @FLOAT_Z:= 200;
-- Teleport To Naxxramas Object
SET @TRANSPORTER_X:= 3123.26;
SET @TRANSPORTER_Y:= -3869.36;
SET @TRANSPORTER_Z:= 138.34;
SET @TRANSPORTER_O:= 0.2175;

-- Update map difficulty of Naxx25  to '1'
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = @MAP_ID;
INSERT INTO `mapdifficulty_dbc`
(`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`)
VALUES
(128, @MAP_ID, 1, 604800, 25, 'RAID_DIFFICULTY_25PLAYER');
-- Set access to min level 60 for Naxx25
UPDATE `dungeon_access_template` SET `min_level` = 60 WHERE `map_id` = @MAP_ID AND `difficulty` = 1;

-- Update Graveyard Position from Dragonblight to EPL
-- https://wow.tools/dbc/?dbc=worldsafelocs&build=3.3.5.12340#page=1&search=909
-- https://wow.tools/dbc/?dbc=areatable&build=3.3.5.12340#page=1&search=3456
DELETE FROM `graveyard_zone` WHERE `GhostZone` = 3456;
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`)
VALUES
(909, 3456, 0, 'Naxxramas, Eastern Plaguelands - Blackwood Lake');

-- Add Entrance transporter object. Necromantic Runestone (id: 189314, displayID: 7786)
SET @DEATH_KNIGHT_PORTAL_EFFECT:= 28444;
SET @TRANSPORTER_ENTRY:=9000;
SET @TRANSPORTER_COOLDOWN:=5;
DELETE FROM `gameobject_template` WHERE (`entry` = @TRANSPORTER_ENTRY);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`,
`IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`,
`Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`,
`Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`,
`Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`,
`VerifiedBuild`)
VALUES
(@TRANSPORTER_ENTRY, 10, 7786, 'Teleport To Naxxramas', '', '', '', 1, 0, 0, 0,
0, @TRANSPORTER_COOLDOWN, 0, 0, 0, 0, 0, @DEATH_KNIGHT_PORTAL_EFFECT, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
0, 0, '', '', 12340);
DELETE FROM `gameobject` WHERE `id`=@TRANSPORTER_ENTRY AND `map`=0 AND `zoneId`=0 AND `areaID`=0;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
`position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
`rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
`ScriptName`, `VerifiedBuild`)
VALUES
(@TRANSPORTER_ENTRY, 0, 0, 0, 1, 1, @TRANSPORTER_X, @TRANSPORTER_Y,
@TRANSPORTER_Z, @TRANSPORTER_O, 0, 0,
-0.063658, -1, 1, 0, 1, '', 0);

-- Add Floating Naxx Object (id: 181056)
-- TODO: Fix visibility. Not always visible
DELETE FROM `gameobject` WHERE `id`=181056;
INSERT INTO `gameobject`
(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
`position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`,
`rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
`ScriptName`, `VerifiedBuild`) VALUES
(181056, 0, 0, 0, 1, 1, @TRANSPORTER_X, @TRANSPORTER_Y, @FLOAT_Z, -2.148, 0.0,
0.0, 0, 0, 900, 100, 1, '', 0);

-- Update exit portals to EPL OR Disable exit portals like Naxx40
DELETE FROM `areatrigger` WHERE `entry` in (5196, 5197, 5198,  5199);
DELETE FROM `areatrigger_teleport` WHERE `ID` in (5196, 5197, 5198, 5199);

-- If DISALBE exit EPL then comment out the following
-- Add triggers to Naxx exits (mapID: 533)
INSERT INTO `areatrigger`
(`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`)
VALUES
(5196, @MAP_ID, 3005.47, -3445.11, 297.925, 0.0, 9.3, 1.718, 8.0, 0.02805),
(5197, @MAP_ID, 3016.94, -3434.39, 297.928, 0.0, 9.3, 1.718, 8.0, 4.714),
(5198, @MAP_ID, 3005.67, -3423.28, 297.927, 0.0, 9.3, 1.718, 8.0, 6.276),
(5199, @MAP_ID, 2994.63, -3434.37, 297.928, 0.0, 9.3, 1.718, 8.0, 4.728);
-- Update `areatrigger_teleport` to EPL
INSERT INTO `areatrigger_teleport`
(`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`,
`target_position_z`, `target_orientation`)
VALUES
(5196, 'Naxxramas (exit1)', 0, @EXIT_X, @EXIT_Y, @EXIT_Z, @EXIT_O),
(5197, 'Naxxramas (exit2)', 0, @EXIT_X, @EXIT_Y, @EXIT_Z, @EXIT_O),
(5198, 'Naxxramas (exit3)', 0, @EXIT_X, @EXIT_Y, @EXIT_Z, @EXIT_O),
(5199, 'Naxxramas (exit4)', 0, @EXIT_X, @EXIT_Y, @EXIT_Z, @EXIT_O);

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