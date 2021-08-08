-- disable NPC vendor of Arena Season 4
-- https://github.com/azerothcore/progression-system/issues/30
UPDATE `creature_template` SET `npcflag`=`npcflag`&~(128) WHERE `entry` = 28225;

-- disable NPCs vendor of Arena Season 7
-- https://github.com/azerothcore/progression-system/issues/18
UPDATE `creature_template` SET `npcflag`=`npcflag`&~(128) WHERE `entry` IN (34093, 33939, 33935, 33929);
