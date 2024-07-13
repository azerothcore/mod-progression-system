-- 
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 21220) AND (`source_type` = 0) AND (`id` IN (100));
-- INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (21220, 0, 100, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 38587, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Priestess - On Just Died - Cast \'Serverside - Summon Spirit of Redemption\'');

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 22210;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 22210);
-- INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- (22210, 0, 1, 0, 60, 0, 100, 0, 2000, 2000, 2000, 2000, 0, 0, 11, 38589, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Priestess Spirit - On Update - Cast \'Holy Nova\''),
-- (22210, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Priestess Spirit - On Respawn - Set Reactstate Passive');
