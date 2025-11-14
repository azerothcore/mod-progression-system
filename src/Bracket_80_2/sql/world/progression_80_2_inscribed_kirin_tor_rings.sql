-- Adds Inscribed Band, Loop, Ring and Signet of Kirn Tor to Harold Winston with Ulduar Release
DELETE FROM `npc_vendor` WHERE `entry` = 32172 AND `item` IN (45688, 45689, 45690, 45691);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(32172, 0, 45688, 0, 0, 2592, 0), -- Inscribed Band of the Kirin Tor
(32172, 0, 45689, 0, 0, 2593, 0), -- Inscribed Loop of the Kirin Tor
(32172, 0, 45690, 0, 0, 2594, 0), -- Inscribed Ring of the Kirin Tor
(32172, 0, 45691, 0, 0, 2595, 0); -- Inscribed Signet of the Kirin Tor
