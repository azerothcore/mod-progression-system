-- set satchels for level 59 to be the Classic ones instead of TBC
REPLACE INTO `lfg_dungeon_rewards` (`dungeonId`, `maxLevel`, `firstQuestId`, `otherQuestId`)
VALUES
(259, 64, 24886, 24894);
diff --git a/61-64/lfg_dungeon_rewards.sql b/61-64/lfg_dungeon_rewards.sql
