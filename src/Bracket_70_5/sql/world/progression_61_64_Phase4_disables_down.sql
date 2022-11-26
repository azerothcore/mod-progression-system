-- Restore Zul'Aman quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11130, 11132, 11164, 11165, 11166, 11171, 11178, 11195, 11196);
