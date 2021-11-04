-- 50-59 level range (BRD, Dire Maul, Scholomance, Stratholme)
DELETE FROM `disables` WHERE `entry` IN (230, 429, 289, 329);

-- Quest: Wanted - Deathclasp, Terror of the Sands
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=8283;
