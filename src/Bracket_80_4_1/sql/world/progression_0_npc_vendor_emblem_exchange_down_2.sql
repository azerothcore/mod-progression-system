-- Restore the Frost -> Triumph emblem exchange (Magister Arlan, Arcanist Uovril) removed in Bracket_0.
DELETE FROM `npc_vendor` WHERE `entry` IN (37941, 37942) AND `item` = 47241;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(37941, 0, 47241, 0, 0, 2743, 0),
(37942, 0, 47241, 0, 0, 2743, 0);
