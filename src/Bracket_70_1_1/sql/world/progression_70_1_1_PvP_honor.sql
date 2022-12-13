SET @GUID := 3000009;

SET @NPC_ARMOR_ALLIANCE      := 12777; -- Captain Dirgehammer
SET @NPC_ACCESSORY_ALLIANCE  := 12805; -- Officer Areyn (already has inventory)
SET @NPC_WEAPON_ALLIANCE     := 12782; -- Captain O'Neal

SET @GUID_ARMOR_ALLIANCE     := @GUID+0;
SET @GUID_ACCESSORY_ALLIANCE := @GUID+1;
SET @GUID_WEAPON_ALLIANCE    := @GUID+2;

SET @NPC_ARMOR_HORDE         := 24520; -- Doris Volanthius
SET @NPC_ACCESSORY_HORDE     := 12799; -- Sergeant Ba'sha (already has inventory)
SET @NPC_WEAPON_HORDE        := 14581; -- Sergeant Thunderhorn

SET @GUID_ARMOR_HORDE        := @GUID+3;
SET @GUID_ACCESSORY_HORDE    := @GUID+4;
SET @GUID_WEAPON_HORDE       := @GUID+5;

SET @NPC_SEASON_ONE          := 24392; -- Leeni "Smiley" Smalls
SET @GUID_SEASON_ONE         := @GUID+6;

SET @NPC_SEASON_TWO          := 26352; -- Big Zokk Torquewrench
SET @GUID_SEASON_TWO         := @GUID+7;
UPDATE `creature_template` SET `subname` = 'Merciless Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_TWO); -- If NPC is changed remember to set the correct subname later

SET @NPC_SEASON_THREE        := 26378; -- Evee Copperspring
SET @GUID_SEASON_THREE       := @GUID+8;
UPDATE `creature_template` SET `subname` = 'Vengeful Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_THREE);

SET @NPC_SEASON_FOUR         := 40207; -- Kezzik the Striker
SET @GUID_SEASON_FOUR        := @GUID+9;
UPDATE `creature_template` SET `subname` = 'Brutal Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_FOUR);

SET @NPC_ARENA_ACCESSORY     := 40209; -- Grex Brainboiler
SET @GUID_ARENA_ACCESSORY    := @GUID+10;
UPDATE `creature_template` SET `subname` = 'Accessories Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_ARENA_ACCESSORY);

DELETE FROM `creature` WHERE (`id1` IN (@NPC_ARMOR_ALLIANCE,@NPC_ACCESSORY_ALLIANCE,@NPC_WEAPON_ALLIANCE,@NPC_ARMOR_HORDE,@NPC_ACCESSORY_HORDE,@NPC_WEAPON_HORDE,@NPC_SEASON_ONE,@NPC_SEASON_TWO,@NPC_SEASON_THREE,@NPC_SEASON_FOUR,@NPC_ARENA_ACCESSORY)) AND (`guid` BETWEEN @GUID AND @GUID+10);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID_WEAPON_HORDE, @NPC_WEAPON_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_HORDE, @NPC_ACCESSORY_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1674.48, -4211.93, 56.3825, 3.03786, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_HORDE, @NPC_ARMOR_HORDE, 0, 0, 1, 0, 0, 1, 1, 0, 1673.07, -4201.89, 56.3826, 3.62927, 25, 0, 0, 55888, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_ALLIANCE, @NPC_ARMOR_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8781.18, 419.883, 105.233, 6.18459, 180, 0, 0, 7048, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_ALLIANCE, @NPC_WEAPON_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8773.78, 425.804, 105.233, 4.80621, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_ALLIANCE, @NPC_ACCESSORY_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8775.85, 423.96, 105.233, 5.73298, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_ONE, @NPC_SEASON_ONE, 0, 0, 530, 0, 0, 1, 1, 0, 3070.16, 3635.11, 143.864, 0.750492, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_TWO, @NPC_SEASON_TWO, 0, 0, 530, 0, 0, 1, 1, 0, 3073.99, 3633.34, 143.779, 2.09012, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_THREE, @NPC_SEASON_THREE, 0, 0, 530, 0, 0, 1, 1, 0, 3078.46, 3636.98, 145.385, 3.12999, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_FOUR, @NPC_SEASON_FOUR, 0, 0, 530, 0, 0, 1, 1, 0, 3066.45, 3638.87, 145.218, 0.875901, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARENA_ACCESSORY, @NPC_ARENA_ACCESSORY, 0, 0, 530, 0, 0, 1, 1, 0, 3073.259766, 3642.980469, 143.780502, 4.354409, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE (`eventEntry` IN (75, 76, 55, 56)) AND (`guid` BETWEEN @GUID AND @GUID+10);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(75, @GUID_WEAPON_HORDE),
(76, @GUID_WEAPON_HORDE),
(55, @GUID_WEAPON_HORDE),
(56, @GUID_WEAPON_HORDE),
(75, @GUID_ACCESSORY_HORDE),
(76, @GUID_ACCESSORY_HORDE),
(55, @GUID_ACCESSORY_HORDE),
(56, @GUID_ACCESSORY_HORDE),
(75, @GUID_ARMOR_HORDE),
(76, @GUID_ARMOR_HORDE),
(55, @GUID_ARMOR_HORDE),
(56, @GUID_ARMOR_HORDE),
(75, @GUID_ARMOR_ALLIANCE),
(76, @GUID_ARMOR_ALLIANCE),
(55, @GUID_ARMOR_ALLIANCE),
(56, @GUID_ARMOR_ALLIANCE),
(75, @GUID_WEAPON_ALLIANCE),
(76, @GUID_WEAPON_ALLIANCE),
(55, @GUID_WEAPON_ALLIANCE),
(56, @GUID_WEAPON_ALLIANCE),
(75, @GUID_ACCESSORY_ALLIANCE),
(76, @GUID_ACCESSORY_ALLIANCE),
(55, @GUID_ACCESSORY_ALLIANCE),
(56, @GUID_ACCESSORY_ALLIANCE),
(75, @GUID_SEASON_ONE),
(76, @GUID_SEASON_ONE),
(55, @GUID_SEASON_ONE),
(56, @GUID_SEASON_ONE),
(76, @GUID_SEASON_TWO),
(55, @GUID_SEASON_TWO),
(56, @GUID_SEASON_TWO),
(76, @GUID_ARENA_ACCESSORY),
(55, @GUID_ARENA_ACCESSORY),
(56, @GUID_ARENA_ACCESSORY),
(55, @GUID_SEASON_THREE),
(56, @GUID_SEASON_THREE),
(56, @GUID_SEASON_FOUR);

/*
	Faction Capital Honor Vendors
		Present in all 4 seasons
*/

SET @EXT_WEP_HONOR_01_1  := 131 ; -- Season 1: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_1  := 348 ; -- Season 1: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_1  := 2271; -- Season 1: 17000 Honor - Ranged Weapon

SET @EXT_ARM_HONOR_01_1  := 2259; -- Season 1: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_1  := 2261; -- Season 1: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_1  := 2263; -- Season 1: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_1  := 2265; -- Season 1: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_1  := 2267; -- Season 1: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_1  := 169;  -- Season 1: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_1  := 172;  -- Season 1: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_1  := 171;  -- Season 1: 15000 Honor - Feet

SET @EXT_ACC_HONOR_01_1  := 95;    -- Season 1: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_1  := 99;    -- Season 1: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_1  := 125;   -- Season 1: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_1  := 127;   -- Season 1: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_1  := 165;   -- Season 1: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_1  := 460;   -- Season 1: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_1  := 1564;  -- Season 1: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_1  := 1648;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_1  := 1649;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_1  := 1652;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_1  := 1653;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_1  := 2403;  -- Season 1: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_1  := 2404;  -- Season 1: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_1  := 129;   -- Season 1: 12000 Honor - Finger

SET @EXT_WEP_HONOR_01_2  := 131 ; -- Season 2: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_2  := 348 ; -- Season 2: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_2  := 2271; -- Season 2: 17000 Honor - Ranged Weapon

SET @EXT_ARM_HONOR_01_2  := 2259; -- Season 2: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_2  := 2261; -- Season 2: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_2  := 2263; -- Season 2: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_2  := 2265; -- Season 2: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_2  := 2267; -- Season 2: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_2  := 169 ;  -- Season 2: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_2  := 172 ;  -- Season 2: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_2  := 171 ;  -- Season 2: 15000 Honor - Feet

SET @EXT_ACC_HONOR_01_2  := 95;    -- Season 2: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_2  := 99;    -- Season 2: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_2  := 125;   -- Season 2: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_2  := 127;   -- Season 2: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_2  := 165;   -- Season 2: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_2  := 460;   -- Season 2: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_2  := 1564;  -- Season 2: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_2  := 1648;  -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_2  := 1649;  -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_2  := 1652;  -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_2  := 1653;  -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_2  := 2403;  -- Season 2: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_2  := 2404;  -- Season 2: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_2  := 129;   -- Season 2: 12000 Honor - Finger

SET @EXT_WEP_HONOR_01_3  := 131 ; -- Season 3: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_3  := 348 ; -- Season 3: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_3  := 2271; -- Season 3: 17000 Honor - Ranged Weapon

SET @EXT_ARM_HONOR_01_3  := 2259; -- Season 3: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_3  := 2261; -- Season 3: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_3  := 2263; -- Season 3: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_3  := 2265; -- Season 3: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_3  := 2267; -- Season 3: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_3  := 169;  -- Season 3: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_3  := 172;  -- Season 3: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_3  := 171;  -- Season 3: 15000 Honor - Feet

SET @EXT_ACC_HONOR_01_3  := 95;    -- Season 3: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_3  := 99;    -- Season 3: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_3  := 125;   -- Season 3: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_3  := 127;   -- Season 3: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_3  := 165;   -- Season 3: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_3  := 460;   -- Season 3: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_3  := 1564;  -- Season 3: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_3  := 1648;  -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_3  := 1649;  -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_3  := 1652;  -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_3  := 1653;  -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_3  := 2403;  -- Season 3: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_3  := 2404;  -- Season 3: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_3  := 129;   -- Season 3: 12000 Honor - Finger

SET @EXT_WEP_HONOR_01_4  := 131 ; -- Season 4: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_4  := 348 ; -- Season 4: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_4  := 2271; -- Season 4: 17000 Honor - Ranged Weapon

SET @EXT_ARM_HONOR_01_4  := 2259; -- Season 4: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_4  := 2261; -- Season 4: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_4  := 2263; -- Season 4: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_4  := 2265; -- Season 4: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_4  := 2267; -- Season 4: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_4  := 169;  -- Season 4: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_4  := 172;  -- Season 4: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_4  := 171;  -- Season 4: 15000 Honor - Feet

SET @EXT_ACC_HONOR_01_4  := 95;    -- Season 4: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_4  := 99;    -- Season 4: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_4  := 125;   -- Season 4: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_4  := 127;   -- Season 4: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_4  := 165;   -- Season 4: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_4  := 460;   -- Season 4: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_4  := 1564;  -- Season 4: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_4  := 1648;  -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_4  := 1649;  -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_4  := 1652;  -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_4  := 1653;  -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_4  := 2403;  -- Season 4: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_4  := 2404;  -- Season 4: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_4  := 129;   -- Season 4: 12000 Honor - Finger

