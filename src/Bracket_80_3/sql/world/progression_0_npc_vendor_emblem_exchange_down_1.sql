-- Restore the Triumph -> Conquest emblem exchange removed in Bracket_0 (Arcanist Miluria, Magistrix Vesara,
-- Arcanist Asarina, Magistrix Iruvia, Usuri Brightcoin).
DELETE FROM `npc_vendor` WHERE `entry` IN (35494, 35495, 35573, 35574, 35790) AND `item` = 45624;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(35494, 0, 45624, 0, 0, 2707, 0),
(35495, 0, 45624, 0, 0, 2707, 0),
(35573, 0, 45624, 0, 0, 2707, 0),
(35574, 0, 45624, 0, 0, 2707, 0),
(35790, 0, 45624, 0, 0, 2707, 0);
