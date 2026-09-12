-- Coren Direbrew trinkets (TBC era)
DELETE FROM `creature_loot_template` WHERE `Entry` = 238720;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(238720,38289,0,0,0,1,1,1,1,'Coren Direbrew - Coren Lucky Coin'),
(238720,38288,0,0,0,1,1,1,1,'Coren Direbrew - Direbrew Hops'),
(238720,38290,0,0,0,1,1,1,1,'Coren Direbrew - Dark Iron Smoking Pipe'),
(238720,38287,0,0,0,1,1,1,1,'Coren Direbrew - Empty Mug of Direbrew'),
(238720,37128,0,0,0,1,1,1,1,'Coren Direbrew - Belebrew Charm'),
(238720,37127,0,0,0,1,1,1,1,'Coren Direbrew - Brightbrew Charm');

UPDATE `creature_template` SET `lootid` = 238720 WHERE `entry` = 23872;

-- Headless Horseman loot (TBC era)
UPDATE `creature_template` SET `lootid` = 236820 WHERE `entry` = 23682;

DELETE FROM `creature_loot_template` WHERE `Entry` = 236820;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(236820,34075,0,0,0,1,1,1,1,'Headless Horseman - Ring of Ghoulish Delight'),
(236820,34073,0,0,0,1,1,1,1,'Headless Horseman - The Horseman\'s Signet Ring'),
(236820,34074,0,0,0,1,1,1,1,'Headless Horseman - Witches Band'),
(236820,38175,0,2,0,1,2,1,1,'Headless Horseman - The Horseman\'s Blade'),
(236820,33808,0,2,0,1,2,1,1,'Headless Horseman - The Horseman\'s Helm'),
(236820,33154,0,3,0,1,3,1,1,'Headless Horseman - Sinister Squashling'),
(236820,37011,0,11,0,1,3,1,1,'Headless Horseman - Magic Broom'),
(236820,34068,0,13,0,1,3,1,6,'Headless Horseman - Weighted Jack-o\'-Lantern'),
(236820,33292,0,5,0,1,3,1,1,'Headless Horseman - Hallowed Helm');
