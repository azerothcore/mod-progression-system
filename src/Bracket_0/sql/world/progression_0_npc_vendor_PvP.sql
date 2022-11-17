/*
  Alterac vendor entry: (13217, 13219)
  Thanthaldis Snowgleam <Stormpike Supply Officer> (13217)
  Jekyll Flandring <Frostwolf Supply Officer> ( )
  items req lvl 60: (21563, 19325, 19323, 19321, 19312, 19315, 19311, 19310, 19309, 19308)
*/
DELETE FROM `npc_vendor` WHERE `entry` IN (13217, 13219) AND (`item` IN (19308, 19309, 19310, 19311, 19312, 19315, 19321, 19323, 19324, 19325, 21563, 19100, 19102, 19099, 19101, 19103));

/*
  Warsong vendor entry: (14753, 14754)
  items:(19582, 19587, 19578, 19595, 22672, 22749, 22748, 22750, 22752, 22753, 30497)
*/
DELETE FROM `npc_vendor` WHERE (`entry` = 14753) AND (`item` IN (19578, 19582, 19587, 19595, 22672, 22749, 22748, 22750, 22752, 22753, 30497));
DELETE FROM `npc_vendor` WHERE (`entry` = 14754) AND (`item` IN (19578, 19582, 19587, 19595, 22651, 22673, 22676, 22740, 22741, 22747, 30498));

/*
  Arathi Horde vendor entry: (15126)
  items: (20068, 20158, 20175, 20176, 20184, 20194, 20203, 20212, 20220, 20214)
*/
DELETE FROM `npc_vendor` WHERE `entry`=15126 AND `item` IN (20068, 20072, 20150, 20154, 20158, 20159, 20163, 20167, 20171, 20175, 20176, 20177, 20181, 20184, 20186, 20190, 20194, 20195, 20199, 20203, 20204, 20208, 20212, 20214, 20220);

/*
  Arathi Alliance vendor entry: (15127)
  items: (20055, 20056, 20057, 20058, 20059, 20060, 20061, 20070, 20073, 20069)
*/
DELETE FROM `npc_vendor` WHERE `entry`=15127 AND `item` IN (20041, 20042, 20043, 20044, 20045, 20046, 20047, 20048, 20049, 20050, 20051, 20052, 20053, 20054, 20055, 20056, 20057, 20058, 20059, 20060, 20061, 20069, 20070, 20071, 20073);

/*
  Alterac Valley General Goods vendors, entry: 5134 and 3625
  Removes TBC and WotLK Ammunition
  items: (41584, 41586, 28056, 28061)
*/
DELETE FROM `npc_vendor` WHERE `entry` IN (5134, 3625) AND `item` IN (41584, 41586, 28056, 28061);

/*
  Alterac Valley PvP vendors, entry: 13218 and 13216
  Removed sold items form pvp vendors
  items not like: (19031, 17348, 17349, 17351, 17352)
*/
DELETE `npc_vendor`FROM `npc_vendor` WHERE `entry` IN (13218, 13216) AND `item` NOT IN (19029, 19030, 17348, 17349, 17351, 17352);

/*
  Vendors for Impact Shell and Wicked Arrow, all NPCs selling them.
  They weren't implemented in vanilla wow.
  items: (28060, 28053)
*/
DELETE `npc_vendor` FROM `npc_vendor` WHERE `item` IN (28060, 28053);

/*
  Stormwind PVP Vendor Samuel Hawke, entry 15127
  Removes 60 epic items
  items(20055, 20056, 20057, 20058, 20059, 20060, 20061, 20069, 20070, 20073)
*/
DELETE FROM `npc_vendor` WHERE `entry` = 15127 AND `item` IN (20055, 20056, 20057, 20058, 20059, 20060, 20061, 20069, 20070, 20073);

/*
  Stormwind PVP Vendor Illiyana Moonblaze, entry 14753
  Removes 60 epic items
  items(19578, 19582, 19587, 19595, 22672, 22748, 22749, 22750, 22752, 22753, 30497)
*/
DELETE FROM `npc_vendor` WHERE `entry` = 14753 AND `item` IN (19578, 19582, 19587, 19595, 22672, 22748, 22749, 22750, 22752, 22753, 30497);

/*
  Stormwind PVP Vendor Thanthaldis Snowgleam, entry 13217
  Removes 60 epic items
  items(19308, 19309, 19310, 19311, 19312, 19315, 19321, 19323, 19324, 19325, 21563)
*/
DELETE FROM `npc_vendor` WHERE `entry` = 13217 AND `item` IN (19308, 19309, 19310, 19311, 19312, 19315, 19321, 19323, 19324, 19325, 21563);

/*
  Orgrimmar PVP Vendor Rutherford Twing, entry 15126
  Removes 60 epic items
  items(20068, 20158, 20175, 20176, 20184, 20194, 20203, 20212, 20214, 20220)
*/
DELETE FROM `npc_vendor` WHERE `entry` = 15126 AND `item` IN (20068, 20158, 20175, 20176, 20184, 20194, 20203, 20212, 20214, 20220);

/*
  Orgrimmar PVP Vendor Jekyll Flandring, entry 13219
  Removes 60 epic items
  items(19308, 19309, 19310, 19311, 19312, 19315, 19321, 19323, 19324, 19325, 21563)
*/
DELETE FROM `npc_vendor` WHERE `entry` = 13219 AND `item` IN (19308, 19309, 19310, 19311, 19312, 19315, 19321, 19323, 19324, 19325, 21563);

/*
  Orgrimmar PVP Vendor Kelm Hargunth, entry 14754
  Removes 60 epic items
  items(19578, 19582, 19587, 19595)
*/
DELETE FROM `npc_vendor` WHERE `entry` = 14754 AND `item` IN (19578, 19582, 19587, 19595);
