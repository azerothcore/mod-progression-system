UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `ScriptName` = '' WHERE `entry` = 12397;

DELETE FROM `spell_script_names` WHERE `spell_id` = 21056;

DELETE FROM `creature_text` WHERE `CreatureID` = 12397;

DELETE FROM `creature` WHERE `guid` = 156950 AND `id1` = 12397;

