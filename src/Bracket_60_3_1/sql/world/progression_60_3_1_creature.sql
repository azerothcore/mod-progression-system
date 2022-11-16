-- Enable Dragons of Nightmare
UPDATE `creature` SET `phaseMask` = 1 WHERE `id1` IN (
14890, -- Ysondre
14889, -- Lethon
14888, -- Emeriss
14887  -- Taerar
);

-- Restore Silithus NPCs
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN 
(
15181, -- Commander Mar'alith
15182, -- Vish Kozus
15183, -- Geologist Larksbane
15191, -- Windcaller Proudhorn
15194, -- Hermit Ortell
15293, -- Aendel Windspear
15306, -- Bor Wildmane
15500, -- Keyl Swiftclaw
15540, -- Windcaller Kaldon
15599, -- Elder Bladesing
15609, -- Cenarion Scout Landion
15610, -- Cenarion Scout Azenel
15612, -- Krug Skullsplit
15613, -- Merok Longstride
15903, -- Sergeant Carnes
16091  -- Dirk Thunderwood
);

DELETE FROM `creature_questender` WHERE `quest` IN (8548,8572,8573,8574,8800,8363,8507,8731,8795,8797,8796,8792,8793,8794,10500,10501);
DELETE FROM `creature_queststarter` WHERE `quest` IN (8548,8572,8573,8574,8800,8363,8507,8731,8795,8797,8796,8792,8793,8794,10500,10501);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15176, 8548),(15176, 8572),(15176, 8573),(15176, 8574),(15176, 8800),(15306, 8363),(15540, 8507),(15540, 8731);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15176, 8548),(15176, 8572),(15176, 8573),(15176, 8574),(15540, 8800), (15306, 8363), (15540, 8507),(15540, 8731);
