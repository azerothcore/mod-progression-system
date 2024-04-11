-- Added TBC ammunition to Alterac Valley General Goods vendors
DELETE FROM `npc_vendor` WHERE `entry` IN (5134, 3625) AND `item` IN (28056, 28061);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(5134, 0, 28056, 0, 0, 0, 0),
(5134, 0, 28061, 0, 0, 0, 0),
(3625, 0, 28056, 0, 0, 0, 0),
(3625, 0, 28061, 0, 0, 0, 0);
