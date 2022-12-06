-- Adds The Tempest Key, and the title Champion of the Naaru to the rewards of Trial of the Naaru: Magtheridon
UPDATE `quest_template` SET `RewardItem2` = 31704, `RewardAmount2` = 1, `RewardTitle` = 53 WHERE (`ID` = 13430);
-- Adds The Mark of Vashj spell to The Cudgel of Kar'desh (cosmetic)
UPDATE `quest_template` SET `RewardSpell` = 39145 WHERE (`ID` = 10901);
-- Add Hand of A'dal Title reward for completing BT attunement
UPDATE `quest_template` SET `RewardTitle` = 64 WHERE (`ID` = 10985);
