-- 80 level range - Tier 8 (Secrets of Ulduar) & Furious Gladiator
-- Makes instances (and RDF) Ulduar and Vault of Archavon available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (603, 624);

-- ^ This needs to be added alongside with nax or re-worked / splitted ^
