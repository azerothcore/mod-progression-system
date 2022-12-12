-- Lower Honor Vendor Prices (around 40%) - It will stay at this price until removed from the game
SET @EXTENDED_COST_WEAPON_1 := 1442; -- 8000 Honor - range, 1-handed, off-hand
SET @EXTENDED_COST_WEAPON_2 := 171; -- 15000 Honor - 2-handed weapons
SET @EXTENDED_COST_ACCESSORY_1 := 95; -- 6885 Honor - Ring, Neck
SET @EXTENDED_COST_ACCESSORY_2 := 444; -- 5000 Honor - Cloak, Wrist
SET @EXTENDED_COST_ACCESSORY_3 := 2405; -- 9200 Honor - Talisman
SET @EXTENDED_COST_GEM_1 := 95; -- 6885 Honor - Other Gems
SET @EXTENDED_COST_GEM_2 := 99; -- 8500 Honor - Orange Gems
SET @EXTENDED_COST_ACCESSORY_4 := 427; -- 3000 Honor - Medallion
SET @EXTENDED_COST_ARMOR_1 := 95; -- 6885 Honor - Feet, Waist
SET @EXTENDED_COST_ARMOR_2 := 444; -- 5000 Honor - Hands, Shoulder
SET @EXTENDED_COST_ARMOR_3 := 1442; -- 8000 Honor - Head, Legs
SET @EXTENDED_COST_ARMOR_4 := 99; -- 8500 Honor - Chest

SET @NPC_ARMOR_ALLIANCE := 12777; -- Captain Dirgehammer
SET @NPC_ACCESSORY_ALLIANCE := 12805; -- Officer Areyn (already has inventory)
SET @NPC_WEAPON_ALLIANCE := 12782; -- Captain O'Neal

SET @NPC_ARMOR_HORDE := 24520; -- Doris Volanthius
SET @NPC_ACCESSORY_HORDE := 12799; -- Sergeant Ba'sha (already has inventory)
SET @NPC_WEAPON_HORDE := 14581; -- Sergeant Thunderhorn
 
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_1 WHERE `entry` IN (@NPC_WEAPON_HORDE, @NPC_WEAPON_ALLIANCE) AND `item` IN (28940,28941,28944,28946,28947,28950,28951,28952,28953,28954,28955,28956,28957,28920,28921,28922,28924,28925,28926,28928,28929,28930,28931,28937,28938,28939);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_2 WHERE `entry` IN (@NPC_WEAPON_HORDE, @NPC_WEAPON_ALLIANCE) AND `item` IN (28942,28943,28945,28948,28949,28959,28960,28293,28917,28918,28919,28923,28933,28935);

UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ACCESSORY_2 WHERE `entry` IN (@NPC_ARMOR_ALLIANCE, @NPC_ARMOR_HORDE) AND `item` IN (28973,28978,28981,28984,28988,28989,28992,28996,28999,29002,29006,31599,28381,28405,28411,28424,28445,28448,28451,28605,28638,28643,28646,31598);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_1 WHERE `entry` IN (@NPC_ARMOR_ALLIANCE, @NPC_ARMOR_HORDE) AND `item` IN (28974,28975,28976,28977,28980,28982,28983,28985,28986,28987,28990,28991,28993,28994,28995,28997,28998,29000,29001,29003,29004,29005,31596,31597,28383,28385,28402,28404,28409,28410,28422,28423,28443,28444,28446,28447,28449,28450,28629,28630,28639,28640,28641,28642,28644,28645,31594,31595);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_2 WHERE `entry` IN (@NPC_ARMOR_ALLIANCE, @NPC_ARMOR_HORDE) AND `item` IN (28614,28617,28618,28622,28624,28627,28680,28683,28684,28687,28690,28693,28695,28698,28700,28703,28704,28707,28710,28713,28714,28716,28719,28722,31589,31592,31620,31624,31631,31634,31641,31644,28806,28809,28811,28814,28817,28820,28832,28835,28836,28839,28842,28845,28847,28850,28852,28855,28856,28859,28862,28865,28866,28868,28871,28874,31584,31587,31621,31628,31636,31639,31647,31650);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_3 WHERE `entry` IN (@NPC_ARMOR_ALLIANCE, @NPC_ARMOR_HORDE) AND `item` IN (28615,28616,28619,28620,28625,28626,28681,28685,28686,28691,28692,28696,28697,28701,28702,28705,28706,28711,28712,28715,28718,28720,28721,28724,31590,31591,31622,31623,31632,31633,31642,31643,28807,28808,28812,28813,28818,28819,28833,28834,28837,28838,28843,28844,28848,28849,28853,28854,28857,28858,28863,28864,28867,28870,28872,28873,31585,31586,31626,31627,31637,31638,31648,31649);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_4 WHERE `entry` IN (@NPC_ARMOR_ALLIANCE, @NPC_ARMOR_HORDE) AND `item` IN (28613,28623,28628,28679,28688,28689,28694,28699,28708,28709,28717,28723,31593,31625,31630,31640,28805,28815,28821,28831,28840,28841,28846,28851,28860,28861,28869,28875,31588,31629,31635,31646);

UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ACCESSORY_1 WHERE `entry` IN (@NPC_ACCESSORY_ALLIANCE, @NPC_ACCESSORY_HORDE) AND `item` IN (28244,28245,28246,28247);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ACCESSORY_3 WHERE `entry` IN (@NPC_ACCESSORY_ALLIANCE, @NPC_ACCESSORY_HORDE) AND `item` IN (24551,25829);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_GEM_1 WHERE `entry` IN (@NPC_ACCESSORY_ALLIANCE, @NPC_ACCESSORY_HORDE) AND `item` IN (28118,28119,28120,28362);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_GEM_2 WHERE `entry` IN (@NPC_ACCESSORY_ALLIANCE, @NPC_ACCESSORY_HORDE) AND `item` IN (28123,28363);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ACCESSORY_4 WHERE `entry` IN (@NPC_ACCESSORY_ALLIANCE, @NPC_ACCESSORY_HORDE) AND `item` IN (28239,28240,28241,28242,28243,30343,30344,30345,30346,38588,28234,28235,28236,28237,28238,30348,30349,30350,30351,38589);

-- Lower Arena Season 1 vendor prices and remove arena rating requirement
SET @EXTENDED_COST_SHOULDER := 2374; -- 600 Arena - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2288; -- 1500 Arena - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 2283; -- 1125 Arena - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1758; -- 1000 Arena - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 2380; -- 800 Arena - Shield
SET @EXTENDED_COST_WEAPON_5 := 2432; -- 400 Arena - OH
SET @EXTENDED_COST_WEAPON_6 := 2432; -- 400 Arena - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2374; -- 600 Arena - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 2432; -- 400 Arena - Hands

SET @NPC_LEENI := 24392;

UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_SHOULDER WHERE `entry`=@NPC_LEENI AND `item` IN (24546,24554,25832,25854,25999,27473,27706,27710,27883,28129,28139,28333,30186,31378,31407,31412,31619);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_1 WHERE `entry`=@NPC_LEENI AND `item` IN (24550,24557,28294,28298,28299,28300,28476);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_2 WHERE `entry`=@NPC_LEENI AND `item` IN (28297,32450,32451);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_3 WHERE `entry`=@NPC_LEENI AND `item` IN (28295,28305,28308,28312,28313);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_4 WHERE `entry`=@NPC_LEENI AND `item` IN (28358);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_5 WHERE `entry`=@NPC_LEENI AND `item` IN (28302,28307,28309,28310,28314,28346,32452);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_6 WHERE `entry`=@NPC_LEENI AND `item` IN (28319,28320,28355,28356,28357);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_1  WHERE `entry`=@NPC_LEENI AND `item` IN (24544,24545,24547,24552,24553,24555,25830,25831,25833,25855,25856,25858,25997,25998,26001,27469,27471,27472,27702,27704,27705,27708,27709,27711,27879,27881,27882,28127,28128,28130,28137,28138,28140,28331,28332,28334,30187,30200,30201,31376,31377,31379,31396,31400,31406,31410,31411,31413,31613,31616,31618);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_2  WHERE `entry`=@NPC_LEENI AND `item` IN (24549,24556,25834,25857,26000,27470,27703,27707,27880,28126,28136,28335,30188,31375,31397,31409,31614);

