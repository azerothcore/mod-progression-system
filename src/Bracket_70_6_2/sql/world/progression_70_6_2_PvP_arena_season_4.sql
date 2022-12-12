-- Change Season 1 Arena Gear to cost Honor at discounted price (~30% Discount)
SET @EXTENDED_COST_SHOULDER := 173; -- 12750 Honor - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2968; -- 26100 Honor - 2-handed weapons
SET @EXTENDED_COST_WEAPON_2 := 1935; -- 13000 Honor - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1935; -- 13000 Honor - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 99; -- 8500 - Shield
SET @EXTENDED_COST_WEAPON_5 := 2969; -- 12000 Honor - OH
SET @EXTENDED_COST_WEAPON_6 := 444; -- 5000 Honor - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2263; -- 14000 Honor - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 465; -- 9000 Honor - Hands

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

-- Change Season 2 Arena Gear to cost Honor at full price
SET @EXTENDED_COST_SHOULDER := 1911; -- 18000 Honor - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2561; -- 38000 Honor - 2-handed weapons
SET @EXTENDED_COST_WEAPON_2 := 94; -- 19125 Honor - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 94; -- 19125 Honor - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 202; -- 12000 - Shield
SET @EXTENDED_COST_WEAPON_5 := 386; -- 15300 Honor - OH
SET @EXTENDED_COST_WEAPON_6 := 1442; -- 8000 Honor - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 1006; -- 20000 Honor - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 173; -- 12750 Honor - Hands

SET @NPC_ZOKK := 26352;

UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_SHOULDER WHERE `entry`=@NPC_ZOKK AND `item` IN (30490,31964,31971,31976,31979,31990,31996,32001,32008,32013,32018,32024,32033,32037,32043,32047,32059);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_1 WHERE `entry`=@NPC_ZOKK AND `item` IN (31959,31966,31984,31986,32014,32025,32055);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_2 WHERE `entry`=@NPC_ZOKK AND `item` IN (32053,32963,32964);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_3 WHERE `entry`=@NPC_ZOKK AND `item` IN (31965,32026,32028,32044,32052);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_4 WHERE `entry`=@NPC_ZOKK AND `item` IN (32045,33309,33313);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_5 WHERE `entry`=@NPC_ZOKK AND `item` IN (31958,31978,31985,32003,32027,32046,32961);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_6 WHERE `entry`=@NPC_ZOKK AND `item` IN (32054,32962,33076,33077,33078);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_1  WHERE `entry`=@NPC_ZOKK AND `item` IN (30486,30488,30489,31960,31962,31963,31968,31969,31972,31974,31975,31977,31980,31982,31983,31988,31989,31991,31992,31995,31997,31999,32000,32002,32004,32006,32007,32009,32011,32012,32016,32017,32019,32020,32022,32023,32029,32031,32032,32035,32036,32038,32039,32041,32042,32048,32050,32051,32057,32058,32060);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_2  WHERE `entry`=@NPC_ZOKK AND `item` IN (30487,31961,31967,31973,31981,31987,31993,31998,32005,32010,32015,32021,32030,32034,32040,32049,32056);

-- Lower Season 3 Arena gear cost and remove rating requirement
SET @EXTENDED_COST_SHOULDER := 2374; -- 600 Arena - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2288; -- 1500 Arena - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 2283; -- 1125 Arena - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1758; -- 1000 Arena - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 2380; -- 800 Arena - Shield
SET @EXTENDED_COST_WEAPON_5 := 2432; -- 400 Arena - OH
SET @EXTENDED_COST_WEAPON_6 := 2432; -- 400 Arena - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2374; -- 600 Arena - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 2432; -- 400 Arena - Hands

SET @NPC_EVEE := 26378;

UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_SHOULDER WHERE `entry`=@NPC_EVEE AND `item` IN (33668,33674,33679,33682,33693,33699,33703,33710,33715,33720,33726,33732,33742,33747,33753,33757,33770);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_1 WHERE `entry`=@NPC_EVEE AND `item` IN (33006,33663,33670,33688,33716,33727,33766,34014,34529,34530,34540);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_2 WHERE `entry`=@NPC_EVEE AND `item` IN (33687,33743,33763);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_3 WHERE `entry`=@NPC_EVEE AND `item` IN (33669,33733,33737,33754,33762);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_4 WHERE `entry`=@NPC_EVEE AND `item` IN (33661,33735,33755);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_5 WHERE `entry`=@NPC_EVEE AND `item` IN (33662,33681,33689,33705,33734,33736,33756,33801,34015,34016,34033);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_WEAPON_6 WHERE `entry`=@NPC_EVEE AND `item` IN (33764,33765,33841,33842,33843,33938,33941,33944,33947,33950,33953,34059,34066);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_1  WHERE `entry`=@NPC_EVEE AND `item` IN (33664,33666,33667,33672,33673,33675,33677,33678,33680,33683,33685,33686,33691,33692,33694,33695,33697,33698,33701,33702,33704,33706,33708,33709,33711,33713,33714,33718,33719,33721,33722,33724,33725,33728,33730,33731,33738,33740,33741,33745,33746,33748,33749,33751,33752,33758,33760,33761,33768,33769,33771);
UPDATE `npc_vendor` SET `ExtendedCost`=@EXTENDED_COST_ARMOR_2  WHERE `entry`=@NPC_EVEE AND `item` IN (33665,33671,33676,33684,33690,33696,33700,33707,33712,33717,33723,33729,33739,33744,33750,33759,33767);

-- Add Arena Season 4
SET @EXTENDED_COST_SHOULDER := 2359; -- 1500 Arena, 2200 Rating - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2360; -- 3750 Arena, 2050 Rating - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 2361; -- 3150 Arena, 2050 Rating - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 2362; -- 2625 Arena, 2050 Rating - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 2364; -- 1875 Arena, 2050 Rating - Shield
SET @EXTENDED_COST_WEAPON_5 := 2363; -- 1125 Arena, 2050 Rating - OH
SET @EXTENDED_COST_WEAPON_6 := 2339; -- 1000 Arena, 1750 Rating - Relics, Thrown, Wand
SET @EXTENDED_COST_WEAPON_7 := 2375; -- 650 Arena, 2050 Rating - 2 OH Weapons
SET @EXTENDED_COST_ARMOR_1 := 2337; -- 1875 Arena, 1600 Rating - Chest
SET @EXTENDED_COST_ARMOR_2 := 2342; -- 1125 Arena - Hands
SET @EXTENDED_COST_ARMOR_3 := 2365; -- 1875 Arena, 1700 Rating - Head
SET @EXTENDED_COST_ARMOR_4 := 2366; -- 1875 Arena, 1550 Rating - Legs

SET @NPC_KEZZIK := 40207;
SET @GUID := 3000027;

UPDATE `creature_template` SET `subname` = 'Brutal Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_KEZZIK);

