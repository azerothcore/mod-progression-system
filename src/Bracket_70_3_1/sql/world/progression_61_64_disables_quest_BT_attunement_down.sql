-- Enable BT attunement quest chain
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (10944);
