-- UPDATING FOR NAXXRAMAS PATCH

UPDATE `quest_template` SET `RewardItem1` = 40752 WHERE `RewardItem1` = 49426;

UPDATE `creature_loot_template` SET `item` = 40752 WHERE `item` = 49426;

UPDATE `gameobject_loot_template` SET `item` = 40752 WHERE `item` = 49426;