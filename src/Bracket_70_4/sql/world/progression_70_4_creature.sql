-- Enable the 11 cultists in Un'Goro
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN (28602, 28601) AND `guid` IN (209102,209103,209104,209105,209106,209107,209108,209109,209110,209111,209112);

-- Enable Karazhan NPCs
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN 
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
