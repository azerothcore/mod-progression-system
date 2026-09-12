-- Reset WotLK dungeon rewards
UPDATE `lfg_dungeon_rewards` SET `firstQuestId` = 24790, `otherQuestId`=24791 WHERE `dungeonId`=261 AND `maxLevel`=80;
