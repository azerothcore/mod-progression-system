-- Mounts: Price, level requirement and be usable like in vanilla
-- Apprentice
UPDATE `item_template` SET `BuyPrice`=80000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry` IN (1132, 2414, 5655, 5656, 5665, 5668, 5864, 5872, 5873, 8563, 8588, 8591, 8592, 8595, 8629, 8631, 8632, 13321, 13322, 13331, 13332, 13333, 15277, 15290, 46099, 46100, 46308, 47100);
-- Orc
UPDATE `item_template` SET `spellid_1`=580 WHERE `entry`=1132;
UPDATE `item_template` SET `spellid_1`=6653 WHERE `entry`=5665;
UPDATE `item_template` SET `spellid_1`=6654 WHERE `entry`=5668;
UPDATE `item_template` SET `spellid_1`=64658 WHERE `entry`=46099;
-- Troll
UPDATE `item_template` SET `spellid_1`=8395 WHERE `entry`=8588;
UPDATE `item_template` SET `spellid_1`=10796 WHERE `entry`=8591;
UPDATE `item_template` SET `spellid_1`=10799 WHERE `entry`=8592;
-- Undead
UPDATE `item_template` SET `spellid_1`=17462 WHERE `entry`=13331;
UPDATE `item_template` SET `spellid_1`=17463 WHERE `entry`=13332;
UPDATE `item_template` SET `spellid_1`=17464 WHERE `entry`=13333;
UPDATE `item_template` SET `spellid_1`=64977 WHERE `entry`=46308;
-- Tauren
UPDATE `item_template` SET `spellid_1`=18989 WHERE `entry`=15277;
UPDATE `item_template` SET `spellid_1`=18990 WHERE `entry`=15290;
UPDATE `item_template` SET `spellid_1`=64657 WHERE `entry`=46100;
-- Human
UPDATE `item_template` SET `spellid_1`=472 WHERE `entry`=2414;
UPDATE `item_template` SET `spellid_1`=6648 WHERE `entry`=5655;
UPDATE `item_template` SET `spellid_1`=458 WHERE `entry`=5656;
-- Dwarf
UPDATE `item_template` SET `spellid_1`=6777 WHERE `entry`=5864;
UPDATE `item_template` SET `spellid_1`=6899 WHERE `entry`=5872;
UPDATE `item_template` SET `spellid_1`=6898 WHERE `entry`=5873;
-- Gnome
UPDATE `item_template` SET `spellid_1`=10873 WHERE `entry`=8563;
UPDATE `item_template` SET `spellid_1`=10969 WHERE `entry`=8595;
UPDATE `item_template` SET `spellid_1`=17453 WHERE `entry`=13321;
UPDATE `item_template` SET `spellid_1`=17454 WHERE `entry`=13322;
-- Night Elf
UPDATE `item_template` SET `spellid_1`=10793 WHERE `entry`=8629;
UPDATE `item_template` SET `spellid_1`=8394 WHERE `entry`=8631;
UPDATE `item_template` SET `spellid_1`=10789 WHERE `entry`=8632;
UPDATE `item_template` SET `spellid_1`=66847 WHERE `entry`=47100;
-- Journeyman
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry` IN (13334, 18766, 18767, 18772, 18773, 18774, 18776, 18777, 18778, 18785, 18786, 18787, 18788, 18789, 18790, 18791, 18793, 18794, 18795, 18796, 18797, 18798, 18902, 47101);
-- Orc
UPDATE `item_template` SET `spellid_1`=23250 WHERE `entry`=18796;
UPDATE `item_template` SET `spellid_1`=23251 WHERE `entry`=18797;
UPDATE `item_template` SET `spellid_1`=23252 WHERE `entry`=18798;
-- Troll
UPDATE `item_template` SET `spellid_1`=23241 WHERE `entry`=18788;
UPDATE `item_template` SET `spellid_1`=23242 WHERE `entry`=18789;
UPDATE `item_template` SET `spellid_1`=23243 WHERE `entry`=18790;
-- Undead
UPDATE `item_template` SET `spellid_1`=17465 WHERE `entry`=13334;
UPDATE `item_template` SET `spellid_1`=23246 WHERE `entry`=18791;
UPDATE `item_template` SET `spellid_1`=66846 WHERE `entry`=47101;
-- Tauren
UPDATE `item_template` SET `spellid_1`=23247 WHERE `entry`=18793;
UPDATE `item_template` SET `spellid_1`=23249 WHERE `entry`=18794;
UPDATE `item_template` SET `spellid_1`=23248 WHERE `entry`=18795;
-- Human
UPDATE `item_template` SET `spellid_1`=23227 WHERE `entry`=18776;
UPDATE `item_template` SET `spellid_1`=23229 WHERE `entry`=18777;
UPDATE `item_template` SET `spellid_1`=23228 WHERE `entry`=18778;
-- Dwarf
UPDATE `item_template` SET `spellid_1`=23240 WHERE `entry`=18785;
UPDATE `item_template` SET `spellid_1`=23238 WHERE `entry`=18786;
UPDATE `item_template` SET `spellid_1`=23239 WHERE `entry`=18787;
-- Gnome
UPDATE `item_template` SET `spellid_1`=23225 WHERE `entry`=18772;
UPDATE `item_template` SET `spellid_1`=23223 WHERE `entry`=18773;
UPDATE `item_template` SET `spellid_1`=23222 WHERE `entry`=18774;
-- Night Elf
UPDATE `item_template` SET `spellid_1`=23221 WHERE `entry`=18766;
UPDATE `item_template` SET `spellid_1`=23219 WHERE `entry`=18767;
UPDATE `item_template` SET `spellid_1`=23338 WHERE `entry`=18902;
-- PvP
-- Black Battlestrider
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22719, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29465;
-- Black War Kodo
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22718, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29466;
-- Black War Ram
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22720, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29467;
-- Black War Steed Bridle
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22717, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29468;
-- Horn of the Black War Wolf
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22724, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29469;
-- Red Skeletal Warhorse
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22722, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29470;
-- Reins of the Black War Tiger
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22723, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29471;
-- Whistle of the Black War Raptor
UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellid_1`=22721, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry`=29472;

