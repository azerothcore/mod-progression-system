DELETE FROM `creature_queststarter` WHERE `quest` IN (4182, 4183) AND `id` = 9562;
DELETE FROM `creature_queststarter` WHERE `quest` IN (4184, 4223) AND `id` = 344;
DELETE FROM `creature_queststarter` WHERE `quest` = 4185 AND `id` = 29611;
DELETE FROM `creature_queststarter` WHERE `quest` = 4186 AND `id` = 1748;
DELETE FROM `creature_queststarter` WHERE `quest` IN (4224, 4241, 4264) AND `id` = 9560;
DELETE FROM `creature_queststarter` WHERE `quest` IN (4242, 4282, 4322) AND `id` = 9023;

DELETE FROM `creature_questender` WHERE `quest` = 4182 AND `id` = 9562;
DELETE FROM `creature_questender` WHERE `quest` IN (4183, 4186) AND `id` = 344;
DELETE FROM `creature_questender` WHERE `quest` = 4184 AND `id` = 29611;
DELETE FROM `creature_questender` WHERE `quest` = 4185 AND `id` = 1748;
DELETE FROM `creature_questender` WHERE `quest` IN (4223, 4224, 4242) AND `id` = 9560;
DELETE FROM `creature_questender` WHERE `quest`IN (4241, 4264, 4282) AND `id` = 9023;

-- True Masters quests
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(1, 4183, 0, '', '', 'Deprecated quest: The True Masters'),
(1, 4184, 0, '', '', 'Deprecated quest: The True Masters'),
(1, 4185, 0, '', '', 'Deprecated quest: The True Masters'),
(1, 4186, 0, '', '', 'Deprecated quest: The True Masters'),
(1, 4223, 0, '', '', 'Deprecated quest: The True Masters'),
(1, 4224, 0, '', '', 'Deprecated quest: The True Masters');

DELETE FROM `creature_questender` WHERE `quest` = 4322 AND `id` = 9560;
DELETE FROM `creature_questender` WHERE `quest` = 6402 AND `id` = 17804;

DELETE FROM `creature_queststarter` WHERE `quest` = 6402 AND `id` = 9560;
DELETE FROM `creature_queststarter` WHERE `quest` = 6403 AND `id` = 12580;

DELETE FROM `creature_text` WHERE `CreatureID` = 466 AND `GroupID` > 0;

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 17804;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 12580;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 1756;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 9023;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (9022, 9679);

DELETE FROM `gossip_menu` WHERE `MenuID` = 12580 AND `TextID` = 5633;

UPDATE `creature_template` SET `gossip_menu_id` = 12580 WHERE `entry` = 12580;

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 12580;

SET @ENTRY := 12580;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;

SET @ENTRY := 1749;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;

SET @ENTRY := 1748;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;

SET @ENTRY := 12756;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=20465;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=20358;

SET @ENTRY  := 68;
SET @ENTRY2 := 1756;
SET @ENTRY3 := 1976;
DELETE FROM `creature_text` WHERE `CreatureID` IN (68, 1756, 1976) AND `GroupID` = 10;

DELETE FROM `creature_questender` WHERE `quest` = 6402 AND `id` = 12580;

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 7480;

DELETE FROM `creature_text` WHERE `CreatureID` = 17804;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 7480;

DELETE FROM `gossip_menu` WHERE `MenuID` = 51749 AND `TextID` = 2693;
DELETE FROM `gossip_menu` WHERE `MenuID` = 51750 AND `TextID` = 2694;
DELETE FROM `gossip_menu` WHERE `MenuID` = 51751 AND `TextID` = 2695;
DELETE FROM `gossip_menu` WHERE `MenuID` = 51752 AND `TextID` = 2696;

UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `entry` = 1749;

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (51749, 51750, 51751, 51752);

DELETE FROM `conditions` WHERE `sourcetypeorreferenceId` = 14 AND `sourcegroup` = 51749;
DELETE FROM `conditions` WHERE `sourcetypeorreferenceId` = 15 AND `sourcegroup` = 51749;

DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN 59563 AND 59575 AND `TextID` BETWEEN 2713 AND 2725;

UPDATE `creature_template` SET `gossip_menu_id` = 2061 WHERE `entry` = 9563;

DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN 59563 AND 59575;

UPDATE `smart_scripts` SET `event_param1` = 2725 WHERE `entryorguid` = 9563 AND `id` = 3 AND `event_type` = 62; -- Ragged John quest credit

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 59563;

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 1749;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1749 AND `Source_type` = 0; 

-- Spawn Lady Katrana Prestor
-- Positions are hand-made. There's a huge throne where she used to be spawned in classic...
DELETE FROM `creature` WHERE `guid` = 500800 AND `id1` = 1749;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `SourceEntry` = 1749;

UPDATE `item_template` SET `startquest` = 0 WHERE `entry` = 11446; -- A crumpled up note

DELETE FROM `creature` WHERE `guid` = 500801 AND `id1` = 1748;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `SourceEntry` = 1748;

DELETE FROM `script_waypoint` WHERE `entry` = 9023;

DELETE FROM `creature_text` WHERE `CreatureID` = 9023;

-- Windsor, armored up.
DELETE FROM `creature_text` WHERE `CreatureID` = 9682;

DELETE FROM `creature_text` WHERE `CreatureID` = 9022;

DELETE FROM `creature_text` WHERE `CreatureID` = 9679;  

-- The Great Masquerade
DELETE FROM `creature_questender` WHERE `id` = 1748 AND `quest` = 6403;

UPDATE `creature_template` SET `flags_extra` = `flags_extra` &~536870912 WHERE `entry` = 12580;

DELETE FROM `creature_queststarter` WHERE `quest` = 6501;

DELETE FROM `creature_queststarter` WHERE `quest` = 6501;

DELETE FROM `creature_queststarter` WHERE `quest` = 6502;

DELETE FROM `creature_questender` WHERE `quest` = 6501;

DELETE FROM `creature_questender` WHERE `quest` = 6502;

UPDATE `creature_template` SET `npcflag` = `npcflag` &~1&~2 WHERE `entry` = 1749;
