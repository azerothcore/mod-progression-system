-- 50-59 level range (BRD, Dire Maul, Scholomance, Stratholme)
DELETE FROM `disables` WHERE `entry` IN (230, 429, 289, 329);

-- 50-59 level range (LBRS / UBRS)
DELETE FROM `disables` WHERE `entry` IN (229);
