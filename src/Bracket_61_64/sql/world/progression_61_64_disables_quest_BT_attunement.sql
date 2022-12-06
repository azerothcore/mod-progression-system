-- Disable BT attunement quest chain
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (10944);
INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES
(1, 10944, 'The Secret Compromised');
