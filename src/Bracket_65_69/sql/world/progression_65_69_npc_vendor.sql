-- 65-69 level range: Add TBC potions to Professor Thaddeus Paleo
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
	(14847, 0, 22829, 2, 18000, 0, 0),
	(14847, 0, 22832, 2, 18000, 0, 0),
	(14847, 0, 27498, 2, 7200, 0, 0),
	(14847, 0, 27499, 2, 7200, 0, 0),
	(14847, 0, 27500, 1, 7200, 0, 0),
	(14847, 0, 27501, 1, 7200, 0, 0),
	(14847, 0, 27502, 2, 7200, 0, 0),
	(14847, 0, 27503, 2, 7200, 0, 0);

-- Added TBC ammunition to Alterac Valley General Goods vendors
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(5134, 0, 28056, 0, 0, 0, 0),
(5134, 0, 28061, 0, 0, 0, 0),
(3625, 0, 28056, 0, 0, 0, 0),
(3625, 0, 28061, 0, 0, 0, 0);
