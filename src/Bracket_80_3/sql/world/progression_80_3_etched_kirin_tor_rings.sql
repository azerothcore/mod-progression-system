-- Adds Etched Band, Loop, Ring and Signet of Kirn Tor to Harold Winston with Trial of the Crusader Release
DELETE FROM `npc_vendor` WHERE `entry` = 32172 AND `item` IN (48954, 48955, 48956, 48957);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(32172, 0, 48954, 0, 0, 2592, 0), -- Etched Band of the Kirin Tor
(32172, 0, 48955, 0, 0, 2593, 0), -- Etched Loop of the Kirin Tor
(32172, 0, 48956, 0, 0, 2594, 0), -- Etched Ring of the Kirin Tor
(32172, 0, 48957, 0, 0, 2595, 0); -- Etched Signet of the Kirin Tor
