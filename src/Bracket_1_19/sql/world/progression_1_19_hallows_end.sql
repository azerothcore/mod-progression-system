SET @QUESTID = 50000;
SET @TITLE = 'The Time is Nigh!';
DELETE FROM `quest_template` WHERE `ID` = @QUESTID;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `Flags`, `RewardItem1`, `RewardAmount1`, `LogTitle`, `LogDescription`, `QuestDescription`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`) VALUES
(@QUESTID, 2, -1, 70, -22, 0, 5, 4096, 54516, 1, @TITLE, 'Venture into the Scarlet Monastery and put an end to the Headless Horseman\'s menace.', 'Slay the Headless Horseman', 23682, 1);

DELETE FROM `item_loot_template` WHERE `entry` = 54516 AND `item` IN (49426, 49128, 49126);

UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry` IN (23682, 23775,23694, 23545);
