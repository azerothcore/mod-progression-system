-- Alturus
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 7594) AND (`OptionID` IN (0));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 7594);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 17613;
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 17613) AND (`source_type` = 0) AND (`id` IN (0, 1));

-- A'dal
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 7966) AND (`OptionID` IN (0, 1));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 7966);

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 18481) AND (`source_type` = 0) AND (`id` IN (5, 6, 7, 8));

-- Rohok (Shattered Halls - Horde)
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 8760) AND (`OptionID` IN (0));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 8760);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 16583;
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 16583) AND (`source_type` = 0) AND (`id` IN (0, 1));

-- Dumphry (Shattered Halls - Alliance)
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 8254) AND (`OptionID` IN (0));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 8254);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 21209;
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 21209) AND (`source_type` = 0) AND (`id` IN (0, 1));
