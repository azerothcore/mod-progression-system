-- Restore quest that unlocks Netherwing (previous chain kept open) and following quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11012,11013,11015,11016,11017,11018,11020,11035,11041,11049,11050,11053,11054,11055,11064,11067,11068,11069,11070,11071,11075,11076,11077,11081,11082,11083,11084,11086,11089,11090,11092,11094,11097,11099,11101,11107,11108);

-- Reveal Netherwing Eggs, Nethercite Ore, Netherdust Bush
UPDATE `gameobject` SET `phaseMask`=1 WHERE `id` IN (
185915, -- Netherwing Egg
185877, -- Nethercite Deposit
185881  -- Netherdust Bush
);

-- Enable Netherwing Crystal drops
DELETE FROM `creature_loot_template` WHERE `Item`=32427 AND `Entry` IN (23169,23264,23267,23269,23285,23286,23290,23305,23324,23326,23501);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(23169, 32427, 0, 32.9, 0, 1, 0, 1, 2, 'Nethermine Flayer - Netherwing Crystal'),
(23264, 32427, 0, 33.2, 0, 1, 0, 1, 2, 'Overmine Flayer - Netherwing Crystal'),
(23267, 32427, 0, 19.2, 0, 1, 0, 1, 2, 'Arvoar the Rapacious - Netherwing Crystal'),
(23269, 32427, 0, 34.6, 0, 1, 0, 1, 2, 'Barash the Den Mother - Netherwing Crystal'),
(23285, 32427, 0, 32.5, 0, 1, 0, 1, 2, 'Nethermine Burster - Netherwing Crystal'),
(23286, 32427, 0, 32.1, 0, 1, 0, 1, 2, 'Black Blood of Draenor - Netherwing Crystal'),
(23290, 32427, 0, 31.3, 0, 1, 0, 1, 2, 'Draenor Blood Terror - Netherwing Crystal'),
(23305, 32427, 0, 32.7, 0, 1, 0, 1, 2, 'Crazed Murkblood Foreman - Netherwing Crystal'),
(23324, 32427, 0, 33.4, 0, 1, 0, 1, 2, 'Crazed Murkblood Miner - Netherwing Crystal'),
(23326, 32427, 0, 31.9, 0, 1, 0, 1, 2, 'Nethermine Ravager - Netherwing Crystal'),
(23501, 32427, 0, 33.5, 0, 1, 0, 1, 2, 'Netherwing Ray - Netherwing Crystal');

-- Enable Nethermine Flayer Hide (32470)
DELETE FROM `creature_loot_template` WHERE `Item`=32470 AND `Entry` IN (23169, 23326);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(23169, 32470, 0, 0.1, 0, 1, 0, 1, 1, 'Nethermine Flayer - Nethermine Flayer Hide'),
(23326, 32470, 0, 0.1, 0, 1, 0, 1, 1, 'Nethermine Ravager - Nethermine Flayer Hide');
DELETE FROM `skinning_loot_template` WHERE `Entry`=70165 AND `Item`=32470;
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(70165, 32470, 0, 33, 0, 1, 1, 1, 1, NULL);

-- Restore non-trash drops from Sludge-Covered Object
DELETE FROM `item_loot_template` WHERE `Entry`=32724 AND `Item` IN (32464, 32468, 32470, 32726);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(32724, 32464, 0, 5.8, 0, 1, 0, 1, 5, 'Sludge-covered Object - Nethercite Ore'),
(32724, 32468, 0, 5.3, 0, 1, 0, 1, 5, 'Sludge-covered Object - Netherdust Pollen'),
(32724, 32470, 0, 5.5, 0, 1, 0, 1, 5, 'Sludge-covered Object - Nethermine Flayer Hide'),
(32724, 32726, 0, 1.5, 0, 1, 0, 1, 1, 'Sludge-covered Object - Murkblood Escape Plans');
-- Set Sludge-Covered Object to Quality back to 1
UPDATE `item_template` SET `Quality` = 1 WHERE (`entry` = 32724);
