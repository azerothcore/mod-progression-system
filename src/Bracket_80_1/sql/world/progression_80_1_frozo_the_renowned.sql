-- Removes frozo's items
DELETE FROM `npc_vendor` WHERE `entry` = 40160 AND `item` IN (35622, 35623, 35624, 35625, 35627, 36860, 36908, 45087, 47556, 54798);
