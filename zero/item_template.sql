-- Mounts: Price, level requirement and be usable like in vanilla
-- Apprentice
UPDATE `item_template` SET `BuyPrice`=80000, `SellPrice`=0, `ItemLevel`=40, `RequiredLevel`=40, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry` IN (1132, 2411, 2414, 5655, 5656, 5665, 5668, 5864, 5872, 5873, 8563, 8588, 8591, 8592, 8595, 8629, 8631, 8632, 13321, 13322, 13331, 13332, 13333, 15277, 15290, 33976, 46099, 46100, 46308, 47100);
UPDATE `item_template` SET `spellid_1`=580 WHERE `entry`=1132; -- Horn of the Timber Wolf
UPDATE `item_template` SET `spellid_1`=470 WHERE `entry`=2411; -- Black Stallion Bridle
UPDATE `item_template` SET `spellid_1`=472 WHERE `entry`=2414; -- Pinto Bridle
UPDATE `item_template` SET `spellid_1`=6648 WHERE `entry`=5655; -- Chestnut Mare Bridle
UPDATE `item_template` SET `spellid_1`=458 WHERE `entry`=5656; -- Brown Horse Bridle
UPDATE `item_template` SET `spellid_1`=6653 WHERE `entry`=5665; -- Horn of the Dire Wolf
UPDATE `item_template` SET `spellid_1`=6654 WHERE `entry`=5668; -- Horn of the Brown Wolf
UPDATE `item_template` SET `spellid_1`=6777 WHERE `entry`=5864; -- Gray Ram
UPDATE `item_template` SET `spellid_1`=6899 WHERE `entry`=5872; -- Brown Ram
UPDATE `item_template` SET `spellid_1`=6898 WHERE `entry`=5873; -- White Ram
UPDATE `item_template` SET `spellid_1`=10873 WHERE `entry`=8563; -- Red Mechanostrider
UPDATE `item_template` SET `spellid_1`=8395 WHERE `entry`=8588; -- Whistle of the Emerald Raptor
UPDATE `item_template` SET `spellid_1`=10796 WHERE `entry`=8591; -- Whistle of the Turquoise Raptor
UPDATE `item_template` SET `spellid_1`=10799 WHERE `entry`=8592; -- Whistle of the Violet Raptor
UPDATE `item_template` SET `spellid_1`=10969 WHERE `entry`=8595; -- Blue Mechanostrider
UPDATE `item_template` SET `spellid_1`=10793 WHERE `entry`=8629; -- Reins of the Striped Nightsaber
UPDATE `item_template` SET `spellid_1`=8394 WHERE `entry`=8631; -- Reins of the Striped Frostsaber
UPDATE `item_template` SET `spellid_1`=10789 WHERE `entry`=8632; -- Reins of the Spotted Frostsaber
UPDATE `item_template` SET `spellid_1`=17453 WHERE `entry`=13321; -- Green Mechanostrider
UPDATE `item_template` SET `spellid_1`=17454 WHERE `entry`=13322; -- Unpainted Mechanostrider
UPDATE `item_template` SET `spellid_1`=17462 WHERE `entry`=13331; -- Red Skeletal Horse
UPDATE `item_template` SET `spellid_1`=17463 WHERE `entry`=13332; -- Blue Skeletal Horse
UPDATE `item_template` SET `spellid_1`=17464 WHERE `entry`=13333; -- Brown Skeletal Horse
UPDATE `item_template` SET `spellid_1`=18989 WHERE `entry`=15277; -- Gray Kodo
UPDATE `item_template` SET `spellid_1`=18990 WHERE `entry`=15290; -- Brown Kodo
UPDATE `item_template` SET `spellid_1`=43899 WHERE `entry`=33976; -- Brewfest Ram
UPDATE `item_template` SET `spellid_1`=64658 WHERE `entry`=46099; -- Horn of the Black Wolf
UPDATE `item_template` SET `spellid_1`=64657 WHERE `entry`=46100; -- White Kodo
UPDATE `item_template` SET `spellid_1`=64977 WHERE `entry`=46308; -- Black Skeletal Horse
UPDATE `item_template` SET `spellid_1`=66847 WHERE `entry`=47100; -- Reins of the Striped Dawnsaber
-- Journeyman
UPDATE `item_template` SET `BuyPrice`=1000000, `SellPrice`=0, `ItemLevel`=60, `RequiredLevel`=60, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry` IN (13086, 13334, 18766, 18767, 18772, 18773, 18774, 18776, 18777, 18778, 18785, 18786, 18787, 18788, 18789, 18790, 18791, 18793, 18794, 18795, 18796, 18797, 18798, 18902, 33977, 47101);
UPDATE `item_template` SET `spellid_1`=17229 WHERE `entry`=13086; -- Reins of the Winterspring Frostsaber
UPDATE `item_template` SET `spellid_1`=17465 WHERE `entry`=13334; -- Green Skeletal Warhorse
UPDATE `item_template` SET `spellid_1`=23221 WHERE `entry`=18766; -- Reins of the Swift Frostsaber
UPDATE `item_template` SET `spellid_1`=23219 WHERE `entry`=18767; -- Reins of the Swift Mistsaber
UPDATE `item_template` SET `spellid_1`=23225 WHERE `entry`=18772; -- Swift Green Mechanostrider
UPDATE `item_template` SET `spellid_1`=23223 WHERE `entry`=18773; -- Swift White Mechanostrider
UPDATE `item_template` SET `spellid_1`=23222 WHERE `entry`=18774; -- Swift Yellow Mechanostrider
UPDATE `item_template` SET `spellid_1`=23227 WHERE `entry`=18776; -- Swift Palomino
UPDATE `item_template` SET `spellid_1`=23229 WHERE `entry`=18777; -- Swift Brown Steed
UPDATE `item_template` SET `spellid_1`=23228 WHERE `entry`=18778; -- Swift White Steed
UPDATE `item_template` SET `spellid_1`=23240 WHERE `entry`=18785; -- Swift White Ram
UPDATE `item_template` SET `spellid_1`=23238 WHERE `entry`=18786; -- Swift Brown Ram
UPDATE `item_template` SET `spellid_1`=23239 WHERE `entry`=18787; -- Swift Gray Ram
UPDATE `item_template` SET `spellid_1`=23241 WHERE `entry`=18788; -- Swift Blue Raptor
UPDATE `item_template` SET `spellid_1`=23242 WHERE `entry`=18789; -- Swift Olive Raptor
UPDATE `item_template` SET `spellid_1`=23243 WHERE `entry`=18790; -- Swift Orange Raptor
UPDATE `item_template` SET `spellid_1`=23246 WHERE `entry`=18791; -- Purple Skeletal Warhorse
UPDATE `item_template` SET `spellid_1`=23247 WHERE `entry`=18793; -- Great White Kodo
UPDATE `item_template` SET `spellid_1`=23249 WHERE `entry`=18794; -- Great Brown Kodo
UPDATE `item_template` SET `spellid_1`=23248 WHERE `entry`=18795; -- Great Gray Kodo
UPDATE `item_template` SET `spellid_1`=23250 WHERE `entry`=18796; -- Horn of the Swift Brown Wolf
UPDATE `item_template` SET `spellid_1`=23251 WHERE `entry`=18797; -- Horn of the Swift Timber Wolf
UPDATE `item_template` SET `spellid_1`=23252 WHERE `entry`=18798; -- Horn of the Swift Gray Wolf
UPDATE `item_template` SET `spellid_1`=23338 WHERE `entry`=18902; -- Reins of the Swift Stormsaber
UPDATE `item_template` SET `spellid_1`=43900 WHERE `entry`=33977; -- Swift Brewfest Ram
UPDATE `item_template` SET `spellid_1`=66846 WHERE `entry`=47101; -- Ochre Skeletal Warhorse

