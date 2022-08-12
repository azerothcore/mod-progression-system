DELETE FROM `creature_queststarter` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824, 7486) AND `id` = 13278;
DELETE FROM `creature_questender` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824) AND `id` = 13278;
DELETE FROM `quest_template_addon` WHERE `ID` IN (6821, 6822, 6823, 6824, 7486);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` = 6821;
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 5065) AND (`SourceId` IN (0, 1));
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 13278;
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 13278) AND (`source_type` = 0) AND (`id` IN (0, 1, 2, 3));
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 5065 AND `OptionID` IN (0, 1);
