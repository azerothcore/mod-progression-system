SET @EXTENDED_COST_WEAPON_1 := 94; -- 19125 Honor - range, 1-handed, off-hand
SET @EXTENDED_COST_WEAPON_2 := 2561; -- 38000 Honor - 2-handed weapons
SET @EXTENDED_COST_ACCESSORY_1 := 386; -- 15300 Honor - Ring, Neck
SET @EXTENDED_COST_ACCESSORY_2 := 202; -- 12000 Honor - Cloak, Wrist
SET @EXTENDED_COST_ACCESSORY_3 := 98; -- 22950 Honor - Talisman
SET @EXTENDED_COST_GEM_1 := 95; -- 6885 Honor - Other Gems
SET @EXTENDED_COST_GEM_2 := 99; -- 8500 Honor - Orange Gems
SET @EXTENDED_COST_ACCESSORY_4 := 1442; -- 8000 Honor - Medallion
SET @EXTENDED_COST_ARMOR_1 := 1911; -- 18000 Honor - Feet, Waist
SET @EXTENDED_COST_ARMOR_2 := 173; -- 12750 Honor - Hands, Shoulder
SET @EXTENDED_COST_ARMOR_3 := 1006; -- 20000 Honor - Head, Legs
SET @EXTENDED_COST_ARMOR_4 := 2428; -- 21000 Honor - Chest

SET @NPC_ARMOR_ALLIANCE := X;
SET @NPC_ACCESSORY_ALLIANCE := X;
SET @NPC_WEAPON_ALLIANCE := X;

SET @NPC_ARMOR_HORDE := X;
SET @NPC_ACCESSORY_HORDE := X;
SET @NPC_WEAPON_HORDE := X;

