-- restore NPC vendor of Arena Season 4
-- https://github.com/azerothcore/progression-system/issues/30
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry` = 28225;
