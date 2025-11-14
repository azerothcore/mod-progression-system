-- Restores Frozo's Phase back to 1 and his items
UPDATE `creature` SET `phaseMask` = 1 WHERE `guid`=202846 AND `id1` = 40160;
    
DELETE FROM `npc_vendor` WHERE `entry` = 40160 AND `item` IN (35622, 35623, 35624, 35625, 35627, 36860, 36908, 45087, 47556, 54798);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(40160, 0, 35622, 0, 0, 2985, 0), -- Eternal Water
(40160, 0, 35623, 0, 0, 2985, 0), -- Eternal Air
(40160, 0, 35624, 0, 0, 2985, 0), -- Eternal Earth
(40160, 0, 35625, 0, 0, 2985, 0), -- Eternal Life
(40160, 0, 35627, 0, 0, 2985, 0), -- Eternal Shadow
(40160, 0, 36860, 0, 0, 2985, 0), -- Eternal Fire
(40160, 0, 36908, 0, 0, 2985, 0), -- Frost Lotus
(40160, 0, 45087, 0, 0, 2987, 0), -- Runed Orb
(40160, 0, 47556, 0, 0, 2986, 0), -- Crusader Orb
(40160, 0, 54798, 0, 0, 2986, 0); -- Pattern: Frosty Flying Carpet
