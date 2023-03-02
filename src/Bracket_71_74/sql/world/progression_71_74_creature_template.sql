-- restore NPC vendor of Arena Season 4 in BRD (Grim Guzzler)
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry` = 28225;
