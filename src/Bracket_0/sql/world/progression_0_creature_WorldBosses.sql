-- Hide World Bosses
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
6109,  -- Azuregos
12397, -- Lord Kazzak
14890, -- Ysondre
14889, -- Lethon
14888, -- Emeriss
14887  -- Taerar
);
