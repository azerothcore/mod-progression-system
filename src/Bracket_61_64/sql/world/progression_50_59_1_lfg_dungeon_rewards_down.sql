-- restore the original value (TBC) for the satchel for level 
UPDATE `lfg_dungeon_rewards` SET `firstQuestId` = 24887, `otherQuestId`=24895 WHERE `dungeonId`=259 AND `maxLevel`=64;

-- Do the same for WotLK
UPDATE `lfg_dungeon_rewards` SET `firstQuestId` = 24790, `otherQuestId`=24791 WHERE `dungeonId`=261 AND `maxLevel`=80;
