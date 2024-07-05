-- Remove Hand of A'dal Title reward for completing BT attunement
UPDATE `quest_template` SET `RewardTitle` = 0 WHERE (`ID` = 10985);
-- Remove title from the rewards of Trial of the Naaru: Magtheridon
UPDATE `quest_template` SET `RewardTitle` = 0 WHERE (`ID` = 13430);
