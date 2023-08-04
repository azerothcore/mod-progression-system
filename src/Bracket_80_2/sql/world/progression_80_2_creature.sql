-- 80 level range - Tier 8 & Furious Gladiator
-- restore Emalon at Vaulth of Archavon
UPDATE `creature` SET `phaseMask` = 1 WHERE `id1` = 33993;
-- restore no gold from kara philantropist
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE (`entry` = 16470);