-- Alliance Weapons
DELETE FROM `npc_vendor` WHERE `entry`=@NPC_WEAPON_ALLIANCE AND `item` IN (28940,28941,28950,28942,28944,28945,28946,28960,28947,28948,28949,28951,28952,28953,28954,28955,28956,28957,28959,28943);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_WEAPON_ALLIANCE, 28940, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Barricade
(@NPC_WEAPON_ALLIANCE, 28941, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Battletome
(@NPC_WEAPON_ALLIANCE, 28950, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Bonecracker
(@NPC_WEAPON_ALLIANCE, 28942, 0, 0, @EXTENDED_COST_WEAPON_2), -- Grand Marshal's Bonegrinder
(@NPC_WEAPON_ALLIANCE, 28944, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Cleaver
(@NPC_WEAPON_ALLIANCE, 28945, 0, 0, @EXTENDED_COST_WEAPON_2), -- Grand Marshal's Decapitator
(@NPC_WEAPON_ALLIANCE, 28946, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Hacker
(@NPC_WEAPON_ALLIANCE, 28960, 0, 0, @EXTENDED_COST_WEAPON_2), -- Grand Marshal's Heavy Crossbow
(@NPC_WEAPON_ALLIANCE, 28947, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Left Ripper
(@NPC_WEAPON_ALLIANCE, 28948, 0, 0, @EXTENDED_COST_WEAPON_2), -- Grand Marshal's Maul
(@NPC_WEAPON_ALLIANCE, 28949, 0, 0, @EXTENDED_COST_WEAPON_2), -- Grand Marshal's Painsaw
(@NPC_WEAPON_ALLIANCE, 28951, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Pummeler
(@NPC_WEAPON_ALLIANCE, 28952, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Quickblade
(@NPC_WEAPON_ALLIANCE, 28953, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Right Ripper
(@NPC_WEAPON_ALLIANCE, 28954, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Shanker
(@NPC_WEAPON_ALLIANCE, 28955, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Shiv
(@NPC_WEAPON_ALLIANCE, 28956, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Slicer
(@NPC_WEAPON_ALLIANCE, 28957, 0, 0, @EXTENDED_COST_WEAPON_1), -- Grand Marshal's Spellblade
(@NPC_WEAPON_ALLIANCE, 28959, 0, 0, @EXTENDED_COST_WEAPON_2), -- Grand Marshal's War Staff
(@NPC_WEAPON_ALLIANCE, 28943, 0, 0, @EXTENDED_COST_WEAPON_2); -- Grand Marshal's Warblade

-- Armor
DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ARMOR_ALLIANCE AND `item` IN (28973,28978,28981,28984,28988,28989,28992,28996,28999,29002,29006,31599,28975,28977,28982,28985,28987,28991,28994,28997,29000,29003,29005,31597,28974,28976,28980,28983,28986,28990,28993,28995,28998,29001,29004,31596,28699,28700,28701,28702,28703,28679,28709,31630,28680,28710,31631,28681,28711,31632,28712,28724,31633,28683,28713,31634,28613,28614,28615,28616,28617,28688,28684,28685,28686,28687,28689,28694,31640,28690,28695,31641,28691,28696,31642,28692,28697,31643,28693,28698,31644,28717,28716,28715,28718,28714,28628,28624,28625,28626,28627,28623,28723,31593,28618,28719,31589,28619,28720,31590,28620,28721,31591,28622,28722,31592,28708,31625,28704,31620,28705,31622,28706,31623,28707,31624);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_ARMOR_ALLIANCE, 28973, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Chain Bracers
(@NPC_ARMOR_ALLIANCE, 28978, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Dragonhide Bracers
(@NPC_ARMOR_ALLIANCE, 28981, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Dreadweave Cuffs
(@NPC_ARMOR_ALLIANCE, 28984, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Lamellar Bracers
(@NPC_ARMOR_ALLIANCE, 28988, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Leather Bracers
(@NPC_ARMOR_ALLIANCE, 28989, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Linked Bracers
(@NPC_ARMOR_ALLIANCE, 28992, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Mail Bracers
(@NPC_ARMOR_ALLIANCE, 28996, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Plate Bracers
(@NPC_ARMOR_ALLIANCE, 28999, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Scaled Bracers
(@NPC_ARMOR_ALLIANCE, 29002, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Silk Cuffs
(@NPC_ARMOR_ALLIANCE, 29006, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Wyrmhide Bracers
(@NPC_ARMOR_ALLIANCE, 31599, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Marshal\'s Kodohide Bracers
(@NPC_ARMOR_ALLIANCE, 28975, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Chain Sabatons
(@NPC_ARMOR_ALLIANCE, 28977, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Dragonhide Boots
(@NPC_ARMOR_ALLIANCE, 28982, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Dreadweave Stalkers
(@NPC_ARMOR_ALLIANCE, 28985, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Lamellar Greaves
(@NPC_ARMOR_ALLIANCE, 28987, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Leather Boots
(@NPC_ARMOR_ALLIANCE, 28991, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Linked Sabatons
(@NPC_ARMOR_ALLIANCE, 28994, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Mail Sabatons
(@NPC_ARMOR_ALLIANCE, 28997, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Plate Greaves
(@NPC_ARMOR_ALLIANCE, 29000, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Scaled Greaves
(@NPC_ARMOR_ALLIANCE, 29003, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Silk Footguards
(@NPC_ARMOR_ALLIANCE, 29005, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Wyrmhide Boots
(@NPC_ARMOR_ALLIANCE, 31597, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Kodohide Boots
(@NPC_ARMOR_ALLIANCE, 28974, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Chain Girdle
(@NPC_ARMOR_ALLIANCE, 28976, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Dragonhide Belt
(@NPC_ARMOR_ALLIANCE, 28980, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Dreadweave Belt
(@NPC_ARMOR_ALLIANCE, 28983, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Lamellar Belt
(@NPC_ARMOR_ALLIANCE, 28986, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Leather Belt
(@NPC_ARMOR_ALLIANCE, 28990, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Linked Girdle
(@NPC_ARMOR_ALLIANCE, 28993, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Mail Girdle
(@NPC_ARMOR_ALLIANCE, 28995, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Plate Belt
(@NPC_ARMOR_ALLIANCE, 28998, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Scaled Belt
(@NPC_ARMOR_ALLIANCE, 29001, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Silk Belt
(@NPC_ARMOR_ALLIANCE, 29004, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Wyrmhide Belt
(@NPC_ARMOR_ALLIANCE, 31596, 0, 0, @EXTENDED_COST_ARMOR_1), -- Marshal\'s Kodohide Belt
(@NPC_ARMOR_ALLIANCE, 28699, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Plate Chestpiece
(@NPC_ARMOR_ALLIANCE, 28700, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Plate Gauntlets
(@NPC_ARMOR_ALLIANCE, 28701, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Plate Helm
(@NPC_ARMOR_ALLIANCE, 28702, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Plate Legguards
(@NPC_ARMOR_ALLIANCE, 28703, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Plate Shoulders
(@NPC_ARMOR_ALLIANCE, 28679, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Lamellar Chestpiece
(@NPC_ARMOR_ALLIANCE, 28709, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Scaled Chestpiece
(@NPC_ARMOR_ALLIANCE, 31630, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Ornamented Chestplate
(@NPC_ARMOR_ALLIANCE, 28680, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Lamellar Gauntlets
(@NPC_ARMOR_ALLIANCE, 28710, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Scaled Gauntlets
(@NPC_ARMOR_ALLIANCE, 31631, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Ornamented Gloves
(@NPC_ARMOR_ALLIANCE, 28681, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Lamellar Helm
(@NPC_ARMOR_ALLIANCE, 28711, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Scaled Helm
(@NPC_ARMOR_ALLIANCE, 31632, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Ornamented Headguard
(@NPC_ARMOR_ALLIANCE, 28712, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Scaled Legguards
(@NPC_ARMOR_ALLIANCE, 28724, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Lamellar Legguards
(@NPC_ARMOR_ALLIANCE, 31633, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Ornamented Leggings
(@NPC_ARMOR_ALLIANCE, 28683, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Lamellar Shoulders
(@NPC_ARMOR_ALLIANCE, 28713, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Scaled Shoulders
(@NPC_ARMOR_ALLIANCE, 31634, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Ornamented Spaulders
(@NPC_ARMOR_ALLIANCE, 28613, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Chain Armor
(@NPC_ARMOR_ALLIANCE, 28614, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Chain Gauntlets
(@NPC_ARMOR_ALLIANCE, 28615, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Chain Helm
(@NPC_ARMOR_ALLIANCE, 28616, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Chain Leggings
(@NPC_ARMOR_ALLIANCE, 28617, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Chain Spaulders
(@NPC_ARMOR_ALLIANCE, 28688, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Leather Tunic
(@NPC_ARMOR_ALLIANCE, 28684, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Leather Gloves
(@NPC_ARMOR_ALLIANCE, 28685, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Leather Helm
(@NPC_ARMOR_ALLIANCE, 28686, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Leather Legguards
(@NPC_ARMOR_ALLIANCE, 28687, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Leather Spaulders
(@NPC_ARMOR_ALLIANCE, 28689, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Linked Armor
(@NPC_ARMOR_ALLIANCE, 28694, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Mail Armor
(@NPC_ARMOR_ALLIANCE, 31640, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Ringmail Chestguard
(@NPC_ARMOR_ALLIANCE, 28690, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Linked Gauntlets
(@NPC_ARMOR_ALLIANCE, 28695, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Mail Gauntlets
(@NPC_ARMOR_ALLIANCE, 31641, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Ringmail Gloves
(@NPC_ARMOR_ALLIANCE, 28691, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Linked Helm
(@NPC_ARMOR_ALLIANCE, 28696, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Mail Helm
(@NPC_ARMOR_ALLIANCE, 31642, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Ringmail Headpiece
(@NPC_ARMOR_ALLIANCE, 28692, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Linked Leggings
(@NPC_ARMOR_ALLIANCE, 28697, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Mail Leggings
(@NPC_ARMOR_ALLIANCE, 31643, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Ringmail Legguards
(@NPC_ARMOR_ALLIANCE, 28693, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Linked Spaulders
(@NPC_ARMOR_ALLIANCE, 28698, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Mail Spaulders
(@NPC_ARMOR_ALLIANCE, 31644, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Ringmail Shoulders
(@NPC_ARMOR_ALLIANCE, 28717, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Silk Raiment
(@NPC_ARMOR_ALLIANCE, 28716, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Silk Handguards
(@NPC_ARMOR_ALLIANCE, 28715, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Silk Cowl
(@NPC_ARMOR_ALLIANCE, 28718, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Silk Trousers
(@NPC_ARMOR_ALLIANCE, 28714, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Silk Amice
(@NPC_ARMOR_ALLIANCE, 28628, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Dreadweave Robe
(@NPC_ARMOR_ALLIANCE, 28624, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Dreadweave Gloves
(@NPC_ARMOR_ALLIANCE, 28625, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Dreadweave Hood
(@NPC_ARMOR_ALLIANCE, 28626, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Dreadweave Leggings
(@NPC_ARMOR_ALLIANCE, 28627, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Dreadweave Mantle
(@NPC_ARMOR_ALLIANCE, 28623, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Dragonhide Tunic
(@NPC_ARMOR_ALLIANCE, 28723, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Wyrmhide Tunic
(@NPC_ARMOR_ALLIANCE, 31593, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Kodohide Tunic
(@NPC_ARMOR_ALLIANCE, 28618, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Dragonhide Gloves
(@NPC_ARMOR_ALLIANCE, 28719, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Wyrmhide Gloves
(@NPC_ARMOR_ALLIANCE, 31589, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Kodohide Gloves
(@NPC_ARMOR_ALLIANCE, 28619, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Dragonhide Helm
(@NPC_ARMOR_ALLIANCE, 28720, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Wyrmhide Helm
(@NPC_ARMOR_ALLIANCE, 31590, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Kodohide Helm
(@NPC_ARMOR_ALLIANCE, 28620, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Dragonhide Legguards
(@NPC_ARMOR_ALLIANCE, 28721, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Wyrmhide Legguards
(@NPC_ARMOR_ALLIANCE, 31591, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Kodohide Legguards
(@NPC_ARMOR_ALLIANCE, 28622, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Dragonhide Spaulders
(@NPC_ARMOR_ALLIANCE, 28722, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Wyrmhide Spaulders
(@NPC_ARMOR_ALLIANCE, 31592, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Kodohide Spaulders
(@NPC_ARMOR_ALLIANCE, 28708, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Satin Robe
(@NPC_ARMOR_ALLIANCE, 31625, 0, 0, @EXTENDED_COST_ARMOR_4), -- Grand Marshal\'s Mooncloth Vestments
(@NPC_ARMOR_ALLIANCE, 28704, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Satin Gloves
(@NPC_ARMOR_ALLIANCE, 31620, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Mooncloth Mitts
(@NPC_ARMOR_ALLIANCE, 28705, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Satin Hood
(@NPC_ARMOR_ALLIANCE, 31622, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Mooncloth Cowl
(@NPC_ARMOR_ALLIANCE, 28706, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Satin Leggings
(@NPC_ARMOR_ALLIANCE, 31623, 0, 0, @EXTENDED_COST_ARMOR_3), -- Grand Marshal\'s Mooncloth Legguards
(@NPC_ARMOR_ALLIANCE, 28707, 0, 0, @EXTENDED_COST_ARMOR_2), -- Grand Marshal\'s Satin Mantle
(@NPC_ARMOR_ALLIANCE, 31624, 0, 0, @EXTENDED_COST_ARMOR_2); -- Grand Marshal\'s Mooncloth Shoulderpads

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_ALLIANCE) AND (`SourceEntry` IN (28699,28700,28701,28702,28703,28679,28709,31630,28680,28710,31631,28681,28711,31632,28712,28724,31633,28683,28713,31634,28613,28614,28615,28616,28617,28688,28684,28685,28686,28687,28689,28694,31640,28690,28695,31641,28691,28696,31642,28692,28697,31643,28693,28698,31644,28717,28716,28715,28718,28714,28628,28624,28625,28626,28627,28623,28723,31593,28618,28719,31589,28619,28720,31590,28620,28721,31591,28622,28722,31592,28708,31625,28704,31620,28705,31622,28706,31623,28707,31624));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ARMOR_ALLIANCE, 28699, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28700, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28701, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28702, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28703, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28679, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28709, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31630, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28680, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28710, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31631, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28681, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28711, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31632, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28712, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28724, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31633, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28683, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28713, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31634, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28613, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28614, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28615, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28616, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28617, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28688, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28684, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28685, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28686, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28687, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28689, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28694, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31640, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28690, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28695, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31641, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28691, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28696, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31642, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28692, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28697, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31643, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28693, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28698, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31644, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28717, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28716, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28715, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28718, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28714, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28628, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28624, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28625, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28626, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28627, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28623, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28723, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31593, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28618, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28719, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31589, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28619, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28720, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31590, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28620, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28721, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31591, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28622, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28722, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31592, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28708, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31625, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28704, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31620, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28705, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31622, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28706, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31623, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28707, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31624, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''); -- Priest

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ACCESSORY_ALLIANCE AND `item` IN (25829,28247,28246,28244,28245,28234,28235,28236,28237,28238,30348,30349,30350,30351,38589,28380,28379,28378,28377,28363,28123,28362,28120,28119,28118);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_ACCESSORY_ALLIANCE, 25829, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Talisman of the Alliance
(@NPC_ACCESSORY_ALLIANCE, 28247, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Band of Dominance
(@NPC_ACCESSORY_ALLIANCE, 28246, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Band of Triumph
(@NPC_ACCESSORY_ALLIANCE, 28244, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Pendant of Triumph
(@NPC_ACCESSORY_ALLIANCE, 28245, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Pendant of Dominance
(@NPC_ACCESSORY_ALLIANCE, 28234, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Rogue)
(@NPC_ACCESSORY_ALLIANCE, 28235, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Druid)
(@NPC_ACCESSORY_ALLIANCE, 28236, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Paladin)
(@NPC_ACCESSORY_ALLIANCE, 28237, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Hunter)
(@NPC_ACCESSORY_ALLIANCE, 28238, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Mage)
(@NPC_ACCESSORY_ALLIANCE, 30348, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Warlock)
(@NPC_ACCESSORY_ALLIANCE, 30349, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Priest)
(@NPC_ACCESSORY_ALLIANCE, 30350, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Warrior)
(@NPC_ACCESSORY_ALLIANCE, 30351, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (Shaman)
(@NPC_ACCESSORY_ALLIANCE, 38589, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Alliance (DK)
(@NPC_ACCESSORY_ALLIANCE, 28380, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cloak
(@NPC_ACCESSORY_ALLIANCE, 28379, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cape
(@NPC_ACCESSORY_ALLIANCE, 28378, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cape
(@NPC_ACCESSORY_ALLIANCE, 28377, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cloak
(@NPC_ACCESSORY_ALLIANCE, 28363, 0, 0, @EXTENDED_COST_GEM_2), -- Inscribed Ornate Topaz
(@NPC_ACCESSORY_ALLIANCE, 28123, 0, 0, @EXTENDED_COST_GEM_2), -- Potent Ornate Topaz
(@NPC_ACCESSORY_ALLIANCE, 28362, 0, 0, @EXTENDED_COST_GEM_1), -- Bold Ornate Ruby
(@NPC_ACCESSORY_ALLIANCE, 28120, 0, 0, @EXTENDED_COST_GEM_1), -- Gleaming Ornate Dawnstone
(@NPC_ACCESSORY_ALLIANCE, 28119, 0, 0, @EXTENDED_COST_GEM_1), -- Smooth Ornate Dawnstone
(@NPC_ACCESSORY_ALLIANCE, 28118, 0, 0, @EXTENDED_COST_GEM_1); -- Runed Ornate Ruby

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ACCESSORY_ALLIANCE) AND (`SourceEntry` IN (28234,28235,28236,28237,28238,30348,30349,30350,30351,38589));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ACCESSORY_ALLIANCE, 28234, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Rogue)
(23, @NPC_ACCESSORY_ALLIANCE, 28235, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Druid)
(23, @NPC_ACCESSORY_ALLIANCE, 28236, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Paladin)
(23, @NPC_ACCESSORY_ALLIANCE, 28237, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Hunter)
(23, @NPC_ACCESSORY_ALLIANCE, 28238, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Mage)
(23, @NPC_ACCESSORY_ALLIANCE, 30348, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Warlock)
(23, @NPC_ACCESSORY_ALLIANCE, 30349, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Priest)
(23, @NPC_ACCESSORY_ALLIANCE, 30350, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Warrior)
(23, @NPC_ACCESSORY_ALLIANCE, 30351, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Alliance (Shaman)
(23, @NPC_ACCESSORY_ALLIANCE, 38589, 0, 1, 15, 0, 32, 0, 0, 0, 0, 0, '', ''); -- Medallion of the Alliance (DK)

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_WEAPON_HORDE AND `item` IN (28293,28917,28918,28919,28923,28935,28920,28921,28922,28924,28925,28926,28928,28929,28930,28931,28937,28938,28939,28933);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_WEAPON_HORDE, 28293, 0, 0, @EXTENDED_COST_WEAPON_2), -- High Warlord's Claymore
(@NPC_WEAPON_HORDE, 28917, 0, 0, @EXTENDED_COST_WEAPON_2), -- High Warlord's Bonegrinder
(@NPC_WEAPON_HORDE, 28918, 0, 0, @EXTENDED_COST_WEAPON_2), -- High Warlord's Decapitator
(@NPC_WEAPON_HORDE, 28919, 0, 0, @EXTENDED_COST_WEAPON_2), -- High Warlord's Maul
(@NPC_WEAPON_HORDE, 28923, 0, 0, @EXTENDED_COST_WEAPON_2), -- High Warlord's Painsaw
(@NPC_WEAPON_HORDE, 28935, 0, 0, @EXTENDED_COST_WEAPON_2), -- High Warlord's War Staff
(@NPC_WEAPON_HORDE, 28920, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Cleaver
(@NPC_WEAPON_HORDE, 28921, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Hacker
(@NPC_WEAPON_HORDE, 28922, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Left Ripper
(@NPC_WEAPON_HORDE, 28924, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Bonecracker
(@NPC_WEAPON_HORDE, 28925, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Pummeler
(@NPC_WEAPON_HORDE, 28926, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Quickblade
(@NPC_WEAPON_HORDE, 28928, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Right Ripper
(@NPC_WEAPON_HORDE, 28929, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Shanker
(@NPC_WEAPON_HORDE, 28930, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Shiv
(@NPC_WEAPON_HORDE, 28931, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Spellblade
(@NPC_WEAPON_HORDE, 28937, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Slicer
(@NPC_WEAPON_HORDE, 28938, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Battletome
(@NPC_WEAPON_HORDE, 28939, 0, 0, @EXTENDED_COST_WEAPON_1), -- High Warlord's Barricade
(@NPC_WEAPON_HORDE, 28933, 0, 0, @EXTENDED_COST_WEAPON_2); -- High Warlord's Heavy Crossbow

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ARMOR_HORDE AND `item` IN (28381,28405,28411,28424,28445,28448,28451,28605,28638,28643,28646,31598,28383,28402,28410,28422,28444,28447,28449,28630,28640,28642,28645,31595,28385,28404,28409,28423,28443,28446,28450,28629,28639,28641,28644,31594,28851,28852,28853,28854,28855,28831,28861,31635,28832,28862,31636,28833,28863,31637,28834,28864,31638,28835,28865,31639,28805,28806,28807,28808,28809,28840,28836,28837,28838,28839,28841,28846,31646,28842,28847,31647,28843,28848,31648,28844,28849,31649,28845,28850,31650,28869,28868,28867,28870,28866,28821,28817,28818,28819,28820,28815,28875,31588,28811,28871,31584,28812,28872,31585,28813,28873,31586,28814,28874,31587,28860,31629,28856,31621,28857,31626,28858,31627,28859,31628);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_ARMOR_HORDE, 28381, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Plate Bracers
(@NPC_ARMOR_HORDE, 28405, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Dreadweave Cuffs
(@NPC_ARMOR_HORDE, 28411, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Silk Cuffs
(@NPC_ARMOR_HORDE, 28424, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Leather Bracers
(@NPC_ARMOR_HORDE, 28445, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Dragonhide Bracers
(@NPC_ARMOR_HORDE, 28448, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Wyrmhide Bracers
(@NPC_ARMOR_HORDE, 28451, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Chain Bracers
(@NPC_ARMOR_HORDE, 28605, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Linked Bracers
(@NPC_ARMOR_HORDE, 28638, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Mail Bracers
(@NPC_ARMOR_HORDE, 28643, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Lamellar Bracers
(@NPC_ARMOR_HORDE, 28646, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Scaled Bracers
(@NPC_ARMOR_HORDE, 31598, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- General's Kodohide Bracers
(@NPC_ARMOR_HORDE, 28383, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Plate Greaves
(@NPC_ARMOR_HORDE, 28402, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Dreadweave Stalkers
(@NPC_ARMOR_HORDE, 28410, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Silk Footguards
(@NPC_ARMOR_HORDE, 28422, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Leather Boots
(@NPC_ARMOR_HORDE, 28444, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Dragonhide Boots
(@NPC_ARMOR_HORDE, 28447, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Wyrmhide Boots
(@NPC_ARMOR_HORDE, 28449, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Chain Sabatons
(@NPC_ARMOR_HORDE, 28630, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Linked Sabatons
(@NPC_ARMOR_HORDE, 28640, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Mail Sabatons
(@NPC_ARMOR_HORDE, 28642, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Lamellar Greaves
(@NPC_ARMOR_HORDE, 28645, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Scaled Greaves
(@NPC_ARMOR_HORDE, 31595, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Kodohide Boots
(@NPC_ARMOR_HORDE, 28385, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Plate Belt
(@NPC_ARMOR_HORDE, 28404, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Dreadweave Belt
(@NPC_ARMOR_HORDE, 28409, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Silk Belt
(@NPC_ARMOR_HORDE, 28423, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Leather Belt
(@NPC_ARMOR_HORDE, 28443, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Dragonhide Belt
(@NPC_ARMOR_HORDE, 28446, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Wyrmhide Belt
(@NPC_ARMOR_HORDE, 28450, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Chain Girdle
(@NPC_ARMOR_HORDE, 28629, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Linked Girdle
(@NPC_ARMOR_HORDE, 28639, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Mail Girdle
(@NPC_ARMOR_HORDE, 28641, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Lamellar Belt
(@NPC_ARMOR_HORDE, 28644, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Scaled Belt
(@NPC_ARMOR_HORDE, 31594, 0, 0, @EXTENDED_COST_ARMOR_1), -- General's Kodohide Belt
(@NPC_ARMOR_HORDE, 28851, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Plate Chestpiece
(@NPC_ARMOR_HORDE, 28852, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Plate Gauntlets
(@NPC_ARMOR_HORDE, 28853, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Plate Helm
(@NPC_ARMOR_HORDE, 28854, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Plate Legguards
(@NPC_ARMOR_HORDE, 28855, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Plate Shoulders
(@NPC_ARMOR_HORDE, 28831, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Lamellar Chestpiece
(@NPC_ARMOR_HORDE, 28861, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Scaled Chestpiece
(@NPC_ARMOR_HORDE, 31635, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Ornamented Chestplate
(@NPC_ARMOR_HORDE, 28832, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Lamellar Gauntlets
(@NPC_ARMOR_HORDE, 28862, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Scaled Gauntlets
(@NPC_ARMOR_HORDE, 31636, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Ornamented Gloves
(@NPC_ARMOR_HORDE, 28833, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Lamellar Helm
(@NPC_ARMOR_HORDE, 28863, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Scaled Helm
(@NPC_ARMOR_HORDE, 31637, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Ornamented Headguard
(@NPC_ARMOR_HORDE, 28834, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Lamellar Legguards
(@NPC_ARMOR_HORDE, 28864, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Scaled Legguards
(@NPC_ARMOR_HORDE, 31638, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Ornamented Leggings
(@NPC_ARMOR_HORDE, 28835, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Lamellar Shoulders
(@NPC_ARMOR_HORDE, 28865, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Scaled Shoulders
(@NPC_ARMOR_HORDE, 31639, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Ornamented Spaulders
(@NPC_ARMOR_HORDE, 28805, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Chain Armor
(@NPC_ARMOR_HORDE, 28806, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Chain Gauntlets
(@NPC_ARMOR_HORDE, 28807, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Chain Helm
(@NPC_ARMOR_HORDE, 28808, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Chain Leggings
(@NPC_ARMOR_HORDE, 28809, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Chain Spaulders
(@NPC_ARMOR_HORDE, 28840, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Leather Tunic
(@NPC_ARMOR_HORDE, 28836, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Leather Gloves
(@NPC_ARMOR_HORDE, 28837, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Leather Helm
(@NPC_ARMOR_HORDE, 28838, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Leather Legguards
(@NPC_ARMOR_HORDE, 28839, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Leather Spaulders
(@NPC_ARMOR_HORDE, 28841, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Linked Armor
(@NPC_ARMOR_HORDE, 28846, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Mail Armor
(@NPC_ARMOR_HORDE, 31646, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Ringmail Chestguard
(@NPC_ARMOR_HORDE, 28842, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Linked Gauntlets
(@NPC_ARMOR_HORDE, 28847, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Mail Gauntlets
(@NPC_ARMOR_HORDE, 31647, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Ringmail Gloves
(@NPC_ARMOR_HORDE, 28843, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Linked Helm
(@NPC_ARMOR_HORDE, 28848, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Mail Helm
(@NPC_ARMOR_HORDE, 31648, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Ringmail Headpiece
(@NPC_ARMOR_HORDE, 28844, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Linked Leggings
(@NPC_ARMOR_HORDE, 28849, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Mail Leggings
(@NPC_ARMOR_HORDE, 31649, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Ringmail Legguards
(@NPC_ARMOR_HORDE, 28845, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Linked Spaulders
(@NPC_ARMOR_HORDE, 28850, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Mail Spaulders
(@NPC_ARMOR_HORDE, 31650, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Ringmail Shoulderpads
(@NPC_ARMOR_HORDE, 28869, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Silk Raiment
(@NPC_ARMOR_HORDE, 28868, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Silk Handguards
(@NPC_ARMOR_HORDE, 28867, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Silk Cowl
(@NPC_ARMOR_HORDE, 28870, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Silk Trousers
(@NPC_ARMOR_HORDE, 28866, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Silk Amice
(@NPC_ARMOR_HORDE, 28821, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Dreadweave Robe
(@NPC_ARMOR_HORDE, 28817, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Dreadweave Gloves
(@NPC_ARMOR_HORDE, 28818, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Dreadweave Hood
(@NPC_ARMOR_HORDE, 28819, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Dreadweave Leggings
(@NPC_ARMOR_HORDE, 28820, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Dreadweave Mantle
(@NPC_ARMOR_HORDE, 28815, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Dragonhide Tunic
(@NPC_ARMOR_HORDE, 28875, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Wyrmhide Tunic
(@NPC_ARMOR_HORDE, 31588, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Kodohide Tunic
(@NPC_ARMOR_HORDE, 28811, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Dragonhide Gloves
(@NPC_ARMOR_HORDE, 28871, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Wyrmhide Gloves
(@NPC_ARMOR_HORDE, 31584, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Kodohide Gloves
(@NPC_ARMOR_HORDE, 28812, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Dragonhide Helm
(@NPC_ARMOR_HORDE, 28872, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Wyrmhide Helm
(@NPC_ARMOR_HORDE, 31585, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Kodohide Helm
(@NPC_ARMOR_HORDE, 28813, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Dragonhide Legguards
(@NPC_ARMOR_HORDE, 28873, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Wyrmhide Legguards
(@NPC_ARMOR_HORDE, 31586, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Kodohide Legguards
(@NPC_ARMOR_HORDE, 28814, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Dragonhide Spaulders
(@NPC_ARMOR_HORDE, 28874, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Wyrmhide Spaulders
(@NPC_ARMOR_HORDE, 31587, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Kodohide Spaulders
(@NPC_ARMOR_HORDE, 28860, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Satin Robe
(@NPC_ARMOR_HORDE, 31629, 0, 0, @EXTENDED_COST_ARMOR_4), -- High Warlord's Mooncloth Vestments
(@NPC_ARMOR_HORDE, 28856, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Satin Gloves
(@NPC_ARMOR_HORDE, 31621, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Mooncloth Mitts
(@NPC_ARMOR_HORDE, 28857, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Satin Hood
(@NPC_ARMOR_HORDE, 31626, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Mooncloth Cowl
(@NPC_ARMOR_HORDE, 28858, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Satin Leggings
(@NPC_ARMOR_HORDE, 31627, 0, 0, @EXTENDED_COST_ARMOR_3), -- High Warlord's Mooncloth Legguards
(@NPC_ARMOR_HORDE, 28859, 0, 0, @EXTENDED_COST_ARMOR_2), -- High Warlord's Satin Mantle
(@NPC_ARMOR_HORDE, 31628, 0, 0, @EXTENDED_COST_ARMOR_2); -- High Warlord's Mooncloth Shoulderpads

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_HORDE) AND (`SourceEntry` IN (28851,28852,28853,28854,28855,28831,28861,31635,28832,28862,31636,28833,28863,31637,28834,28864,31638,28835,28865,31639,28805,28806,28807,28808,28809,28840,28836,28837,28838,28839,28841,28846,31646,28842,28847,31647,28843,28848,31648,28844,28849,31649,28845,28850,31650,28869,28868,28867,28870,28866,28821,28817,28818,28819,28820,28815,28875,31588,28811,28871,31584,28812,28872,31585,28813,28873,31586,28814,28874,31587,28860,31629,28856,31621,28857,31626,28858,31627,28859,31628));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ARMOR_HORDE, 28851, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28852, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28853, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28854, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28855, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28831, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28861, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31635, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28832, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28862, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31636, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28833, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28863, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31637, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28834, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28864, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31638, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28835, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28865, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31639, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28805, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28806, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28807, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28808, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28809, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28840, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28836, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28837, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28838, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28839, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28841, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28846, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31646, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28842, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28847, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31647, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28843, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28848, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31648, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28844, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28849, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31649, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28845, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28850, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31650, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28869, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28868, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28867, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28870, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28866, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28821, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28817, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28818, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28819, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28820, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28815, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28875, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31588, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28811, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28871, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31584, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28812, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28872, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31585, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28813, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28873, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31586, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28814, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28874, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31587, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28860, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31629, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28856, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31621, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28857, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31626, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28858, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31627, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28859, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31628, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''); -- Priest

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ACCESSORY_HORDE AND `item` IN (24551,28247,28246,28244,28245,28240,28241,28242,28243,28239,30343,30346,30344,30345,38588,28380,28379,28378,28377,28363,28123,28362,28120,28119,28118);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_ACCESSORY_HORDE, 24551, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Talisman of the Horde
(@NPC_ACCESSORY_HORDE, 28247, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Band of Dominance
(@NPC_ACCESSORY_HORDE, 28246, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Band of Triumph
(@NPC_ACCESSORY_HORDE, 28244, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Pendant of Triumph
(@NPC_ACCESSORY_HORDE, 28245, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Pendant of Dominance
(@NPC_ACCESSORY_HORDE, 28240, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Rogue)
(@NPC_ACCESSORY_HORDE, 28241, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Druid)
(@NPC_ACCESSORY_HORDE, 28242, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Paladin)
(@NPC_ACCESSORY_HORDE, 28243, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Hunter)
(@NPC_ACCESSORY_HORDE, 28239, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Mage)
(@NPC_ACCESSORY_HORDE, 30343, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Warlock)
(@NPC_ACCESSORY_HORDE, 30346, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Priest)
(@NPC_ACCESSORY_HORDE, 30344, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Warrior)
(@NPC_ACCESSORY_HORDE, 30345, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (Shaman)
(@NPC_ACCESSORY_HORDE, 38588, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Medallion of the Horde (DK)
(@NPC_ACCESSORY_HORDE, 28380, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cloak
(@NPC_ACCESSORY_HORDE, 28379, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cape
(@NPC_ACCESSORY_HORDE, 28378, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cape
(@NPC_ACCESSORY_HORDE, 28377, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Sergeant's Heavy Cloak
(@NPC_ACCESSORY_HORDE, 28363, 0, 0, @EXTENDED_COST_GEM_2), -- Inscribed Ornate Topaz
(@NPC_ACCESSORY_HORDE, 28123, 0, 0, @EXTENDED_COST_GEM_2), -- Potent Ornate Topaz
(@NPC_ACCESSORY_HORDE, 28362, 0, 0, @EXTENDED_COST_GEM_1), -- Bold Ornate Ruby
(@NPC_ACCESSORY_HORDE, 28120, 0, 0, @EXTENDED_COST_GEM_1), -- Gleaming Ornate Dawnstone
(@NPC_ACCESSORY_HORDE, 28119, 0, 0, @EXTENDED_COST_GEM_1), -- Smooth Ornate Dawnstone
(@NPC_ACCESSORY_HORDE, 28118, 0, 0, @EXTENDED_COST_GEM_1); -- Runed Ornate Ruby

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ACCESSORY_HORDE) AND (`SourceEntry` IN (28240,28241,28242,28243,28239,30343,30346,30344,30345,38588));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ACCESSORY_HORDE, 28240, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Rogue)
(23, @NPC_ACCESSORY_HORDE, 28241, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Druid)
(23, @NPC_ACCESSORY_HORDE, 28242, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Paladin)
(23, @NPC_ACCESSORY_HORDE, 28243, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Hunter)
(23, @NPC_ACCESSORY_HORDE, 28239, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Mage)
(23, @NPC_ACCESSORY_HORDE, 30343, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Warlock)
(23, @NPC_ACCESSORY_HORDE, 30346, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Priest)
(23, @NPC_ACCESSORY_HORDE, 30344, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Warrior)
(23, @NPC_ACCESSORY_HORDE, 30345, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Medallion of the Horde (Shaman)
(23, @NPC_ACCESSORY_HORDE, 38588, 0, 1, 15, 0, 32, 0, 0, 0, 0, 0, '', ''); -- Medallion of the Horde (DK)
