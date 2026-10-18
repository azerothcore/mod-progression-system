-- Restore the Triumph -> Conquest emblem exchange (Arcanist Miluria, Magistrix Vesara) removed in Bracket_0.
DELETE FROM `npc_vendor` WHERE `entry` IN (35494, 35495) AND `item` = 45624;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(35494, 0, 45624, 0, 0, 2707, 0),
(35495, 0, 45624, 0, 0, 2707, 0);
