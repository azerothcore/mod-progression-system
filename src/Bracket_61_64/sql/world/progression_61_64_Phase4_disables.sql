-- Disable Zul'Aman quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11130, 11132, 11164, 11165, 11166, 11171, 11178, 11195, 11196);
INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES
(1, 11130, 'Oooh, Shinies!'),
(1, 11132, 'Promises, Promises...'),
(1, 11164, 'Tuskin\' Raiders'),
(1, 11165, 'A Troll Among Trolls'),
(1, 11166, 'X Marks... Your Doom!'),
(1, 11171, 'Hex Lord? Hah!'),
(1, 11178, 'Blood of the Warlord'),
(1, 11195, 'Playin\' With Dolls'),
(1, 11196, 'TEMP X');
