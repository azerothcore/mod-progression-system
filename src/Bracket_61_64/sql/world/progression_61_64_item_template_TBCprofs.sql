-- Set Primal Nether and Nether Vortex to BoP
UPDATE `item_template` SET `bonding`=1 WHERE `entry` IN (
23572, -- Primal Nether
30183  -- Nether Vortex
);
