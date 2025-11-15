-- 80 level range - Ruby Sanctum
-- Makes instance (and RDF) Ruby Sanctum available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` = 724;

-- Make the quest Assault on the Sanctum available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` = 26013;