DELETE FROM `game_event_npc_vendor` WHERE `eventEntry` IN (75, 76, 55, 56) AND `guid` IN (@GUID_WEAPON_ALLIANCE,@GUID_ARMOR_ALLIANCE,@GUID_ACCESSORY_ALLIANCE,@GUID_WEAPON_HORDE,@GUID_ARMOR_HORDE,@GUID_ACCESSORY_HORDE);
INSERT INTO `game_event_npc_vendor` (`eventEntry`, `guid`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(75, @GUID_WEAPON_ALLIANCE   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Bonegrinder
(75, @GUID_WEAPON_ALLIANCE   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Warblade
(75, @GUID_WEAPON_ALLIANCE   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Decapitator
(75, @GUID_WEAPON_ALLIANCE   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Maul
(75, @GUID_WEAPON_ALLIANCE   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Painsaw
(75, @GUID_WEAPON_ALLIANCE   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's War Staff
(75, @GUID_WEAPON_ALLIANCE   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Barricade
(75, @GUID_WEAPON_ALLIANCE   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Battletome
(75, @GUID_WEAPON_ALLIANCE   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Cleaver
(75, @GUID_WEAPON_ALLIANCE   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Hacker
(75, @GUID_WEAPON_ALLIANCE   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Left Ripper
(75, @GUID_WEAPON_ALLIANCE   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Bonecracker
(75, @GUID_WEAPON_ALLIANCE   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Pummeler
(75, @GUID_WEAPON_ALLIANCE   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Quickblade
(75, @GUID_WEAPON_ALLIANCE   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Right Ripper
(75, @GUID_WEAPON_ALLIANCE   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Shanker
(75, @GUID_WEAPON_ALLIANCE   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Shiv
(75, @GUID_WEAPON_ALLIANCE   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Slicer
(75, @GUID_WEAPON_ALLIANCE   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Spellblade
(75, @GUID_WEAPON_ALLIANCE   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_1), -- Grand Marshal's Heavy Crossbow
(75, @GUID_ARMOR_ALLIANCE    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Chain Armor
(75, @GUID_ARMOR_ALLIANCE    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Chain Gauntlets
(75, @GUID_ARMOR_ALLIANCE    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Chain Helm
(75, @GUID_ARMOR_ALLIANCE    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Chain Leggings
(75, @GUID_ARMOR_ALLIANCE    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Chain Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Dragonhide Gloves
(75, @GUID_ARMOR_ALLIANCE    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Dragonhide Helm
(75, @GUID_ARMOR_ALLIANCE    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Dragonhide Legguards
(75, @GUID_ARMOR_ALLIANCE    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Dragonhide Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Dragonhide Tunic
(75, @GUID_ARMOR_ALLIANCE    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Dreadweave Gloves
(75, @GUID_ARMOR_ALLIANCE    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Dreadweave Hood
(75, @GUID_ARMOR_ALLIANCE    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Dreadweave Leggings
(75, @GUID_ARMOR_ALLIANCE    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Dreadweave Mantle
(75, @GUID_ARMOR_ALLIANCE    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Dreadweave Robe
(75, @GUID_ARMOR_ALLIANCE    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Kodohide Gloves
(75, @GUID_ARMOR_ALLIANCE    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Kodohide Helm
(75, @GUID_ARMOR_ALLIANCE    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Kodohide Legguards
(75, @GUID_ARMOR_ALLIANCE    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Kodohide Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Kodohide Tunic
(75, @GUID_ARMOR_ALLIANCE    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Lamellar Chestpiece
(75, @GUID_ARMOR_ALLIANCE    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Lamellar Gauntlets
(75, @GUID_ARMOR_ALLIANCE    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Lamellar Helm
(75, @GUID_ARMOR_ALLIANCE    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Lamellar Legguards
(75, @GUID_ARMOR_ALLIANCE    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Lamellar Shoulders
(75, @GUID_ARMOR_ALLIANCE    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Leather Gloves
(75, @GUID_ARMOR_ALLIANCE    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Leather Helm
(75, @GUID_ARMOR_ALLIANCE    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Leather Legguards
(75, @GUID_ARMOR_ALLIANCE    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Leather Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Leather Tunic
(75, @GUID_ARMOR_ALLIANCE    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Linked Armor
(75, @GUID_ARMOR_ALLIANCE    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Linked Gauntlets
(75, @GUID_ARMOR_ALLIANCE    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Linked Helm
(75, @GUID_ARMOR_ALLIANCE    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Linked Leggings
(75, @GUID_ARMOR_ALLIANCE    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Linked Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Mail Armor
(75, @GUID_ARMOR_ALLIANCE    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Mail Gauntlets
(75, @GUID_ARMOR_ALLIANCE    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Mail Helm
(75, @GUID_ARMOR_ALLIANCE    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Mail Leggings
(75, @GUID_ARMOR_ALLIANCE    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Mail Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Mooncloth Cowl
(75, @GUID_ARMOR_ALLIANCE    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Mooncloth Legguards
(75, @GUID_ARMOR_ALLIANCE    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Mooncloth Mitts
(75, @GUID_ARMOR_ALLIANCE    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Mooncloth Shoulderpads
(75, @GUID_ARMOR_ALLIANCE    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Mooncloth Vestments
(75, @GUID_ARMOR_ALLIANCE    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Ornamented Chestplate
(75, @GUID_ARMOR_ALLIANCE    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Ornamented Gloves
(75, @GUID_ARMOR_ALLIANCE    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Ornamented Headguard
(75, @GUID_ARMOR_ALLIANCE    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Ornamented Leggings
(75, @GUID_ARMOR_ALLIANCE    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Ornamented Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Plate Chestpiece
(75, @GUID_ARMOR_ALLIANCE    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Plate Gauntlets
(75, @GUID_ARMOR_ALLIANCE    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Plate Helm
(75, @GUID_ARMOR_ALLIANCE    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Plate Legguards
(75, @GUID_ARMOR_ALLIANCE    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Plate Shoulders
(75, @GUID_ARMOR_ALLIANCE    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Ringmail Chestguard
(75, @GUID_ARMOR_ALLIANCE    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Ringmail Gloves
(75, @GUID_ARMOR_ALLIANCE    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Ringmail Headpiece
(75, @GUID_ARMOR_ALLIANCE    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Ringmail Legguards
(75, @GUID_ARMOR_ALLIANCE    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Ringmail Shoulders
(75, @GUID_ARMOR_ALLIANCE    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Satin Gloves
(75, @GUID_ARMOR_ALLIANCE    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Satin Hood
(75, @GUID_ARMOR_ALLIANCE    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Satin Leggings
(75, @GUID_ARMOR_ALLIANCE    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Satin Mantle
(75, @GUID_ARMOR_ALLIANCE    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Satin Robe
(75, @GUID_ARMOR_ALLIANCE    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Scaled Chestpiece
(75, @GUID_ARMOR_ALLIANCE    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Scaled Gauntlets
(75, @GUID_ARMOR_ALLIANCE    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Scaled Helm
(75, @GUID_ARMOR_ALLIANCE    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Scaled Legguards
(75, @GUID_ARMOR_ALLIANCE    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Scaled Shoulders
(75, @GUID_ARMOR_ALLIANCE    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Silk Amice
(75, @GUID_ARMOR_ALLIANCE    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Silk Cowl
(75, @GUID_ARMOR_ALLIANCE    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Silk Handguards
(75, @GUID_ARMOR_ALLIANCE    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Silk Raiment
(75, @GUID_ARMOR_ALLIANCE    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Silk Trousers
(75, @GUID_ARMOR_ALLIANCE    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Wyrmhide Gloves
(75, @GUID_ARMOR_ALLIANCE    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Wyrmhide Helm
(75, @GUID_ARMOR_ALLIANCE    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Wyrmhide Legguards
(75, @GUID_ARMOR_ALLIANCE    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Wyrmhide Spaulders
(75, @GUID_ARMOR_ALLIANCE    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Wyrmhide Tunic
(75, @GUID_ARMOR_ALLIANCE    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Chain Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Chain Girdle
(75, @GUID_ARMOR_ALLIANCE    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Chain Sabatons
(75, @GUID_ARMOR_ALLIANCE    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Dragonhide Belt
(75, @GUID_ARMOR_ALLIANCE    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Dragonhide Boots
(75, @GUID_ARMOR_ALLIANCE    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Dragonhide Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Dreadweave Belt
(75, @GUID_ARMOR_ALLIANCE    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Dreadweave Cuffs
(75, @GUID_ARMOR_ALLIANCE    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Dreadweave Stalkers
(75, @GUID_ARMOR_ALLIANCE    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Kodohide Belt
(75, @GUID_ARMOR_ALLIANCE    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Kodohide Boots
(75, @GUID_ARMOR_ALLIANCE    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Kodohide Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Lamellar Belt
(75, @GUID_ARMOR_ALLIANCE    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Lamellar Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Lamellar Greaves
(75, @GUID_ARMOR_ALLIANCE    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Leather Belt
(75, @GUID_ARMOR_ALLIANCE    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Leather Boots
(75, @GUID_ARMOR_ALLIANCE    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Leather Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Linked Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Linked Girdle
(75, @GUID_ARMOR_ALLIANCE    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Linked Sabatons
(75, @GUID_ARMOR_ALLIANCE    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Mail Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Mail Girdle
(75, @GUID_ARMOR_ALLIANCE    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Mail Sabatons
(75, @GUID_ARMOR_ALLIANCE    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Plate Belt
(75, @GUID_ARMOR_ALLIANCE    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Plate Bracers
(75, @GUID_ARMOR_ALLIANCE    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Plate Greaves
(75, @GUID_ARMOR_ALLIANCE    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Scaled Belt
(75, @GUID_ARMOR_ALLIANCE    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Scaled Bracers
(75, @GUID_ARMOR_ALLIANCE    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Scaled Greaves
(75, @GUID_ARMOR_ALLIANCE    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Silk Belt
(75, @GUID_ARMOR_ALLIANCE    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Silk Cuffs
(75, @GUID_ARMOR_ALLIANCE    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Silk Footguards
(75, @GUID_ARMOR_ALLIANCE    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Wyrmhide Belt
(75, @GUID_ARMOR_ALLIANCE    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Wyrmhide Boots
(75, @GUID_ARMOR_ALLIANCE    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Wyrmhide Bracers
(75, @GUID_ACCESSORY_ALLIANCE, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Bold Ornate Ruby
(75, @GUID_ACCESSORY_ALLIANCE, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Gleaming Ornate Dawnstone
(75, @GUID_ACCESSORY_ALLIANCE, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Runed Ornate Ruby
(75, @GUID_ACCESSORY_ALLIANCE, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Smooth Ornate Dawnstone
(75, @GUID_ACCESSORY_ALLIANCE, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Inscribed Ornate Topaz
(75, @GUID_ACCESSORY_ALLIANCE, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Potent Ornate Topaz
(75, @GUID_ACCESSORY_ALLIANCE, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_1), -- Talisman of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Dominance
(75, @GUID_ACCESSORY_ALLIANCE, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Triumph
(75, @GUID_ACCESSORY_ALLIANCE, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Dominance
(75, @GUID_ACCESSORY_ALLIANCE, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Triumph
(75, @GUID_ACCESSORY_ALLIANCE, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cape
(75, @GUID_ACCESSORY_ALLIANCE, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cloak
(75, @GUID_ACCESSORY_ALLIANCE, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_1), -- Star's Lament
(75, @GUID_ACCESSORY_ALLIANCE, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_1), -- Star's Tears
(75, @GUID_ACCESSORY_ALLIANCE, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_WEAPON_HORDE      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Claymore
(75, @GUID_WEAPON_HORDE      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Bonegrinder
(75, @GUID_WEAPON_HORDE      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Decapitator
(75, @GUID_WEAPON_HORDE      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Maul
(75, @GUID_WEAPON_HORDE      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Painsaw
(75, @GUID_WEAPON_HORDE      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's War Staff
(75, @GUID_WEAPON_HORDE      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Cleaver
(75, @GUID_WEAPON_HORDE      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Hacker
(75, @GUID_WEAPON_HORDE      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Left Ripper
(75, @GUID_WEAPON_HORDE      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Bonecracker
(75, @GUID_WEAPON_HORDE      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Pummeler
(75, @GUID_WEAPON_HORDE      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Quickblade
(75, @GUID_WEAPON_HORDE      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Right Ripper
(75, @GUID_WEAPON_HORDE      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Shanker
(75, @GUID_WEAPON_HORDE      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Shiv
(75, @GUID_WEAPON_HORDE      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Spellblade
(75, @GUID_WEAPON_HORDE      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Slicer
(75, @GUID_WEAPON_HORDE      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Battletome
(75, @GUID_WEAPON_HORDE      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Barricade
(75, @GUID_WEAPON_HORDE      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_1), -- High Warlord's Heavy Crossbow
(75, @GUID_ARMOR_HORDE       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Chain Bracers
(75, @GUID_ARMOR_HORDE       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Chain Girdle
(75, @GUID_ARMOR_HORDE       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Chain Sabatons
(75, @GUID_ARMOR_HORDE       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Dragonhide Belt
(75, @GUID_ARMOR_HORDE       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Dragonhide Boots
(75, @GUID_ARMOR_HORDE       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Dragonhide Bracers
(75, @GUID_ARMOR_HORDE       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Dreadweave Belt
(75, @GUID_ARMOR_HORDE       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Dreadweave Cuffs
(75, @GUID_ARMOR_HORDE       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Dreadweave Stalkers
(75, @GUID_ARMOR_HORDE       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Kodohide Belt
(75, @GUID_ARMOR_HORDE       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Kodohide Boots
(75, @GUID_ARMOR_HORDE       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Kodohide Bracers
(75, @GUID_ARMOR_HORDE       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Lamellar Belt
(75, @GUID_ARMOR_HORDE       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Lamellar Bracers
(75, @GUID_ARMOR_HORDE       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Lamellar Greaves
(75, @GUID_ARMOR_HORDE       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Leather Belt
(75, @GUID_ARMOR_HORDE       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Leather Boots
(75, @GUID_ARMOR_HORDE       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Leather Bracers
(75, @GUID_ARMOR_HORDE       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Linked Bracers
(75, @GUID_ARMOR_HORDE       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Linked Girdle
(75, @GUID_ARMOR_HORDE       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Linked Sabatons
(75, @GUID_ARMOR_HORDE       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Mail Bracers
(75, @GUID_ARMOR_HORDE       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Mail Girdle
(75, @GUID_ARMOR_HORDE       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Mail Sabatons
(75, @GUID_ARMOR_HORDE       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Plate Belt
(75, @GUID_ARMOR_HORDE       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Plate Bracers
(75, @GUID_ARMOR_HORDE       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Plate Greaves
(75, @GUID_ARMOR_HORDE       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Scaled Belt
(75, @GUID_ARMOR_HORDE       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Scaled Bracers
(75, @GUID_ARMOR_HORDE       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Scaled Greaves
(75, @GUID_ARMOR_HORDE       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Silk Belt
(75, @GUID_ARMOR_HORDE       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Silk Cuffs
(75, @GUID_ARMOR_HORDE       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Silk Footguards
(75, @GUID_ARMOR_HORDE       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Wyrmhide Belt
(75, @GUID_ARMOR_HORDE       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Wyrmhide Boots
(75, @GUID_ARMOR_HORDE       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Wyrmhide Bracers
(75, @GUID_ARMOR_HORDE       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Chain Armor
(75, @GUID_ARMOR_HORDE       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Chain Gauntlets
(75, @GUID_ARMOR_HORDE       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Chain Helm
(75, @GUID_ARMOR_HORDE       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Chain Leggings
(75, @GUID_ARMOR_HORDE       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Chain Spaulders
(75, @GUID_ARMOR_HORDE       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Dragonhide Gloves
(75, @GUID_ARMOR_HORDE       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Dragonhide Helm
(75, @GUID_ARMOR_HORDE       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Dragonhide Legguards
(75, @GUID_ARMOR_HORDE       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Dragonhide Spaulders
(75, @GUID_ARMOR_HORDE       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Dragonhide Tunic
(75, @GUID_ARMOR_HORDE       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Dreadweave Gloves
(75, @GUID_ARMOR_HORDE       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Dreadweave Hood
(75, @GUID_ARMOR_HORDE       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Dreadweave Leggings
(75, @GUID_ARMOR_HORDE       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Dreadweave Mantle
(75, @GUID_ARMOR_HORDE       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Dreadweave Robe
(75, @GUID_ARMOR_HORDE       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Kodohide Gloves
(75, @GUID_ARMOR_HORDE       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Kodohide Helm
(75, @GUID_ARMOR_HORDE       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Kodohide Legguards
(75, @GUID_ARMOR_HORDE       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Kodohide Spaulders
(75, @GUID_ARMOR_HORDE       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Kodohide Tunic
(75, @GUID_ARMOR_HORDE       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Lamellar Chestpiece
(75, @GUID_ARMOR_HORDE       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Lamellar Gauntlets
(75, @GUID_ARMOR_HORDE       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Lamellar Helm
(75, @GUID_ARMOR_HORDE       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Lamellar Legguards
(75, @GUID_ARMOR_HORDE       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Lamellar Shoulders
(75, @GUID_ARMOR_HORDE       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Leather Gloves
(75, @GUID_ARMOR_HORDE       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Leather Helm
(75, @GUID_ARMOR_HORDE       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Leather Legguards
(75, @GUID_ARMOR_HORDE       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Leather Spaulders
(75, @GUID_ARMOR_HORDE       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Leather Tunic
(75, @GUID_ARMOR_HORDE       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Linked Armor
(75, @GUID_ARMOR_HORDE       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Linked Gauntlets
(75, @GUID_ARMOR_HORDE       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Linked Helm
(75, @GUID_ARMOR_HORDE       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Linked Leggings
(75, @GUID_ARMOR_HORDE       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Linked Spaulders
(75, @GUID_ARMOR_HORDE       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Mail Armor
(75, @GUID_ARMOR_HORDE       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Mail Gauntlets
(75, @GUID_ARMOR_HORDE       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Mail Helm
(75, @GUID_ARMOR_HORDE       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Mail Leggings
(75, @GUID_ARMOR_HORDE       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Mail Spaulders
(75, @GUID_ARMOR_HORDE       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Mooncloth Cowl
(75, @GUID_ARMOR_HORDE       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Mooncloth Legguards
(75, @GUID_ARMOR_HORDE       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Mooncloth Mitts
(75, @GUID_ARMOR_HORDE       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Mooncloth Shoulderpads
(75, @GUID_ARMOR_HORDE       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Mooncloth Vestments
(75, @GUID_ARMOR_HORDE       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Ornamented Chestplate
(75, @GUID_ARMOR_HORDE       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Ornamented Gloves
(75, @GUID_ARMOR_HORDE       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Ornamented Headguard
(75, @GUID_ARMOR_HORDE       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Ornamented Leggings
(75, @GUID_ARMOR_HORDE       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Ornamented Spaulders
(75, @GUID_ARMOR_HORDE       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Plate Chestpiece
(75, @GUID_ARMOR_HORDE       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Plate Gauntlets
(75, @GUID_ARMOR_HORDE       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Plate Helm
(75, @GUID_ARMOR_HORDE       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Plate Legguards
(75, @GUID_ARMOR_HORDE       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Plate Shoulders
(75, @GUID_ARMOR_HORDE       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Ringmail Chestguard
(75, @GUID_ARMOR_HORDE       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Ringmail Gloves
(75, @GUID_ARMOR_HORDE       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Ringmail Headpiece
(75, @GUID_ARMOR_HORDE       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Ringmail Legguards
(75, @GUID_ARMOR_HORDE       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Ringmail Shoulderpads
(75, @GUID_ARMOR_HORDE       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Satin Gloves
(75, @GUID_ARMOR_HORDE       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Satin Hood
(75, @GUID_ARMOR_HORDE       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Satin Leggings
(75, @GUID_ARMOR_HORDE       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Satin Mantle
(75, @GUID_ARMOR_HORDE       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Satin Robe
(75, @GUID_ARMOR_HORDE       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Scaled Chestpiece
(75, @GUID_ARMOR_HORDE       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Scaled Gauntlets
(75, @GUID_ARMOR_HORDE       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Scaled Helm
(75, @GUID_ARMOR_HORDE       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Scaled Legguards
(75, @GUID_ARMOR_HORDE       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Scaled Shoulders
(75, @GUID_ARMOR_HORDE       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Silk Amice
(75, @GUID_ARMOR_HORDE       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Silk Cowl
(75, @GUID_ARMOR_HORDE       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Silk Handguards
(75, @GUID_ARMOR_HORDE       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Silk Raiment
(75, @GUID_ARMOR_HORDE       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Silk Trousers
(75, @GUID_ARMOR_HORDE       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Wyrmhide Gloves
(75, @GUID_ARMOR_HORDE       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Wyrmhide Helm
(75, @GUID_ARMOR_HORDE       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Wyrmhide Legguards
(75, @GUID_ARMOR_HORDE       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Wyrmhide Spaulders
(75, @GUID_ARMOR_HORDE       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Wyrmhide Tunic
(75, @GUID_ACCESSORY_HORDE   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Runed Ornate Ruby
(75, @GUID_ACCESSORY_HORDE   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Smooth Ornate Dawnstone
(75, @GUID_ACCESSORY_HORDE   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Gleaming Ornate Dawnstone
(75, @GUID_ACCESSORY_HORDE   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Bold Ornate Ruby
(75, @GUID_ACCESSORY_HORDE   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Potent Ornate Topaz
(75, @GUID_ACCESSORY_HORDE   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Inscribed Ornate Topaz
(75, @GUID_ACCESSORY_HORDE   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_1), -- Talisman of the Horde
(75, @GUID_ACCESSORY_HORDE   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Triumph
(75, @GUID_ACCESSORY_HORDE   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Dominance
(75, @GUID_ACCESSORY_HORDE   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Triumph
(75, @GUID_ACCESSORY_HORDE   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Dominance
(75, @GUID_ACCESSORY_HORDE   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cloak
(75, @GUID_ACCESSORY_HORDE   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cape
(75, @GUID_ACCESSORY_HORDE   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_1), -- Star's Lament
(75, @GUID_ACCESSORY_HORDE   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_1), -- Star's Tears
(75, @GUID_ACCESSORY_HORDE   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
-- Season 2
(76, @GUID_WEAPON_ALLIANCE   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Bonegrinder
(76, @GUID_WEAPON_ALLIANCE   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Warblade
(76, @GUID_WEAPON_ALLIANCE   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Decapitator
(76, @GUID_WEAPON_ALLIANCE   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Maul
(76, @GUID_WEAPON_ALLIANCE   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Painsaw
(76, @GUID_WEAPON_ALLIANCE   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's War Staff
(76, @GUID_WEAPON_ALLIANCE   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Barricade
(76, @GUID_WEAPON_ALLIANCE   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Battletome
(76, @GUID_WEAPON_ALLIANCE   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Cleaver
(76, @GUID_WEAPON_ALLIANCE   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Hacker
(76, @GUID_WEAPON_ALLIANCE   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Left Ripper
(76, @GUID_WEAPON_ALLIANCE   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Bonecracker
(76, @GUID_WEAPON_ALLIANCE   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Pummeler
(76, @GUID_WEAPON_ALLIANCE   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Quickblade
(76, @GUID_WEAPON_ALLIANCE   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Right Ripper
(76, @GUID_WEAPON_ALLIANCE   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Shanker
(76, @GUID_WEAPON_ALLIANCE   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Shiv
(76, @GUID_WEAPON_ALLIANCE   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Slicer
(76, @GUID_WEAPON_ALLIANCE   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Spellblade
(76, @GUID_WEAPON_ALLIANCE   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_2), -- Grand Marshal's Heavy Crossbow
(76, @GUID_ARMOR_ALLIANCE    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Chain Armor
(76, @GUID_ARMOR_ALLIANCE    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Chain Gauntlets
(76, @GUID_ARMOR_ALLIANCE    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Chain Helm
(76, @GUID_ARMOR_ALLIANCE    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Chain Leggings
(76, @GUID_ARMOR_ALLIANCE    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Chain Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Dragonhide Gloves
(76, @GUID_ARMOR_ALLIANCE    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Dragonhide Helm
(76, @GUID_ARMOR_ALLIANCE    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Dragonhide Legguards
(76, @GUID_ARMOR_ALLIANCE    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Dragonhide Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Dragonhide Tunic
(76, @GUID_ARMOR_ALLIANCE    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Dreadweave Gloves
(76, @GUID_ARMOR_ALLIANCE    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Dreadweave Hood
(76, @GUID_ARMOR_ALLIANCE    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Dreadweave Leggings
(76, @GUID_ARMOR_ALLIANCE    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Dreadweave Mantle
(76, @GUID_ARMOR_ALLIANCE    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Dreadweave Robe
(76, @GUID_ARMOR_ALLIANCE    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Kodohide Gloves
(76, @GUID_ARMOR_ALLIANCE    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Kodohide Helm
(76, @GUID_ARMOR_ALLIANCE    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Kodohide Legguards
(76, @GUID_ARMOR_ALLIANCE    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Kodohide Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Kodohide Tunic
(76, @GUID_ARMOR_ALLIANCE    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Lamellar Chestpiece
(76, @GUID_ARMOR_ALLIANCE    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Lamellar Gauntlets
(76, @GUID_ARMOR_ALLIANCE    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Lamellar Helm
(76, @GUID_ARMOR_ALLIANCE    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Lamellar Legguards
(76, @GUID_ARMOR_ALLIANCE    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Lamellar Shoulders
(76, @GUID_ARMOR_ALLIANCE    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Leather Gloves
(76, @GUID_ARMOR_ALLIANCE    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Leather Helm
(76, @GUID_ARMOR_ALLIANCE    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Leather Legguards
(76, @GUID_ARMOR_ALLIANCE    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Leather Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Leather Tunic
(76, @GUID_ARMOR_ALLIANCE    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Linked Armor
(76, @GUID_ARMOR_ALLIANCE    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Linked Gauntlets
(76, @GUID_ARMOR_ALLIANCE    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Linked Helm
(76, @GUID_ARMOR_ALLIANCE    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Linked Leggings
(76, @GUID_ARMOR_ALLIANCE    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Linked Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Mail Armor
(76, @GUID_ARMOR_ALLIANCE    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Mail Gauntlets
(76, @GUID_ARMOR_ALLIANCE    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Mail Helm
(76, @GUID_ARMOR_ALLIANCE    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Mail Leggings
(76, @GUID_ARMOR_ALLIANCE    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Mail Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Mooncloth Cowl
(76, @GUID_ARMOR_ALLIANCE    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Mooncloth Legguards
(76, @GUID_ARMOR_ALLIANCE    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Mooncloth Mitts
(76, @GUID_ARMOR_ALLIANCE    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Mooncloth Shoulderpads
(76, @GUID_ARMOR_ALLIANCE    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Mooncloth Vestments
(76, @GUID_ARMOR_ALLIANCE    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Ornamented Chestplate
(76, @GUID_ARMOR_ALLIANCE    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Ornamented Gloves
(76, @GUID_ARMOR_ALLIANCE    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Ornamented Headguard
(76, @GUID_ARMOR_ALLIANCE    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Ornamented Leggings
(76, @GUID_ARMOR_ALLIANCE    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Ornamented Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Plate Chestpiece
(76, @GUID_ARMOR_ALLIANCE    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Plate Gauntlets
(76, @GUID_ARMOR_ALLIANCE    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Plate Helm
(76, @GUID_ARMOR_ALLIANCE    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Plate Legguards
(76, @GUID_ARMOR_ALLIANCE    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Plate Shoulders
(76, @GUID_ARMOR_ALLIANCE    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Ringmail Chestguard
(76, @GUID_ARMOR_ALLIANCE    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Ringmail Gloves
(76, @GUID_ARMOR_ALLIANCE    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Ringmail Headpiece
(76, @GUID_ARMOR_ALLIANCE    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Ringmail Legguards
(76, @GUID_ARMOR_ALLIANCE    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Ringmail Shoulders
(76, @GUID_ARMOR_ALLIANCE    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Satin Gloves
(76, @GUID_ARMOR_ALLIANCE    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Satin Hood
(76, @GUID_ARMOR_ALLIANCE    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Satin Leggings
(76, @GUID_ARMOR_ALLIANCE    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Satin Mantle
(76, @GUID_ARMOR_ALLIANCE    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Satin Robe
(76, @GUID_ARMOR_ALLIANCE    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Scaled Chestpiece
(76, @GUID_ARMOR_ALLIANCE    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Scaled Gauntlets
(76, @GUID_ARMOR_ALLIANCE    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Scaled Helm
(76, @GUID_ARMOR_ALLIANCE    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Scaled Legguards
(76, @GUID_ARMOR_ALLIANCE    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Scaled Shoulders
(76, @GUID_ARMOR_ALLIANCE    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Silk Amice
(76, @GUID_ARMOR_ALLIANCE    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Silk Cowl
(76, @GUID_ARMOR_ALLIANCE    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Silk Handguards
(76, @GUID_ARMOR_ALLIANCE    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Silk Raiment
(76, @GUID_ARMOR_ALLIANCE    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Silk Trousers
(76, @GUID_ARMOR_ALLIANCE    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Wyrmhide Gloves
(76, @GUID_ARMOR_ALLIANCE    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Wyrmhide Helm
(76, @GUID_ARMOR_ALLIANCE    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Wyrmhide Legguards
(76, @GUID_ARMOR_ALLIANCE    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Wyrmhide Spaulders
(76, @GUID_ARMOR_ALLIANCE    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Wyrmhide Tunic
(76, @GUID_ARMOR_ALLIANCE    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Chain Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Chain Girdle
(76, @GUID_ARMOR_ALLIANCE    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Chain Sabatons
(76, @GUID_ARMOR_ALLIANCE    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Dragonhide Belt
(76, @GUID_ARMOR_ALLIANCE    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Dragonhide Boots
(76, @GUID_ARMOR_ALLIANCE    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Dragonhide Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Dreadweave Belt
(76, @GUID_ARMOR_ALLIANCE    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Dreadweave Cuffs
(76, @GUID_ARMOR_ALLIANCE    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Dreadweave Stalkers
(76, @GUID_ARMOR_ALLIANCE    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Kodohide Belt
(76, @GUID_ARMOR_ALLIANCE    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Kodohide Boots
(76, @GUID_ARMOR_ALLIANCE    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Kodohide Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Lamellar Belt
(76, @GUID_ARMOR_ALLIANCE    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Lamellar Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Lamellar Greaves
(76, @GUID_ARMOR_ALLIANCE    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Leather Belt
(76, @GUID_ARMOR_ALLIANCE    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Leather Boots
(76, @GUID_ARMOR_ALLIANCE    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Leather Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Linked Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Linked Girdle
(76, @GUID_ARMOR_ALLIANCE    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Linked Sabatons
(76, @GUID_ARMOR_ALLIANCE    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Mail Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Mail Girdle
(76, @GUID_ARMOR_ALLIANCE    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Mail Sabatons
(76, @GUID_ARMOR_ALLIANCE    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Plate Belt
(76, @GUID_ARMOR_ALLIANCE    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Plate Bracers
(76, @GUID_ARMOR_ALLIANCE    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Plate Greaves
(76, @GUID_ARMOR_ALLIANCE    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Scaled Belt
(76, @GUID_ARMOR_ALLIANCE    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Scaled Bracers
(76, @GUID_ARMOR_ALLIANCE    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Scaled Greaves
(76, @GUID_ARMOR_ALLIANCE    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Silk Belt
(76, @GUID_ARMOR_ALLIANCE    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Silk Cuffs
(76, @GUID_ARMOR_ALLIANCE    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Silk Footguards
(76, @GUID_ARMOR_ALLIANCE    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Wyrmhide Belt
(76, @GUID_ARMOR_ALLIANCE    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Wyrmhide Boots
(76, @GUID_ARMOR_ALLIANCE    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Wyrmhide Bracers
(76, @GUID_ACCESSORY_ALLIANCE, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Bold Ornate Ruby
(76, @GUID_ACCESSORY_ALLIANCE, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Gleaming Ornate Dawnstone
(76, @GUID_ACCESSORY_ALLIANCE, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Runed Ornate Ruby
(76, @GUID_ACCESSORY_ALLIANCE, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Smooth Ornate Dawnstone
(76, @GUID_ACCESSORY_ALLIANCE, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Inscribed Ornate Topaz
(76, @GUID_ACCESSORY_ALLIANCE, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Potent Ornate Topaz
(76, @GUID_ACCESSORY_ALLIANCE, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_2), -- Talisman of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Dominance
(76, @GUID_ACCESSORY_ALLIANCE, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Triumph
(76, @GUID_ACCESSORY_ALLIANCE, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Dominance
(76, @GUID_ACCESSORY_ALLIANCE, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Triumph
(76, @GUID_ACCESSORY_ALLIANCE, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cape
(76, @GUID_ACCESSORY_ALLIANCE, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cloak
(76, @GUID_ACCESSORY_ALLIANCE, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_2), -- Star's Lament
(76, @GUID_ACCESSORY_ALLIANCE, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_2), -- Star's Tears
(76, @GUID_ACCESSORY_ALLIANCE, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_WEAPON_HORDE      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Claymore
(76, @GUID_WEAPON_HORDE      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Bonegrinder
(76, @GUID_WEAPON_HORDE      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Decapitator
(76, @GUID_WEAPON_HORDE      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Maul
(76, @GUID_WEAPON_HORDE      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Painsaw
(76, @GUID_WEAPON_HORDE      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's War Staff
(76, @GUID_WEAPON_HORDE      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Cleaver
(76, @GUID_WEAPON_HORDE      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Hacker
(76, @GUID_WEAPON_HORDE      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Left Ripper
(76, @GUID_WEAPON_HORDE      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Bonecracker
(76, @GUID_WEAPON_HORDE      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Pummeler
(76, @GUID_WEAPON_HORDE      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Quickblade
(76, @GUID_WEAPON_HORDE      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Right Ripper
(76, @GUID_WEAPON_HORDE      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Shanker
(76, @GUID_WEAPON_HORDE      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Shiv
(76, @GUID_WEAPON_HORDE      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Spellblade
(76, @GUID_WEAPON_HORDE      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Slicer
(76, @GUID_WEAPON_HORDE      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Battletome
(76, @GUID_WEAPON_HORDE      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Barricade
(76, @GUID_WEAPON_HORDE      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_2), -- High Warlord's Heavy Crossbow
(76, @GUID_ARMOR_HORDE       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Chain Bracers
(76, @GUID_ARMOR_HORDE       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Chain Girdle
(76, @GUID_ARMOR_HORDE       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Chain Sabatons
(76, @GUID_ARMOR_HORDE       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Dragonhide Belt
(76, @GUID_ARMOR_HORDE       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Dragonhide Boots
(76, @GUID_ARMOR_HORDE       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Dragonhide Bracers
(76, @GUID_ARMOR_HORDE       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Dreadweave Belt
(76, @GUID_ARMOR_HORDE       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Dreadweave Cuffs
(76, @GUID_ARMOR_HORDE       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Dreadweave Stalkers
(76, @GUID_ARMOR_HORDE       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Kodohide Belt
(76, @GUID_ARMOR_HORDE       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Kodohide Boots
(76, @GUID_ARMOR_HORDE       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Kodohide Bracers
(76, @GUID_ARMOR_HORDE       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Lamellar Belt
(76, @GUID_ARMOR_HORDE       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Lamellar Bracers
(76, @GUID_ARMOR_HORDE       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Lamellar Greaves
(76, @GUID_ARMOR_HORDE       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Leather Belt
(76, @GUID_ARMOR_HORDE       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Leather Boots
(76, @GUID_ARMOR_HORDE       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Leather Bracers
(76, @GUID_ARMOR_HORDE       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Linked Bracers
(76, @GUID_ARMOR_HORDE       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Linked Girdle
(76, @GUID_ARMOR_HORDE       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Linked Sabatons
(76, @GUID_ARMOR_HORDE       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Mail Bracers
(76, @GUID_ARMOR_HORDE       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Mail Girdle
(76, @GUID_ARMOR_HORDE       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Mail Sabatons
(76, @GUID_ARMOR_HORDE       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Plate Belt
(76, @GUID_ARMOR_HORDE       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Plate Bracers
(76, @GUID_ARMOR_HORDE       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Plate Greaves
(76, @GUID_ARMOR_HORDE       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Scaled Belt
(76, @GUID_ARMOR_HORDE       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Scaled Bracers
(76, @GUID_ARMOR_HORDE       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Scaled Greaves
(76, @GUID_ARMOR_HORDE       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Silk Belt
(76, @GUID_ARMOR_HORDE       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Silk Cuffs
(76, @GUID_ARMOR_HORDE       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Silk Footguards
(76, @GUID_ARMOR_HORDE       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Wyrmhide Belt
(76, @GUID_ARMOR_HORDE       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Wyrmhide Boots
(76, @GUID_ARMOR_HORDE       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Wyrmhide Bracers
(76, @GUID_ARMOR_HORDE       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Chain Armor
(76, @GUID_ARMOR_HORDE       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Chain Gauntlets
(76, @GUID_ARMOR_HORDE       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Chain Helm
(76, @GUID_ARMOR_HORDE       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Chain Leggings
(76, @GUID_ARMOR_HORDE       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Chain Spaulders
(76, @GUID_ARMOR_HORDE       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Dragonhide Gloves
(76, @GUID_ARMOR_HORDE       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Dragonhide Helm
(76, @GUID_ARMOR_HORDE       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Dragonhide Legguards
(76, @GUID_ARMOR_HORDE       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Dragonhide Spaulders
(76, @GUID_ARMOR_HORDE       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Dragonhide Tunic
(76, @GUID_ARMOR_HORDE       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Dreadweave Gloves
(76, @GUID_ARMOR_HORDE       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Dreadweave Hood
(76, @GUID_ARMOR_HORDE       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Dreadweave Leggings
(76, @GUID_ARMOR_HORDE       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Dreadweave Mantle
(76, @GUID_ARMOR_HORDE       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Dreadweave Robe
(76, @GUID_ARMOR_HORDE       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Kodohide Gloves
(76, @GUID_ARMOR_HORDE       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Kodohide Helm
(76, @GUID_ARMOR_HORDE       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Kodohide Legguards
(76, @GUID_ARMOR_HORDE       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Kodohide Spaulders
(76, @GUID_ARMOR_HORDE       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Kodohide Tunic
(76, @GUID_ARMOR_HORDE       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Lamellar Chestpiece
(76, @GUID_ARMOR_HORDE       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Lamellar Gauntlets
(76, @GUID_ARMOR_HORDE       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Lamellar Helm
(76, @GUID_ARMOR_HORDE       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Lamellar Legguards
(76, @GUID_ARMOR_HORDE       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Lamellar Shoulders
(76, @GUID_ARMOR_HORDE       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Leather Gloves
(76, @GUID_ARMOR_HORDE       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Leather Helm
(76, @GUID_ARMOR_HORDE       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Leather Legguards
(76, @GUID_ARMOR_HORDE       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Leather Spaulders
(76, @GUID_ARMOR_HORDE       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Leather Tunic
(76, @GUID_ARMOR_HORDE       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Linked Armor
(76, @GUID_ARMOR_HORDE       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Linked Gauntlets
(76, @GUID_ARMOR_HORDE       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Linked Helm
(76, @GUID_ARMOR_HORDE       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Linked Leggings
(76, @GUID_ARMOR_HORDE       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Linked Spaulders
(76, @GUID_ARMOR_HORDE       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Mail Armor
(76, @GUID_ARMOR_HORDE       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Mail Gauntlets
(76, @GUID_ARMOR_HORDE       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Mail Helm
(76, @GUID_ARMOR_HORDE       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Mail Leggings
(76, @GUID_ARMOR_HORDE       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Mail Spaulders
(76, @GUID_ARMOR_HORDE       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Mooncloth Cowl
(76, @GUID_ARMOR_HORDE       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Mooncloth Legguards
(76, @GUID_ARMOR_HORDE       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Mooncloth Mitts
(76, @GUID_ARMOR_HORDE       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Mooncloth Shoulderpads
(76, @GUID_ARMOR_HORDE       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Mooncloth Vestments
(76, @GUID_ARMOR_HORDE       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Ornamented Chestplate
(76, @GUID_ARMOR_HORDE       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Ornamented Gloves
(76, @GUID_ARMOR_HORDE       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Ornamented Headguard
(76, @GUID_ARMOR_HORDE       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Ornamented Leggings
(76, @GUID_ARMOR_HORDE       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Ornamented Spaulders
(76, @GUID_ARMOR_HORDE       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Plate Chestpiece
(76, @GUID_ARMOR_HORDE       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Plate Gauntlets
(76, @GUID_ARMOR_HORDE       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Plate Helm
(76, @GUID_ARMOR_HORDE       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Plate Legguards
(76, @GUID_ARMOR_HORDE       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Plate Shoulders
(76, @GUID_ARMOR_HORDE       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Ringmail Chestguard
(76, @GUID_ARMOR_HORDE       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Ringmail Gloves
(76, @GUID_ARMOR_HORDE       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Ringmail Headpiece
(76, @GUID_ARMOR_HORDE       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Ringmail Legguards
(76, @GUID_ARMOR_HORDE       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Ringmail Shoulderpads
(76, @GUID_ARMOR_HORDE       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Satin Gloves
(76, @GUID_ARMOR_HORDE       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Satin Hood
(76, @GUID_ARMOR_HORDE       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Satin Leggings
(76, @GUID_ARMOR_HORDE       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Satin Mantle
(76, @GUID_ARMOR_HORDE       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Satin Robe
(76, @GUID_ARMOR_HORDE       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Scaled Chestpiece
(76, @GUID_ARMOR_HORDE       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Scaled Gauntlets
(76, @GUID_ARMOR_HORDE       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Scaled Helm
(76, @GUID_ARMOR_HORDE       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Scaled Legguards
(76, @GUID_ARMOR_HORDE       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Scaled Shoulders
(76, @GUID_ARMOR_HORDE       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Silk Amice
(76, @GUID_ARMOR_HORDE       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Silk Cowl
(76, @GUID_ARMOR_HORDE       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Silk Handguards
(76, @GUID_ARMOR_HORDE       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Silk Raiment
(76, @GUID_ARMOR_HORDE       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Silk Trousers
(76, @GUID_ARMOR_HORDE       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Wyrmhide Gloves
(76, @GUID_ARMOR_HORDE       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Wyrmhide Helm
(76, @GUID_ARMOR_HORDE       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Wyrmhide Legguards
(76, @GUID_ARMOR_HORDE       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Wyrmhide Spaulders
(76, @GUID_ARMOR_HORDE       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Wyrmhide Tunic
(76, @GUID_ACCESSORY_HORDE   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Runed Ornate Ruby
(76, @GUID_ACCESSORY_HORDE   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Smooth Ornate Dawnstone
(76, @GUID_ACCESSORY_HORDE   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Gleaming Ornate Dawnstone
(76, @GUID_ACCESSORY_HORDE   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Bold Ornate Ruby
(76, @GUID_ACCESSORY_HORDE   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Potent Ornate Topaz
(76, @GUID_ACCESSORY_HORDE   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Inscribed Ornate Topaz
(76, @GUID_ACCESSORY_HORDE   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_2), -- Talisman of the Horde
(76, @GUID_ACCESSORY_HORDE   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Triumph
(76, @GUID_ACCESSORY_HORDE   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Dominance
(76, @GUID_ACCESSORY_HORDE   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Triumph
(76, @GUID_ACCESSORY_HORDE   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Dominance
(76, @GUID_ACCESSORY_HORDE   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cloak
(76, @GUID_ACCESSORY_HORDE   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cape
(76, @GUID_ACCESSORY_HORDE   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_2), -- Star's Lament
(76, @GUID_ACCESSORY_HORDE   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_2), -- Star's Tears
(76, @GUID_ACCESSORY_HORDE   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
-- Season 3
(55, @GUID_WEAPON_ALLIANCE   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Bonegrinder
(55, @GUID_WEAPON_ALLIANCE   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Warblade
(55, @GUID_WEAPON_ALLIANCE   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Decapitator
(55, @GUID_WEAPON_ALLIANCE   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Maul
(55, @GUID_WEAPON_ALLIANCE   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Painsaw
(55, @GUID_WEAPON_ALLIANCE   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's War Staff
(55, @GUID_WEAPON_ALLIANCE   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Barricade
(55, @GUID_WEAPON_ALLIANCE   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Battletome
(55, @GUID_WEAPON_ALLIANCE   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Cleaver
(55, @GUID_WEAPON_ALLIANCE   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Hacker
(55, @GUID_WEAPON_ALLIANCE   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Left Ripper
(55, @GUID_WEAPON_ALLIANCE   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Bonecracker
(55, @GUID_WEAPON_ALLIANCE   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Pummeler
(55, @GUID_WEAPON_ALLIANCE   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Quickblade
(55, @GUID_WEAPON_ALLIANCE   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Right Ripper
(55, @GUID_WEAPON_ALLIANCE   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Shanker
(55, @GUID_WEAPON_ALLIANCE   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Shiv
(55, @GUID_WEAPON_ALLIANCE   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Slicer
(55, @GUID_WEAPON_ALLIANCE   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Spellblade
(55, @GUID_WEAPON_ALLIANCE   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_3), -- Grand Marshal's Heavy Crossbow
(55, @GUID_ARMOR_ALLIANCE    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Chain Armor
(55, @GUID_ARMOR_ALLIANCE    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Chain Gauntlets
(55, @GUID_ARMOR_ALLIANCE    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Chain Helm
(55, @GUID_ARMOR_ALLIANCE    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Chain Leggings
(55, @GUID_ARMOR_ALLIANCE    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Chain Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Dragonhide Gloves
(55, @GUID_ARMOR_ALLIANCE    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Dragonhide Helm
(55, @GUID_ARMOR_ALLIANCE    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Dragonhide Legguards
(55, @GUID_ARMOR_ALLIANCE    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Dragonhide Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Dragonhide Tunic
(55, @GUID_ARMOR_ALLIANCE    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Dreadweave Gloves
(55, @GUID_ARMOR_ALLIANCE    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Dreadweave Hood
(55, @GUID_ARMOR_ALLIANCE    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Dreadweave Leggings
(55, @GUID_ARMOR_ALLIANCE    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Dreadweave Mantle
(55, @GUID_ARMOR_ALLIANCE    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Dreadweave Robe
(55, @GUID_ARMOR_ALLIANCE    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Kodohide Gloves
(55, @GUID_ARMOR_ALLIANCE    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Kodohide Helm
(55, @GUID_ARMOR_ALLIANCE    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Kodohide Legguards
(55, @GUID_ARMOR_ALLIANCE    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Kodohide Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Kodohide Tunic
(55, @GUID_ARMOR_ALLIANCE    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Lamellar Chestpiece
(55, @GUID_ARMOR_ALLIANCE    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Lamellar Gauntlets
(55, @GUID_ARMOR_ALLIANCE    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Lamellar Helm
(55, @GUID_ARMOR_ALLIANCE    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Lamellar Legguards
(55, @GUID_ARMOR_ALLIANCE    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Lamellar Shoulders
(55, @GUID_ARMOR_ALLIANCE    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Leather Gloves
(55, @GUID_ARMOR_ALLIANCE    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Leather Helm
(55, @GUID_ARMOR_ALLIANCE    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Leather Legguards
(55, @GUID_ARMOR_ALLIANCE    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Leather Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Leather Tunic
(55, @GUID_ARMOR_ALLIANCE    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Linked Armor
(55, @GUID_ARMOR_ALLIANCE    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Linked Gauntlets
(55, @GUID_ARMOR_ALLIANCE    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Linked Helm
(55, @GUID_ARMOR_ALLIANCE    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Linked Leggings
(55, @GUID_ARMOR_ALLIANCE    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Linked Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Mail Armor
(55, @GUID_ARMOR_ALLIANCE    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Mail Gauntlets
(55, @GUID_ARMOR_ALLIANCE    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Mail Helm
(55, @GUID_ARMOR_ALLIANCE    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Mail Leggings
(55, @GUID_ARMOR_ALLIANCE    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Mail Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Mooncloth Cowl
(55, @GUID_ARMOR_ALLIANCE    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Mooncloth Legguards
(55, @GUID_ARMOR_ALLIANCE    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Mooncloth Mitts
(55, @GUID_ARMOR_ALLIANCE    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Mooncloth Shoulderpads
(55, @GUID_ARMOR_ALLIANCE    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Mooncloth Vestments
(55, @GUID_ARMOR_ALLIANCE    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Ornamented Chestplate
(55, @GUID_ARMOR_ALLIANCE    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Ornamented Gloves
(55, @GUID_ARMOR_ALLIANCE    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Ornamented Headguard
(55, @GUID_ARMOR_ALLIANCE    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Ornamented Leggings
(55, @GUID_ARMOR_ALLIANCE    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Ornamented Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Plate Chestpiece
(55, @GUID_ARMOR_ALLIANCE    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Plate Gauntlets
(55, @GUID_ARMOR_ALLIANCE    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Plate Helm
(55, @GUID_ARMOR_ALLIANCE    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Plate Legguards
(55, @GUID_ARMOR_ALLIANCE    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Plate Shoulders
(55, @GUID_ARMOR_ALLIANCE    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Ringmail Chestguard
(55, @GUID_ARMOR_ALLIANCE    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Ringmail Gloves
(55, @GUID_ARMOR_ALLIANCE    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Ringmail Headpiece
(55, @GUID_ARMOR_ALLIANCE    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Ringmail Legguards
(55, @GUID_ARMOR_ALLIANCE    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Ringmail Shoulders
(55, @GUID_ARMOR_ALLIANCE    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Satin Gloves
(55, @GUID_ARMOR_ALLIANCE    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Satin Hood
(55, @GUID_ARMOR_ALLIANCE    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Satin Leggings
(55, @GUID_ARMOR_ALLIANCE    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Satin Mantle
(55, @GUID_ARMOR_ALLIANCE    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Satin Robe
(55, @GUID_ARMOR_ALLIANCE    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Scaled Chestpiece
(55, @GUID_ARMOR_ALLIANCE    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Scaled Gauntlets
(55, @GUID_ARMOR_ALLIANCE    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Scaled Helm
(55, @GUID_ARMOR_ALLIANCE    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Scaled Legguards
(55, @GUID_ARMOR_ALLIANCE    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Scaled Shoulders
(55, @GUID_ARMOR_ALLIANCE    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Silk Amice
(55, @GUID_ARMOR_ALLIANCE    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Silk Cowl
(55, @GUID_ARMOR_ALLIANCE    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Silk Handguards
(55, @GUID_ARMOR_ALLIANCE    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Silk Raiment
(55, @GUID_ARMOR_ALLIANCE    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Silk Trousers
(55, @GUID_ARMOR_ALLIANCE    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Wyrmhide Gloves
(55, @GUID_ARMOR_ALLIANCE    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Wyrmhide Helm
(55, @GUID_ARMOR_ALLIANCE    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Wyrmhide Legguards
(55, @GUID_ARMOR_ALLIANCE    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Wyrmhide Spaulders
(55, @GUID_ARMOR_ALLIANCE    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Wyrmhide Tunic
(55, @GUID_ARMOR_ALLIANCE    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Chain Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Chain Girdle
(55, @GUID_ARMOR_ALLIANCE    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Chain Sabatons
(55, @GUID_ARMOR_ALLIANCE    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Dragonhide Belt
(55, @GUID_ARMOR_ALLIANCE    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Dragonhide Boots
(55, @GUID_ARMOR_ALLIANCE    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Dragonhide Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Dreadweave Belt
(55, @GUID_ARMOR_ALLIANCE    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Dreadweave Cuffs
(55, @GUID_ARMOR_ALLIANCE    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Dreadweave Stalkers
(55, @GUID_ARMOR_ALLIANCE    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Kodohide Belt
(55, @GUID_ARMOR_ALLIANCE    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Kodohide Boots
(55, @GUID_ARMOR_ALLIANCE    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Kodohide Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Lamellar Belt
(55, @GUID_ARMOR_ALLIANCE    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Lamellar Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Lamellar Greaves
(55, @GUID_ARMOR_ALLIANCE    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Leather Belt
(55, @GUID_ARMOR_ALLIANCE    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Leather Boots
(55, @GUID_ARMOR_ALLIANCE    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Leather Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Linked Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Linked Girdle
(55, @GUID_ARMOR_ALLIANCE    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Linked Sabatons
(55, @GUID_ARMOR_ALLIANCE    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Mail Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Mail Girdle
(55, @GUID_ARMOR_ALLIANCE    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Mail Sabatons
(55, @GUID_ARMOR_ALLIANCE    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Plate Belt
(55, @GUID_ARMOR_ALLIANCE    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Plate Bracers
(55, @GUID_ARMOR_ALLIANCE    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Plate Greaves
(55, @GUID_ARMOR_ALLIANCE    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Scaled Belt
(55, @GUID_ARMOR_ALLIANCE    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Scaled Bracers
(55, @GUID_ARMOR_ALLIANCE    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Scaled Greaves
(55, @GUID_ARMOR_ALLIANCE    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Silk Belt
(55, @GUID_ARMOR_ALLIANCE    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Silk Cuffs
(55, @GUID_ARMOR_ALLIANCE    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Silk Footguards
(55, @GUID_ARMOR_ALLIANCE    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Wyrmhide Belt
(55, @GUID_ARMOR_ALLIANCE    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Wyrmhide Boots
(55, @GUID_ARMOR_ALLIANCE    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Wyrmhide Bracers
(55, @GUID_ACCESSORY_ALLIANCE, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Bold Ornate Ruby
(55, @GUID_ACCESSORY_ALLIANCE, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Gleaming Ornate Dawnstone
(55, @GUID_ACCESSORY_ALLIANCE, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Runed Ornate Ruby
(55, @GUID_ACCESSORY_ALLIANCE, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Smooth Ornate Dawnstone
(55, @GUID_ACCESSORY_ALLIANCE, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Inscribed Ornate Topaz
(55, @GUID_ACCESSORY_ALLIANCE, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Potent Ornate Topaz
(55, @GUID_ACCESSORY_ALLIANCE, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_3), -- Talisman of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Dominance
(55, @GUID_ACCESSORY_ALLIANCE, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Triumph
(55, @GUID_ACCESSORY_ALLIANCE, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Dominance
(55, @GUID_ACCESSORY_ALLIANCE, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Triumph
(55, @GUID_ACCESSORY_ALLIANCE, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cape
(55, @GUID_ACCESSORY_ALLIANCE, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cloak
(55, @GUID_ACCESSORY_ALLIANCE, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_3), -- Star's Lament
(55, @GUID_ACCESSORY_ALLIANCE, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_3), -- Star's Tears
(55, @GUID_ACCESSORY_ALLIANCE, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_WEAPON_HORDE      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Claymore
(55, @GUID_WEAPON_HORDE      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Bonegrinder
(55, @GUID_WEAPON_HORDE      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Decapitator
(55, @GUID_WEAPON_HORDE      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Maul
(55, @GUID_WEAPON_HORDE      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Painsaw
(55, @GUID_WEAPON_HORDE      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's War Staff
(55, @GUID_WEAPON_HORDE      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Cleaver
(55, @GUID_WEAPON_HORDE      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Hacker
(55, @GUID_WEAPON_HORDE      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Left Ripper
(55, @GUID_WEAPON_HORDE      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Bonecracker
(55, @GUID_WEAPON_HORDE      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Pummeler
(55, @GUID_WEAPON_HORDE      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Quickblade
(55, @GUID_WEAPON_HORDE      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Right Ripper
(55, @GUID_WEAPON_HORDE      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Shanker
(55, @GUID_WEAPON_HORDE      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Shiv
(55, @GUID_WEAPON_HORDE      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Spellblade
(55, @GUID_WEAPON_HORDE      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Slicer
(55, @GUID_WEAPON_HORDE      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Battletome
(55, @GUID_WEAPON_HORDE      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Barricade
(55, @GUID_WEAPON_HORDE      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_3), -- High Warlord's Heavy Crossbow
(55, @GUID_ARMOR_HORDE       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Chain Bracers
(55, @GUID_ARMOR_HORDE       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Chain Girdle
(55, @GUID_ARMOR_HORDE       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Chain Sabatons
(55, @GUID_ARMOR_HORDE       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Dragonhide Belt
(55, @GUID_ARMOR_HORDE       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Dragonhide Boots
(55, @GUID_ARMOR_HORDE       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Dragonhide Bracers
(55, @GUID_ARMOR_HORDE       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Dreadweave Belt
(55, @GUID_ARMOR_HORDE       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Dreadweave Cuffs
(55, @GUID_ARMOR_HORDE       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Dreadweave Stalkers
(55, @GUID_ARMOR_HORDE       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Kodohide Belt
(55, @GUID_ARMOR_HORDE       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Kodohide Boots
(55, @GUID_ARMOR_HORDE       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Kodohide Bracers
(55, @GUID_ARMOR_HORDE       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Lamellar Belt
(55, @GUID_ARMOR_HORDE       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Lamellar Bracers
(55, @GUID_ARMOR_HORDE       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Lamellar Greaves
(55, @GUID_ARMOR_HORDE       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Leather Belt
(55, @GUID_ARMOR_HORDE       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Leather Boots
(55, @GUID_ARMOR_HORDE       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Leather Bracers
(55, @GUID_ARMOR_HORDE       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Linked Bracers
(55, @GUID_ARMOR_HORDE       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Linked Girdle
(55, @GUID_ARMOR_HORDE       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Linked Sabatons
(55, @GUID_ARMOR_HORDE       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Mail Bracers
(55, @GUID_ARMOR_HORDE       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Mail Girdle
(55, @GUID_ARMOR_HORDE       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Mail Sabatons
(55, @GUID_ARMOR_HORDE       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Plate Belt
(55, @GUID_ARMOR_HORDE       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Plate Bracers
(55, @GUID_ARMOR_HORDE       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Plate Greaves
(55, @GUID_ARMOR_HORDE       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Scaled Belt
(55, @GUID_ARMOR_HORDE       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Scaled Bracers
(55, @GUID_ARMOR_HORDE       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Scaled Greaves
(55, @GUID_ARMOR_HORDE       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Silk Belt
(55, @GUID_ARMOR_HORDE       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Silk Cuffs
(55, @GUID_ARMOR_HORDE       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Silk Footguards
(55, @GUID_ARMOR_HORDE       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Wyrmhide Belt
(55, @GUID_ARMOR_HORDE       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Wyrmhide Boots
(55, @GUID_ARMOR_HORDE       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Wyrmhide Bracers
(55, @GUID_ARMOR_HORDE       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Chain Armor
(55, @GUID_ARMOR_HORDE       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Chain Gauntlets
(55, @GUID_ARMOR_HORDE       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Chain Helm
(55, @GUID_ARMOR_HORDE       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Chain Leggings
(55, @GUID_ARMOR_HORDE       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Chain Spaulders
(55, @GUID_ARMOR_HORDE       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Dragonhide Gloves
(55, @GUID_ARMOR_HORDE       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Dragonhide Helm
(55, @GUID_ARMOR_HORDE       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Dragonhide Legguards
(55, @GUID_ARMOR_HORDE       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Dragonhide Spaulders
(55, @GUID_ARMOR_HORDE       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Dragonhide Tunic
(55, @GUID_ARMOR_HORDE       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Dreadweave Gloves
(55, @GUID_ARMOR_HORDE       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Dreadweave Hood
(55, @GUID_ARMOR_HORDE       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Dreadweave Leggings
(55, @GUID_ARMOR_HORDE       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Dreadweave Mantle
(55, @GUID_ARMOR_HORDE       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Dreadweave Robe
(55, @GUID_ARMOR_HORDE       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Kodohide Gloves
(55, @GUID_ARMOR_HORDE       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Kodohide Helm
(55, @GUID_ARMOR_HORDE       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Kodohide Legguards
(55, @GUID_ARMOR_HORDE       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Kodohide Spaulders
(55, @GUID_ARMOR_HORDE       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Kodohide Tunic
(55, @GUID_ARMOR_HORDE       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Lamellar Chestpiece
(55, @GUID_ARMOR_HORDE       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Lamellar Gauntlets
(55, @GUID_ARMOR_HORDE       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Lamellar Helm
(55, @GUID_ARMOR_HORDE       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Lamellar Legguards
(55, @GUID_ARMOR_HORDE       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Lamellar Shoulders
(55, @GUID_ARMOR_HORDE       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Leather Gloves
(55, @GUID_ARMOR_HORDE       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Leather Helm
(55, @GUID_ARMOR_HORDE       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Leather Legguards
(55, @GUID_ARMOR_HORDE       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Leather Spaulders
(55, @GUID_ARMOR_HORDE       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Leather Tunic
(55, @GUID_ARMOR_HORDE       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Linked Armor
(55, @GUID_ARMOR_HORDE       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Linked Gauntlets
(55, @GUID_ARMOR_HORDE       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Linked Helm
(55, @GUID_ARMOR_HORDE       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Linked Leggings
(55, @GUID_ARMOR_HORDE       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Linked Spaulders
(55, @GUID_ARMOR_HORDE       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Mail Armor
(55, @GUID_ARMOR_HORDE       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Mail Gauntlets
(55, @GUID_ARMOR_HORDE       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Mail Helm
(55, @GUID_ARMOR_HORDE       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Mail Leggings
(55, @GUID_ARMOR_HORDE       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Mail Spaulders
(55, @GUID_ARMOR_HORDE       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Mooncloth Cowl
(55, @GUID_ARMOR_HORDE       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Mooncloth Legguards
(55, @GUID_ARMOR_HORDE       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Mooncloth Mitts
(55, @GUID_ARMOR_HORDE       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Mooncloth Shoulderpads
(55, @GUID_ARMOR_HORDE       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Mooncloth Vestments
(55, @GUID_ARMOR_HORDE       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Ornamented Chestplate
(55, @GUID_ARMOR_HORDE       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Ornamented Gloves
(55, @GUID_ARMOR_HORDE       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Ornamented Headguard
(55, @GUID_ARMOR_HORDE       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Ornamented Leggings
(55, @GUID_ARMOR_HORDE       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Ornamented Spaulders
(55, @GUID_ARMOR_HORDE       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Plate Chestpiece
(55, @GUID_ARMOR_HORDE       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Plate Gauntlets
(55, @GUID_ARMOR_HORDE       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Plate Helm
(55, @GUID_ARMOR_HORDE       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Plate Legguards
(55, @GUID_ARMOR_HORDE       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Plate Shoulders
(55, @GUID_ARMOR_HORDE       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Ringmail Chestguard
(55, @GUID_ARMOR_HORDE       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Ringmail Gloves
(55, @GUID_ARMOR_HORDE       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Ringmail Headpiece
(55, @GUID_ARMOR_HORDE       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Ringmail Legguards
(55, @GUID_ARMOR_HORDE       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Ringmail Shoulderpads
(55, @GUID_ARMOR_HORDE       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Satin Gloves
(55, @GUID_ARMOR_HORDE       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Satin Hood
(55, @GUID_ARMOR_HORDE       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Satin Leggings
(55, @GUID_ARMOR_HORDE       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Satin Mantle
(55, @GUID_ARMOR_HORDE       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Satin Robe
(55, @GUID_ARMOR_HORDE       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Scaled Chestpiece
(55, @GUID_ARMOR_HORDE       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Scaled Gauntlets
(55, @GUID_ARMOR_HORDE       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Scaled Helm
(55, @GUID_ARMOR_HORDE       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Scaled Legguards
(55, @GUID_ARMOR_HORDE       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Scaled Shoulders
(55, @GUID_ARMOR_HORDE       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Silk Amice
(55, @GUID_ARMOR_HORDE       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Silk Cowl
(55, @GUID_ARMOR_HORDE       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Silk Handguards
(55, @GUID_ARMOR_HORDE       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Silk Raiment
(55, @GUID_ARMOR_HORDE       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Silk Trousers
(55, @GUID_ARMOR_HORDE       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Wyrmhide Gloves
(55, @GUID_ARMOR_HORDE       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Wyrmhide Helm
(55, @GUID_ARMOR_HORDE       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Wyrmhide Legguards
(55, @GUID_ARMOR_HORDE       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Wyrmhide Spaulders
(55, @GUID_ARMOR_HORDE       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Wyrmhide Tunic
(55, @GUID_ACCESSORY_HORDE   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Runed Ornate Ruby
(55, @GUID_ACCESSORY_HORDE   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Smooth Ornate Dawnstone
(55, @GUID_ACCESSORY_HORDE   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Gleaming Ornate Dawnstone
(55, @GUID_ACCESSORY_HORDE   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Bold Ornate Ruby
(55, @GUID_ACCESSORY_HORDE   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Potent Ornate Topaz
(55, @GUID_ACCESSORY_HORDE   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Inscribed Ornate Topaz
(55, @GUID_ACCESSORY_HORDE   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_3), -- Talisman of the Horde
(55, @GUID_ACCESSORY_HORDE   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Triumph
(55, @GUID_ACCESSORY_HORDE   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Dominance
(55, @GUID_ACCESSORY_HORDE   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Triumph
(55, @GUID_ACCESSORY_HORDE   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Dominance
(55, @GUID_ACCESSORY_HORDE   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cloak
(55, @GUID_ACCESSORY_HORDE   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cape
(55, @GUID_ACCESSORY_HORDE   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_3), -- Star's Lament
(55, @GUID_ACCESSORY_HORDE   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_3), -- Star's Tears
(55, @GUID_ACCESSORY_HORDE   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
-- Season 4
(56, @GUID_WEAPON_ALLIANCE   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Bonegrinder
(56, @GUID_WEAPON_ALLIANCE   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Warblade
(56, @GUID_WEAPON_ALLIANCE   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Decapitator
(56, @GUID_WEAPON_ALLIANCE   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Maul
(56, @GUID_WEAPON_ALLIANCE   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Painsaw
(56, @GUID_WEAPON_ALLIANCE   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's War Staff
(56, @GUID_WEAPON_ALLIANCE   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Barricade
(56, @GUID_WEAPON_ALLIANCE   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Battletome
(56, @GUID_WEAPON_ALLIANCE   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Cleaver
(56, @GUID_WEAPON_ALLIANCE   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Hacker
(56, @GUID_WEAPON_ALLIANCE   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Left Ripper
(56, @GUID_WEAPON_ALLIANCE   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Bonecracker
(56, @GUID_WEAPON_ALLIANCE   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Pummeler
(56, @GUID_WEAPON_ALLIANCE   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Quickblade
(56, @GUID_WEAPON_ALLIANCE   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Right Ripper
(56, @GUID_WEAPON_ALLIANCE   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Shanker
(56, @GUID_WEAPON_ALLIANCE   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Shiv
(56, @GUID_WEAPON_ALLIANCE   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Slicer
(56, @GUID_WEAPON_ALLIANCE   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Spellblade
(56, @GUID_WEAPON_ALLIANCE   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_4), -- Grand Marshal's Heavy Crossbow
(56, @GUID_ARMOR_ALLIANCE    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Chain Armor
(56, @GUID_ARMOR_ALLIANCE    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Chain Gauntlets
(56, @GUID_ARMOR_ALLIANCE    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Chain Helm
(56, @GUID_ARMOR_ALLIANCE    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Chain Leggings
(56, @GUID_ARMOR_ALLIANCE    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Chain Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Dragonhide Gloves
(56, @GUID_ARMOR_ALLIANCE    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Dragonhide Helm
(56, @GUID_ARMOR_ALLIANCE    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Dragonhide Legguards
(56, @GUID_ARMOR_ALLIANCE    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Dragonhide Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Dragonhide Tunic
(56, @GUID_ARMOR_ALLIANCE    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Dreadweave Gloves
(56, @GUID_ARMOR_ALLIANCE    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Dreadweave Hood
(56, @GUID_ARMOR_ALLIANCE    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Dreadweave Leggings
(56, @GUID_ARMOR_ALLIANCE    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Dreadweave Mantle
(56, @GUID_ARMOR_ALLIANCE    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Dreadweave Robe
(56, @GUID_ARMOR_ALLIANCE    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Kodohide Gloves
(56, @GUID_ARMOR_ALLIANCE    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Kodohide Helm
(56, @GUID_ARMOR_ALLIANCE    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Kodohide Legguards
(56, @GUID_ARMOR_ALLIANCE    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Kodohide Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Kodohide Tunic
(56, @GUID_ARMOR_ALLIANCE    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Lamellar Chestpiece
(56, @GUID_ARMOR_ALLIANCE    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Lamellar Gauntlets
(56, @GUID_ARMOR_ALLIANCE    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Lamellar Helm
(56, @GUID_ARMOR_ALLIANCE    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Lamellar Legguards
(56, @GUID_ARMOR_ALLIANCE    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Lamellar Shoulders
(56, @GUID_ARMOR_ALLIANCE    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Leather Gloves
(56, @GUID_ARMOR_ALLIANCE    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Leather Helm
(56, @GUID_ARMOR_ALLIANCE    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Leather Legguards
(56, @GUID_ARMOR_ALLIANCE    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Leather Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Leather Tunic
(56, @GUID_ARMOR_ALLIANCE    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Linked Armor
(56, @GUID_ARMOR_ALLIANCE    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Linked Gauntlets
(56, @GUID_ARMOR_ALLIANCE    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Linked Helm
(56, @GUID_ARMOR_ALLIANCE    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Linked Leggings
(56, @GUID_ARMOR_ALLIANCE    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Linked Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Mail Armor
(56, @GUID_ARMOR_ALLIANCE    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Mail Gauntlets
(56, @GUID_ARMOR_ALLIANCE    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Mail Helm
(56, @GUID_ARMOR_ALLIANCE    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Mail Leggings
(56, @GUID_ARMOR_ALLIANCE    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Mail Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Mooncloth Cowl
(56, @GUID_ARMOR_ALLIANCE    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Mooncloth Legguards
(56, @GUID_ARMOR_ALLIANCE    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Mooncloth Mitts
(56, @GUID_ARMOR_ALLIANCE    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Mooncloth Shoulderpads
(56, @GUID_ARMOR_ALLIANCE    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Mooncloth Vestments
(56, @GUID_ARMOR_ALLIANCE    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Ornamented Chestplate
(56, @GUID_ARMOR_ALLIANCE    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Ornamented Gloves
(56, @GUID_ARMOR_ALLIANCE    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Ornamented Headguard
(56, @GUID_ARMOR_ALLIANCE    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Ornamented Leggings
(56, @GUID_ARMOR_ALLIANCE    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Ornamented Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Plate Chestpiece
(56, @GUID_ARMOR_ALLIANCE    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Plate Gauntlets
(56, @GUID_ARMOR_ALLIANCE    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Plate Helm
(56, @GUID_ARMOR_ALLIANCE    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Plate Legguards
(56, @GUID_ARMOR_ALLIANCE    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Plate Shoulders
(56, @GUID_ARMOR_ALLIANCE    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Ringmail Chestguard
(56, @GUID_ARMOR_ALLIANCE    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Ringmail Gloves
(56, @GUID_ARMOR_ALLIANCE    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Ringmail Headpiece
(56, @GUID_ARMOR_ALLIANCE    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Ringmail Legguards
(56, @GUID_ARMOR_ALLIANCE    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Ringmail Shoulders
(56, @GUID_ARMOR_ALLIANCE    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Satin Gloves
(56, @GUID_ARMOR_ALLIANCE    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Satin Hood
(56, @GUID_ARMOR_ALLIANCE    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Satin Leggings
(56, @GUID_ARMOR_ALLIANCE    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Satin Mantle
(56, @GUID_ARMOR_ALLIANCE    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Satin Robe
(56, @GUID_ARMOR_ALLIANCE    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Scaled Chestpiece
(56, @GUID_ARMOR_ALLIANCE    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Scaled Gauntlets
(56, @GUID_ARMOR_ALLIANCE    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Scaled Helm
(56, @GUID_ARMOR_ALLIANCE    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Scaled Legguards
(56, @GUID_ARMOR_ALLIANCE    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Scaled Shoulders
(56, @GUID_ARMOR_ALLIANCE    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Silk Amice
(56, @GUID_ARMOR_ALLIANCE    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Silk Cowl
(56, @GUID_ARMOR_ALLIANCE    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Silk Handguards
(56, @GUID_ARMOR_ALLIANCE    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Silk Raiment
(56, @GUID_ARMOR_ALLIANCE    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Silk Trousers
(56, @GUID_ARMOR_ALLIANCE    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Wyrmhide Gloves
(56, @GUID_ARMOR_ALLIANCE    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Wyrmhide Helm
(56, @GUID_ARMOR_ALLIANCE    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Wyrmhide Legguards
(56, @GUID_ARMOR_ALLIANCE    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Wyrmhide Spaulders
(56, @GUID_ARMOR_ALLIANCE    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Wyrmhide Tunic
(56, @GUID_ARMOR_ALLIANCE    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Chain Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Chain Girdle
(56, @GUID_ARMOR_ALLIANCE    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Chain Sabatons
(56, @GUID_ARMOR_ALLIANCE    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Dragonhide Belt
(56, @GUID_ARMOR_ALLIANCE    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Dragonhide Boots
(56, @GUID_ARMOR_ALLIANCE    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Dragonhide Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Dreadweave Belt
(56, @GUID_ARMOR_ALLIANCE    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Dreadweave Cuffs
(56, @GUID_ARMOR_ALLIANCE    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Dreadweave Stalkers
(56, @GUID_ARMOR_ALLIANCE    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Kodohide Belt
(56, @GUID_ARMOR_ALLIANCE    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Kodohide Boots
(56, @GUID_ARMOR_ALLIANCE    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Kodohide Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Lamellar Belt
(56, @GUID_ARMOR_ALLIANCE    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Lamellar Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Lamellar Greaves
(56, @GUID_ARMOR_ALLIANCE    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Leather Belt
(56, @GUID_ARMOR_ALLIANCE    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Leather Boots
(56, @GUID_ARMOR_ALLIANCE    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Leather Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Linked Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Linked Girdle
(56, @GUID_ARMOR_ALLIANCE    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Linked Sabatons
(56, @GUID_ARMOR_ALLIANCE    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Mail Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Mail Girdle
(56, @GUID_ARMOR_ALLIANCE    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Mail Sabatons
(56, @GUID_ARMOR_ALLIANCE    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Plate Belt
(56, @GUID_ARMOR_ALLIANCE    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Plate Bracers
(56, @GUID_ARMOR_ALLIANCE    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Plate Greaves
(56, @GUID_ARMOR_ALLIANCE    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Scaled Belt
(56, @GUID_ARMOR_ALLIANCE    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Scaled Bracers
(56, @GUID_ARMOR_ALLIANCE    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Scaled Greaves
(56, @GUID_ARMOR_ALLIANCE    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Silk Belt
(56, @GUID_ARMOR_ALLIANCE    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Silk Cuffs
(56, @GUID_ARMOR_ALLIANCE    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Silk Footguards
(56, @GUID_ARMOR_ALLIANCE    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Wyrmhide Belt
(56, @GUID_ARMOR_ALLIANCE    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Wyrmhide Boots
(56, @GUID_ARMOR_ALLIANCE    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Wyrmhide Bracers
(56, @GUID_ACCESSORY_ALLIANCE, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Bold Ornate Ruby
(56, @GUID_ACCESSORY_ALLIANCE, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Gleaming Ornate Dawnstone
(56, @GUID_ACCESSORY_ALLIANCE, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Runed Ornate Ruby
(56, @GUID_ACCESSORY_ALLIANCE, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Smooth Ornate Dawnstone
(56, @GUID_ACCESSORY_ALLIANCE, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Inscribed Ornate Topaz
(56, @GUID_ACCESSORY_ALLIANCE, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Potent Ornate Topaz
(56, @GUID_ACCESSORY_ALLIANCE, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_4), -- Talisman of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Dominance
(56, @GUID_ACCESSORY_ALLIANCE, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Triumph
(56, @GUID_ACCESSORY_ALLIANCE, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Dominance
(56, @GUID_ACCESSORY_ALLIANCE, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Triumph
(56, @GUID_ACCESSORY_ALLIANCE, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cape
(56, @GUID_ACCESSORY_ALLIANCE, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cloak
(56, @GUID_ACCESSORY_ALLIANCE, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_4), -- Star's Lament
(56, @GUID_ACCESSORY_ALLIANCE, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_4), -- Star's Tears
(56, @GUID_ACCESSORY_ALLIANCE, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_WEAPON_HORDE      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Claymore
(56, @GUID_WEAPON_HORDE      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Bonegrinder
(56, @GUID_WEAPON_HORDE      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Decapitator
(56, @GUID_WEAPON_HORDE      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Maul
(56, @GUID_WEAPON_HORDE      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Painsaw
(56, @GUID_WEAPON_HORDE      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's War Staff
(56, @GUID_WEAPON_HORDE      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Cleaver
(56, @GUID_WEAPON_HORDE      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Hacker
(56, @GUID_WEAPON_HORDE      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Left Ripper
(56, @GUID_WEAPON_HORDE      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Bonecracker
(56, @GUID_WEAPON_HORDE      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Pummeler
(56, @GUID_WEAPON_HORDE      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Quickblade
(56, @GUID_WEAPON_HORDE      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Right Ripper
(56, @GUID_WEAPON_HORDE      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Shanker
(56, @GUID_WEAPON_HORDE      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Shiv
(56, @GUID_WEAPON_HORDE      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Spellblade
(56, @GUID_WEAPON_HORDE      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Slicer
(56, @GUID_WEAPON_HORDE      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Battletome
(56, @GUID_WEAPON_HORDE      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Barricade
(56, @GUID_WEAPON_HORDE      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_4), -- High Warlord's Heavy Crossbow
(56, @GUID_ARMOR_HORDE       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Chain Bracers
(56, @GUID_ARMOR_HORDE       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Chain Girdle
(56, @GUID_ARMOR_HORDE       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Chain Sabatons
(56, @GUID_ARMOR_HORDE       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Dragonhide Belt
(56, @GUID_ARMOR_HORDE       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Dragonhide Boots
(56, @GUID_ARMOR_HORDE       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Dragonhide Bracers
(56, @GUID_ARMOR_HORDE       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Dreadweave Belt
(56, @GUID_ARMOR_HORDE       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Dreadweave Cuffs
(56, @GUID_ARMOR_HORDE       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Dreadweave Stalkers
(56, @GUID_ARMOR_HORDE       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Kodohide Belt
(56, @GUID_ARMOR_HORDE       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Kodohide Boots
(56, @GUID_ARMOR_HORDE       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Kodohide Bracers
(56, @GUID_ARMOR_HORDE       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Lamellar Belt
(56, @GUID_ARMOR_HORDE       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Lamellar Bracers
(56, @GUID_ARMOR_HORDE       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Lamellar Greaves
(56, @GUID_ARMOR_HORDE       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Leather Belt
(56, @GUID_ARMOR_HORDE       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Leather Boots
(56, @GUID_ARMOR_HORDE       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Leather Bracers
(56, @GUID_ARMOR_HORDE       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Linked Bracers
(56, @GUID_ARMOR_HORDE       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Linked Girdle
(56, @GUID_ARMOR_HORDE       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Linked Sabatons
(56, @GUID_ARMOR_HORDE       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Mail Bracers
(56, @GUID_ARMOR_HORDE       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Mail Girdle
(56, @GUID_ARMOR_HORDE       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Mail Sabatons
(56, @GUID_ARMOR_HORDE       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Plate Belt
(56, @GUID_ARMOR_HORDE       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Plate Bracers
(56, @GUID_ARMOR_HORDE       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Plate Greaves
(56, @GUID_ARMOR_HORDE       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Scaled Belt
(56, @GUID_ARMOR_HORDE       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Scaled Bracers
(56, @GUID_ARMOR_HORDE       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Scaled Greaves
(56, @GUID_ARMOR_HORDE       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Silk Belt
(56, @GUID_ARMOR_HORDE       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Silk Cuffs
(56, @GUID_ARMOR_HORDE       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Silk Footguards
(56, @GUID_ARMOR_HORDE       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Wyrmhide Belt
(56, @GUID_ARMOR_HORDE       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Wyrmhide Boots
(56, @GUID_ARMOR_HORDE       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Wyrmhide Bracers
(56, @GUID_ARMOR_HORDE       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Chain Armor
(56, @GUID_ARMOR_HORDE       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Chain Gauntlets
(56, @GUID_ARMOR_HORDE       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Chain Helm
(56, @GUID_ARMOR_HORDE       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Chain Leggings
(56, @GUID_ARMOR_HORDE       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Chain Spaulders
(56, @GUID_ARMOR_HORDE       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Dragonhide Gloves
(56, @GUID_ARMOR_HORDE       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Dragonhide Helm
(56, @GUID_ARMOR_HORDE       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Dragonhide Legguards
(56, @GUID_ARMOR_HORDE       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Dragonhide Spaulders
(56, @GUID_ARMOR_HORDE       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Dragonhide Tunic
(56, @GUID_ARMOR_HORDE       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Dreadweave Gloves
(56, @GUID_ARMOR_HORDE       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Dreadweave Hood
(56, @GUID_ARMOR_HORDE       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Dreadweave Leggings
(56, @GUID_ARMOR_HORDE       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Dreadweave Mantle
(56, @GUID_ARMOR_HORDE       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Dreadweave Robe
(56, @GUID_ARMOR_HORDE       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Kodohide Gloves
(56, @GUID_ARMOR_HORDE       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Kodohide Helm
(56, @GUID_ARMOR_HORDE       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Kodohide Legguards
(56, @GUID_ARMOR_HORDE       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Kodohide Spaulders
(56, @GUID_ARMOR_HORDE       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Kodohide Tunic
(56, @GUID_ARMOR_HORDE       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Lamellar Chestpiece
(56, @GUID_ARMOR_HORDE       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Lamellar Gauntlets
(56, @GUID_ARMOR_HORDE       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Lamellar Helm
(56, @GUID_ARMOR_HORDE       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Lamellar Legguards
(56, @GUID_ARMOR_HORDE       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Lamellar Shoulders
(56, @GUID_ARMOR_HORDE       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Leather Gloves
(56, @GUID_ARMOR_HORDE       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Leather Helm
(56, @GUID_ARMOR_HORDE       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Leather Legguards
(56, @GUID_ARMOR_HORDE       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Leather Spaulders
(56, @GUID_ARMOR_HORDE       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Leather Tunic
(56, @GUID_ARMOR_HORDE       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Linked Armor
(56, @GUID_ARMOR_HORDE       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Linked Gauntlets
(56, @GUID_ARMOR_HORDE       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Linked Helm
(56, @GUID_ARMOR_HORDE       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Linked Leggings
(56, @GUID_ARMOR_HORDE       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Linked Spaulders
(56, @GUID_ARMOR_HORDE       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Mail Armor
(56, @GUID_ARMOR_HORDE       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Mail Gauntlets
(56, @GUID_ARMOR_HORDE       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Mail Helm
(56, @GUID_ARMOR_HORDE       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Mail Leggings
(56, @GUID_ARMOR_HORDE       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Mail Spaulders
(56, @GUID_ARMOR_HORDE       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Mooncloth Cowl
(56, @GUID_ARMOR_HORDE       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Mooncloth Legguards
(56, @GUID_ARMOR_HORDE       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Mooncloth Mitts
(56, @GUID_ARMOR_HORDE       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Mooncloth Shoulderpads
(56, @GUID_ARMOR_HORDE       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Mooncloth Vestments
(56, @GUID_ARMOR_HORDE       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Ornamented Chestplate
(56, @GUID_ARMOR_HORDE       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Ornamented Gloves
(56, @GUID_ARMOR_HORDE       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Ornamented Headguard
(56, @GUID_ARMOR_HORDE       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Ornamented Leggings
(56, @GUID_ARMOR_HORDE       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Ornamented Spaulders
(56, @GUID_ARMOR_HORDE       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Plate Chestpiece
(56, @GUID_ARMOR_HORDE       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Plate Gauntlets
(56, @GUID_ARMOR_HORDE       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Plate Helm
(56, @GUID_ARMOR_HORDE       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Plate Legguards
(56, @GUID_ARMOR_HORDE       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Plate Shoulders
(56, @GUID_ARMOR_HORDE       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Ringmail Chestguard
(56, @GUID_ARMOR_HORDE       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Ringmail Gloves
(56, @GUID_ARMOR_HORDE       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Ringmail Headpiece
(56, @GUID_ARMOR_HORDE       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Ringmail Legguards
(56, @GUID_ARMOR_HORDE       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Ringmail Shoulderpads
(56, @GUID_ARMOR_HORDE       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Satin Gloves
(56, @GUID_ARMOR_HORDE       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Satin Hood
(56, @GUID_ARMOR_HORDE       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Satin Leggings
(56, @GUID_ARMOR_HORDE       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Satin Mantle
(56, @GUID_ARMOR_HORDE       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Satin Robe
(56, @GUID_ARMOR_HORDE       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Scaled Chestpiece
(56, @GUID_ARMOR_HORDE       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Scaled Gauntlets
(56, @GUID_ARMOR_HORDE       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Scaled Helm
(56, @GUID_ARMOR_HORDE       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Scaled Legguards
(56, @GUID_ARMOR_HORDE       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Scaled Shoulders
(56, @GUID_ARMOR_HORDE       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Silk Amice
(56, @GUID_ARMOR_HORDE       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Silk Cowl
(56, @GUID_ARMOR_HORDE       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Silk Handguards
(56, @GUID_ARMOR_HORDE       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Silk Raiment
(56, @GUID_ARMOR_HORDE       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Silk Trousers
(56, @GUID_ARMOR_HORDE       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Wyrmhide Gloves
(56, @GUID_ARMOR_HORDE       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Wyrmhide Helm
(56, @GUID_ARMOR_HORDE       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Wyrmhide Legguards
(56, @GUID_ARMOR_HORDE       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Wyrmhide Spaulders
(56, @GUID_ARMOR_HORDE       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Wyrmhide Tunic
(56, @GUID_ACCESSORY_HORDE   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Runed Ornate Ruby
(56, @GUID_ACCESSORY_HORDE   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Smooth Ornate Dawnstone
(56, @GUID_ACCESSORY_HORDE   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Gleaming Ornate Dawnstone
(56, @GUID_ACCESSORY_HORDE   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Bold Ornate Ruby
(56, @GUID_ACCESSORY_HORDE   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Potent Ornate Topaz
(56, @GUID_ACCESSORY_HORDE   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Inscribed Ornate Topaz
(56, @GUID_ACCESSORY_HORDE   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_4), -- Talisman of the Horde
(56, @GUID_ACCESSORY_HORDE   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Triumph
(56, @GUID_ACCESSORY_HORDE   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Dominance
(56, @GUID_ACCESSORY_HORDE   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Triumph
(56, @GUID_ACCESSORY_HORDE   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Dominance
(56, @GUID_ACCESSORY_HORDE   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cloak
(56, @GUID_ACCESSORY_HORDE   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cape
(56, @GUID_ACCESSORY_HORDE   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_4), -- Star's Lament
(56, @GUID_ACCESSORY_HORDE   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_4), -- Star's Tears
(56, @GUID_ACCESSORY_HORDE   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_4); -- Medallion of the Horde

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

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_ALLIANCE) AND (`SourceEntry` IN (28613,28614,28615,28616,28617,28618,28619,28620,28622,28623,28624,28625,28626,28627,28628,31589,31590,31591,31592,31593,28679,28680,28681,28724,28683,28684,28685,28686,28687,28688,28689,28690,28691,28692,28693,28694,28695,28696,28697,28698,31622,31623,31620,31624,31625,31630,31631,31632,31633,31634,28699,28700,28701,28702,28703,31640,31641,31642,31643,31644,28704,28705,28706,28707,28708,28709,28710,28711,28712,28713,28714,28715,28716,28717,28718,28719,28720,28721,28722,28723,28973,28974,28975,28976,28977,28978,28980,28981,28982,31596,31597,31599,28983,28984,28985,28986,28987,28988,28989,28990,28991,28992,28993,28994,28995,28996,28997,28998,28999,29000,29001,29002,29003,29004,29005,29006));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @GUID_ARMOR_ALLIANCE, 28613, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_ALLIANCE, 28614, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_ALLIANCE, 28615, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_ALLIANCE, 28616, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_ALLIANCE, 28617, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_ALLIANCE, 28618, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28619, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28620, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28622, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28623, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28624, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_ALLIANCE, 28625, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_ALLIANCE, 28626, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_ALLIANCE, 28627, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_ALLIANCE, 28628, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_ALLIANCE, 31589, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 31590, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 31591, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 31592, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 31593, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28679, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28680, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28681, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28724, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28683, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28684, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_ALLIANCE, 28685, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_ALLIANCE, 28686, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_ALLIANCE, 28687, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_ALLIANCE, 28688, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_ALLIANCE, 28689, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28690, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28691, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28692, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28693, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28694, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28695, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28696, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28697, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28698, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 31622, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 31623, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 31620, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 31624, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 31625, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 31630, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 31631, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 31632, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 31633, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 31634, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28699, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_ALLIANCE, 28700, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_ALLIANCE, 28701, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_ALLIANCE, 28702, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_ALLIANCE, 28703, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_ALLIANCE, 31640, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 31641, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 31642, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 31643, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 31644, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_ALLIANCE, 28704, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 28705, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 28706, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 28707, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 28708, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_ALLIANCE, 28709, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28710, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28711, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28712, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28713, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_ALLIANCE, 28714, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_ALLIANCE, 28715, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_ALLIANCE, 28716, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_ALLIANCE, 28717, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_ALLIANCE, 28718, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_ALLIANCE, 28719, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28720, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28721, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28722, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28723, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_ALLIANCE, 28973, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28974, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28975, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28976, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28977, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28978, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28980, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_ALLIANCE, 28981, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_ALLIANCE, 28982, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_ALLIANCE, 31596, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 31597, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 31599, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28983, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28984, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28985, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28986, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28987, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28988, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 28989, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28990, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28991, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28992, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28993, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28994, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_ALLIANCE, 28995, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_ALLIANCE, 28996, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_ALLIANCE, 28997, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_ALLIANCE, 28998, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_ALLIANCE, 28999, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_ALLIANCE, 29000, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_ALLIANCE, 29001, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_ALLIANCE, 29002, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_ALLIANCE, 29003, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_ALLIANCE, 29004, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 29005, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_ALLIANCE, 29006, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''); -- Leather

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_HORDE) AND (`SourceEntry` IN (28451,28450,28449,28443,28444,28445,28404,28405,28402,31594,31595,31598,28641,28643,28642,28423,28422,28424,28605,28629,28630,28638,28639,28640,28385,28381,28383,28644,28646,28645,28409,28411,28410,28446,28447,28448,28805,28806,28807,28808,28809,28811,28812,28813,28814,28815,28817,28818,28819,28820,28821,31584,31585,31586,31587,31588,28831,28832,28833,28834,28835,28836,28837,28838,28839,28840,28841,28842,28843,28844,28845,28846,28847,28848,28849,28850,31626,31627,31621,31628,31629,31635,31636,31637,31638,31639,28851,28852,28853,28854,28855,31646,31647,31648,31649,31650,28856,28857,28858,28859,28860,28861,28862,28863,28864,28865,28866,28867,28868,28869,28870,28871,28872,28873,28874,28875));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @GUID_ARMOR_HORDE, 28451, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28450, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28449, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28443, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28444, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28445, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28404, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_HORDE, 28405, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_HORDE, 28402, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_HORDE, 31594, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 31595, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 31598, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28641, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28643, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28642, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28423, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28422, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28424, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28605, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28629, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28630, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28638, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28639, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28640, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @GUID_ARMOR_HORDE, 28385, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_HORDE, 28381, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_HORDE, 28383, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_HORDE, 28644, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_HORDE, 28646, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_HORDE, 28645, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @GUID_ARMOR_HORDE, 28409, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_HORDE, 28411, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_HORDE, 28410, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @GUID_ARMOR_HORDE, 28446, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28447, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28448, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @GUID_ARMOR_HORDE, 28805, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_HORDE, 28806, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_HORDE, 28807, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_HORDE, 28808, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_HORDE, 28809, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @GUID_ARMOR_HORDE, 28811, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28812, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28813, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28814, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28815, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28817, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_HORDE, 28818, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_HORDE, 28819, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_HORDE, 28820, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_HORDE, 28821, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @GUID_ARMOR_HORDE, 31584, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 31585, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 31586, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 31587, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 31588, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28831, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28832, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28833, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28834, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28835, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28836, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_HORDE, 28837, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_HORDE, 28838, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_HORDE, 28839, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_HORDE, 28840, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @GUID_ARMOR_HORDE, 28841, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28842, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28843, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28844, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28845, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28846, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28847, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28848, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28849, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28850, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 31626, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 31627, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 31621, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 31628, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 31629, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 31635, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 31636, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 31637, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 31638, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 31639, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28851, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_HORDE, 28852, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_HORDE, 28853, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_HORDE, 28854, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_HORDE, 28855, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @GUID_ARMOR_HORDE, 31646, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 31647, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 31648, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 31649, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 31650, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @GUID_ARMOR_HORDE, 28856, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 28857, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 28858, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 28859, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 28860, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @GUID_ARMOR_HORDE, 28861, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28862, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28863, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28864, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28865, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @GUID_ARMOR_HORDE, 28866, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_HORDE, 28867, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_HORDE, 28868, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_HORDE, 28869, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_HORDE, 28870, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @GUID_ARMOR_HORDE, 28871, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28872, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28873, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28874, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @GUID_ARMOR_HORDE, 28875, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''); -- Druid
