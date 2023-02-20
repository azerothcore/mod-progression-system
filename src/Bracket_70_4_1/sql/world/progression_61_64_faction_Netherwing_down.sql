-- Restore quest that unlocks Netherwing (previous chain kept open) and following quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11012,11013,11015,11016,11017,11018,11020,11035,11041,11049,11050,11053,11054,11055,11064,11067,11068,11069,11070,11071,11075,11076,11077,11081,11082,11083,11084,11086,11089,11090,11092,11094,11097,11099,11101,11107,11108);

-- Reveal Netherwing Eggs, Nethercite Ore, Netherdust Bush
UPDATE `gameobject` SET `phaseMask`=1 WHERE `id` IN (
185915, -- Netherwing Egg
185877, -- Nethercite Deposit
185881  -- Netherdust Bush
);

-- Enable Netherwing Item drops
DELETE FROM `disables` WHERE `sourceType`=10 AND `entry` IN (32427, 32464, 32468, 32470, 32506, 32726);

-- Set Sludge-Covered Object to Quality back to 1
UPDATE `item_template` SET `Quality` = 1 WHERE (`entry` = 32724);
