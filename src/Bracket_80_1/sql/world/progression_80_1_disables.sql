-- Enable normal dungeons
UPDATE `disables` SET `flags` = `flags` &~1 WHERE `entry` IN (574, 575, 576, 578, 595, 599, 600, 601, 602, 604, 608, 619) AND `sourceType` = 2;

-- Don't allow to pick up quests that require you to go into locked instances.
DELETE FROM `disables` WHERE `sourceType`= 1 AND `entry` IN (14199, 24506, 24510, 24589, 26013);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(1, 14199, 0, '', '', "Proof of Demise: The Black Knigh"),
(1, 24506, 0, '', '', "Inside the Frozen Citadel (Horde)"),
(1, 24510, 0, '', '', "Inside the Frozen Citadel (Alliance)"), 
(1, 24589, 0, '', '', "Lord Jaraxxus Must Die!"),
(1, 26013, 0, '', '', "Assault on the Sanctum");
