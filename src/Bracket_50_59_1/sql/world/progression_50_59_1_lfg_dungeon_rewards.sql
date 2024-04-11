-- set satchels for level 59 to be the Classic ones instead of TBC
UPDATE `lfg_dungeon_rewards` SET `firstQuestId` = 24886, `otherQuestId`=24894 WHERE `dungeonId`=259 AND `maxLevel`=64;

-- Do the same for WotLK
UPDATE `lfg_dungeon_rewards` SET `firstQuestId` = 24888, `otherQuestId`=24896 WHERE `dungeonId`=261 AND `maxLevel`=80;
