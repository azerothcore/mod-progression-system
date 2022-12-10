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
'Grand Marshal\'s Barricade'
,'Grand Marshal\'s Battletome'
,'Grand Marshal\'s Bonecracker'
,'Grand Marshal\'s Cleaver'
,'Grand Marshal\'s Hacker'
,'Grand Marshal\'s Left Ripper'
,'Grand Marshal\'s Pummeler'
,'Grand Marshal\'s Quickblade'
,'Grand Marshal\'s Right Ripper'
,'Grand Marshal\'s Shanker'
,'Grand Marshal\'s Shiv'
,'Grand Marshal\'s Slicer'
,'Grand Marshal\'s Spellblade'
,'Grand Marshal\'s Heavy Crossbow'
,'Grand Marshal\'s Bonegrinder'
,'Grand Marshal\'s Decapitator'
,'Grand Marshal\'s Maul'
,'Grand Marshal\'s Painsaw'
,'Grand Marshal\'s War Staff'
,'Grand Marshal\'s Warblade'

-- Alliance Accessories
'Pendant of Dominance'
,'Pendant of Triumph'
,'Sergeant\'s Heavy Cape'
,'Sergeant\'s Heavy Cloak'
,'Band of Dominance'
,'Band of Triumph'
,'Talisman of the Alliance'
,'Bold Ornate Ruby'
,'Gleaming Ornate Dawnstone'
,'Inscribed Ornate Topaz'
,'Potent Ornate Topaz'
,'Runed Ornate Ruby'
,'Smooth Ornate Dawnstone'
,'Medallion of the Alliance'
-- Armor
DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ARMOR_ALLIANCE;
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

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_ARMOR_ALLIANCE;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_ACCESSORY_ALLIANCE, 28247, 0, 0, 386), -- Band of Dominance
(@NPC_ACCESSORY_ALLIANCE, 28246, 0, 0, 386), -- Band of Triumph
(@NPC_ACCESSORY_ALLIANCE, 25829, 0, 0, 98), -- Talisman of the Alliance
(@NPC_ACCESSORY_ALLIANCE, 28244, 0, 0, 386), -- Pendant of Triumph
(@NPC_ACCESSORY_ALLIANCE, 28245, 0, 0, 386), -- Pendant of Dominance
(@NPC_ACCESSORY_ALLIANCE, 28234, 0, 0, 1442), -- Medallion of the Alliance (Rogue)
(@NPC_ACCESSORY_ALLIANCE, 28235, 0, 0, 1442), -- Medallion of the Alliance (Druid)
(@NPC_ACCESSORY_ALLIANCE, 28236, 0, 0, 1442), -- Medallion of the Alliance (Paladin)
(@NPC_ACCESSORY_ALLIANCE, 28237, 0, 0, 1442), -- Medallion of the Alliance (Hunter)
(@NPC_ACCESSORY_ALLIANCE, 28238, 0, 0, 1442), -- Medallion of the Alliance (Mage)
(@NPC_ACCESSORY_ALLIANCE, 30348, 0, 0, 1442), -- Medallion of the Alliance (Warlock)
(@NPC_ACCESSORY_ALLIANCE, 30349, 0, 0, 1442), -- Medallion of the Alliance (Priest)
(@NPC_ACCESSORY_ALLIANCE, 30350, 0, 0, 1442), -- Medallion of the Alliance (Warrior)
(@NPC_ACCESSORY_ALLIANCE, 30351, 0, 0, 1442), -- Medallion of the Alliance (Shaman)
(@NPC_ACCESSORY_ALLIANCE, 38589, 0, 0, 1442), -- Medallion of the Alliance (DK)
(@NPC_ACCESSORY_ALLIANCE, 28380, 0, 0, 202), -- Sergeant's Heavy Cloak
(@NPC_ACCESSORY_ALLIANCE, 28379, 0, 0, 202), -- Sergeant's Heavy Cape
(@NPC_ACCESSORY_ALLIANCE, 28378, 0, 0, 202), -- Sergeant's Heavy Cape
(@NPC_ACCESSORY_ALLIANCE, 28377, 0, 0, 202), -- Sergeant's Heavy Cloak
(@NPC_ACCESSORY_ALLIANCE, 28363, 0, 0, 202), -- Inscribed Ornate Topaz
(@NPC_ACCESSORY_ALLIANCE, 28362, 0, 0, 202), -- Bold Ornate Ruby
(@NPC_ACCESSORY_ALLIANCE, 28123, 0, 0, 202), -- Potent Ornate Topaz
(@NPC_ACCESSORY_ALLIANCE, 28120, 0, 0, 202), -- Gleaming Ornate Dawnstone
(@NPC_ACCESSORY_ALLIANCE, 28119, 0, 0, 202), -- Smooth Ornate Dawnstone
(@NPC_ACCESSORY_ALLIANCE, 28118, 0, 0, 202), -- Runed Ornate Ruby