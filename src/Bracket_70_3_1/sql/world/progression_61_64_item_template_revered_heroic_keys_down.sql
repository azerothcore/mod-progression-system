-- Restore Dungeon Heroic Keys to require Honored with their respective factions
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` IN (
30622, -- Hellfire Citadel (Alliance)
30623, -- Coilfang Resevoir
30633, -- Auchindoun
30634, -- Tempest Key
30635, -- Caverns of Time
30637  -- Hellfire Citadel (Horde)
);
