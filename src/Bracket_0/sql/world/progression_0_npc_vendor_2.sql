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

