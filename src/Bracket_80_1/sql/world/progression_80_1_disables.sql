-- Enable normal dungeons
UPDATE `disables` SET `flags` = `flags` &~1 WHERE `entry` IN (574, 575, 576, 578, 595, 599, 600, 601, 602, 604, 608, 619) AND `sourceType` = 2;

-- Don't allow to pick up quests that require you to go into locked instances.
DELETE FROM `disables` WHERE `sourceType`= 1 AND `entry` IN (14199, 24506, 24510, 24579, 24580, 24581, 24582, 24583, 24584, 24585, 24586, 24587, 24588, 24589, 24590, 26013);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(1, 14199, 0, '', '', "Proof of Demise: The Black Knight"),
(1, 24506, 0, '', '', "Inside the Frozen Citadel (Horde)"),
(1, 24510, 0, '', '', "Inside the Frozen Citadel (Alliance)"), 
(1, 24579, 0, '', '', "Sartharion Must Die!"),
(1, 24580, 0, '', '', "Anub'Rekhan Must Die!"),
(1, 24581, 0, '', '', "Noth the Plaguebringer Must Die!"),
(1, 24582, 0, '', '', "Instructor Razuvious Must Die!"),
(1, 24583, 0, '', '', "Patchwerk Must Die!"),
(1, 24584, 0, '', '', "Malygos Must Die!"),
(1, 24585, 0, '', '', "Flame Leviathan Must Die!"),
(1, 24586, 0, '', '', "Razorscale Must Die!"),
(1, 24587, 0, '', '', "Ignis the Furnace Master Must Die!"),
(1, 24588, 0, '', '', "XT-002 Deconstructor Must Die!"),
(1, 24589, 0, '', '', "Lord Jaraxxus Must Die!"),
(1, 24590, 0, '', '', "Lord Marrowgar Must Die!"),
(1, 26013, 0, '', '', "Assault on the Sanctum");

-- Removes the weekely gossip and quest/gossip flags for Archmage Lan'dalock 
UPDATE `creature_template` SET `gossip_menu_id` = 0, `npcflag` = `npcflag` &~ 3 WHERE `entry` = 20735;
