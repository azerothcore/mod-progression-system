-- restore npc vendors of arena season 7, use this only for the last arena season
-- https://github.com/azerothcore/progression-system/issues/18
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry` IN (34093, 33939, 33935, 33929);
