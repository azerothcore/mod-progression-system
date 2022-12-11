SET @EXTENDED_COST_SHOULDER := 1435; -- 1500 Arena, 2000 Rating - Shoulders
SET @EXTENDED_COST_WEAPON_1 := 2282; -- 3750 Arena, 1850 Rating - Two-handed and Ranged
SET @EXTENDED_COST_WEAPON_2 := 1757; -- 3150 Arena, 1850 Rating - MH (Spellpower)
SET @EXTENDED_COST_WEAPON_3 := 1670; -- 2625 Arena, 1850 Rating - MH (Melee)
SET @EXTENDED_COST_WEAPON_4 := 1431; -- 1875 Arena, 1850 Rating - Shield
SET @EXTENDED_COST_WEAPON_5 := 1432; -- 1125 Arena, 1850 Rating - OH
SET @EXTENDED_COST_WEAPON_6 := 2627; -- 1066 Arena, 1850 Rating - Relics, Thrown, Wand
SET @EXTENDED_COST_ARMOR_1 := 2285; -- 1875 Arena - Chest, Legs, Head
SET @EXTENDED_COST_ARMOR_2 := 2283; -- 1125 Arena - Hands

SET @NPC_LEENI := 24392;
SET @GUID := 3000015;

UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_LEENI);

-- Set creatures for this season
DELETE FROM `creature` WHERE (`id1` = @NPC_LEENI) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, @NPC_LEENI, 0, 0, 530, 0, 0, 1, 1, 0, 3070.16, 3635.11, 143.864, 0.750492, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+1, @NPC_LEENI, 0, 0, 530, 0, 0, 1, 1, 0, -2159.54, 6636.09, 0.493227, 0.613407, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+2, @NPC_LEENI, 0, 0, 530, 0, 0, 1, 1, 0, 2890.67, 5981.48, 2.78978, 1.20321, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID+3, @NPC_LEENI, 0, 0, 530, 0, 0, 1, 1, 0, -1969.760376, 5176.926270, -37.859413, 4.958171, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE `eventEntry` IN (55, 56, 75, 76) AND (`guid` BETWEEN @GUID+0 AND @GUID+3);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(75, @GUID+0),
(75, @GUID+1),
(75, @GUID+2),
(75, @GUID+3),
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

