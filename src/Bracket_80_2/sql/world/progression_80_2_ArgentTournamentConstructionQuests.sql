UPDATE `creature_template` SET `npcflag` = `npcflag`|2 WHERE `entry` IN (33434, 33435);

DELETE FROM `creature_queststarter` WHERE `quest` IN (13820, 13681, 13627);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(33817, 13820), -- The Blastbolt Brothers
(33435, 13681), -- A Chip Off the Ulduar Block
(33434, 13627); -- Jack Me Some Lumber

DELETE FROM `creature_questender` WHERE `quest` IN (13820, 13681, 13627);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(33434, 13820), -- The Blastbolt Brothers
(33435, 13681), -- A Chip Off the Ulduar Block
(33434, 13627); -- Jack Me Some Lumber
