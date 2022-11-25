-- Remove BoP from Primal Nether and Nether Vortex
UPDATE `item_template` SET `bonding`=0 WHERE `entry` IN (
23572, -- Primal Nether
30183  -- Nether Vortex
);
