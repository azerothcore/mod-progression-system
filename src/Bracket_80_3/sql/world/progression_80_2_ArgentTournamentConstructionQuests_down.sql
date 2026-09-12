UPDATE `creature_template` SET `npcflag` = `npcflag`&~2 WHERE `entry` IN (33434, 33435);

DELETE FROM `creature_queststarter` WHERE `quest` IN (13820, 13681, 13627);

DELETE FROM `creature_questender` WHERE `quest` IN (13820, 13681, 13627);
