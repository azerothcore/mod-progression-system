-- Remove The Tempest Key and title from the rewards of Trial of the Naaru: Magtheridon
UPDATE `quest_template` SET `RewardItem2` = 0, `RewardAmount2` = 0, `RewardTitle` = 0 WHERE (`ID` = 13430);
-- Removes The Mark of Vashj spell to The Cudgel of Kar'desh (cosmetic)
UPDATE `quest_template` SET `RewardSpell` = 0 WHERE (`ID` = 13431);

