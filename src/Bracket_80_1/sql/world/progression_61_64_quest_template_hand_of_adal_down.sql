-- Remove Hand of A'dal Title reward for completing BT attunement
UPDATE `quest_template` SET `RewardTitle` = 0 WHERE (`ID` = 10985);