-- Add Arena Season 2
SET @EXTENDED_COST_SHOULDER := 1435; -- 1500 Arena, 2000 Rating - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2282; -- 3750 Arena, 1850 Rating - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 1757; -- 3150 Arena, 1850 Rating - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1670; -- 2625 Arena, 1850 Rating - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 1431; -- 1875 Arena, 1850 Rating - Shield
SET @EXTENDED_COST_WEAPON_5 := 1432; -- 1125 Arena, 1850 Rating - OH
SET @EXTENDED_COST_WEAPON_6 := 2627; -- 1066 Arena, 1850 Rating - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2285; -- 1875 Arena - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 2283; -- 1125 Arena - Hands

SET @NPC_ZOKK := 26352;
SET @GUID := 3000019;

UPDATE `creature_template` SET `subname` = 'Merciless Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_ZOKK);

-- Set creatures for this season
DELETE FROM `creature` WHERE (`id1` = @NPC_ZOKK) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, @NPC_ZOKK, 0, 0, 530, 0, 0, 1, 1, 0, 3073.99, 3633.34, 143.779, 2.09012, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+1, @NPC_ZOKK, 0, 0, 530, 0, 0, 1, 1, 0, -2163.33, 6659.34, 0.1057, 6.17846, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+2, @NPC_ZOKK, 0, 0, 530, 0, 0, 1, 1, 0, 2884.45, 5982.34, 3.38883, 0.872665, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+3, @NPC_ZOKK, 0, 0, 530, 0, 0, 1, 1, 0, -1974.181763, 5173.381348, -38.286526, 5.566845, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE `eventEntry` IN (55, 56, 76) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(76, @GUID+0),
(76, @GUID+1),
(76, @GUID+2),
(76, @GUID+3),
(55, @GUID+0),
(55, @GUID+1),
(55, @GUID+2),
(55, @GUID+3),
(56, @GUID+0),
(56, @GUID+1),
(56, @GUID+2),
(56, @GUID+3);

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ZOKK AND `item` IN (30486,30487,30488,30489,30490,31958,31959,31960,31961,31962,31963,31964,31965,31966,31967,31968,31969,31971,31972,31973,31974,31975,31976,31977,31978,31979,31980,31981,31982,31983,31984,31985,31986,31987,31988,31989,31990,31991,31992,31993,31995,31996,31997,31998,31999,32000,32001,32002,32003,32004,32005,32006,32007,32008,32009,32010,32011,32012,32013,32014,32015,32016,32017,32018,32019,32020,32021,32022,32023,32024,32025,32026,32027,32028,32029,32030,32031,32032,32033,32034,32035,32036,32037,32038,32039,32040,32041,32042,32043,32044,32045,32046,32047,32048,32049,32050,32051,32052,32053,32054,32055,32056,32057,32058,32059,32060,32961,32962,32963,32964,33076,33077,33078,33309,33313);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_ZOKK, 30486, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Plate Chestpiece
(@NPC_ZOKK, 30487, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Plate Gauntlets
(@NPC_ZOKK, 30488, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Plate Helm
(@NPC_ZOKK, 30489, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Plate Legguards
(@NPC_ZOKK, 30490, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Plate Shoulders
(@NPC_ZOKK, 31958, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Bonecracker
(@NPC_ZOKK, 31959, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's Bonegrinder
(@NPC_ZOKK, 31960, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Chain Armor
(@NPC_ZOKK, 31961, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Chain Gauntlets
(@NPC_ZOKK, 31962, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Chain Helm
(@NPC_ZOKK, 31963, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Chain Leggings
(@NPC_ZOKK, 31964, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Chain Spaulders
(@NPC_ZOKK, 31965, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Merciless Gladiator's Cleaver
(@NPC_ZOKK, 31966, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's Decapitator
(@NPC_ZOKK, 31967, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Dragonhide Gloves
(@NPC_ZOKK, 31968, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Dragonhide Helm
(@NPC_ZOKK, 31969, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Dragonhide Legguards
(@NPC_ZOKK, 31971, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Dragonhide Spaulders
(@NPC_ZOKK, 31972, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Dragonhide Tunic
(@NPC_ZOKK, 31973, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Dreadweave Gloves
(@NPC_ZOKK, 31974, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Dreadweave Hood
(@NPC_ZOKK, 31975, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Dreadweave Leggings
(@NPC_ZOKK, 31976, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Dreadweave Mantle
(@NPC_ZOKK, 31977, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Dreadweave Robe
(@NPC_ZOKK, 31978, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Endgame
(@NPC_ZOKK, 31979, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Felweave Amice
(@NPC_ZOKK, 31980, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Felweave Cowl
(@NPC_ZOKK, 31981, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Felweave Handguards
(@NPC_ZOKK, 31982, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Felweave Raiment
(@NPC_ZOKK, 31983, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Felweave Trousers
(@NPC_ZOKK, 31984, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's Greatsword
(@NPC_ZOKK, 31985, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Hacker
(@NPC_ZOKK, 31986, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's Crossbow of the Phoenix
(@NPC_ZOKK, 31987, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Kodohide Gloves
(@NPC_ZOKK, 31988, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Kodohide Helm
(@NPC_ZOKK, 31989, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Kodohide Legguards
(@NPC_ZOKK, 31990, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Kodohide Spaulders
(@NPC_ZOKK, 31991, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Kodohide Tunic
(@NPC_ZOKK, 31992, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Lamellar Chestpiece
(@NPC_ZOKK, 31993, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Lamellar Gauntlets
(@NPC_ZOKK, 31995, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Lamellar Legguards
(@NPC_ZOKK, 31996, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Lamellar Shoulders
(@NPC_ZOKK, 31997, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Lamellar Helm
(@NPC_ZOKK, 31998, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Leather Gloves
(@NPC_ZOKK, 31999, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Leather Helm
(@NPC_ZOKK, 32000, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Leather Legguards
(@NPC_ZOKK, 32001, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Leather Spaulders
(@NPC_ZOKK, 32002, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Leather Tunic
(@NPC_ZOKK, 32003, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Left Ripper
(@NPC_ZOKK, 32004, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Linked Armor
(@NPC_ZOKK, 32005, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Linked Gauntlets
(@NPC_ZOKK, 32006, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Linked Helm
(@NPC_ZOKK, 32007, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Linked Leggings
(@NPC_ZOKK, 32008, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Linked Spaulders
(@NPC_ZOKK, 32009, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Mail Armor
(@NPC_ZOKK, 32010, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Mail Gauntlets
(@NPC_ZOKK, 32011, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Mail Helm
(@NPC_ZOKK, 32012, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Mail Leggings
(@NPC_ZOKK, 32013, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Mail Spaulders
(@NPC_ZOKK, 32014, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's Maul
(@NPC_ZOKK, 32015, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Mooncloth Gloves
(@NPC_ZOKK, 32016, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Mooncloth Hood
(@NPC_ZOKK, 32017, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Mooncloth Leggings
(@NPC_ZOKK, 32018, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Mooncloth Mantle
(@NPC_ZOKK, 32019, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Mooncloth Robe
(@NPC_ZOKK, 32020, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Ornamented Chestguard
(@NPC_ZOKK, 32021, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Ornamented Gloves
(@NPC_ZOKK, 32022, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Ornamented Headcover
(@NPC_ZOKK, 32023, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Ornamented Legplates
(@NPC_ZOKK, 32024, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Ornamented Spaulders
(@NPC_ZOKK, 32025, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's Painsaw
(@NPC_ZOKK, 32026, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Merciless Gladiator's Pummeler
(@NPC_ZOKK, 32027, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Quickblade
(@NPC_ZOKK, 32028, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Merciless Gladiator's Right Ripper
(@NPC_ZOKK, 32029, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Ringmail Armor
(@NPC_ZOKK, 32030, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Ringmail Gauntlets
(@NPC_ZOKK, 32031, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Ringmail Helm
(@NPC_ZOKK, 32032, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Ringmail Leggings
(@NPC_ZOKK, 32033, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Ringmail Spaulders
(@NPC_ZOKK, 32034, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Satin Gloves
(@NPC_ZOKK, 32035, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Satin Hood
(@NPC_ZOKK, 32036, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Satin Leggings
(@NPC_ZOKK, 32037, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Satin Mantle
(@NPC_ZOKK, 32038, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Satin Robe
(@NPC_ZOKK, 32039, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Scaled Chestpiece
(@NPC_ZOKK, 32040, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Scaled Gauntlets
(@NPC_ZOKK, 32041, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Scaled Helm
(@NPC_ZOKK, 32042, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Scaled Legguards
(@NPC_ZOKK, 32043, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Scaled Shoulders
(@NPC_ZOKK, 32044, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Merciless Gladiator's Shanker
(@NPC_ZOKK, 32045, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Merciless Gladiator's Shield Wall
(@NPC_ZOKK, 32046, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Shiv
(@NPC_ZOKK, 32047, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Silk Amice
(@NPC_ZOKK, 32048, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Silk Cowl
(@NPC_ZOKK, 32049, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Silk Handguards
(@NPC_ZOKK, 32050, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Silk Raiment
(@NPC_ZOKK, 32051, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Silk Trousers
(@NPC_ZOKK, 32052, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Merciless Gladiator's Slicer
(@NPC_ZOKK, 32053, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Merciless Gladiator's Spellblade
(@NPC_ZOKK, 32054, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Merciless Gladiator's War Edge
(@NPC_ZOKK, 32055, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Merciless Gladiator's War Staff
(@NPC_ZOKK, 32056, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Merciless Gladiator's Wyrmhide Gloves
(@NPC_ZOKK, 32057, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Wyrmhide Helm
(@NPC_ZOKK, 32058, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Wyrmhide Legguards
(@NPC_ZOKK, 32059, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Merciless Gladiator's Wyrmhide Spaulders
(@NPC_ZOKK, 32060, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Merciless Gladiator's Wyrmhide Tunic
(@NPC_ZOKK, 32961, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Merciless Gladiator's Reprieve
(@NPC_ZOKK, 32962, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Merciless Gladiator's Touch of Defeat
(@NPC_ZOKK, 32963, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Merciless Gladiator's Gavel
(@NPC_ZOKK, 32964, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Merciless Gladiator's Salvation
(@NPC_ZOKK, 33076, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Merciless Gladiator's Idol of Tenacity
(@NPC_ZOKK, 33077, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Merciless Gladiator's Libram of Justice
(@NPC_ZOKK, 33078, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Merciless Gladiator's Totem of the Third Wind
(@NPC_ZOKK, 33309, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Merciless Gladiator's Redoubt
(@NPC_ZOKK, 33313, 0, 0, 0, @EXTENDED_COST_WEAPON_4); -- Merciless Gladiator's Barrier

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ZOKK) AND (`SourceEntry` IN (30486,30487,30488,30489,30490,31958,31959,31960,31961,31962,31963,31964,31965,31966,31967,31968,31969,31971,31972,31973,31974,31975,31976,31977,31978,31979,31980,31981,31982,31983,31984,31985,31986,31987,31988,31989,31990,31991,31992,31993,31995,31996,31997,31998,31999,32000,32001,32002,32003,32004,32005,32006,32007,32008,32009,32010,32011,32012,32013,32014,32015,32016,32017,32018,32019,32020,32021,32022,32023,32024,32025,32026,32027,32028,32029,32030,32031,32032,32033,32034,32035,32036,32037,32038,32039,32040,32041,32042,32043,32044,32045,32046,32047,32048,32049,32050,32051,32052,32053,32054,32055,32056,32057,32058,32059,32060,32961,32962,32963,32964,33076,33077,33078,33309,33313));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ZOKK, 30486, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ZOKK, 30487, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ZOKK, 30488, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ZOKK, 30489, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ZOKK, 30490, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ZOKK, 31960, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ZOKK, 31961, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ZOKK, 31962, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ZOKK, 31963, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ZOKK, 31964, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ZOKK, 31967, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31968, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31969, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31971, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31972, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31973, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31974, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31975, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31976, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31977, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31979, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31980, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31981, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31982, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31983, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ZOKK, 31987, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31988, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31989, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31990, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31991, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 31992, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 31993, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 31995, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 31996, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 31997, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 31998, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ZOKK, 31999, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ZOKK, 32000, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ZOKK, 32001, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ZOKK, 32002, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ZOKK, 32004, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32005, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32006, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32007, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32008, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32009, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32010, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32011, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32012, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32013, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32015, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32016, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32017, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32018, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32019, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32020, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32021, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32022, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32023, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32024, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32029, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32030, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32031, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32032, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32033, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ZOKK, 32034, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32035, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32036, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32037, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32038, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ZOKK, 32039, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32040, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32041, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32042, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32043, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ZOKK, 32047, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ZOKK, 32048, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ZOKK, 32049, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ZOKK, 32050, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ZOKK, 32051, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ZOKK, 32056, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 32057, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 32058, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 32059, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ZOKK, 32060, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''); -- Druid

-- Create Accessory NPC
SET @NPC_GREX := 40209;
SET @GUID := 3000031;

UPDATE `creature_template` SET `subname` = 'Accessories Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_GREX);

DELETE FROM `creature` WHERE (`id1` = @NPC_GREX) AND `guid` IN (@GUID+0, @GUID+1);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, @NPC_GREX, 0, 0, 530, 0, 0, 1, 1, 0, 3073.259766, 3642.980469, 143.780502, 4.354409, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+1, @NPC_GREX, 0, 0, 530, 0, 0, 1, 1, 0, -1968.69, 5171.64, -38.3121, 0.424065, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE `eventEntry` IN (55, 56, 76) AND (`guid` IN (@GUID+0, @GUID+1));
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(76, @GUID+0),
(55, @GUID+0),
(56, @GUID+0),
(76, @GUID+1),
(55, @GUID+1),
(56, @GUID+1);

-- Accessories
SET @EXTENDED_COST_ACCESSORY_1 := 2028; -- 16000 Honor - Veteran's Bands
SET @EXTENDED_COST_ACCESSORY_2 := 1935; -- 13000 Honor - Wrist
SET @EXTENDED_COST_ACCESSORY_3 := 1923; -- 18000 Honor - Waist
SET @EXTENDED_COST_ACCESSORY_4 := 1911; -- 18000 Honor - Feet
SET @EXTENDED_COST_ACCESSORY_5 := 127 ; -- 16000 Honor - Pendant

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_GREX;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_GREX, 33056, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1),  -- Veteran's Band of Dominance
(@NPC_GREX, 33064, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1),  -- Veteran's Band of Salvation
(@NPC_GREX, 33057, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1),  -- Veteran's Band of Triumph
(@NPC_GREX, 32809, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Chain Bracers
(@NPC_GREX, 32797, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Chain Girdle
(@NPC_GREX, 32785, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Chain Sabatons
(@NPC_GREX, 32786, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Dragonhide Boots
(@NPC_GREX, 32810, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Dragonhide Bracers
(@NPC_GREX, 32799, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Dreadweave Belt
(@NPC_GREX, 32811, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Dreadweave Cuffs
(@NPC_GREX, 32787, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Dreadweave Stalkers
(@NPC_GREX, 32800, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Kodohide Belt
(@NPC_GREX, 32788, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Kodohide Boots
(@NPC_GREX, 32812, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Kodohide Bracers
(@NPC_GREX, 32801, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Lamellar Belt
(@NPC_GREX, 32813, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Lamellar Bracers
(@NPC_GREX, 32789, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Lamellar Greaves
(@NPC_GREX, 32802, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Leather Belt
(@NPC_GREX, 32790, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Leather Boots
(@NPC_GREX, 32814, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Leather Bracers
(@NPC_GREX, 32816, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Linked Bracers
(@NPC_GREX, 32803, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Linked Girdle
(@NPC_GREX, 32791, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Linked Sabatons
(@NPC_GREX, 32817, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Mail Bracers
(@NPC_GREX, 32804, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Mail Girdle
(@NPC_GREX, 32792, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Mail Sabatons
(@NPC_GREX, 32979, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Mooncloth Belt
(@NPC_GREX, 32980, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Mooncloth Cuffs
(@NPC_GREX, 32981, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Mooncloth Slippers
(@NPC_GREX, 32988, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Ornamented Belt
(@NPC_GREX, 32989, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Ornamented Bracers
(@NPC_GREX, 32990, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Ornamented Greaves
(@NPC_GREX, 33067, 1, 0, 0, @EXTENDED_COST_ACCESSORY_5),  -- Veteran's Pendant of Conquest
(@NPC_GREX, 33065, 1, 0, 0, @EXTENDED_COST_ACCESSORY_5),  -- Veteran's Pendant of Dominance
(@NPC_GREX, 33068, 1, 0, 0, @EXTENDED_COST_ACCESSORY_5),  -- Veteran's Pendant of Salvation
(@NPC_GREX, 33066, 1, 0, 0, @EXTENDED_COST_ACCESSORY_5),  -- Veteran's Pendant of Triumph
(@NPC_GREX, 32805, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Plate Belt
(@NPC_GREX, 32818, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Plate Bracers
(@NPC_GREX, 32793, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Plate Greaves
(@NPC_GREX, 32997, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Ringmail Bracers
(@NPC_GREX, 32998, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Ringmail Girdle
(@NPC_GREX, 32999, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Ringmail Sabatons
(@NPC_GREX, 32806, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Scaled Belt
(@NPC_GREX, 32819, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Scaled Bracers
(@NPC_GREX, 32794, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Scaled Greaves
(@NPC_GREX, 32807, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Silk Belt
(@NPC_GREX, 32820, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2),  -- Veteran's Silk Cuffs
(@NPC_GREX, 32795, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Silk Footguards
(@NPC_GREX, 32808, 2, 0, 0, @EXTENDED_COST_ACCESSORY_3),  -- Veteran's Wyrmhide Belt
(@NPC_GREX, 32796, 2, 0, 0, @EXTENDED_COST_ACCESSORY_4),  -- Veteran's Wyrmhide Boots
(@NPC_GREX, 32821, 2, 0, 0, @EXTENDED_COST_ACCESSORY_2);  -- Veteran's Wyrmhide Bracers

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_GREX) AND (`SourceEntry` IN (32799,32811,32787,32979,32980,32981,32807,32820,32795,32786,32788,32790,32796,32800,32802,32808,32810,32812,32814,32821,32785,32791,32792,32797,32803,32804,32809,32816,32817,32997,32998,32999,32789,32793,32794,32801,32805,32806,32813,32818,32819,32988,32989,32990));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_GREX, 32799, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32811, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32787, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32979, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32980, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32981, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32807, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32820, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32795, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 32786, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32788, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32790, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32796, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32800, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32802, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32808, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32810, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32812, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32814, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32821, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 32785, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32791, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32792, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32797, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32803, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32804, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32809, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32816, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32817, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32997, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32998, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32999, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 32789, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32793, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32794, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32801, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32805, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32806, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32813, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32818, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32819, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32988, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32989, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 32990, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''); -- Plate
