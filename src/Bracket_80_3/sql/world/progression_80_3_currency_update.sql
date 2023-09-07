-- UPDATING FOR Trial of The Crusader PATCH

UPDATE `quest_template` SET `RewardItem1` = 45624 WHERE `RewardItem1` = 40753; 

UPDATE `creature_loot_template` SET `item` = 45624 WHERE `item` = 40753;

UPDATE `gameobject_loot_template` SET `item` = 45624 WHERE `item` = 40753;
