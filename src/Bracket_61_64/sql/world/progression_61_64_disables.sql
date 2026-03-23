-- 61-64 level range - The Blood Furnace, Hellfire Ramparts, The Underbog, The Slave Pens, Mana Tombs
UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (542, 543, 546, 547, 557);

-- Disable BT attunement quest chain
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (10944);
INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES
(1, 10944, 'The Secret Compromised');
