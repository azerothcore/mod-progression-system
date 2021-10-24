-- disable NPC vendor of Arena Season 4
-- https://github.com/azerothcore/progression-system/issues/30
UPDATE `creature_template` SET `npcflag`=`npcflag`&~(128) WHERE `entry` = 28225;

-- disable NPCs vendor of Arena Season 7
-- https://github.com/azerothcore/progression-system/issues/18
UPDATE `creature_template` SET `npcflag`=`npcflag`&~(128) WHERE `entry` IN (34093, 33939, 33935, 33929);


-- Remove endgame PvP vendors (60-70-80)
-- alliance 12784, 12785, 12778, 34075 34078, 34081, 34084
-- horde 12794, 12795, 12788, 34043, 34038, 34060, 34063
UPDATE `creature_template` SET `npcflag` = `npcflag` &~128 WHERE `entry` IN (12784, 12785, 12778, 12794, 12795, 12788, 34075, 34078, 34081, 34084, 34043, 34038, 34060, 34063);
UPDATE `creature_template` SET `npcflag` = `npcflag` &~4096 WHERE `entry` IN (12784, 12785, 12778, 12794, 12795, 12788, 34075, 34078, 34081, 34084, 34043, 34038, 34060, 34063);

-- remove 60+ items from <Accessories Quartermaster> (12781, 12793)
DELETE FROM `npc_vendor` WHERE (`entry` IN (12781, 12793)) AND (`item` >= 20000) AND (`item` NOT IN (29592, 29593));
