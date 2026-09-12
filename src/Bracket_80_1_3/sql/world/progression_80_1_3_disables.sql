-- 80 level range - Tier 7 (Naxxramas)
-- Makes instances Naxxramas, Eye of Eternity, Obsidian Sanctum and Vault of Archavon available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (533, 615, 616, 624);
