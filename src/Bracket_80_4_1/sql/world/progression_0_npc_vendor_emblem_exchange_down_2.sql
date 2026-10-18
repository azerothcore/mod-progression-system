-- Restore the Frost -> Triumph emblem exchange removed in Bracket_0 (Magister Arlan, Arcanist Uovril,
-- Usuri Brightcoin, Goodman the "Closer").
DELETE FROM `npc_vendor` WHERE `entry` IN (37941, 37942, 35790, 38858) AND `item` = 47241;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(35790, 0, 47241, 0, 0, 2743, 0),
(37941, 0, 47241, 0, 0, 2743, 0),
(37942, 0, 47241, 0, 0, 2743, 0),
(38858, 0, 47241, 0, 0, 2743, 0);
