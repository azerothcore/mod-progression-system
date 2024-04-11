-- Hide Emalon, Koralon and Toravon at Vault of Archavon
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
33993, -- Emalon
35013, -- Koralon
38433  -- Toravon
); 