-- Set creatures for this season
DELETE FROM `creature` WHERE (`id1` = @NPC_KEZZIK) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, @NPC_KEZZIK, 0, 0, 530, 0, 0, 1, 1, 0, 3066.45, 3638.87, 145.218, 0.875901, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+1, @NPC_KEZZIK, 0, 0, 530, 0, 0, 1, 1, 0, -2168.137451, 6654.360840, 3.244180, 6.141810, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+2, @NPC_KEZZIK, 0, 0, 530, 0, 0, 1, 1, 0, 2877.744873, 5981.8784418, 3.413319, 1.519737, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+3, @NPC_KEZZIK, 0, 0, 530, 0, 0, 1, 1, 0, -1969.486328, 5166.076172, -38.437675, 1.432150, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE `eventEntry` IN (56) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(56, @GUID+0),
(56, @GUID+1),
(56, @GUID+2),
(56, @GUID+3);

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_KEZZIK AND `item` IN (34985,34986,34987,34988,34989,34990,34991,34992,34993,34994,34995,34996,34997,34998,34999,35000,35001,35002,35003,35004,35005,35006,35007,35008,35009,35010,35011,35012,35013,35014,35015,35016,35017,35018,35019,35020,35021,35022,35023,35024,35025,35026,35027,35028,35029,35030,35031,35032,35033,35034,35035,35036,35037,35038,35039,35040,35041,35042,35043,35044,35045,35046,35047,35048,35049,35050,35051,35052,35053,35054,35055,35056,35057,35058,35059,35060,35061,35062,35063,35064,35065,35066,35067,35068,35069,35070,35071,35072,35073,35074,35075,35076,35077,35078,35079,35080,35081,35082,35083,35084,35085,35086,35087,35088,35089,35090,35091,35092,35093,35094,35095,35096,35097,35098,35099,35100,35101,35102,35103,35104,35105,35106,35107,35108,35109,35110,35111,35112,35113,35114,35115,36737);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_KEZZIK, 34985, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Baton of Light
(@NPC_KEZZIK, 34986, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Brutal Gladiator's Barrier
(@NPC_KEZZIK, 34987, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Battle Staff
(@NPC_KEZZIK, 34988, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Bonecracker
(@NPC_KEZZIK, 34989, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Bonegrinder
(@NPC_KEZZIK, 34990, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Chain Armor
(@NPC_KEZZIK, 34991, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Chain Gauntlets
(@NPC_KEZZIK, 34992, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Chain Helm
(@NPC_KEZZIK, 34993, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Chain Leggings
(@NPC_KEZZIK, 34994, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Chain Spaulders
(@NPC_KEZZIK, 34995, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Chopper
(@NPC_KEZZIK, 34996, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Brutal Gladiator's Cleaver
(@NPC_KEZZIK, 34997, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Decapitator
(@NPC_KEZZIK, 34998, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Dragonhide Gloves
(@NPC_KEZZIK, 34999, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Dragonhide Helm
(@NPC_KEZZIK, 35000, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Dragonhide Legguards
(@NPC_KEZZIK, 35001, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Dragonhide Spaulders
(@NPC_KEZZIK, 35002, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Dragonhide Tunic
(@NPC_KEZZIK, 35003, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Dreadweave Gloves
(@NPC_KEZZIK, 35004, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Dreadweave Hood
(@NPC_KEZZIK, 35005, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Dreadweave Leggings
(@NPC_KEZZIK, 35006, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Dreadweave Mantle
(@NPC_KEZZIK, 35007, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Dreadweave Robe
(@NPC_KEZZIK, 35008, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Endgame
(@NPC_KEZZIK, 35009, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Felweave Amice
(@NPC_KEZZIK, 35010, 2, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Felweave Cowl
(@NPC_KEZZIK, 35011, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Felweave Handguards
(@NPC_KEZZIK, 35012, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Felweave Raiment
(@NPC_KEZZIK, 35013, 2, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Felweave Trousers
(@NPC_KEZZIK, 35014, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Brutal Gladiator's Gavel
(@NPC_KEZZIK, 35015, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Greatsword
(@NPC_KEZZIK, 35016, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Grimoire
(@NPC_KEZZIK, 35017, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Hacker
(@NPC_KEZZIK, 35018, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Heavy Crossbow
(@NPC_KEZZIK, 35019, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Idol of Resolve
(@NPC_KEZZIK, 35020, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Idol of Steadfastness
(@NPC_KEZZIK, 35021, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Idol of Tenacity
(@NPC_KEZZIK, 35022, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Kodohide Gloves
(@NPC_KEZZIK, 35023, 2, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Kodohide Helm
(@NPC_KEZZIK, 35024, 2, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Kodohide Legguards
(@NPC_KEZZIK, 35025, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Kodohide Spaulders
(@NPC_KEZZIK, 35026, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Kodohide Tunic
(@NPC_KEZZIK, 35027, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Lamellar Chestpiece
(@NPC_KEZZIK, 35028, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Lamellar Gauntlets
(@NPC_KEZZIK, 35029, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Lamellar Helm
(@NPC_KEZZIK, 35030, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Lamellar Legguards
(@NPC_KEZZIK, 35031, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Lamellar Shoulders
(@NPC_KEZZIK, 35032, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Leather Gloves
(@NPC_KEZZIK, 35033, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Leather Helm
(@NPC_KEZZIK, 35034, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Leather Legguards
(@NPC_KEZZIK, 35035, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Leather Spaulders
(@NPC_KEZZIK, 35036, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Leather Tunic
(@NPC_KEZZIK, 35037, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Left Render
(@NPC_KEZZIK, 35038, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Left Ripper
(@NPC_KEZZIK, 35039, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Libram of Fortitude
(@NPC_KEZZIK, 35040, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Libram of Justice
(@NPC_KEZZIK, 35041, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Libram of Vengeance
(@NPC_KEZZIK, 35042, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Linked Armor
(@NPC_KEZZIK, 35043, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Linked Gauntlets
(@NPC_KEZZIK, 35044, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Linked Helm
(@NPC_KEZZIK, 35045, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Linked Leggings
(@NPC_KEZZIK, 35046, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Linked Spaulders
(@NPC_KEZZIK, 35047, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Longbow
(@NPC_KEZZIK, 35048, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Mail Armor
(@NPC_KEZZIK, 35049, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Mail Gauntlets
(@NPC_KEZZIK, 35050, 2, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Mail Helm
(@NPC_KEZZIK, 35051, 2, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Mail Leggings
(@NPC_KEZZIK, 35052, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Mail Spaulders
(@NPC_KEZZIK, 35053, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Mooncloth Gloves
(@NPC_KEZZIK, 35054, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Mooncloth Hood
(@NPC_KEZZIK, 35055, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Mooncloth Leggings
(@NPC_KEZZIK, 35056, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Mooncloth Mantle
(@NPC_KEZZIK, 35057, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Mooncloth Robe
(@NPC_KEZZIK, 35058, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Mutilator
(@NPC_KEZZIK, 35059, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Ornamented Chestguard
(@NPC_KEZZIK, 35060, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Ornamented Gloves
(@NPC_KEZZIK, 35061, 2, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Ornamented Headcover
(@NPC_KEZZIK, 35062, 2, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Ornamented Legplates
(@NPC_KEZZIK, 35063, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Ornamented Spaulders
(@NPC_KEZZIK, 35064, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Painsaw
(@NPC_KEZZIK, 35065, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Piercing Touch
(@NPC_KEZZIK, 35066, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Plate Chestpiece
(@NPC_KEZZIK, 35067, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Plate Gauntlets
(@NPC_KEZZIK, 35068, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Plate Helm
(@NPC_KEZZIK, 35069, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Plate Legguards
(@NPC_KEZZIK, 35070, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Plate Shoulders
(@NPC_KEZZIK, 35071, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Brutal Gladiator's Pummeler
(@NPC_KEZZIK, 35072, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Quickblade
(@NPC_KEZZIK, 35073, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Brutal Gladiator's Redoubt
(@NPC_KEZZIK, 35074, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Reprieve
(@NPC_KEZZIK, 35075, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Rifle
(@NPC_KEZZIK, 35076, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Brutal Gladiator's Right Ripper
(@NPC_KEZZIK, 35077, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Ringmail Armor
(@NPC_KEZZIK, 35078, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Ringmail Gauntlets
(@NPC_KEZZIK, 35079, 3, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Ringmail Helm
(@NPC_KEZZIK, 35080, 3, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Ringmail Leggings
(@NPC_KEZZIK, 35081, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Ringmail Spaulders
(@NPC_KEZZIK, 35082, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Brutal Gladiator's Salvation
(@NPC_KEZZIK, 35083, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Satin Gloves
(@NPC_KEZZIK, 35084, 2, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Satin Hood
(@NPC_KEZZIK, 35085, 2, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Satin Leggings
(@NPC_KEZZIK, 35086, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Satin Mantle
(@NPC_KEZZIK, 35087, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Satin Robe
(@NPC_KEZZIK, 35088, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Scaled Chestpiece
(@NPC_KEZZIK, 35089, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Scaled Gauntlets
(@NPC_KEZZIK, 35090, 3, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Scaled Helm
(@NPC_KEZZIK, 35091, 3, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Scaled Legguards
(@NPC_KEZZIK, 35092, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Scaled Shoulders
(@NPC_KEZZIK, 35093, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Brutal Gladiator's Shanker
(@NPC_KEZZIK, 35094, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Brutal Gladiator's Shield Wall
(@NPC_KEZZIK, 35095, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Brutal Gladiator's Shiv
(@NPC_KEZZIK, 35096, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Silk Amice
(@NPC_KEZZIK, 35097, 1, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Silk Cowl
(@NPC_KEZZIK, 35098, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Silk Handguards
(@NPC_KEZZIK, 35099, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Silk Raiment
(@NPC_KEZZIK, 35100, 1, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Silk Trousers
(@NPC_KEZZIK, 35101, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Brutal Gladiator's Slicer
(@NPC_KEZZIK, 35102, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Brutal Gladiator's Spellblade
(@NPC_KEZZIK, 35103, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's Staff
(@NPC_KEZZIK, 35104, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Totem of Indomitability
(@NPC_KEZZIK, 35105, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Totem of Survival
(@NPC_KEZZIK, 35106, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Totem of the Third Wind
(@NPC_KEZZIK, 35107, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's Touch of Defeat
(@NPC_KEZZIK, 35108, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Brutal Gladiator's War Edge
(@NPC_KEZZIK, 35109, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Brutal Gladiator's War Staff
(@NPC_KEZZIK, 35110, 0, 0, 0, @EXTENDED_COST_WEAPON_7), -- Brutal Gladiator's Waraxe
(@NPC_KEZZIK, 35111, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Brutal Gladiator's Wyrmhide Gloves
(@NPC_KEZZIK, 35112, 3, 0, 0, @EXTENDED_COST_ARMOR_3), -- Brutal Gladiator's Wyrmhide Helm
(@NPC_KEZZIK, 35113, 3, 0, 0, @EXTENDED_COST_ARMOR_4), -- Brutal Gladiator's Wyrmhide Legguards
(@NPC_KEZZIK, 35114, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Brutal Gladiator's Wyrmhide Spaulders
(@NPC_KEZZIK, 35115, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Brutal Gladiator's Wyrmhide Tunic
(@NPC_KEZZIK, 36737, 0, 0, 0, @EXTENDED_COST_WEAPON_7); -- Brutal Gladiator's Hatchet

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_KEZZIK) AND (`SourceEntry` IN (34990,34991,34992,34993,34994,34998,34999,35000,35001,35002,35003,35004,35005,35006,35007,35009,35010,35011,35012,35013,35022,35023,35024,35025,35026,35027,35028,35029,35030,35031,35032,35033,35034,35035,35036,35042,35043,35044,35045,35046,35048,35049,35050,35051,35052,35053,35054,35055,35056,35057,35059,35060,35061,35062,35063,35066,35067,35068,35069,35070,35077,35078,35079,35080,35081,35083,35084,35085,35086,35087,35088,35089,35090,35091,35092,35096,35097,35098,35099,35100,35111,35112,35113,35114,35115,35104,35105,35106,35039,35040,35041,35019,35020,35021));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_KEZZIK, 34990, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_KEZZIK, 34991, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_KEZZIK, 34992, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_KEZZIK, 34993, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_KEZZIK, 34994, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_KEZZIK, 34998, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 34999, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35000, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35001, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35002, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35003, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35004, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35005, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35006, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35007, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35009, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35010, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35011, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35012, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35013, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_KEZZIK, 35022, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35023, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35024, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35025, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35026, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35027, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35028, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35029, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35030, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35031, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35032, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_KEZZIK, 35033, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_KEZZIK, 35034, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_KEZZIK, 35035, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_KEZZIK, 35036, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_KEZZIK, 35042, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35043, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35044, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35045, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35046, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35048, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35049, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35050, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35051, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35052, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35053, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35054, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35055, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35056, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35057, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35059, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35060, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35061, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35062, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35063, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35066, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_KEZZIK, 35067, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_KEZZIK, 35068, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_KEZZIK, 35069, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_KEZZIK, 35070, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_KEZZIK, 35077, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35078, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35079, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35080, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35081, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35083, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35084, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35085, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35086, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35087, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_KEZZIK, 35088, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35089, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35090, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35091, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35092, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35096, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_KEZZIK, 35097, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_KEZZIK, 35098, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_KEZZIK, 35099, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_KEZZIK, 35100, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_KEZZIK, 35111, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35112, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35113, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35114, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35115, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35104, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35105, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35106, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_KEZZIK, 35039, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35040, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35041, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_KEZZIK, 35019, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35020, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_KEZZIK, 35021, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''); -- Paladin

-- Accessories
SET @EXTENDED_COST_ACCESSORY_1  := 2289; -- 31000 Honor - Battlemaster Trinkets
SET @EXTENDED_COST_ACCESSORY_2  := 2402; -- 16000 Honor, 1650 Rating - Guardian Bands
SET @EXTENDED_COST_ACCESSORY_3  := 2401; -- 13000 Honor, 1575 Rating - Guardian Wrist
SET @EXTENDED_COST_ACCESSORY_4  := 1923; -- 18000 Honor - Guardian Waist
SET @EXTENDED_COST_ACCESSORY_5  := 2400; -- 18000 Honor, 1700 Rating - Guardian Feet
SET @EXTENDED_COST_ACCESSORY_6  := 127; -- 16000 Honor - Guardian Pendant
SET @EXTENDED_COST_ACCESSORY_7  := 129; -- 12000 Honor - Vindicator Band
SET @EXTENDED_COST_ACCESSORY_8  := 2405; -- 9200 Honor - Vindicator Wrist
SET @EXTENDED_COST_ACCESSORY_9  := 2406; -- 15000 Honor - Vindicator Feet
SET @EXTENDED_COST_ACCESSORY_10 := 2248; -- 12000 Honor - Vindicator Pendant

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_GREX AND `item` IN (35327,34049,34576,34162,33832,34050,35129,35130,37927,35131,35166,35151,35136,35152,35137,35167,35153,35168,35138,35154,35139,35169,35155,35170,35140,35156,35141,35171,35172,35157,35142,35173,35158,35143,35159,35174,35144,35160,35175,35145,35132,35133,37929,35134,37928,35135,35161,35176,35146,35177,35162,35147,35163,35178,35148,35164,35179,35149,35165,35150,35180,33853,33918,35320,33919,33876,33878,33880,33881,33883,33884,33886,33887,33889,33890,33892,33893,33894,33896,33897,33899,33901,33902,33904,33905,33920,33921,35317,33922,35319,33923,33813,33812,33906,33908,33910,33911,33913,33914,33916,33917);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_GREX, 35327, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Alacrity
(@NPC_GREX, 34049, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Audacity
(@NPC_GREX, 34576, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Cruelty
(@NPC_GREX, 34162, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Depravity
(@NPC_GREX, 33832, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Determination
(@NPC_GREX, 34050, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Perseverance
(@NPC_GREX, 35129, 1, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Guardian's Band of Dominance
(@NPC_GREX, 35130, 1, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Guardian's Band of Salvation
(@NPC_GREX, 37927, 1, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Guardian's Band of Subjugation
(@NPC_GREX, 35131, 1, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Guardian's Band of Triumph
(@NPC_GREX, 35166, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Chain Bracers
(@NPC_GREX, 35151, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Chain Girdle
(@NPC_GREX, 35136, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Chain Sabatons
(@NPC_GREX, 35152, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Dragonhide Belt
(@NPC_GREX, 35137, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Dragonhide Boots
(@NPC_GREX, 35167, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Dragonhide Bracers
(@NPC_GREX, 35153, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Dreadweave Belt
(@NPC_GREX, 35168, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Dreadweave Cuffs
(@NPC_GREX, 35138, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Dreadweave Stalkers
(@NPC_GREX, 35154, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Kodohide Belt
(@NPC_GREX, 35139, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Kodohide Boots
(@NPC_GREX, 35169, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Kodohide Bracers
(@NPC_GREX, 35155, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Lamellar Belt
(@NPC_GREX, 35170, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Lamellar Bracers
(@NPC_GREX, 35140, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Lamellar Greaves
(@NPC_GREX, 35156, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Leather Belt
(@NPC_GREX, 35141, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Leather Boots
(@NPC_GREX, 35171, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Leather Bracers
(@NPC_GREX, 35172, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Linked Bracers
(@NPC_GREX, 35157, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Linked Girdle
(@NPC_GREX, 35142, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Linked Sabatons
(@NPC_GREX, 35173, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Mail Bracers
(@NPC_GREX, 35158, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Mail Girdle
(@NPC_GREX, 35143, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Mail Sabatons
(@NPC_GREX, 35159, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Mooncloth Belt
(@NPC_GREX, 35174, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Mooncloth Cuffs
(@NPC_GREX, 35144, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Mooncloth Slippers
(@NPC_GREX, 35160, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Ornamented Belt
(@NPC_GREX, 35175, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Ornamented Bracers
(@NPC_GREX, 35145, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Ornamented Greaves
(@NPC_GREX, 35132, 2, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Guardian's Pendant of Conquest
(@NPC_GREX, 35133, 2, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Guardian's Pendant of Dominance
(@NPC_GREX, 37929, 2, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Guardian's Pendant of Reprieve
(@NPC_GREX, 35134, 2, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Guardian's Pendant of Salvation
(@NPC_GREX, 37928, 2, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Guardian's Pendant of Subjugation
(@NPC_GREX, 35135, 2, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Guardian's Pendant of Triumph
(@NPC_GREX, 35161, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Plate Belt
(@NPC_GREX, 35176, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Plate Bracers
(@NPC_GREX, 35146, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Plate Greaves
(@NPC_GREX, 35177, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Ringmail Bracers
(@NPC_GREX, 35162, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Ringmail Girdle
(@NPC_GREX, 35147, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Ringmail Sabatons
(@NPC_GREX, 35163, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Scaled Belt
(@NPC_GREX, 35178, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Scaled Bracers
(@NPC_GREX, 35148, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Scaled Greaves
(@NPC_GREX, 35164, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Silk Belt
(@NPC_GREX, 35179, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Silk Cuffs
(@NPC_GREX, 35149, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Silk Footguards
(@NPC_GREX, 35165, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Guardian's Wyrmhide Belt
(@NPC_GREX, 35150, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Guardian's Wyrmhide Boots
(@NPC_GREX, 35180, 3, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Guardian's Wyrmhide Bracers
(@NPC_GREX, 33853, 4, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Band of Dominance
(@NPC_GREX, 33918, 4, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Band of Salvation
(@NPC_GREX, 35320, 4, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Band of Subjugation
(@NPC_GREX, 33919, 4, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Band of Triumph
(@NPC_GREX, 33876, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Chain Bracers
(@NPC_GREX, 33878, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Chain Sabatons
(@NPC_GREX, 33880, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Dragonhide Boots
(@NPC_GREX, 33881, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Dragonhide Bracers
(@NPC_GREX, 33883, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Dreadweave Cuffs
(@NPC_GREX, 33884, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Dreadweave Stalkers
(@NPC_GREX, 33886, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Kodohide Boots
(@NPC_GREX, 33887, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Kodohide Bracers
(@NPC_GREX, 33889, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Lamellar Bracers
(@NPC_GREX, 33890, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Lamellar Greaves
(@NPC_GREX, 33892, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Leather Boots
(@NPC_GREX, 33893, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Leather Bracers
(@NPC_GREX, 33894, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Linked Bracers
(@NPC_GREX, 33896, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Linked Sabatons
(@NPC_GREX, 33897, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Mail Bracers
(@NPC_GREX, 33899, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Mail Sabatons
(@NPC_GREX, 33901, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Mooncloth Cuffs
(@NPC_GREX, 33902, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Mooncloth Slippers
(@NPC_GREX, 33904, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Ornamented Bracers
(@NPC_GREX, 33905, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Ornamented Greaves
(@NPC_GREX, 33920, 5, 0, 0, @EXTENDED_COST_ACCESSORY_10), -- Vindicator's Pendant of Conquest
(@NPC_GREX, 33921, 5, 0, 0, @EXTENDED_COST_ACCESSORY_10), -- Vindicator's Pendant of Dominance
(@NPC_GREX, 35317, 5, 0, 0, @EXTENDED_COST_ACCESSORY_10), -- Vindicator's Pendant of Reprieve
(@NPC_GREX, 33922, 5, 0, 0, @EXTENDED_COST_ACCESSORY_10), -- Vindicator's Pendant of Salvation
(@NPC_GREX, 35319, 5, 0, 0, @EXTENDED_COST_ACCESSORY_10), -- Vindicator's Pendant of Subjugation
(@NPC_GREX, 33923, 5, 0, 0, @EXTENDED_COST_ACCESSORY_10), -- Vindicator's Pendant of Triumph
(@NPC_GREX, 33813, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Plate Bracers
(@NPC_GREX, 33812, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Plate Greaves
(@NPC_GREX, 33906, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Ringmail Bracers
(@NPC_GREX, 33908, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Ringmail Sabatons
(@NPC_GREX, 33910, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Scaled Bracers
(@NPC_GREX, 33911, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Scaled Greaves
(@NPC_GREX, 33913, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8), -- Vindicator's Silk Cuffs
(@NPC_GREX, 33914, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Silk Footguards
(@NPC_GREX, 33916, 6, 0, 0, @EXTENDED_COST_ACCESSORY_9), -- Vindicator's Wyrmhide Boots
(@NPC_GREX, 33917, 6, 0, 0, @EXTENDED_COST_ACCESSORY_8); -- Vindicator's Wyrmhide Bracers

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_GREX) AND (`SourceEntry` IN (33883,33884,33901,33902,33913,33914,35138,35144,35149,35153,35159,35164,35168,35174,35179,33880,33881,33886,33887,33892,33893,33916,33917,35137,35139,35141,35150,35152,35154,35156,35165,35167,35169,35171,35180,33876,33878,33894,33896,33897,33899,33906,33908,35136,35142,35143,35147,35151,35157,35158,35162,35166,35172,35173,35177,33812,33813,33889,33890,33904,33905,33910,33911,35140,35145,35146,35148,35155,35160,35161,35163,35170,35175,35176,35178));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_GREX, 33883, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33884, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33901, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33902, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33913, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33914, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35138, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35144, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35149, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35153, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35159, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35164, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35168, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35174, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 35179, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33880, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33881, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33886, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33887, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33892, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33893, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33916, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33917, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35137, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35139, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35141, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35150, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35152, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35154, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35156, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35165, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35167, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35169, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35171, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 35180, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33876, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33878, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33894, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33896, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33897, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33899, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33906, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33908, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35136, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35142, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35143, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35147, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35151, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35157, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35158, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35162, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35166, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35172, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35173, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 35177, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33812, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33813, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33889, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33890, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33904, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33905, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33910, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33911, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35140, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35145, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35146, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35148, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35155, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35160, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35161, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35163, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35170, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35175, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35176, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 35178, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''); -- Plate
