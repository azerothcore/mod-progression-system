-- Alturus
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 7594) AND (`OptionID` IN (0));
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(7594, 0, 0, 'I\'ve lost my key to Karazhan.', 30321, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 7594);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7594, 0, 0, 0, 2, 0, 24490, 1, 0, 1, 0, 0, '', 'If player does not have \'The Master\'s Key\' in inventory'),
(15, 7594, 0, 0, 0, 2, 0, 24490, 1, 1, 1, 0, 0, '', 'If player does not have \'The Master\'s Key\' in bank'),
(15, 7594, 0, 0, 0, 8, 0, 9837, 0, 0, 0, 0, 0, '', 'If player has quest \'Return to Khadgar\' rewarded');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 17613;
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 17613) AND (`source_type` = 0) AND (`id` IN (0, 1));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(17613, 0, 0, 1, 62, 0, 100, 0, 7594, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Alturus - On Gossip Option 0 Selected - Close Gossip'),
(17613, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 54885, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Alturus - On Gossip Option 0 Selected - Cast \'Create The Master`s Key\'');

-- A'dal
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 7966) AND (`OptionID` IN (0, 1));
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(7966, 0, 0, 'A\'dal, I am ashamed to say that I have somehow misplaced the key to the Arcatraz.', 20427, 1, 1, 0, 0, 0, 0, '', 0, 0),
(7966, 1, 0, 'A\'dal, I have lost the key to Tempest Keep and require a replacement.', 20230, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 7966);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7966, 0, 0, 0, 2, 0, 31084, 1, 0, 1, 0, 0, '', 'If player does not have \'Key to the Arcatraz\' in inventory'),
(15, 7966, 0, 0, 0, 2, 0, 31084, 1, 1, 1, 0, 0, '', 'If player does not have \'Key to the Arcatraz\' in bank'),
(15, 7966, 0, 0, 0, 8, 0, 10704, 0, 0, 0, 0, 0, '', 'If player has quest \'How to Break Into the Arcatraz\' rewarded'),
(15, 7966, 1, 0, 0, 2, 0, 31704, 1, 0, 1, 0, 0, '', 'If player does not have \'The Tempest Key\' in inventory'),
(15, 7966, 1, 0, 0, 2, 0, 31704, 1, 1, 1, 0, 0, '', 'If player does not have \'The Tempest Key\' in bank'),
(15, 7966, 1, 0, 0, 8, 0, 13430, 0, 0, 0, 0, 0, '', 'If player has quest \'Trial of the Naaru: Magtheridon\' rewarded');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 18481) AND (`source_type` = 0) AND (`id` IN (5, 6, 7, 8));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18481, 0, 5, 6, 62, 0, 100, 0, 7966, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'A\'dal - On Gossip Option 0 Selected - Close Gossip'),
(18481, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 54881, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'A\'dal - On Gossip Option 0 Selected - Cast \'Create Key to the Arcatraz\''),
(18481, 0, 7, 8, 62, 0, 100, 0, 7966, 1, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'A\'dal - On Gossip Option 1 Selected - Close Gossip'),
(18481, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 39116, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'A\'dal - On Gossip Option 1 Selected - Cast \'Create Tempest Key\'');
