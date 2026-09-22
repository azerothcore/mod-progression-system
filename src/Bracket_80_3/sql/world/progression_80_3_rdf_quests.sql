-- Patch 3.2 raised the first heroic dungeon of the day to two emblems.
UPDATE `quest_template` SET `RewardItem1` = 45624, `RewardAmount1` = 2 WHERE `ID` = 24788; -- Daily 1st, Conquest (heroic)
