-- Disable quest that unlocks Netherwing (previous chain kept open) and following quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11012,11013,11015,11016,11017,11018,11020,11035,11041,11049,11050,11053,11054,11055,11064,11067,11068,11069,11070,11071,11075,11076,11077,11081,11082,11083,11084,11086,11089,11090,11092,11094,11097,11099,11101,11107,11108);
INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES
(1, 11012, 'Blood Oath of the Netherwing');
(1, 11013, 'In Service of the Illidari'),
(1, 11015, 'Netherwing Crystals'),
(1, 11016, 'Nethermine Flayer Hide'),
(1, 11017, 'Netherdust Pollen'),
(1, 11018, 'Nethercite Ore'),
(1, 11020, 'A Slow Death'),
(1, 11035, 'The Not-So-Friendly Skies...'),
(1, 11041, 'A Job Unfinished...'),
(1, 11049, 'The Great Netherwing Egg Hunt'),
(1, 11050, 'Accepting All Eggs'),
(1, 11053, 'Rise, Overseer!'),
(1, 11054, 'Overseeing and You: Making the Right Choices'),
(1, 11055, 'The Booterang: A Cure For The Common Worthless Peon'),
(1, 11064, 'Dragonmaw Race: The Ballad of Oldie McOld'),
(1, 11067, 'Dragonmaw Race: Trope the Filth-Belcher'),
(1, 11068, 'Dragonmaw Race: Corlok the Vet'),
(1, 11069, 'Dragonmaw Race: Wing Commander Ichman'),
(1, 11070, 'Dragonmaw Race: Wing Commander Mulverick'),
(1, 11071, 'Dragonmaw Race: Captain Skyshatter'),
(1, 11075, 'The Netherwing Mines'),
(1, 11076, 'Picking Up The Pieces...'),
(1, 11077, 'Dragons are the Least of Our Problems'),
(1, 11081, 'The Great Murkblood Revolt'),
(1, 11082, 'Seeker of Truth'),
(1, 11083, 'Crazed and Confused'),
(1, 11084, 'Stand Tall, Captain!'),
(1, 11086, 'Disrupting the Twilight Portal'),
(1, 11089, 'The Soul Cannon of Reth\'hedron'),
(1, 11090, 'Subdue the Subduer'),
(1, 11092, 'Hail, Commander!'),
(1, 11094, 'Kill Them All!'),
(1, 11097, 'The Deadliest Trap Ever Laid'),
(1, 11099, 'Kill Them All!'),
(1, 11101, 'The Deadliest Trap Ever Laid'),
(1, 11107, 'Bow to the Highlord'),
(1, 11108, 'Lord Illidan Stormrage');

-- Hide Netherwing Eggs, Nethercite Ore, Netherdust Bush
UPDATE `gameobject` SET `phaseMask`=16384 WHERE `id` IN (
185915, -- Netherwing Egg
185877, -- Nethercite Deposit
185881  -- Netherdust Bush
);

-- Disable Netherwing Crystal drops
DELETE FROM `creature_loot_template` WHERE `Item`=32427 AND `Entry` IN (23169,23264,23267,23269,23285,23286,23290,23305,23324,23326,23501);

-- Disable Nethermine Flayer Hide (32470)
DELETE FROM `creature_loot_template` WHERE `Item`=32470 AND `Entry` IN (23169, 23326);
DELETE FROM `skinning_loot_template` WHERE `Entry`=70165 AND `Item`=32470;

-- Remove non-trash drops from Sludge-Covered Object
DELETE FROM `item_loot_template` WHERE `Entry`=32724 AND `Item` IN (32464, 32468, 32470, 32726);
-- Set Sludge-Covered Object to Quality 0 to not mislead players
UPDATE `item_template` SET `Quality` = 0 WHERE (`entry` = 32724);