DELETE FROM `npc_vendor` WHERE `entry`=@NPC_LEENI AND `item` IN (24544,24545,24546,24547,24549,24550,24552,24553,24554,24555,24556,24557,25830,25831,25832,25833,25834,25854,25855,25856,25857,25858,25997,25998,25999,26000,26001,27469,27470,27471,27472,27473,27702,27703,27704,27705,27706,27707,27708,27709,27710,27711,27879,27880,27881,27882,27883,28126,28127,28128,28129,28130,28136,28137,28138,28139,28140,28294,28295,28297,28298,28299,28300,28302,28305,28307,28308,28309,28310,28312,28313,28314,28319,28320,28331,28332,28333,28334,28335,28346,28355,28356,28357,28358,28476,30186,30187,30188,30200,30201,31375,31376,31377,31378,31379,31396,31397,31400,31406,31407,31409,31410,31411,31412,31413,31613,31614,31616,31618,31619,32450,32451,32452);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@NPC_LEENI, 24544, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Plate Chestpiece
(@NPC_LEENI, 24545, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Plate Helm
(@NPC_LEENI, 24546, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Plate Shoulders
(@NPC_LEENI, 24547, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Plate Legguards
(@NPC_LEENI, 24549, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Plate Gauntlets
(@NPC_LEENI, 24550, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's Greatsword
(@NPC_LEENI, 24552, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Dreadweave Robe
(@NPC_LEENI, 24553, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Dreadweave Hood
(@NPC_LEENI, 24554, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Dreadweave Mantle
(@NPC_LEENI, 24555, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Dreadweave Leggings
(@NPC_LEENI, 24556, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Dreadweave Gloves
(@NPC_LEENI, 24557, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's War Staff
(@NPC_LEENI, 25830, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Leather Helm
(@NPC_LEENI, 25831, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Leather Tunic
(@NPC_LEENI, 25832, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Leather Spaulders
(@NPC_LEENI, 25833, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Leather Legguards
(@NPC_LEENI, 25834, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Leather Gloves
(@NPC_LEENI, 25854, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Silk Amice
(@NPC_LEENI, 25855, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Silk Cowl
(@NPC_LEENI, 25856, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Silk Raiment
(@NPC_LEENI, 25857, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Silk Handguards
(@NPC_LEENI, 25858, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Silk Trousers
(@NPC_LEENI, 25997, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Linked Armor
(@NPC_LEENI, 25998, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Linked Helm
(@NPC_LEENI, 25999, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Linked Spaulders
(@NPC_LEENI, 26000, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Linked Gauntlets
(@NPC_LEENI, 26001, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Linked Leggings
(@NPC_LEENI, 27469, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Mail Armor
(@NPC_LEENI, 27470, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Mail Gauntlets
(@NPC_LEENI, 27471, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Mail Helm
(@NPC_LEENI, 27472, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Mail Leggings
(@NPC_LEENI, 27473, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Mail Spaulders
(@NPC_LEENI, 27702, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Lamellar Chestpiece
(@NPC_LEENI, 27703, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Lamellar Gauntlets
(@NPC_LEENI, 27704, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Lamellar Helm
(@NPC_LEENI, 27705, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Lamellar Legguards
(@NPC_LEENI, 27706, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Lamellar Shoulders
(@NPC_LEENI, 27707, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Satin Gloves
(@NPC_LEENI, 27708, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Satin Hood
(@NPC_LEENI, 27709, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Satin Leggings
(@NPC_LEENI, 27710, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Satin Mantle
(@NPC_LEENI, 27711, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Satin Robe
(@NPC_LEENI, 27879, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Scaled Chestpiece
(@NPC_LEENI, 27880, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Scaled Gauntlets
(@NPC_LEENI, 27881, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Scaled Helm
(@NPC_LEENI, 27882, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Scaled Legguards
(@NPC_LEENI, 27883, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Scaled Shoulders
(@NPC_LEENI, 28126, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Dragonhide Gloves
(@NPC_LEENI, 28127, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Dragonhide Helm
(@NPC_LEENI, 28128, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Dragonhide Legguards
(@NPC_LEENI, 28129, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Dragonhide Spaulders
(@NPC_LEENI, 28130, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Dragonhide Tunic
(@NPC_LEENI, 28136, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Wyrmhide Gloves
(@NPC_LEENI, 28137, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Wyrmhide Helm
(@NPC_LEENI, 28138, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Wyrmhide Legguards
(@NPC_LEENI, 28139, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Wyrmhide Spaulders
(@NPC_LEENI, 28140, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Wyrmhide Tunic
(@NPC_LEENI, 28294, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's Heavy Crossbow
(@NPC_LEENI, 28295, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Gladiator's Slicer
(@NPC_LEENI, 28297, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Gladiator's Spellblade
(@NPC_LEENI, 28298, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's Decapitator
(@NPC_LEENI, 28299, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's Bonegrinder
(@NPC_LEENI, 28300, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's Painsaw
(@NPC_LEENI, 28302, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Gladiator's Bonecracker
(@NPC_LEENI, 28305, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Gladiator's Pummeler
(@NPC_LEENI, 28307, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Gladiator's Quickblade
(@NPC_LEENI, 28308, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Gladiator's Cleaver
(@NPC_LEENI, 28309, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Gladiator's Hacker
(@NPC_LEENI, 28310, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Gladiator's Shiv
(@NPC_LEENI, 28312, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Gladiator's Shanker
(@NPC_LEENI, 28313, 0, 0, 0, @EXTENDED_COST_WEAPON_3), -- Gladiator's Right Ripper
(@NPC_LEENI, 28314, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Gladiator's Left Ripper
(@NPC_LEENI, 28319, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Gladiator's War Edge
(@NPC_LEENI, 28320, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Gladiator's Touch of Defeat
(@NPC_LEENI, 28331, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Chain Helm
(@NPC_LEENI, 28332, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Chain Leggings
(@NPC_LEENI, 28333, 1, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Chain Spaulders
(@NPC_LEENI, 28334, 1, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Chain Armor
(@NPC_LEENI, 28335, 1, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Chain Gauntlets
(@NPC_LEENI, 28346, 0, 0, 0, @EXTENDED_COST_WEAPON_5), -- Gladiator's Endgame
(@NPC_LEENI, 28355, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Gladiator's Idol of Tenacity
(@NPC_LEENI, 28356, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Gladiator's Libram of Justice
(@NPC_LEENI, 28357, 0, 0, 0, @EXTENDED_COST_WEAPON_6), -- Gladiator's Totem of the Third Wind
(@NPC_LEENI, 28358, 0, 0, 0, @EXTENDED_COST_WEAPON_4), -- Gladiator's Shield Wall
(@NPC_LEENI, 28476, 0, 0, 0, @EXTENDED_COST_WEAPON_1), -- Gladiator's Maul
(@NPC_LEENI, 30186, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Felweave Amice
(@NPC_LEENI, 30187, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Felweave Cowl
(@NPC_LEENI, 30188, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Felweave Handguards
(@NPC_LEENI, 30200, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Felweave Raiment
(@NPC_LEENI, 30201, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Felweave Trousers
(@NPC_LEENI, 31375, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Kodohide Gloves
(@NPC_LEENI, 31376, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Kodohide Helm
(@NPC_LEENI, 31377, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Kodohide Legguards
(@NPC_LEENI, 31378, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Kodohide Spaulders
(@NPC_LEENI, 31379, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Kodohide Tunic
(@NPC_LEENI, 31396, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Ringmail Armor
(@NPC_LEENI, 31397, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Ringmail Gauntlets
(@NPC_LEENI, 31400, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Ringmail Helm
(@NPC_LEENI, 31406, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Ringmail Leggings
(@NPC_LEENI, 31407, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Ringmail Spaulders
(@NPC_LEENI, 31409, 2, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Mooncloth Gloves
(@NPC_LEENI, 31410, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Mooncloth Hood
(@NPC_LEENI, 31411, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Mooncloth Leggings
(@NPC_LEENI, 31412, 2, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Mooncloth Mantle
(@NPC_LEENI, 31413, 2, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Mooncloth Robe
(@NPC_LEENI, 31613, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Ornamented Chestguard
(@NPC_LEENI, 31614, 3, 0, 0, @EXTENDED_COST_ARMOR_2), -- Gladiator's Ornamented Gloves
(@NPC_LEENI, 31616, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Ornamented Headcover
(@NPC_LEENI, 31618, 3, 0, 0, @EXTENDED_COST_ARMOR_1), -- Gladiator's Ornamented Legplates
(@NPC_LEENI, 31619, 3, 0, 0, @EXTENDED_COST_SHOULDER), -- Gladiator's Ornamented Spaulders
(@NPC_LEENI, 32450, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Gladiator's Gavel
(@NPC_LEENI, 32451, 0, 0, 0, @EXTENDED_COST_WEAPON_2), -- Gladiator's Salvation
(@NPC_LEENI, 32452, 0, 0, 0, @EXTENDED_COST_WEAPON_5); -- Gladiator's Reprieve

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_LEENI) AND (`SourceEntry` IN (24544,24545,24546,24547,24549,24552,24553,24554,24555,24556,25830,25831,25832,25833,25834,25854,25855,25856,25857,25858,25997,25998,25999,26000,26001,27469,27470,27471,27472,27473,27702,27703,27704,27705,27706,27707,27708,27709,27710,27711,27879,27880,27881,27882,27883,28126,28127,28128,28129,28130,28136,28137,28138,28139,28140,28331,28332,28333,28334,28335,30186,30187,30188,30200,30201,31375,31376,31377,31378,31379,31396,31397,31400,31406,31407,31409,31410,31411,31412,31413,31613,31614,31616,31618,31619));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_LEENI, 24544, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_LEENI, 24545, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_LEENI, 24546, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_LEENI, 24547, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_LEENI, 24549, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_LEENI, 24552, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 24553, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 24554, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 24555, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 24556, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 25830, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_LEENI, 25831, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_LEENI, 25832, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_LEENI, 25833, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_LEENI, 25834, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_LEENI, 25854, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_LEENI, 25855, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_LEENI, 25856, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_LEENI, 25857, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_LEENI, 25858, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_LEENI, 25997, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 25998, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 25999, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 26000, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 26001, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 27469, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 27470, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 27471, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 27472, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 27473, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 27702, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27703, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27704, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27705, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27706, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27707, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 27708, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 27709, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 27710, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 27711, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 27879, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27880, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27881, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27882, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 27883, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 28126, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28127, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28128, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28129, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28130, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28136, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28137, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28138, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28139, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28140, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 28331, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_LEENI, 28332, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_LEENI, 28333, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_LEENI, 28334, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_LEENI, 28335, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_LEENI, 30186, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 30187, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 30188, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 30200, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 30201, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_LEENI, 31375, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 31376, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 31377, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 31378, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 31379, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_LEENI, 31396, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 31397, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 31400, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 31406, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 31407, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_LEENI, 31409, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 31410, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 31411, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 31412, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 31413, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_LEENI, 31613, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 31614, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 31616, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 31618, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_LEENI, 31619, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''); -- Paladin
