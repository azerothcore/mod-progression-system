-- UPDATING FOR ICC PATCH

UPDATE `quest_template` SET `RewardItem1` = 49426 WHERE `RewardItem1` = 45624; 

UPDATE `creature_loot_template` SET `item` = 49426 WHERE `item` = 45624;

UPDATE `gameobject_loot_template` SET `item` = 49426 WHERE `item` = 45624;