-- UPDATING FOR ULDUAR PATCH

UPDATE `quest_template` SET `RewardItem1` = 40753 WHERE `RewardItem1` = 40752;

UPDATE `creature_loot_template` SET `item` = 40753 WHERE `item` = 40752;

UPDATE `gameobject_loot_template` SET `item` = 40753 WHERE `item` = 40752;