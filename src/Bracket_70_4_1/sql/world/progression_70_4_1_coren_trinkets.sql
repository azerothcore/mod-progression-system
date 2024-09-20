-- TBC Phase 3 - Battle for Mount Hyjal
DELETE FROM `creature_loot_template` WHERE `Entry` = 238720;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(238720,38289,0,0,0,1,0,1,1,'Coren Direbrew - Coren Lucky Coin'),
(238720,38288,0,0,0,1,0,1,1,'Coren Direbrew - Direbrew Hops'),
(238720,38290,0,0,0,1,0,1,1,'Coren Direbrew - Dark Iron Smoking Pipe'),
(238720,38287,0,0,0,1,0,1,1,'Coren Direbrew - Empty Mug of Direbrew'),
(238720,37128,0,0,0,1,0,1,1,'Coren Direbrew - Belebrew Charm'),
(238720,37127,0,0,0,1,0,1,1,'Coren Direbrew - Brightbrew Charm');

UPDATE `creature_template` SET `lootid` = 238720 WHERE `entry` = 23872;
