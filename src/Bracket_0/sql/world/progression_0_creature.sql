-- despawn world bosses
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
6109,  -- Azuregos
12397, -- Lord Kazzak
14890, -- Ysondre
14889, -- Lethon
14888, -- Emeriss
14887  -- Taerar
);

-- Hide Gangrenus which is accesible from exploits
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1`=29207 AND `guid`=125760;

-- Hide the 11 cultists in Un'Goro (Bracket 75-79)
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (28602, 28601) AND `guid` IN (209102,209103,209104,209105,209106,209107,209108,209109,209110,209111,209112);

-- Hide Emalon, Koralon and Toravon at Vaulth of Archavon
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
33993, -- Emalon
35013, -- Koralon
38433  -- Toravon
); 

-- Hide Karazhan NPCs
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
