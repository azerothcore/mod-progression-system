UPDATE `creature_template` SET `ScriptName` = "" WHERE `entry` = 40438;
UPDATE `creature_template` SET `ScriptName` = "" WHERE `entry` = 38208;

DELETE FROM `creature` WHERE `guid` IN (3110427, 3110428, 3110429, 3110430, 3110431, 3110432, 3110433, 3110434) AND `id1` = 40438;
