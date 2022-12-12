-- Change Season 1 Arena Gear to cost Honor at full price
SET @EXTENDED_COST_SHOULDER := 1911; -- 18000 Honor - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2561; -- 38000 Honor - 2-handed weapons
SET @EXTENDED_COST_WEAPON_2 := 94; -- 19125 Honor - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 94; -- 19125 Honor - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 202; -- 12000 - Shield
SET @EXTENDED_COST_WEAPON_5 := 386; -- 15300 Honor - OH
SET @EXTENDED_COST_WEAPON_6 := 1442; -- 8000 Honor - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 1006; -- 20000 Honor - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 173; -- 12750 Honor - Hands

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

-- Lower Season 2 Arena Gear cost and remove rating requirement
SET @EXTENDED_COST_SHOULDER := 2374; -- 600 Arena - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2288; -- 1500 Arena - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 2283; -- 1125 Arena - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1758; -- 1000 Arena - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 2380; -- 800 Arena - Shield
SET @EXTENDED_COST_WEAPON_5 := 2432; -- 400 Arena - OH
SET @EXTENDED_COST_WEAPON_6 := 2432; -- 400 Arena - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2374; -- 600 Arena - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 2432; -- 400 Arena - Hands

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

-- Add Arena Season 3
SET @EXTENDED_COST_SHOULDER := 1435; -- 1500 Arena, 2000 Rating - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2282; -- 3750 Arena, 1850 Rating - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 1757; -- 3150 Arena, 1850 Rating - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1670; -- 2625 Arena, 1850 Rating - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 1431; -- 1875 Arena, 1850 Rating - Shield
SET @EXTENDED_COST_WEAPON_5 := 1432; -- 1125 Arena, 1850 Rating - OH
SET @EXTENDED_COST_WEAPON_6 := 2627; -- 1066 Arena, 1850 Rating - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2285; -- 1875 Arena - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 2283; -- 1125 Arena - Hands

SET @NPC_EVEE := 26378;
SET @GUID := 3000023;

UPDATE `creature_template` SET `subname` = 'Vengeful Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_EVEE);

