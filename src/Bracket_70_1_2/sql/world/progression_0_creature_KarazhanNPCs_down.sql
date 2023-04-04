-- Show Karazhan NPCs
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN 
(
7370,  -- Restless Shade
12377, -- Wailing Spectre
12378, -- Damned Soul
12379, -- Unliving Caretaker
12380, -- Unliving Resident
17613, -- Archmage Alturus
18253, -- Archmage Lery
18255  -- Apprentice Darius
);
