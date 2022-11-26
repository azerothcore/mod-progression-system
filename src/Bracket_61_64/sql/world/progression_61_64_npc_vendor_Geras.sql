 -- Remove Items from G'eras (Heroic badge vendor) except for below 2.1.0
DELETE FROM `npc_vendor` WHERE `entry`=18525;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(18525, 0, 29266, 0, 0, 1037, 0), -- Azure-Shield of Coldarra (2.0.3)
(18525, 0, 29271, 0, 0, 1015, 0), -- Talisman of Kalecgos (2.0.3)
(18525, 0, 29369, 0, 0, 1015, 0), -- Shawl of Shifting Probabilities (2.0.3)
(18525, 0, 29376, 0, 0, 1027, 0), -- Essence of the Martyr (2.0.3)
(18525, 0, 29381, 0, 0, 1015, 0), -- Choker of Vile Intent (2.0.3)
(18525, 0, 29382, 0, 0, 1015, 0), -- Blood Knight War Cloak (2.0.3)
(18525, 0, 29385, 0, 0, 1015, 0), -- Farstrider Defender's Cloak (2.0.3)
(18525, 0, 29390, 0, 0, 1642, 0); -- Everbloom Idol (2.0.1)