-- Set creatures for this season
DELETE FROM `creature` WHERE (`id1` = @NPC_EVEE) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, @NPC_EVEE, 0, 0, 530, 0, 0, 1, 1, 0, 3078.46, 3636.98, 145.385, 3.12999, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+1, @NPC_EVEE, 0, 0, 530, 0, 0, 1, 1, 0, -2155.789062, 6635.009277, 0.111864, 1.449061, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+2, @NPC_EVEE, 0, 0, 530, 0, 0, 1, 1, 0, 2875.115723, 5984.441406, 3.413319, 0.302369, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+3, @NPC_EVEE, 0, 0, 530, 0, 0, 1, 1, 0, -1964.034302, 5167.059570, -37.859520, 2.299585, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE `eventEntry` IN (55, 56) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(55, @GUID+0),
(55, @GUID+1),
(55, @GUID+2),
(55, @GUID+3),
(56, @GUID+0),
(56, @GUID+1),
(56, @GUID+2),
(56, @GUID+3);

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_EVEE AND `item` IN (33006,33661,33662,33663,33664,33665,33666,33667,33668,33669,33670,33671,33672,33673,33674,33675,33676,33677,33678,33679,33680,33681,33682,33683,33684,33685,33686,33687,33688,33689,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699,33700,33701,33702,33703,33704,33705,33706,33707,33708,33709,33710,33711,33712,33713,33714,33715,33716,33717,33718,33719,33720,33721,33722,33723,33724,33725,33726,33727,33728,33729,33730,33731,33732,33733,33734,33735,33736,33737,33738,33739,33740,33741,33742,33743,33744,33745,33746,33747,33748,33749,33750,33751,33752,33753,33754,33755,33756,33757,33758,33759,33760,33761,33762,33763,33764,33765,33766,33767,33768,33769,33770,33771,33801,33841,33842,33843,33938,33941,33944,33947,33950,33953,34014,34015,34016,34033,34059,34066,34529,34530,34540);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_EVEE, 33006, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Heavy Crossbow
(@NPC_EVEE, 33661, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Vengeful Gladiator's Barrier
(@NPC_EVEE, 33662, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Bonecracker
(@NPC_EVEE, 33663, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Bonegrinder
(@NPC_EVEE, 33664, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Chain Armor
(@NPC_EVEE, 33665, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Chain Gauntlets
(@NPC_EVEE, 33666, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Chain Helm
(@NPC_EVEE, 33667, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Chain Leggings
(@NPC_EVEE, 33668, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Chain Spaulders
(@NPC_EVEE, 33669, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Vengeful Gladiator's Cleaver
(@NPC_EVEE, 33670, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Decapitator
(@NPC_EVEE, 33671, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Dragonhide Gloves
(@NPC_EVEE, 33672, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Dragonhide Helm
(@NPC_EVEE, 33673, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Dragonhide Legguards
(@NPC_EVEE, 33674, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Dragonhide Spaulders
(@NPC_EVEE, 33675, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Dragonhide Tunic
(@NPC_EVEE, 33676, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Dreadweave Gloves
(@NPC_EVEE, 33677, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Dreadweave Hood
(@NPC_EVEE, 33678, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Dreadweave Leggings
(@NPC_EVEE, 33679, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Dreadweave Mantle
(@NPC_EVEE, 33680, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Dreadweave Robe
(@NPC_EVEE, 33681, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Endgame
(@NPC_EVEE, 33682, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Felweave Amice
(@NPC_EVEE, 33683, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Felweave Cowl
(@NPC_EVEE, 33684, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Felweave Handguards
(@NPC_EVEE, 33685, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Felweave Raiment
(@NPC_EVEE, 33686, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Felweave Trousers
(@NPC_EVEE, 33687, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Vengeful Gladiator's Gavel
(@NPC_EVEE, 33688, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Greatsword
(@NPC_EVEE, 33689, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Hacker
(@NPC_EVEE, 33690, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Kodohide Gloves
(@NPC_EVEE, 33691, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Kodohide Helm
(@NPC_EVEE, 33692, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Kodohide Legguards
(@NPC_EVEE, 33693, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Kodohide Spaulders
(@NPC_EVEE, 33694, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Kodohide Tunic
(@NPC_EVEE, 33695, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Lamellar Chestpiece
(@NPC_EVEE, 33696, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Lamellar Gauntlets
(@NPC_EVEE, 33697, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Lamellar Helm
(@NPC_EVEE, 33698, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Lamellar Legguards
(@NPC_EVEE, 33699, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Lamellar Shoulders
(@NPC_EVEE, 33700, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Leather Gloves
(@NPC_EVEE, 33701, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Leather Helm
(@NPC_EVEE, 33702, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Leather Legguards
(@NPC_EVEE, 33703, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Leather Spaulders
(@NPC_EVEE, 33704, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Leather Tunic
(@NPC_EVEE, 33705, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Left Ripper
(@NPC_EVEE, 33706, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Linked Armor
(@NPC_EVEE, 33707, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Linked Gauntlets
(@NPC_EVEE, 33708, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Linked Helm
(@NPC_EVEE, 33709, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Linked Leggings
(@NPC_EVEE, 33710, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Linked Spaulders
(@NPC_EVEE, 33711, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Mail Armor
(@NPC_EVEE, 33712, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Mail Gauntlets
(@NPC_EVEE, 33713, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Mail Helm
(@NPC_EVEE, 33714, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Mail Leggings
(@NPC_EVEE, 33715, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Mail Spaulders
(@NPC_EVEE, 33716, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Staff
(@NPC_EVEE, 33717, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Mooncloth Gloves
(@NPC_EVEE, 33718, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Mooncloth Hood
(@NPC_EVEE, 33719, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Mooncloth Leggings
(@NPC_EVEE, 33720, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Mooncloth Mantle
(@NPC_EVEE, 33721, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Mooncloth Robe
(@NPC_EVEE, 33722, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Ornamented Chestguard
(@NPC_EVEE, 33723, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Ornamented Gloves
(@NPC_EVEE, 33724, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Ornamented Headcover
(@NPC_EVEE, 33725, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Ornamented Legplates
(@NPC_EVEE, 33726, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Ornamented Spaulders
(@NPC_EVEE, 33727, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Painsaw
(@NPC_EVEE, 33728, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Plate Chestpiece
(@NPC_EVEE, 33729, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Plate Gauntlets
(@NPC_EVEE, 33730, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Plate Helm
(@NPC_EVEE, 33731, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Plate Legguards
(@NPC_EVEE, 33732, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Plate Shoulders
(@NPC_EVEE, 33733, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Vengeful Gladiator's Pummeler
(@NPC_EVEE, 33734, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Quickblade
(@NPC_EVEE, 33735, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Vengeful Gladiator's Redoubt
(@NPC_EVEE, 33736, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Reprieve
(@NPC_EVEE, 33737, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Vengeful Gladiator's Right Ripper
(@NPC_EVEE, 33738, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Ringmail Armor
(@NPC_EVEE, 33739, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Ringmail Gauntlets
(@NPC_EVEE, 33740, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Ringmail Helm
(@NPC_EVEE, 33741, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Ringmail Leggings
(@NPC_EVEE, 33742, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Ringmail Spaulders
(@NPC_EVEE, 33743, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Vengeful Gladiator's Salvation
(@NPC_EVEE, 33744, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Satin Gloves
(@NPC_EVEE, 33745, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Satin Hood
(@NPC_EVEE, 33746, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Satin Leggings
(@NPC_EVEE, 33747, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Satin Mantle
(@NPC_EVEE, 33748, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Satin Robe
(@NPC_EVEE, 33749, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Scaled Chestpiece
(@NPC_EVEE, 33750, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Scaled Gauntlets
(@NPC_EVEE, 33751, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Scaled Helm
(@NPC_EVEE, 33752, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Scaled Legguards
(@NPC_EVEE, 33753, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Scaled Shoulders
(@NPC_EVEE, 33754, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Vengeful Gladiator's Shanker
(@NPC_EVEE, 33755, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Vengeful Gladiator's Shield Wall
(@NPC_EVEE, 33756, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Shiv
(@NPC_EVEE, 33757, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Silk Amice
(@NPC_EVEE, 33758, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Silk Cowl
(@NPC_EVEE, 33759, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Silk Handguards
(@NPC_EVEE, 33760, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Silk Raiment
(@NPC_EVEE, 33761, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Silk Trousers
(@NPC_EVEE, 33762, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Vengeful Gladiator's Slicer
(@NPC_EVEE, 33763, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Vengeful Gladiator's Spellblade
(@NPC_EVEE, 33764, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Touch of Defeat
(@NPC_EVEE, 33765, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's War Edge
(@NPC_EVEE, 33766, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's War Staff
(@NPC_EVEE, 33767, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Vengeful Gladiator's Wyrmhide Gloves
(@NPC_EVEE, 33768, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Wyrmhide Helm
(@NPC_EVEE, 33769, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Wyrmhide Legguards
(@NPC_EVEE, 33770, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Vengeful Gladiator's Wyrmhide Spaulders
(@NPC_EVEE, 33771, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Vengeful Gladiator's Wyrmhide Tunic
(@NPC_EVEE, 33801, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Mutilator
(@NPC_EVEE, 33841, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Idol of Tenacity
(@NPC_EVEE, 33842, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Libram of Justice
(@NPC_EVEE, 33843, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Totem of the Third Wind
(@NPC_EVEE, 33938, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Libram of Fortitude
(@NPC_EVEE, 33941, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Totem of Indomitability
(@NPC_EVEE, 33944, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Idol of Steadfastness
(@NPC_EVEE, 33947, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Idol of Resolve
(@NPC_EVEE, 33950, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Libram of Vengeance
(@NPC_EVEE, 33953, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Totem of Survival
(@NPC_EVEE, 34014, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Waraxe
(@NPC_EVEE, 34015, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Chopper
(@NPC_EVEE, 34016, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Left Render
(@NPC_EVEE, 34033, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Vengeful Gladiator's Grimoire
(@NPC_EVEE, 34059, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Baton of Light
(@NPC_EVEE, 34066, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Vengeful Gladiator's Piercing Touch
(@NPC_EVEE, 34529, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Longbow
(@NPC_EVEE, 34530, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Vengeful Gladiator's Rifle
(@NPC_EVEE, 34540, 0, 0, 0, @EXTENDED_COST_WEAPON_1); -- Vengeful Gladiator's Battle Staff

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_EVEE) AND (`SourceEntry` IN (33664,33665,33666,33667,33668,33671,33672,33673,33674,33675,33676,33677,33678,33679,33680,33682,33683,33684,33685,33686,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699,33700,33701,33702,33703,33704,33706,33707,33708,33709,33710,33711,33712,33713,33714,33715,33717,33718,33719,33720,33721,33722,33723,33724,33725,33726,33728,33729,33730,33731,33732,33738,33739,33740,33741,33742,33744,33745,33746,33747,33748,33749,33750,33751,33752,33753,33757,33758,33759,33760,33761,33767,33768,33769,33770,33771));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_EVEE, 33664, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_EVEE, 33665, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_EVEE, 33666, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_EVEE, 33667, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_EVEE, 33668, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_EVEE, 33671, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33672, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33673, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33674, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33675, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33676, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33677, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33678, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33679, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33680, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33682, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33683, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33684, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33685, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33686, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_EVEE, 33690, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33691, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33692, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33693, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33694, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33695, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33696, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33697, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33698, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33699, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33700, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_EVEE, 33701, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_EVEE, 33702, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_EVEE, 33703, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_EVEE, 33704, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_EVEE, 33706, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33707, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33708, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33709, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33710, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33711, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33712, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33713, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33714, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33715, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33717, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33718, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33719, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33720, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33721, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33722, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33723, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33724, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33725, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33726, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33728, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_EVEE, 33729, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_EVEE, 33730, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_EVEE, 33731, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_EVEE, 33732, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_EVEE, 33738, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33739, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33740, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33741, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33742, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_EVEE, 33744, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33745, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33746, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33747, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33748, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_EVEE, 33749, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33750, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33751, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33752, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33753, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_EVEE, 33757, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_EVEE, 33758, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_EVEE, 33759, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_EVEE, 33760, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_EVEE, 33761, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_EVEE, 33767, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33768, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33769, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33770, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_EVEE, 33771, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''); -- Druid

-- Accessories
SET @EXTENDED_COST_ACCESSORY_1 := 2289; -- 31000 Honor - Battlemaster Trinkets
SET @EXTENDED_COST_ACCESSORY_2 := 129; -- 12000 Honor - Veteran's Band
SET @EXTENDED_COST_ACCESSORY_3 := 2028; -- 16000 Honor - Vindicator's Band
SET @EXTENDED_COST_ACCESSORY_4 := 1935; -- 13000 Honor - Wrist
SET @EXTENDED_COST_ACCESSORY_5 := 1923; -- 18000 Honor - Waist
SET @EXTENDED_COST_ACCESSORY_6 := 1923; -- 18000 Honor - Feet
SET @EXTENDED_COST_ACCESSORY_7 := 127; -- 16000 Honor - Vindicator's Pendant

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_GREX AND `item` IN (35327,34049,34576,34162,33832,34050,33056,33064,33057,33853,33918,35320,33919,33876,33877,33878,33879,33880,33881,33882,33883,33884,33885,33886,33887,33888,33889,33890,33891,33892,33893,33894,33895,33896,33897,33898,33899,33900,33901,33902,33903,33904,33905,33920,33921,35317,33922,35319,33923,33811,33813,33812,33906,33907,33908,33909,33910,33911,33912,33913,33914,33915,33916,33917);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_GREX, 35327, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Alacrity
(@NPC_GREX, 34049, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Audacity
(@NPC_GREX, 34576, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Cruelty
(@NPC_GREX, 34162, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Depravity
(@NPC_GREX, 33832, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Determination
(@NPC_GREX, 34050, 0, 0, 0, @EXTENDED_COST_ACCESSORY_1), -- Battlemaster's Perseverance
(@NPC_GREX, 33056, 4, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Veteran's Band of Dominance
(@NPC_GREX, 33064, 4, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Veteran's Band of Salvation
(@NPC_GREX, 33057, 4, 0, 0, @EXTENDED_COST_ACCESSORY_2), -- Veteran's Band of Triumph
(@NPC_GREX, 33853, 1, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Vindicator's Band of Dominance
(@NPC_GREX, 33918, 1, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Vindicator's Band of Salvation
(@NPC_GREX, 35320, 1, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Vindicator's Band of Subjugation
(@NPC_GREX, 33919, 1, 0, 0, @EXTENDED_COST_ACCESSORY_3), -- Vindicator's Band of Triumph
(@NPC_GREX, 33876, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Chain Bracers
(@NPC_GREX, 33877, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Chain Girdle
(@NPC_GREX, 33878, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Chain Sabatons
(@NPC_GREX, 33879, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Dragonhide Belt
(@NPC_GREX, 33880, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Dragonhide Boots
(@NPC_GREX, 33881, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Dragonhide Bracers
(@NPC_GREX, 33882, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Dreadweave Belt
(@NPC_GREX, 33883, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Dreadweave Cuffs
(@NPC_GREX, 33884, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Dreadweave Stalkers
(@NPC_GREX, 33885, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Kodohide Belt
(@NPC_GREX, 33886, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Kodohide Boots
(@NPC_GREX, 33887, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Kodohide Bracers
(@NPC_GREX, 33888, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Lamellar Belt
(@NPC_GREX, 33889, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Lamellar Bracers
(@NPC_GREX, 33890, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Lamellar Greaves
(@NPC_GREX, 33891, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Leather Belt
(@NPC_GREX, 33892, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Leather Boots
(@NPC_GREX, 33893, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Leather Bracers
(@NPC_GREX, 33894, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Linked Bracers
(@NPC_GREX, 33895, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Linked Girdle
(@NPC_GREX, 33896, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Linked Sabatons
(@NPC_GREX, 33897, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Mail Bracers
(@NPC_GREX, 33898, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Mail Girdle
(@NPC_GREX, 33899, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Mail Sabatons
(@NPC_GREX, 33900, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Mooncloth Belt
(@NPC_GREX, 33901, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Mooncloth Cuffs
(@NPC_GREX, 33902, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Mooncloth Slippers
(@NPC_GREX, 33903, 3, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Ornamented Belt
(@NPC_GREX, 33904, 3, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Ornamented Bracers
(@NPC_GREX, 33905, 3, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Ornamented Greaves
(@NPC_GREX, 33920, 2, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Pendant of Conquest
(@NPC_GREX, 33921, 2, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Pendant of Dominance
(@NPC_GREX, 35317, 2, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Pendant of Reprieve
(@NPC_GREX, 33922, 2, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Pendant of Salvation
(@NPC_GREX, 35319, 2, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Pendant of Subjugation
(@NPC_GREX, 33923, 2, 0, 0, @EXTENDED_COST_ACCESSORY_7), -- Vindicator's Pendant of Triumph
(@NPC_GREX, 33811, 4, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Plate Belt
(@NPC_GREX, 33813, 4, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Plate Bracers
(@NPC_GREX, 33812, 4, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Plate Greaves
(@NPC_GREX, 33906, 4, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Ringmail Bracers
(@NPC_GREX, 33907, 4, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Ringmail Girdle
(@NPC_GREX, 33908, 4, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Ringmail Sabatons
(@NPC_GREX, 33909, 4, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Scaled Belt
(@NPC_GREX, 33910, 4, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Scaled Bracers
(@NPC_GREX, 33911, 4, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Scaled Greaves
(@NPC_GREX, 33912, 4, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Silk Belt
(@NPC_GREX, 33913, 4, 0, 0, @EXTENDED_COST_ACCESSORY_4), -- Vindicator's Silk Cuffs
(@NPC_GREX, 33914, 4, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Silk Footguards
(@NPC_GREX, 33915, 4, 0, 0, @EXTENDED_COST_ACCESSORY_5), -- Vindicator's Wyrmhide Belt
(@NPC_GREX, 33916, 4, 0, 0, @EXTENDED_COST_ACCESSORY_6), -- Vindicator's Wyrmhide Boots
(@NPC_GREX, 33917, 4, 0, 0, @EXTENDED_COST_ACCESSORY_4); -- Vindicator's Wyrmhide Bracers

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_GREX) AND (`SourceEntry` IN (33882,33883,33884,33900,33901,33902,33912,33913,33914,33879,33880,33881,33885,33886,33887,33891,33892,33893,33915,33916,33917,33876,33877,33878,33894,33895,33896,33897,33898,33899,33906,33907,33908,33811,33812,33813,33888,33889,33890,33903,33904,33905,33909,33910,33911));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_GREX, 33882, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33883, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33884, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33900, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33901, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33902, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33912, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33913, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33914, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_GREX, 33879, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33880, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33881, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33885, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33886, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33887, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33891, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33892, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33893, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33915, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33916, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33917, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_GREX, 33876, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33877, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33878, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33894, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33895, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33896, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33897, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33898, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33899, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33906, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33907, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33908, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_GREX, 33811, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33812, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33813, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33888, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33889, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33890, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33903, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33904, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33905, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33909, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33910, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_GREX, 33911, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''); -- Plate
