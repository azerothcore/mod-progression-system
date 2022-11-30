-- 61-64 level range - The Blood Furnace, Hellfire Ramparts, The Underbog, The Slave Pens, Mana Tombs
UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (542, 543, 546, 547, 557);
