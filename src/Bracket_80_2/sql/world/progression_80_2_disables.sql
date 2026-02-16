-- 80 level range - Tier 8 (Secrets of Ulduar) & Furious Gladiator
-- Makes instance (and RDF) Ulduar available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (603);