UPDATE `item_template` SET `ItemLevel`=60, `RequiredLevel`=60, `spellcharges_1`=0, `spellid_2`=0, `spelltrigger_2`=0, `description`='' WHERE `entry` IN (19029, 19030, 29465, 29466, 29467, 29468, 29469, 29470, 29471, 29472, 34129, 35906);
UPDATE `item_template` SET `spellid_1`=23509 WHERE `entry`=19029; -- Horn of the Frostwolf Howler
UPDATE `item_template` SET `spellid_1`=23510 WHERE `entry`=19030; -- Stormpike Battle Charger
UPDATE `item_template` SET `spellid_1`=22719 WHERE `entry`=29465; -- Black Battlestrider
UPDATE `item_template` SET `spellid_1`=22718 WHERE `entry`=29466; -- Black War Kodo
UPDATE `item_template` SET `spellid_1`=22720 WHERE `entry`=29467; -- Black War Ram
UPDATE `item_template` SET `spellid_1`=22717 WHERE `entry`=29468; -- Black War Steed Bridle
UPDATE `item_template` SET `spellid_1`=22724 WHERE `entry`=29469; -- Horn of the Black War Wolf
UPDATE `item_template` SET `spellid_1`=22722 WHERE `entry`=29470; -- Red Skeletal Warhorse
UPDATE `item_template` SET `spellid_1`=22723 WHERE `entry`=29471; -- Reins of the Black War Tiger
UPDATE `item_template` SET `spellid_1`=22721 WHERE `entry`=29472; -- Whistle of the Black War Raptor
UPDATE `item_template` SET `spellid_1`=35028 WHERE `entry`=34129; -- Swift Warstrider
UPDATE `item_template` SET `spellid_1`=48027 WHERE `entry`=35906; -- Reins of the Black War Elekk
