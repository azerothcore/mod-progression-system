-- To disable a vendor for a given season just comment out the creature and game_event_creature lines.
-- Prices are set further down.
-- IDs
SET @NPC_ARMOR_ALLIANCE      := 12777; -- Captain Dirgehammer
SET @NPC_ACCESSORY_ALLIANCE  := 12805; -- Officer Areyn (already has inventory)
SET @NPC_WEAPON_ALLIANCE     := 12782; -- Captain O'Neal
SET @NPC_ARMOR_HORDE         := 24520; -- Doris Volanthius
SET @NPC_ACCESSORY_HORDE     := 12799; -- Sergeant Ba'sha (already has inventory)
SET @NPC_WEAPON_HORDE        := 14581; -- Sergeant Thunderhorn

SET @NPC_SEASON_ONE          := 24392; -- Leeni "Smiley" Smalls
SET @NPC_SEASON_TWO          := 26352; -- Big Zokk Torquewrench
UPDATE `creature_template` SET `subname` = 'Merciless Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_TWO); -- If NPC is changed remember to set the correct subname later
SET @NPC_SEASON_THREE        := 26378; -- Evee Copperspring
UPDATE `creature_template` SET `subname` = 'Vengeful Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_THREE);
SET @NPC_SEASON_FOUR         := 40207; -- Kezzik the Striker
UPDATE `creature_template` SET `subname` = 'Brutal Arena Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_FOUR);
SET @NPC_ARENA_ACCESSORY     := 40209; -- Grex Brainboiler
UPDATE `creature_template` SET `subname` = 'Accessories Vendor', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_ARENA_ACCESSORY);

-- GUIDs
-- The ending _1 _2 represents the season this NPC is linked to
-- game_event_npc_vendor does not accept duplicate GUIDs
SET @GUID := 3000009; -- Needs 37 free GUIDs

SET @GUID_ARMOR_ALLIANCE_1     := @GUID+0 ;
SET @GUID_ARMOR_ALLIANCE_2     := @GUID+1 ;
SET @GUID_ARMOR_ALLIANCE_3     := @GUID+2 ;
SET @GUID_ARMOR_ALLIANCE_4     := @GUID+3 ;
SET @GUID_ACCESSORY_ALLIANCE_1 := @GUID+4 ;
SET @GUID_ACCESSORY_ALLIANCE_2 := @GUID+5 ;
SET @GUID_ACCESSORY_ALLIANCE_3 := @GUID+6 ;
SET @GUID_ACCESSORY_ALLIANCE_4 := @GUID+7 ;
SET @GUID_WEAPON_ALLIANCE_1    := @GUID+8 ;
SET @GUID_WEAPON_ALLIANCE_2    := @GUID+9 ;
SET @GUID_WEAPON_ALLIANCE_3    := @GUID+10;
SET @GUID_WEAPON_ALLIANCE_4    := @GUID+11;
SET @GUID_ARMOR_HORDE_1        := @GUID+12;
SET @GUID_ARMOR_HORDE_2        := @GUID+13;
SET @GUID_ARMOR_HORDE_3        := @GUID+14;
SET @GUID_ARMOR_HORDE_4        := @GUID+15;
SET @GUID_ACCESSORY_HORDE_1    := @GUID+16;
SET @GUID_ACCESSORY_HORDE_2    := @GUID+17;
SET @GUID_ACCESSORY_HORDE_3    := @GUID+18;
SET @GUID_ACCESSORY_HORDE_4    := @GUID+19;
SET @GUID_WEAPON_HORDE_1       := @GUID+20;
SET @GUID_WEAPON_HORDE_2       := @GUID+21;
SET @GUID_WEAPON_HORDE_3       := @GUID+22;
SET @GUID_WEAPON_HORDE_4       := @GUID+23;
SET @GUID_SEASON_ONE_1         := @GUID+24;
SET @GUID_SEASON_ONE_2         := @GUID+25;
SET @GUID_SEASON_ONE_3         := @GUID+26;
SET @GUID_SEASON_ONE_4         := @GUID+27;
SET @GUID_SEASON_TWO_2         := @GUID+28;
SET @GUID_SEASON_TWO_3         := @GUID+29;
SET @GUID_SEASON_TWO_4         := @GUID+30;
SET @GUID_ARENA_ACCESSORY_2    := @GUID+31;
SET @GUID_ARENA_ACCESSORY_3    := @GUID+32;
SET @GUID_ARENA_ACCESSORY_4    := @GUID+33;
SET @GUID_SEASON_THREE_3       := @GUID+34;
SET @GUID_SEASON_THREE_4       := @GUID+35;
SET @GUID_SEASON_FOUR_4        := @GUID+36;
SET @GUID_ARMOR_ALLIANCE_0     := @GUID+37;
SET @GUID_ACCESSORY_ALLIANCE_0 := @GUID+38;
SET @GUID_WEAPON_ALLIANCE_0    := @GUID+39;
SET @GUID_ARMOR_HORDE_0        := @GUID+40;
SET @GUID_ACCESSORY_HORDE_0    := @GUID+41;
SET @GUID_WEAPON_HORDE_0       := @GUID+42;

DELETE FROM `creature` WHERE (`id1` IN (@NPC_ARMOR_ALLIANCE,@NPC_ACCESSORY_ALLIANCE,@NPC_WEAPON_ALLIANCE,@NPC_ARMOR_HORDE,@NPC_ACCESSORY_HORDE,@NPC_WEAPON_HORDE,@NPC_SEASON_ONE,@NPC_SEASON_TWO,@NPC_SEASON_THREE,@NPC_SEASON_FOUR,@NPC_ARENA_ACCESSORY)) AND (`guid` IN (@GUID_ARMOR_ALLIANCE_0,@GUID_ACCESSORY_ALLIANCE_0,@GUID_WEAPON_ALLIANCE_0,@GUID_ARMOR_HORDE_0,@GUID_ACCESSORY_HORDE_0,@GUID_WEAPON_HORDE_0,@GUID_ARMOR_ALLIANCE_1,@GUID_ARMOR_ALLIANCE_2,@GUID_ARMOR_ALLIANCE_3,@GUID_ARMOR_ALLIANCE_4,@GUID_ACCESSORY_ALLIANCE_1,@GUID_ACCESSORY_ALLIANCE_2,@GUID_ACCESSORY_ALLIANCE_3,@GUID_ACCESSORY_ALLIANCE_4,@GUID_WEAPON_ALLIANCE_1,@GUID_WEAPON_ALLIANCE_2,@GUID_WEAPON_ALLIANCE_3,@GUID_WEAPON_ALLIANCE_4,@GUID_ARMOR_HORDE_1,@GUID_ARMOR_HORDE_2,@GUID_ARMOR_HORDE_3,@GUID_ARMOR_HORDE_4,@GUID_ACCESSORY_HORDE_1,@GUID_ACCESSORY_HORDE_2,@GUID_ACCESSORY_HORDE_3,@GUID_ACCESSORY_HORDE_4,@GUID_WEAPON_HORDE_1,@GUID_WEAPON_HORDE_2,@GUID_WEAPON_HORDE_3,@GUID_WEAPON_HORDE_4,@GUID_SEASON_ONE_1,@GUID_SEASON_ONE_2,@GUID_SEASON_ONE_3,@GUID_SEASON_ONE_4,@GUID_SEASON_TWO_2,@GUID_SEASON_TWO_3,@GUID_SEASON_TWO_4,@GUID_ARENA_ACCESSORY_2,@GUID_ARENA_ACCESSORY_3,@GUID_ARENA_ACCESSORY_4,@GUID_SEASON_THREE_3,@GUID_SEASON_THREE_4,@GUID_SEASON_FOUR_4));
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID_WEAPON_HORDE_0      , @NPC_WEAPON_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_HORDE_1      , @NPC_WEAPON_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_HORDE_2      , @NPC_WEAPON_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_HORDE_3      , @NPC_WEAPON_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_HORDE_4      , @NPC_WEAPON_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_HORDE_0   , @NPC_ACCESSORY_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1674.48, -4211.93, 56.3825, 3.03786, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_HORDE_1   , @NPC_ACCESSORY_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1674.48, -4211.93, 56.3825, 3.03786, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_HORDE_2   , @NPC_ACCESSORY_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1674.48, -4211.93, 56.3825, 3.03786, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_HORDE_3   , @NPC_ACCESSORY_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1674.48, -4211.93, 56.3825, 3.03786, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_HORDE_4   , @NPC_ACCESSORY_HORDE, 0, 0, 1, 0, 0, 1, 1, 1, 1674.48, -4211.93, 56.3825, 3.03786, 25, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_HORDE_0       , @NPC_ARMOR_HORDE, 0, 0, 1, 0, 0, 1, 1, 0, 1673.07, -4201.89, 56.3826, 3.62927, 25, 0, 0, 55888, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_HORDE_1       , @NPC_ARMOR_HORDE, 0, 0, 1, 0, 0, 1, 1, 0, 1673.07, -4201.89, 56.3826, 3.62927, 25, 0, 0, 55888, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_HORDE_2       , @NPC_ARMOR_HORDE, 0, 0, 1, 0, 0, 1, 1, 0, 1673.07, -4201.89, 56.3826, 3.62927, 25, 0, 0, 55888, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_HORDE_3       , @NPC_ARMOR_HORDE, 0, 0, 1, 0, 0, 1, 1, 0, 1673.07, -4201.89, 56.3826, 3.62927, 25, 0, 0, 55888, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_HORDE_4       , @NPC_ARMOR_HORDE, 0, 0, 1, 0, 0, 1, 1, 0, 1673.07, -4201.89, 56.3826, 3.62927, 25, 0, 0, 55888, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_ALLIANCE_0    , @NPC_ARMOR_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8781.18, 419.883, 105.233, 6.18459, 180, 0, 0, 7048, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_ALLIANCE_1    , @NPC_ARMOR_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8781.18, 419.883, 105.233, 6.18459, 180, 0, 0, 7048, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_ALLIANCE_2    , @NPC_ARMOR_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8781.18, 419.883, 105.233, 6.18459, 180, 0, 0, 7048, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_ALLIANCE_3    , @NPC_ARMOR_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8781.18, 419.883, 105.233, 6.18459, 180, 0, 0, 7048, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARMOR_ALLIANCE_4    , @NPC_ARMOR_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8781.18, 419.883, 105.233, 6.18459, 180, 0, 0, 7048, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_ALLIANCE_0   , @NPC_WEAPON_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8773.78, 425.804, 105.233, 4.80621, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_ALLIANCE_1   , @NPC_WEAPON_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8773.78, 425.804, 105.233, 4.80621, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_ALLIANCE_2   , @NPC_WEAPON_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8773.78, 425.804, 105.233, 4.80621, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_ALLIANCE_3   , @NPC_WEAPON_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8773.78, 425.804, 105.233, 4.80621, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_WEAPON_ALLIANCE_4   , @NPC_WEAPON_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8773.78, 425.804, 105.233, 4.80621, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_ALLIANCE_0, @NPC_ACCESSORY_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8775.85, 423.96, 105.233, 5.73298, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_ALLIANCE_1, @NPC_ACCESSORY_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8775.85, 423.96, 105.233, 5.73298, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_ALLIANCE_2, @NPC_ACCESSORY_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8775.85, 423.96, 105.233, 5.73298, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_ALLIANCE_3, @NPC_ACCESSORY_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8775.85, 423.96, 105.233, 5.73298, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_ACCESSORY_ALLIANCE_4, @NPC_ACCESSORY_ALLIANCE, 0, 0, 0, 0, 0, 1, 1, 1, -8775.85, 423.96, 105.233, 5.73298, 180, 0, 0, 11828, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_ONE_1        , @NPC_SEASON_ONE, 0, 0, 530, 0, 0, 1, 1, 0, 3070.16, 3635.11, 143.864, 0.750492, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_ONE_2        , @NPC_SEASON_ONE, 0, 0, 530, 0, 0, 1, 1, 0, 3070.16, 3635.11, 143.864, 0.750492, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_ONE_3        , @NPC_SEASON_ONE, 0, 0, 530, 0, 0, 1, 1, 0, 3070.16, 3635.11, 143.864, 0.750492, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_ONE_4        , @NPC_SEASON_ONE, 0, 0, 530, 0, 0, 1, 1, 0, 3070.16, 3635.11, 143.864, 0.750492, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0), -- Token Exchange by default
(@GUID_SEASON_TWO_2        , @NPC_SEASON_TWO, 0, 0, 530, 0, 0, 1, 1, 0, 3073.99, 3633.34, 143.779, 2.09012, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_TWO_3        , @NPC_SEASON_TWO, 0, 0, 530, 0, 0, 1, 1, 0, 3073.99, 3633.34, 143.779, 2.09012, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_TWO_4        , @NPC_SEASON_TWO, 0, 0, 530, 0, 0, 1, 1, 0, 3073.99, 3633.34, 143.779, 2.09012, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARENA_ACCESSORY_2   , @NPC_ARENA_ACCESSORY, 0, 0, 530, 0, 0, 1, 1, 0, 3073.259766, 3642.980469, 143.780502, 4.354409, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARENA_ACCESSORY_3   , @NPC_ARENA_ACCESSORY, 0, 0, 530, 0, 0, 1, 1, 0, 3073.259766, 3642.980469, 143.780502, 4.354409, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_ARENA_ACCESSORY_4   , @NPC_ARENA_ACCESSORY, 0, 0, 530, 0, 0, 1, 1, 0, 3073.259766, 3642.980469, 143.780502, 4.354409, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_THREE_3      , @NPC_SEASON_THREE, 0, 0, 530, 0, 0, 1, 1, 0, 3078.46, 3636.98, 145.385, 3.12999, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_THREE_4      , @NPC_SEASON_THREE, 0, 0, 530, 0, 0, 1, 1, 0, 3078.46, 3636.98, 145.385, 3.12999, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0),
(@GUID_SEASON_FOUR_4       , @NPC_SEASON_FOUR, 0, 0, 530, 0, 0, 1, 1, 0, 3066.45, 3638.87, 145.218, 0.875901, 180, 0, 0, 42, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `game_event_creature` WHERE (`eventEntry` IN (75, 76, 55, 56, 60)) AND (`guid` IN (@GUID_ARMOR_ALLIANCE_0,@GUID_ACCESSORY_ALLIANCE_0,@GUID_WEAPON_ALLIANCE_0,@GUID_ARMOR_HORDE_0,@GUID_ACCESSORY_HORDE_0,@GUID_WEAPON_HORDE_0,@GUID_ARMOR_ALLIANCE_1,@GUID_ARMOR_ALLIANCE_2,@GUID_ARMOR_ALLIANCE_3,@GUID_ARMOR_ALLIANCE_4,@GUID_ACCESSORY_ALLIANCE_1,@GUID_ACCESSORY_ALLIANCE_2,@GUID_ACCESSORY_ALLIANCE_3,@GUID_ACCESSORY_ALLIANCE_4,@GUID_WEAPON_ALLIANCE_1,@GUID_WEAPON_ALLIANCE_2,@GUID_WEAPON_ALLIANCE_3,@GUID_WEAPON_ALLIANCE_4,@GUID_ARMOR_HORDE_1,@GUID_ARMOR_HORDE_2,@GUID_ARMOR_HORDE_3,@GUID_ARMOR_HORDE_4,@GUID_ACCESSORY_HORDE_1,@GUID_ACCESSORY_HORDE_2,@GUID_ACCESSORY_HORDE_3,@GUID_ACCESSORY_HORDE_4,@GUID_WEAPON_HORDE_1,@GUID_WEAPON_HORDE_2,@GUID_WEAPON_HORDE_3,@GUID_WEAPON_HORDE_4,@GUID_SEASON_ONE_1,@GUID_SEASON_ONE_2,@GUID_SEASON_ONE_3,@GUID_SEASON_ONE_4,@GUID_SEASON_TWO_2,@GUID_SEASON_TWO_3,@GUID_SEASON_TWO_4,@GUID_ARENA_ACCESSORY_2,@GUID_ARENA_ACCESSORY_3,@GUID_ARENA_ACCESSORY_4,@GUID_SEASON_THREE_3,@GUID_SEASON_THREE_4,@GUID_SEASON_FOUR_4));
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(60, @GUID_WEAPON_HORDE_0),
(75, @GUID_WEAPON_HORDE_1),
(76, @GUID_WEAPON_HORDE_2),
(55, @GUID_WEAPON_HORDE_3),
(56, @GUID_WEAPON_HORDE_4),
(60, @GUID_ACCESSORY_HORDE_0),
(75, @GUID_ACCESSORY_HORDE_1),
(76, @GUID_ACCESSORY_HORDE_2),
(55, @GUID_ACCESSORY_HORDE_3),
(56, @GUID_ACCESSORY_HORDE_4),
(60, @GUID_ARMOR_HORDE_0),
(75, @GUID_ARMOR_HORDE_1),
(76, @GUID_ARMOR_HORDE_2),
(55, @GUID_ARMOR_HORDE_3),
(56, @GUID_ARMOR_HORDE_4),
(60, @GUID_ARMOR_ALLIANCE_0),
(75, @GUID_ARMOR_ALLIANCE_1),
(76, @GUID_ARMOR_ALLIANCE_2),
(55, @GUID_ARMOR_ALLIANCE_3),
(56, @GUID_ARMOR_ALLIANCE_4),
(60, @GUID_WEAPON_ALLIANCE_0),
(75, @GUID_WEAPON_ALLIANCE_1),
(76, @GUID_WEAPON_ALLIANCE_2),
(55, @GUID_WEAPON_ALLIANCE_3),
(56, @GUID_WEAPON_ALLIANCE_4),
(60, @GUID_ACCESSORY_ALLIANCE_0),
(75, @GUID_ACCESSORY_ALLIANCE_1),
(76, @GUID_ACCESSORY_ALLIANCE_2),
(55, @GUID_ACCESSORY_ALLIANCE_3),
(56, @GUID_ACCESSORY_ALLIANCE_4),
(75, @GUID_SEASON_ONE_1),
(76, @GUID_SEASON_ONE_2),
(55, @GUID_SEASON_ONE_3),
(56, @GUID_SEASON_ONE_4), -- Token Exchange by default
(76, @GUID_SEASON_TWO_2),
(55, @GUID_SEASON_TWO_3),
(56, @GUID_SEASON_TWO_4),
(76, @GUID_ARENA_ACCESSORY_2),
(55, @GUID_ARENA_ACCESSORY_3),
(56, @GUID_ARENA_ACCESSORY_4),
(55, @GUID_SEASON_THREE_3),
(56, @GUID_SEASON_THREE_4),
(56, @GUID_SEASON_FOUR_4);

-- Remove Items from Accessory Vendors
DELETE FROM `npc_vendor` WHERE `entry` IN (12799, 12805) AND `item` IN (15197,15200,16335,16341,16486,16497,16532,18427,18428,18429,18430,18432,18434,18435,18436,18437,18461,18675,18834,18845,18846,18849,18850,18851,18852,18853,15196,16342,18440,18441,18442,18443,18444,18452,18453,18664,18857);
-- Phase Season 8 Vendors
UPDATE `creature` SET `PhaseMask`=16384 WHERE `id1` IN (34038, 34043, 34060, 34063, 34075, 34078, 40607);

/*
	Faction Capital Honor Vendors
		Present in all 4 seasons
*/
/*-------------------------------SEASON 1---------------------------------*/
SET @EXT_WEP_HONOR_01_1  := 131 ; -- Season 1: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_1  := 348 ; -- Season 1: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_1  := 2271; -- Season 1: 17000 Honor - Ranged Weapon
/*------------------------------------------------------------------------*/
SET @EXT_ARM_HONOR_01_1  := 2259; -- Season 1: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_1  := 2261; -- Season 1: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_1  := 2263; -- Season 1: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_1  := 2265; -- Season 1: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_1  := 2267; -- Season 1: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_1  := 169 ; -- Season 1: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_1  := 172 ; -- Season 1: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_1  := 171 ; -- Season 1: 15000 Honor - Feet
/*------------------------------------------------------------------------*/
SET @EXT_ACC_HONOR_01_1  := 95  ;  -- Season 1: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_1  := 99  ;  -- Season 1: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_1  := 125 ;  -- Season 1: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_1  := 127 ;  -- Season 1: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_1  := 165 ;  -- Season 1: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_1  := 460 ;  -- Season 1: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_1  := 1564;  -- Season 1: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_1  := 1648;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_1  := 1649;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_1  := 1652;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_1  := 1653;  -- Season 1: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_1  := 2403;  -- Season 1: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_1  := 2404;  -- Season 1: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_1  := 129 ;  -- Season 1: 12000 Honor - Finger
/*-------------------------------SEASON 2---------------------------------*/
SET @EXT_WEP_HONOR_01_2  := 131 ; -- Season 2: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_2  := 348 ; -- Season 2: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_2  := 2271; -- Season 2: 17000 Honor - Ranged Weapon
/*------------------------------------------------------------------------*/
SET @EXT_ARM_HONOR_01_2  := 2259; -- Season 2: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_2  := 2261; -- Season 2: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_2  := 2263; -- Season 2: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_2  := 2265; -- Season 2: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_2  := 2267; -- Season 2: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_2  := 169 ; -- Season 2: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_2  := 172 ; -- Season 2: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_2  := 171 ; -- Season 2: 15000 Honor - Feet
/*------------------------------------------------------------------------*/
SET @EXT_ACC_HONOR_01_2  := 95  ; -- Season 2: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_2  := 99  ; -- Season 2: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_2  := 125 ; -- Season 2: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_2  := 127 ; -- Season 2: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_2  := 165 ; -- Season 2: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_2  := 460 ; -- Season 2: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_2  := 1564; -- Season 2: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_2  := 1648; -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_2  := 1649; -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_2  := 1652; -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_2  := 1653; -- Season 2: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_2  := 2403; -- Season 2: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_2  := 2404; -- Season 2: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_2  := 129 ; -- Season 2: 12000 Honor - Finger
/*-------------------------------SEASON 3---------------------------------*/
SET @EXT_WEP_HONOR_01_3  := 131 ; -- Season 3: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_3  := 348 ; -- Season 3: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_3  := 2271; -- Season 3: 17000 Honor - Ranged Weapon
/*------------------------------------------------------------------------*/
SET @EXT_ARM_HONOR_01_3  := 2259; -- Season 3: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_3  := 2261; -- Season 3: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_3  := 2263; -- Season 3: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_3  := 2265; -- Season 3: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_3  := 2267; -- Season 3: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_3  := 169 ;  -- Season 3: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_3  := 172 ;  -- Season 3: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_3  := 171 ;  -- Season 3: 15000 Honor - Feet
/*------------------------------------------------------------------------*/
SET @EXT_ACC_HONOR_01_3  := 95  ; -- Season 3: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_3  := 99  ; -- Season 3: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_3  := 125 ; -- Season 3: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_3  := 127 ; -- Season 3: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_3  := 165 ; -- Season 3: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_3  := 460 ; -- Season 3: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_3  := 1564; -- Season 3: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_3  := 1648; -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_3  := 1649; -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_3  := 1652; -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_3  := 1653; -- Season 3: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_3  := 2403; -- Season 3: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_3  := 2404; -- Season 3: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_3  := 129 ; -- Season 3: 12000 Honor - Finger
/*-------------------------------SEASON 4---------------------------------*/
SET @EXT_WEP_HONOR_01_4  := 131 ; -- Season 4: 31000 Honor - 2H Weapon
SET @EXT_WEP_HONOR_02_4  := 348 ; -- Season 4: 16000 Honor - 1H Weapon
SET @EXT_WEP_HONOR_03_4  := 2271; -- Season 4: 17000 Honor - Ranged Weapon
/*------------------------------------------------------------------------*/
SET @EXT_ARM_HONOR_01_4  := 2259; -- Season 4: 15000 Honor - Chest
SET @EXT_ARM_HONOR_02_4  := 2261; -- Season 4: 9000 Honor - Hands
SET @EXT_ARM_HONOR_03_4  := 2263; -- Season 4: 14000 Honor - Head
SET @EXT_ARM_HONOR_04_4  := 2265; -- Season 4: 14000 Honor - Legs
SET @EXT_ARM_HONOR_05_4  := 2267; -- Season 4: 9000 Honor - Shoulders
SET @EXT_ARM_HONOR_06_4  := 169 ; -- Season 4: 10000 Honor - Wrist
SET @EXT_ARM_HONOR_07_4  := 172 ; -- Season 4: 15000 Honor - Waist
SET @EXT_ARM_HONOR_08_4  := 171 ; -- Season 4: 15000 Honor - Feet
/*------------------------------------------------------------------------*/
SET @EXT_ACC_HONOR_01_4  := 95  ; -- Season 4: 6885 Honor - Gems
SET @EXT_ACC_HONOR_02_4  := 99  ; -- Season 4: 8500 Honor - Orange Gems
SET @EXT_ACC_HONOR_03_4  := 125 ; -- Season 4: 23000 Honor - Talisman
SET @EXT_ACC_HONOR_04_4  := 127 ; -- Season 4: 16000 Honor - Neck
SET @EXT_ACC_HONOR_05_4  := 165 ; -- Season 4: 10000 Honor - Back
SET @EXT_ACC_HONOR_06_4  := 460 ; -- Season 4: 1 Honor - Star's Lament (Water)
SET @EXT_ACC_HONOR_07_4  := 1564; -- Season 4: 8 Honor - Star's Tears (Water)
SET @EXT_ACC_HONOR_08_4  := 1648; -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_09_4  := 1649; -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_10_4  := 1652; -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_11_4  := 1653; -- Season 4: 200 Honor - Major Potion
SET @EXT_ACC_HONOR_12_4  := 2403; -- Season 4: 40000 Honor - Medallion (45 Resilience)
SET @EXT_ACC_HONOR_13_4  := 2404; -- Season 4: 8000 Honor - Medallion (20 Resilience)
SET @EXT_ACC_HONOR_14_4  := 129 ; -- Season 4: 12000 Honor - Finger
/*------------------------------------------------------------------------*/
/*
	Season One Arena Vendor
		Present in all 4 seasons
*/
/*-------------------------------SEASON 1---------------------------------*/
SET @EXT_WEP_SEASON_ONE_01_1 := 1664; -- Season 1: 3750 Arena - Two-Handed
SET @EXT_WEP_SEASON_ONE_02_1 := 2284; -- Season 1: 3150 Arena - MH (Spellpower)
SET @EXT_WEP_SEASON_ONE_03_1 := 2285; -- Season 1: 1875 Arena - OH (Spellpower)
SET @EXT_WEP_SEASON_ONE_04_1 := 2285; -- Season 1: 1875 Arena - MH (Melee)
SET @EXT_WEP_SEASON_ONE_05_1 := 2285; -- Season 1: 1875 Arena - OH (Melee)
SET @EXT_WEP_SEASON_ONE_06_1 := 2285; -- Season 1: 1875 Arena - Shield
SET @EXT_WEP_SEASON_ONE_07_1 := 2285; -- Season 1: 1875 Arena - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_ONE_08_1 := 1664; -- Season 1: 3750 Arena - Ranged Weapon
-- SET @EXT_WEP_SEASON_ONE_09_1 :=  ; -- Season 1: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_ONE_01_1 := 2285; -- Season 1: 1875 Arena - Head
SET @EXT_ARM_SEASON_ONE_02_1 := 2288; -- Season 1: 1500 Arena - Shoulders
SET @EXT_ARM_SEASON_ONE_03_1 := 2285; -- Season 1: 1875 Arena - Chest
SET @EXT_ARM_SEASON_ONE_04_1 := 2285; -- Season 1: 1875 Arena - Legs
SET @EXT_ARM_SEASON_ONE_05_1 := 2286; -- Season 1: 1125 Arena - Hands
/*-------------------------------SEASON 2---------------------------------*/
SET @EXT_WEP_SEASON_ONE_01_2 := 26 ; -- Season 2: 3261 Arena - Two-Handed
SET @EXT_WEP_SEASON_ONE_02_2 := 148; -- Season 2: 2739 Arena - MH (Spellpower)
SET @EXT_WEP_SEASON_ONE_03_2 := 21 ; -- Season 2: 978 Arena - OH (Spellpower)
SET @EXT_WEP_SEASON_ONE_04_2 := 22 ; -- Season 2: 1630 Arena - MH (Melee)
SET @EXT_WEP_SEASON_ONE_05_2 := 21 ; -- Season 2: 978 Arena - OH (Melee)
SET @EXT_WEP_SEASON_ONE_06_2 := 22 ; -- Season 2: 1630 Arena - Shield
SET @EXT_WEP_SEASON_ONE_07_2 := 146; -- Season 2: 870 Arena - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_ONE_08_2 := 26 ; -- Season 2: 3261 Arena - Ranged Weapon
-- SET @EXT_WEP_SEASON_ONE_09_2 := ; -- Season 2: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_ONE_01_2 := 22 ; -- Season 2: 1630 Arena - Head
SET @EXT_ARM_SEASON_ONE_02_2 := 24 ; -- Season 2: 1304 Arena - Shoulders
SET @EXT_ARM_SEASON_ONE_03_2 := 22 ; -- Season 2: 1630 Arena - Chest
SET @EXT_ARM_SEASON_ONE_04_2 := 22 ; -- Season 2: 1630 Arena - Legs
SET @EXT_ARM_SEASON_ONE_05_2 := 21 ; -- Season 2: 978 Arena - Hands
/*-------------------------------SEASON 3---------------------------------*/
-- SET @EXT_WEP_SEASON_ONE_01_3 := 26 ; -- Season 3: 3261 Arena - Two-Handed
-- SET @EXT_WEP_SEASON_ONE_02_3 := 148; -- Season 3: 2739 Arena - MH (Spellpower)
-- SET @EXT_WEP_SEASON_ONE_03_3 := 21 ; -- Season 3: 978 Arena - OH (Spellpower)
-- SET @EXT_WEP_SEASON_ONE_04_3 := 22 ; -- Season 3: 1630 Arena - MH (Melee)
-- SET @EXT_WEP_SEASON_ONE_05_3 := 21 ; -- Season 3: 978 Arena - OH (Melee)
-- SET @EXT_WEP_SEASON_ONE_06_3 := 22 ; -- Season 3: 1630 Arena - Shield
-- SET @EXT_WEP_SEASON_ONE_07_3 := 146; -- Season 3: 870 Arena - Relic, Thrown, Wand
-- SET @EXT_WEP_SEASON_ONE_08_3 := 26 ; -- Season 3: 3261 Arena - Ranged Weapon
-- SET @EXT_WEP_SEASON_ONE_09_3 :=    ; -- Season 3: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_ONE_01_3 := 2280; -- Season 3: 15000 Honor - Head
SET @EXT_ARM_SEASON_ONE_02_3 := 2278; -- Season 3: 13000 Honor - Shoulders
SET @EXT_ARM_SEASON_ONE_03_3 := 2279; -- Season 3: 15000 Honor - Chest
SET @EXT_ARM_SEASON_ONE_04_3 := 2281; -- Season 3: 15000 Honor - Legs
SET @EXT_ARM_SEASON_ONE_05_3 := 2277; -- Season 3: 12000 Honor - Hands
/*-------------------------------SEASON 4---------------------------------*/
-- SET @EXT_WEP_SEASON_ONE_01_4 := 26 ; -- Season 4: 3261 Arena - Two-Handed
-- SET @EXT_WEP_SEASON_ONE_02_4 := 148; -- Season 4: 2739 Arena - MH (Spellpower)
-- SET @EXT_WEP_SEASON_ONE_03_4 := 21 ; -- Season 4: 978 Arena - OH (Spellpower)
-- SET @EXT_WEP_SEASON_ONE_04_4 := 22 ; -- Season 4: 1630 Arena - MH (Melee)
-- SET @EXT_WEP_SEASON_ONE_05_4 := 21 ; -- Season 4: 978 Arena - OH (Melee)
-- SET @EXT_WEP_SEASON_ONE_06_4 := 22 ; -- Season 4: 1630 Arena - Shield
-- SET @EXT_WEP_SEASON_ONE_07_4 := 146; -- Season 4: 870 Arena - Relic, Thrown, Wand
-- SET @EXT_WEP_SEASON_ONE_08_4 := 26 ; -- Season 4: 3261 Arena - Ranged Weapon
-- SET @EXT_WEP_SEASON_ONE_09_4 :=    ; -- Season 4: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_ONE_01_4 := 2280; -- Season 4: 15000 Honor - Head
SET @EXT_ARM_SEASON_ONE_02_4 := 2278; -- Season 4: 13000 Honor - Shoulders
SET @EXT_ARM_SEASON_ONE_03_4 := 2279; -- Season 4: 15000 Honor - Chest
SET @EXT_ARM_SEASON_ONE_04_4 := 2281; -- Season 4: 15000 Honor - Legs
SET @EXT_ARM_SEASON_ONE_05_4 := 2277; -- Season 4: 12000 Honor - Hands
/*------------------------------------------------------------------------*/
/*
	Season Two Arena Vendor
		Present in 3 seasons
*/
/*-------------------------------SEASON 2---------------------------------*/
SET @EXT_WEP_SEASON_TWO_01_2 := 1664; -- Season 2: 3750 Arena - Two-Handed
SET @EXT_WEP_SEASON_TWO_02_2 := 2284; -- Season 2: 3150 Arena - MH (Spellpower)
SET @EXT_WEP_SEASON_TWO_03_2 := 2283; -- Season 2: 1125 Arena - OH (Spellpower)
SET @EXT_WEP_SEASON_TWO_04_2 := 2287; -- Season 2: 2625 Arena - MH (Melee)
SET @EXT_WEP_SEASON_TWO_05_2 := 2286; -- Season 2: 1125 Arena - OH (Melee)
SET @EXT_WEP_SEASON_TWO_06_2 := 2285; -- Season 2: 1875 Arena - Shield
SET @EXT_WEP_SEASON_TWO_07_2 := 1758; -- Season 2: 1000 Arena - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_TWO_08_2 := 1664; -- Season 2: 3750 Arena - Ranged Weapon
-- SET @EXT_WEP_SEASON_TWO_09_2 :=  ; -- Season 2: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_TWO_01_2 := 2285; -- Season 2: 1875 Arena - Head
SET @EXT_ARM_SEASON_TWO_02_2 := 2288; -- Season 2: 1500 Arena - Shoulders
SET @EXT_ARM_SEASON_TWO_03_2 := 2285; -- Season 2: 1875 Arena - Chest
SET @EXT_ARM_SEASON_TWO_04_2 := 2285; -- Season 2: 1875 Arena - Legs
SET @EXT_ARM_SEASON_TWO_05_2 := 2283; -- Season 2: 1125 Arena - Hands
/*-------------------------------SEASON 3---------------------------------*/
SET @EXT_WEP_SEASON_TWO_01_3 := 26  ; -- Season 3: 3261 Arena - Two-Handed
SET @EXT_WEP_SEASON_TWO_02_3 := 148 ; -- Season 3: 2739 Arena - MH (Spellpower)
SET @EXT_WEP_SEASON_TWO_03_3 := 21  ; -- Season 3: 978 Arena - OH (Spellpower)
SET @EXT_WEP_SEASON_TWO_04_3 := 133 ; -- Season 3: 2283 Arena - MH (Melee)
SET @EXT_WEP_SEASON_TWO_05_3 := 21  ; -- Season 3: 978 Arena - OH (Melee)
SET @EXT_WEP_SEASON_TWO_06_3 := 22  ; -- Season 3: 1630 Arena - Shield
SET @EXT_WEP_SEASON_TWO_07_3 := 146 ; -- Season 3: 870 Arena - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_TWO_08_3 := 26  ; -- Season 3: 3261 Arena - Ranged Weapon
-- SET @EXT_WEP_SEASON_TWO_09_3 :=  ; -- Season 3: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_TWO_01_3 := 22  ; -- Season 3: 1630 Arena - Head
SET @EXT_ARM_SEASON_TWO_02_3 := 24  ; -- Season 3: 1304 Arena - Shoulders
SET @EXT_ARM_SEASON_TWO_03_3 := 22  ; -- Season 3: 1630 Arena - Chest
SET @EXT_ARM_SEASON_TWO_04_3 := 22  ; -- Season 3: 1630 Arena - Legs
SET @EXT_ARM_SEASON_TWO_05_3 := 21  ; -- Season 3: 978 Arena - Hands
/*-------------------------------SEASON 4---------------------------------*/
SET @EXT_WEP_SEASON_TWO_01_4 := 2237; -- Season 4: 28000 Honor - Two-Handed
SET @EXT_WEP_SEASON_TWO_02_4 := 2238; -- Season 4: 26000 Honor - MH (Spellpower)
SET @EXT_WEP_SEASON_TWO_03_4 := 2240; -- Season 4: 9100 Honor - OH (Spellpower)
SET @EXT_WEP_SEASON_TWO_04_4 := 2239; -- Season 4: 19000 Honor - MH (Melee)
SET @EXT_WEP_SEASON_TWO_05_4 := 2240; -- Season 4: 9100 Honor - OH (Melee)
SET @EXT_WEP_SEASON_TWO_06_4 := 2242; -- Season 4: 15000 Honor - Shield
SET @EXT_WEP_SEASON_TWO_07_4 := 2241; -- Season 4: 9000 Honor - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_TWO_08_4 := 2237; -- Season 4: 28000 Honor - Ranged Weapon
-- SET @EXT_WEP_SEASON_TWO_09_4 :=  ; -- Season 4: - Hunter Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_TWO_01_4 := 2280; -- Season 4: 15000 Honor - Head
SET @EXT_ARM_SEASON_TWO_02_4 := 2278; -- Season 4: 13000 Honor - Shoulders
SET @EXT_ARM_SEASON_TWO_03_4 := 2279; -- Season 4: 15000 Honor - Chest
SET @EXT_ARM_SEASON_TWO_04_4 := 2281; -- Season 4: 15000 Honor - Legs
SET @EXT_ARM_SEASON_TWO_05_4 := 2277; -- Season 4: 12000 Honor - Hands
/*------------------------------------------------------------------------*/
/*
	Season Three Arena Vendor
		Present in 2 seasons
*/
/*-------------------------------SEASON 3---------------------------------*/
SET @EXT_WEP_SEASON_THREE_01_3 := 2282; -- Season 3: 3750 Arena, 1850 Rating - Two-Handed
SET @EXT_WEP_SEASON_THREE_02_3 := 1757; -- Season 3: 3150 Arena, 1850 Rating - MH (Spellpower)
SET @EXT_WEP_SEASON_THREE_03_3 := 1432; -- Season 3: 1125 Arena, 1850 Rating - OH (Spellpower)
SET @EXT_WEP_SEASON_THREE_04_3 := 1670; -- Season 3: 2625 Arena, 1850 Rating - MH (Melee)
SET @EXT_WEP_SEASON_THREE_05_3 := 1432; -- Season 3: 1125 Arena, 1850 Rating - OH (Melee)
SET @EXT_WEP_SEASON_THREE_06_3 := 1431; -- Season 3: 1875 Arena, 1850 Rating - Shield
SET @EXT_WEP_SEASON_THREE_07_3 := 1758; -- Season 3: 1000 Arena - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_THREE_08_3 := 2282; -- Season 3: 3750 Arena, 1850 Rating - Ranged Weapon
SET @EXT_WEP_SEASON_THREE_09_3 := 1758; -- Season 3: 1000 Arena - Hunter/DK 2-Handed Melee Weapon (Waraxe)
SET @EXT_ARM_SEASON_THREE_01_3 := 2285; -- Season 3: 1875 Arena - Head
SET @EXT_ARM_SEASON_THREE_02_3 := 1435; -- Season 3: 1500 Arena, 2000 Rating - Shoulders
SET @EXT_ARM_SEASON_THREE_03_3 := 2285; -- Season 3: 1875 Arena - Chest
SET @EXT_ARM_SEASON_THREE_04_3 := 2285; -- Season 3: 1875 Arena - Legs
SET @EXT_ARM_SEASON_THREE_05_3 := 2286; -- Season 3: 1125 Arena - Hands
/*-------------------------------SEASON 4---------------------------------*/
SET @EXT_WEP_SEASON_THREE_01_4 := 2386; -- Season 4: 3000 Arena, 1800 Rating - Two-Handed
SET @EXT_WEP_SEASON_THREE_02_4 := 2385; -- Season 4: 2520 Arena, 1800 Rating - MH (Spellpower)
SET @EXT_WEP_SEASON_THREE_03_4 := 2390; -- Season 4: 900 Arena, 1800 Rating - OH (Spellpower)
SET @EXT_WEP_SEASON_THREE_04_4 := 2389; -- Season 4: 2100 Arena, 1800 Rating - MH (Melee)
SET @EXT_WEP_SEASON_THREE_05_4 := 2390; -- Season 4: 900 Arena, 1800 Rating - OH (Melee)
SET @EXT_WEP_SEASON_THREE_06_4 := 2391; -- Season 4: 1500 Arena, 1800 Rating - Shield
SET @EXT_WEP_SEASON_THREE_07_4 := 2388; -- Season 4: 800 Arena - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_THREE_08_4 := 2386; -- Season 4: 3000 Arena, 1800 Rating - Ranged Weapon
SET @EXT_WEP_SEASON_THREE_09_4 := 2388; -- Season 4: 800 Arena - Hunter/DK 2-Handed Melee Weapon (Waraxe)
SET @EXT_ARM_SEASON_THREE_01_4 := 2288; -- Season 4: 1500 Arena - Head
SET @EXT_ARM_SEASON_THREE_02_4 := 2392; -- Season 4: 1200 Arena, 1950 Rating - Shoulders
SET @EXT_ARM_SEASON_THREE_03_4 := 2288; -- Season 4: 1500 Arena - Chest
SET @EXT_ARM_SEASON_THREE_04_4 := 2288; -- Season 4: 1500 Arena - Legs
SET @EXT_ARM_SEASON_THREE_05_4 := 2387; -- Season 4: 900 Arena - Hands
/*------------------------------------------------------------------------*/
/*
	Season Four Arena Vendor
		Present in 1 season
*/
/*-------------------------------SEASON 4---------------------------------*/
SET @EXT_WEP_SEASON_FOUR_01_4 := 2360; -- Season 4: 3750 Arena, 2050 Rating - Two-Handed
SET @EXT_WEP_SEASON_FOUR_02_4 := 2361; -- Season 4: 3150 Arena, 2050 Rating - MH (Spellpower)
SET @EXT_WEP_SEASON_FOUR_03_4 := 2363; -- Season 4: 1125 Arena, 2050 Rating - OH (Spellpower)
SET @EXT_WEP_SEASON_FOUR_04_4 := 2362; -- Season 4: 2625 Arena, 2050 Rating - MH (Melee)
SET @EXT_WEP_SEASON_FOUR_05_4 := 2363; -- Season 4: 1125 Arena, 2050 Rating - OH (Melee)
SET @EXT_WEP_SEASON_FOUR_06_4 := 2364; -- Season 4: 1875 Arena, 2050 Rating - Shield
SET @EXT_WEP_SEASON_FOUR_07_4 := 2339; -- Season 4: 1000 Arena, 1750 Rating - Relic, Thrown, Wand
SET @EXT_WEP_SEASON_FOUR_08_4 := 2360; -- Season 4: 3750 Arena, 2050 Rating - Ranged Weapon
SET @EXT_WEP_SEASON_FOUR_09_4 := 2375; -- Season 4: 650 Arena, 2050 Rating - Hunter 1-Handed Melee Weapons (Hatchet, Waraxe)
SET @EXT_ARM_SEASON_FOUR_01_4 := 2365; -- Season 4: 1875 Arena, 1700 Rating - Head
SET @EXT_ARM_SEASON_FOUR_02_4 := 2359; -- Season 4: 1500 Arena, 2200 Rating - Shoulders
SET @EXT_ARM_SEASON_FOUR_03_4 := 2337; -- Season 4: 1875 Arena, 1600 Rating - Chest
SET @EXT_ARM_SEASON_FOUR_04_4 := 2366; -- Season 4: 1875 Arena, 1550 Rating - Legs
SET @EXT_ARM_SEASON_FOUR_05_4 := 2342; -- Season 4: 1125 Arena - Hands
-- SET @EXT_GEM_SEASON_FOUR_01_4 := 2388; -- Season 4: 800 Arena
/*------------------------------------------------------------------------*/
/*
	Arena Accessory Vendor
		Present in 3 seasons, from 2nd to 4th
*/
/*-------------------------------SEASON 2---------------------------------*/
SET @EXT_ACC_ACCESSORY_01_2 := 2028; -- Season 2: 16000 Honor - Veteran's Bands
SET @EXT_ACC_ACCESSORY_02_2 := 1935; -- Season 2: 13000 Honor - Wrist
SET @EXT_ACC_ACCESSORY_03_2 := 1923; -- Season 2: 18000 Honor - Waist
SET @EXT_ACC_ACCESSORY_04_2 := 1911; -- Season 2: 18000 Honor - Feet
SET @EXT_ACC_ACCESSORY_05_2 := 127 ; -- Season 2: 16000 Honor - Veteran's Pendant
-- SET @EXT_GEM_ACCESSORY_01_2 := 2388; -- Season 2: 800 Arena - Gems
/*-------------------------------SEASON 3---------------------------------*/
SET @EXT_ACC_ACCESSORY_01_3 := 2289; -- Season 3: 31000 Honor - Battlemaster Trinkets
SET @EXT_ACC_ACCESSORY_02_3 := 129 ; -- Season 3: 12000 Honor - Veteran's Band
SET @EXT_ACC_ACCESSORY_03_3 := 2028; -- Season 3: 16000 Honor - Vindicator's Band
SET @EXT_ACC_ACCESSORY_04_3 := 1935; -- Season 3: 13000 Honor - Wrist
SET @EXT_ACC_ACCESSORY_05_3 := 1923; -- Season 3: 18000 Honor - Waist
SET @EXT_ACC_ACCESSORY_06_3 := 1923; -- Season 3: 18000 Honor - Feet
SET @EXT_ACC_ACCESSORY_07_3 := 127 ; -- Season 3: 16000 Honor - Vindicator's Pendant
-- SET @EXT_GEM_ACCESSORY_01_3 := 2388; -- Season 3: 800 Arena - Gems
/*-------------------------------SEASON 4---------------------------------*/
SET @EXT_ACC_ACCESSORY_01_4  := 2289; -- Season 4: 31000 Honor - Battlemaster Trinkets
SET @EXT_ACC_ACCESSORY_02_4  := 2402; -- Season 4: 16000 Honor, 1650 Rating - Guardian Bands
SET @EXT_ACC_ACCESSORY_03_4  := 2401; -- Season 4: 13000 Honor, 1575 Rating - Guardian Wrist
SET @EXT_ACC_ACCESSORY_04_4  := 1923; -- Season 4: 18000 Honor - Guardian Waist
SET @EXT_ACC_ACCESSORY_05_4  := 2400; -- Season 4: 18000 Honor, 1700 Rating - Guardian Feet
SET @EXT_ACC_ACCESSORY_06_4  := 127 ; -- Season 4: 16000 Honor - Guardian Pendant
SET @EXT_ACC_ACCESSORY_07_4  := 129 ; -- Season 4: 12000 Honor - Vindicator Band
SET @EXT_ACC_ACCESSORY_08_4  := 2405; -- Season 4: 9200 Honor - Vindicator Wrist
SET @EXT_ACC_ACCESSORY_09_4  := 2406; -- Season 4: 15000 Honor - Vindicator Feet
SET @EXT_ACC_ACCESSORY_10_4  := 2248; -- Season 4: 12000 Honor - Vindicator Pendant
SET @EXT_GEM_ACCESSORY_01_4  := 2388; -- Season 4: 800 Arena - Gems
/*------------------------------------------------------------------------*/

-- Season 0
DELETE FROM `game_event_npc_vendor` WHERE `eventEntry` IN (75, 76, 55, 56, 60) AND `guid` IN (@GUID_ARMOR_ALLIANCE_0,@GUID_ACCESSORY_ALLIANCE_0,@GUID_WEAPON_ALLIANCE_0,@GUID_ARMOR_HORDE_0,@GUID_ACCESSORY_HORDE_0,@GUID_WEAPON_HORDE_0,@GUID_WEAPON_HORDE_1,@GUID_WEAPON_HORDE_2,@GUID_WEAPON_HORDE_3,@GUID_WEAPON_HORDE_4,@GUID_ACCESSORY_HORDE_1,@GUID_ACCESSORY_HORDE_2,@GUID_ACCESSORY_HORDE_3,@GUID_ACCESSORY_HORDE_4,@GUID_ARMOR_HORDE_1,@GUID_ARMOR_HORDE_2,@GUID_ARMOR_HORDE_3,@GUID_ARMOR_HORDE_4,@GUID_ARMOR_ALLIANCE_1,@GUID_ARMOR_ALLIANCE_2,@GUID_ARMOR_ALLIANCE_3,@GUID_ARMOR_ALLIANCE_4,@GUID_WEAPON_ALLIANCE_1,@GUID_WEAPON_ALLIANCE_2,@GUID_WEAPON_ALLIANCE_3,@GUID_WEAPON_ALLIANCE_4,@GUID_ACCESSORY_ALLIANCE_1,@GUID_ACCESSORY_ALLIANCE_2,@GUID_ACCESSORY_ALLIANCE_3,@GUID_ACCESSORY_ALLIANCE_4,@GUID_SEASON_ONE_1,@GUID_SEASON_ONE_2,@GUID_SEASON_ONE_3,@GUID_SEASON_ONE_4,@GUID_SEASON_TWO_2,@GUID_SEASON_TWO_3,@GUID_SEASON_TWO_4,@GUID_ARENA_ACCESSORY_2,@GUID_ARENA_ACCESSORY_3,@GUID_ARENA_ACCESSORY_4,@GUID_SEASON_THREE_3,@GUID_SEASON_THREE_4,@GUID_SEASON_FOUR_4);
INSERT INTO `game_event_npc_vendor` (`eventEntry`, `guid`, `item`, `slot`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(60, @GUID_WEAPON_ALLIANCE_0   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Bonegrinder
(60, @GUID_WEAPON_ALLIANCE_0   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Warblade
(60, @GUID_WEAPON_ALLIANCE_0   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Decapitator
(60, @GUID_WEAPON_ALLIANCE_0   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Maul
(60, @GUID_WEAPON_ALLIANCE_0   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Painsaw
(60, @GUID_WEAPON_ALLIANCE_0   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's War Staff
(60, @GUID_WEAPON_ALLIANCE_0   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Barricade
(60, @GUID_WEAPON_ALLIANCE_0   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Battletome
(60, @GUID_WEAPON_ALLIANCE_0   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Cleaver
(60, @GUID_WEAPON_ALLIANCE_0   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Hacker
(60, @GUID_WEAPON_ALLIANCE_0   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Left Ripper
(60, @GUID_WEAPON_ALLIANCE_0   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Bonecracker
(60, @GUID_WEAPON_ALLIANCE_0   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Pummeler
(60, @GUID_WEAPON_ALLIANCE_0   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Quickblade
(60, @GUID_WEAPON_ALLIANCE_0   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Right Ripper
(60, @GUID_WEAPON_ALLIANCE_0   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Shanker
(60, @GUID_WEAPON_ALLIANCE_0   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Shiv
(60, @GUID_WEAPON_ALLIANCE_0   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Slicer
(60, @GUID_WEAPON_ALLIANCE_0   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Spellblade
(60, @GUID_WEAPON_ALLIANCE_0   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_1), -- Grand Marshal's Heavy Crossbow
(60, @GUID_ARMOR_ALLIANCE_0    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Chain Armor
(60, @GUID_ARMOR_ALLIANCE_0    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Chain Gauntlets
(60, @GUID_ARMOR_ALLIANCE_0    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Chain Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Chain Leggings
(60, @GUID_ARMOR_ALLIANCE_0    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Chain Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Dragonhide Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Dragonhide Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Dragonhide Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Dragonhide Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Dragonhide Tunic
(60, @GUID_ARMOR_ALLIANCE_0    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Dreadweave Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Dreadweave Hood
(60, @GUID_ARMOR_ALLIANCE_0    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Dreadweave Leggings
(60, @GUID_ARMOR_ALLIANCE_0    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Dreadweave Mantle
(60, @GUID_ARMOR_ALLIANCE_0    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Dreadweave Robe
(60, @GUID_ARMOR_ALLIANCE_0    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Kodohide Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Kodohide Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Kodohide Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Kodohide Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Kodohide Tunic
(60, @GUID_ARMOR_ALLIANCE_0    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Lamellar Chestpiece
(60, @GUID_ARMOR_ALLIANCE_0    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Lamellar Gauntlets
(60, @GUID_ARMOR_ALLIANCE_0    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Lamellar Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Lamellar Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Lamellar Shoulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Leather Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Leather Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Leather Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Leather Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Leather Tunic
(60, @GUID_ARMOR_ALLIANCE_0    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Linked Armor
(60, @GUID_ARMOR_ALLIANCE_0    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Linked Gauntlets
(60, @GUID_ARMOR_ALLIANCE_0    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Linked Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Linked Leggings
(60, @GUID_ARMOR_ALLIANCE_0    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Linked Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Mail Armor
(60, @GUID_ARMOR_ALLIANCE_0    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Mail Gauntlets
(60, @GUID_ARMOR_ALLIANCE_0    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Mail Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Mail Leggings
(60, @GUID_ARMOR_ALLIANCE_0    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Mail Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Mooncloth Cowl
(60, @GUID_ARMOR_ALLIANCE_0    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Mooncloth Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Mooncloth Mitts
(60, @GUID_ARMOR_ALLIANCE_0    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Mooncloth Shoulderpads
(60, @GUID_ARMOR_ALLIANCE_0    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Mooncloth Vestments
(60, @GUID_ARMOR_ALLIANCE_0    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Ornamented Chestplate
(60, @GUID_ARMOR_ALLIANCE_0    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Ornamented Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Ornamented Headguard
(60, @GUID_ARMOR_ALLIANCE_0    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Ornamented Leggings
(60, @GUID_ARMOR_ALLIANCE_0    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Ornamented Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Plate Chestpiece
(60, @GUID_ARMOR_ALLIANCE_0    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Plate Gauntlets
(60, @GUID_ARMOR_ALLIANCE_0    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Plate Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Plate Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Plate Shoulders
(60, @GUID_ARMOR_ALLIANCE_0    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Ringmail Chestguard
(60, @GUID_ARMOR_ALLIANCE_0    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Ringmail Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Ringmail Headpiece
(60, @GUID_ARMOR_ALLIANCE_0    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Ringmail Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Ringmail Shoulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Satin Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Satin Hood
(60, @GUID_ARMOR_ALLIANCE_0    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Satin Leggings
(60, @GUID_ARMOR_ALLIANCE_0    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Satin Mantle
(60, @GUID_ARMOR_ALLIANCE_0    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Satin Robe
(60, @GUID_ARMOR_ALLIANCE_0    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Scaled Chestpiece
(60, @GUID_ARMOR_ALLIANCE_0    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Scaled Gauntlets
(60, @GUID_ARMOR_ALLIANCE_0    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Scaled Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Scaled Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Scaled Shoulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Silk Amice
(60, @GUID_ARMOR_ALLIANCE_0    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Silk Cowl
(60, @GUID_ARMOR_ALLIANCE_0    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Silk Handguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Silk Raiment
(60, @GUID_ARMOR_ALLIANCE_0    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Silk Trousers
(60, @GUID_ARMOR_ALLIANCE_0    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Wyrmhide Gloves
(60, @GUID_ARMOR_ALLIANCE_0    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Wyrmhide Helm
(60, @GUID_ARMOR_ALLIANCE_0    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Wyrmhide Legguards
(60, @GUID_ARMOR_ALLIANCE_0    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Wyrmhide Spaulders
(60, @GUID_ARMOR_ALLIANCE_0    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Wyrmhide Tunic
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Chain Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Chain Girdle
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Chain Sabatons
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Dragonhide Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Dragonhide Boots
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Dragonhide Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Dreadweave Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Dreadweave Cuffs
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Dreadweave Stalkers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Kodohide Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Kodohide Boots
-- (60, @GUID_ARMOR_ALLIANCE_0    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Kodohide Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Lamellar Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Lamellar Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Lamellar Greaves
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Leather Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Leather Boots
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Leather Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Linked Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Linked Girdle
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Linked Sabatons
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Mail Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Mail Girdle
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Mail Sabatons
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Plate Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Plate Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Plate Greaves
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Scaled Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Scaled Bracers
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Scaled Greaves
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Silk Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Silk Cuffs
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Silk Footguards
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Wyrmhide Belt
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Wyrmhide Boots
-- (60, @GUID_ARMOR_ALLIANCE_0    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Wyrmhide Bracers
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Bold Ornate Ruby
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Gleaming Ornate Dawnstone
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Runed Ornate Ruby
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Smooth Ornate Dawnstone
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Inscribed Ornate Topaz
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Potent Ornate Topaz
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_1), -- Talisman of the Alliance
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Dominance
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Triumph
(60, @GUID_ACCESSORY_ALLIANCE_0, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Dominance
(60, @GUID_ACCESSORY_ALLIANCE_0, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Triumph
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cape
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cloak
(60, @GUID_ACCESSORY_ALLIANCE_0, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_1), -- Star's Lament
(60, @GUID_ACCESSORY_ALLIANCE_0, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_1), -- Star's Tears
(60, @GUID_ACCESSORY_ALLIANCE_0, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Mana Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Mana Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Mana Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_ALLIANCE_0, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Mana Potion
-- (60, @GUID_ACCESSORY_ALLIANCE_0, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_ACCESSORY_ALLIANCE_0, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(60, @GUID_WEAPON_HORDE_0      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Claymore
(60, @GUID_WEAPON_HORDE_0      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Bonegrinder
(60, @GUID_WEAPON_HORDE_0      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Decapitator
(60, @GUID_WEAPON_HORDE_0      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Maul
(60, @GUID_WEAPON_HORDE_0      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Painsaw
(60, @GUID_WEAPON_HORDE_0      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's War Staff
(60, @GUID_WEAPON_HORDE_0      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Cleaver
(60, @GUID_WEAPON_HORDE_0      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Hacker
(60, @GUID_WEAPON_HORDE_0      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Left Ripper
(60, @GUID_WEAPON_HORDE_0      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Bonecracker
(60, @GUID_WEAPON_HORDE_0      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Pummeler
(60, @GUID_WEAPON_HORDE_0      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Quickblade
(60, @GUID_WEAPON_HORDE_0      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Right Ripper
(60, @GUID_WEAPON_HORDE_0      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Shanker
(60, @GUID_WEAPON_HORDE_0      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Shiv
(60, @GUID_WEAPON_HORDE_0      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Spellblade
(60, @GUID_WEAPON_HORDE_0      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Slicer
(60, @GUID_WEAPON_HORDE_0      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Battletome
(60, @GUID_WEAPON_HORDE_0      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Barricade
(60, @GUID_WEAPON_HORDE_0      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_1), -- High Warlord's Heavy Crossbow
-- (60, @GUID_ARMOR_HORDE_0       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Chain Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Chain Girdle
-- (60, @GUID_ARMOR_HORDE_0       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Chain Sabatons
-- (60, @GUID_ARMOR_HORDE_0       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Dragonhide Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Dragonhide Boots
-- (60, @GUID_ARMOR_HORDE_0       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Dragonhide Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Dreadweave Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Dreadweave Cuffs
-- (60, @GUID_ARMOR_HORDE_0       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Dreadweave Stalkers
-- (60, @GUID_ARMOR_HORDE_0       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Kodohide Belt
-- (60, @GUID_ARMOR_HORDE_0       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Kodohide Boots
-- (60, @GUID_ARMOR_HORDE_0       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Kodohide Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Lamellar Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Lamellar Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Lamellar Greaves
-- (60, @GUID_ARMOR_HORDE_0       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Leather Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Leather Boots
-- (60, @GUID_ARMOR_HORDE_0       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Leather Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Linked Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Linked Girdle
-- (60, @GUID_ARMOR_HORDE_0       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Linked Sabatons
-- (60, @GUID_ARMOR_HORDE_0       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Mail Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Mail Girdle
-- (60, @GUID_ARMOR_HORDE_0       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Mail Sabatons
-- (60, @GUID_ARMOR_HORDE_0       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Plate Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Plate Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Plate Greaves
-- (60, @GUID_ARMOR_HORDE_0       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Scaled Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Scaled Bracers
-- (60, @GUID_ARMOR_HORDE_0       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Scaled Greaves
-- (60, @GUID_ARMOR_HORDE_0       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Silk Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Silk Cuffs
-- (60, @GUID_ARMOR_HORDE_0       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Silk Footguards
-- (60, @GUID_ARMOR_HORDE_0       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Wyrmhide Belt
-- (60, @GUID_ARMOR_HORDE_0       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Wyrmhide Boots
-- (60, @GUID_ARMOR_HORDE_0       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Wyrmhide Bracers
(60, @GUID_ARMOR_HORDE_0       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Chain Armor
(60, @GUID_ARMOR_HORDE_0       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Chain Gauntlets
(60, @GUID_ARMOR_HORDE_0       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Chain Helm
(60, @GUID_ARMOR_HORDE_0       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Chain Leggings
(60, @GUID_ARMOR_HORDE_0       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Chain Spaulders
(60, @GUID_ARMOR_HORDE_0       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Dragonhide Gloves
(60, @GUID_ARMOR_HORDE_0       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Dragonhide Helm
(60, @GUID_ARMOR_HORDE_0       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Dragonhide Legguards
(60, @GUID_ARMOR_HORDE_0       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Dragonhide Spaulders
(60, @GUID_ARMOR_HORDE_0       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Dragonhide Tunic
(60, @GUID_ARMOR_HORDE_0       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Dreadweave Gloves
(60, @GUID_ARMOR_HORDE_0       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Dreadweave Hood
(60, @GUID_ARMOR_HORDE_0       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Dreadweave Leggings
(60, @GUID_ARMOR_HORDE_0       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Dreadweave Mantle
(60, @GUID_ARMOR_HORDE_0       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Dreadweave Robe
(60, @GUID_ARMOR_HORDE_0       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Kodohide Gloves
(60, @GUID_ARMOR_HORDE_0       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Kodohide Helm
(60, @GUID_ARMOR_HORDE_0       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Kodohide Legguards
(60, @GUID_ARMOR_HORDE_0       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Kodohide Spaulders
(60, @GUID_ARMOR_HORDE_0       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Kodohide Tunic
(60, @GUID_ARMOR_HORDE_0       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Lamellar Chestpiece
(60, @GUID_ARMOR_HORDE_0       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Lamellar Gauntlets
(60, @GUID_ARMOR_HORDE_0       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Lamellar Helm
(60, @GUID_ARMOR_HORDE_0       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Lamellar Legguards
(60, @GUID_ARMOR_HORDE_0       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Lamellar Shoulders
(60, @GUID_ARMOR_HORDE_0       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Leather Gloves
(60, @GUID_ARMOR_HORDE_0       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Leather Helm
(60, @GUID_ARMOR_HORDE_0       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Leather Legguards
(60, @GUID_ARMOR_HORDE_0       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Leather Spaulders
(60, @GUID_ARMOR_HORDE_0       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Leather Tunic
(60, @GUID_ARMOR_HORDE_0       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Linked Armor
(60, @GUID_ARMOR_HORDE_0       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Linked Gauntlets
(60, @GUID_ARMOR_HORDE_0       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Linked Helm
(60, @GUID_ARMOR_HORDE_0       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Linked Leggings
(60, @GUID_ARMOR_HORDE_0       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Linked Spaulders
(60, @GUID_ARMOR_HORDE_0       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Mail Armor
(60, @GUID_ARMOR_HORDE_0       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Mail Gauntlets
(60, @GUID_ARMOR_HORDE_0       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Mail Helm
(60, @GUID_ARMOR_HORDE_0       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Mail Leggings
(60, @GUID_ARMOR_HORDE_0       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Mail Spaulders
(60, @GUID_ARMOR_HORDE_0       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Mooncloth Cowl
(60, @GUID_ARMOR_HORDE_0       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Mooncloth Legguards
(60, @GUID_ARMOR_HORDE_0       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Mooncloth Mitts
(60, @GUID_ARMOR_HORDE_0       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Mooncloth Shoulderpads
(60, @GUID_ARMOR_HORDE_0       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Mooncloth Vestments
(60, @GUID_ARMOR_HORDE_0       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Ornamented Chestplate
(60, @GUID_ARMOR_HORDE_0       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Ornamented Gloves
(60, @GUID_ARMOR_HORDE_0       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Ornamented Headguard
(60, @GUID_ARMOR_HORDE_0       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Ornamented Leggings
(60, @GUID_ARMOR_HORDE_0       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Ornamented Spaulders
(60, @GUID_ARMOR_HORDE_0       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Plate Chestpiece
(60, @GUID_ARMOR_HORDE_0       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Plate Gauntlets
(60, @GUID_ARMOR_HORDE_0       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Plate Helm
(60, @GUID_ARMOR_HORDE_0       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Plate Legguards
(60, @GUID_ARMOR_HORDE_0       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Plate Shoulders
(60, @GUID_ARMOR_HORDE_0       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Ringmail Chestguard
(60, @GUID_ARMOR_HORDE_0       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Ringmail Gloves
(60, @GUID_ARMOR_HORDE_0       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Ringmail Headpiece
(60, @GUID_ARMOR_HORDE_0       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Ringmail Legguards
(60, @GUID_ARMOR_HORDE_0       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Ringmail Shoulderpads
(60, @GUID_ARMOR_HORDE_0       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Satin Gloves
(60, @GUID_ARMOR_HORDE_0       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Satin Hood
(60, @GUID_ARMOR_HORDE_0       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Satin Leggings
(60, @GUID_ARMOR_HORDE_0       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Satin Mantle
(60, @GUID_ARMOR_HORDE_0       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Satin Robe
(60, @GUID_ARMOR_HORDE_0       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Scaled Chestpiece
(60, @GUID_ARMOR_HORDE_0       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Scaled Gauntlets
(60, @GUID_ARMOR_HORDE_0       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Scaled Helm
(60, @GUID_ARMOR_HORDE_0       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Scaled Legguards
(60, @GUID_ARMOR_HORDE_0       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Scaled Shoulders
(60, @GUID_ARMOR_HORDE_0       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Silk Amice
(60, @GUID_ARMOR_HORDE_0       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Silk Cowl
(60, @GUID_ARMOR_HORDE_0       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Silk Handguards
(60, @GUID_ARMOR_HORDE_0       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Silk Raiment
(60, @GUID_ARMOR_HORDE_0       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Silk Trousers
(60, @GUID_ARMOR_HORDE_0       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Wyrmhide Gloves
(60, @GUID_ARMOR_HORDE_0       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Wyrmhide Helm
(60, @GUID_ARMOR_HORDE_0       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Wyrmhide Legguards
(60, @GUID_ARMOR_HORDE_0       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Wyrmhide Spaulders
(60, @GUID_ARMOR_HORDE_0       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Wyrmhide Tunic
-- (60, @GUID_ACCESSORY_HORDE_0   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Runed Ornate Ruby
-- (60, @GUID_ACCESSORY_HORDE_0   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Smooth Ornate Dawnstone
-- (60, @GUID_ACCESSORY_HORDE_0   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Gleaming Ornate Dawnstone
-- (60, @GUID_ACCESSORY_HORDE_0   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Bold Ornate Ruby
-- (60, @GUID_ACCESSORY_HORDE_0   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Potent Ornate Topaz
-- (60, @GUID_ACCESSORY_HORDE_0   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Inscribed Ornate Topaz
-- (60, @GUID_ACCESSORY_HORDE_0   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_1), -- Talisman of the Horde
-- (60, @GUID_ACCESSORY_HORDE_0   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Triumph
-- (60, @GUID_ACCESSORY_HORDE_0   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Dominance
(60, @GUID_ACCESSORY_HORDE_0   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Triumph
(60, @GUID_ACCESSORY_HORDE_0   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Dominance
-- (60, @GUID_ACCESSORY_HORDE_0   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cloak
-- (60, @GUID_ACCESSORY_HORDE_0   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cape
(60, @GUID_ACCESSORY_HORDE_0   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_1), -- Star's Lament
(60, @GUID_ACCESSORY_HORDE_0   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_1), -- Star's Tears
(60, @GUID_ACCESSORY_HORDE_0   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Mana Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Mana Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Mana Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Healing Potion
(60, @GUID_ACCESSORY_HORDE_0   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Mana Potion
-- (60, @GUID_ACCESSORY_HORDE_0   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(60, @GUID_ACCESSORY_HORDE_0   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
-- Season 1
(75, @GUID_WEAPON_ALLIANCE_1   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Bonegrinder
(75, @GUID_WEAPON_ALLIANCE_1   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Warblade
(75, @GUID_WEAPON_ALLIANCE_1   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Decapitator
(75, @GUID_WEAPON_ALLIANCE_1   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Maul
(75, @GUID_WEAPON_ALLIANCE_1   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's Painsaw
(75, @GUID_WEAPON_ALLIANCE_1   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- Grand Marshal's War Staff
(75, @GUID_WEAPON_ALLIANCE_1   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Barricade
(75, @GUID_WEAPON_ALLIANCE_1   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Battletome
(75, @GUID_WEAPON_ALLIANCE_1   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Cleaver
(75, @GUID_WEAPON_ALLIANCE_1   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Hacker
(75, @GUID_WEAPON_ALLIANCE_1   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Left Ripper
(75, @GUID_WEAPON_ALLIANCE_1   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Bonecracker
(75, @GUID_WEAPON_ALLIANCE_1   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Pummeler
(75, @GUID_WEAPON_ALLIANCE_1   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Quickblade
(75, @GUID_WEAPON_ALLIANCE_1   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Right Ripper
(75, @GUID_WEAPON_ALLIANCE_1   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Shanker
(75, @GUID_WEAPON_ALLIANCE_1   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Shiv
(75, @GUID_WEAPON_ALLIANCE_1   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Slicer
(75, @GUID_WEAPON_ALLIANCE_1   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- Grand Marshal's Spellblade
(75, @GUID_WEAPON_ALLIANCE_1   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_1), -- Grand Marshal's Heavy Crossbow
(75, @GUID_ARMOR_ALLIANCE_1    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Chain Armor
(75, @GUID_ARMOR_ALLIANCE_1    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Chain Gauntlets
(75, @GUID_ARMOR_ALLIANCE_1    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Chain Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Chain Leggings
(75, @GUID_ARMOR_ALLIANCE_1    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Chain Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Dragonhide Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Dragonhide Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Dragonhide Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Dragonhide Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Dragonhide Tunic
(75, @GUID_ARMOR_ALLIANCE_1    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Dreadweave Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Dreadweave Hood
(75, @GUID_ARMOR_ALLIANCE_1    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Dreadweave Leggings
(75, @GUID_ARMOR_ALLIANCE_1    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Dreadweave Mantle
(75, @GUID_ARMOR_ALLIANCE_1    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Dreadweave Robe
(75, @GUID_ARMOR_ALLIANCE_1    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Kodohide Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Kodohide Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Kodohide Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Kodohide Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Kodohide Tunic
(75, @GUID_ARMOR_ALLIANCE_1    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Lamellar Chestpiece
(75, @GUID_ARMOR_ALLIANCE_1    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Lamellar Gauntlets
(75, @GUID_ARMOR_ALLIANCE_1    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Lamellar Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Lamellar Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Lamellar Shoulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Leather Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Leather Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Leather Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Leather Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Leather Tunic
(75, @GUID_ARMOR_ALLIANCE_1    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Linked Armor
(75, @GUID_ARMOR_ALLIANCE_1    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Linked Gauntlets
(75, @GUID_ARMOR_ALLIANCE_1    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Linked Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Linked Leggings
(75, @GUID_ARMOR_ALLIANCE_1    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Linked Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Mail Armor
(75, @GUID_ARMOR_ALLIANCE_1    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Mail Gauntlets
(75, @GUID_ARMOR_ALLIANCE_1    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Mail Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Mail Leggings
(75, @GUID_ARMOR_ALLIANCE_1    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Mail Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Mooncloth Cowl
(75, @GUID_ARMOR_ALLIANCE_1    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Mooncloth Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Mooncloth Mitts
(75, @GUID_ARMOR_ALLIANCE_1    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Mooncloth Shoulderpads
(75, @GUID_ARMOR_ALLIANCE_1    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Mooncloth Vestments
(75, @GUID_ARMOR_ALLIANCE_1    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Ornamented Chestplate
(75, @GUID_ARMOR_ALLIANCE_1    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Ornamented Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Ornamented Headguard
(75, @GUID_ARMOR_ALLIANCE_1    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Ornamented Leggings
(75, @GUID_ARMOR_ALLIANCE_1    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Ornamented Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Plate Chestpiece
(75, @GUID_ARMOR_ALLIANCE_1    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Plate Gauntlets
(75, @GUID_ARMOR_ALLIANCE_1    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Plate Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Plate Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Plate Shoulders
(75, @GUID_ARMOR_ALLIANCE_1    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Ringmail Chestguard
(75, @GUID_ARMOR_ALLIANCE_1    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Ringmail Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Ringmail Headpiece
(75, @GUID_ARMOR_ALLIANCE_1    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Ringmail Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Ringmail Shoulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Satin Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Satin Hood
(75, @GUID_ARMOR_ALLIANCE_1    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Satin Leggings
(75, @GUID_ARMOR_ALLIANCE_1    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Satin Mantle
(75, @GUID_ARMOR_ALLIANCE_1    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Satin Robe
(75, @GUID_ARMOR_ALLIANCE_1    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Scaled Chestpiece
(75, @GUID_ARMOR_ALLIANCE_1    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Scaled Gauntlets
(75, @GUID_ARMOR_ALLIANCE_1    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Scaled Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Scaled Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Scaled Shoulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Silk Amice
(75, @GUID_ARMOR_ALLIANCE_1    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Silk Cowl
(75, @GUID_ARMOR_ALLIANCE_1    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Silk Handguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Silk Raiment
(75, @GUID_ARMOR_ALLIANCE_1    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Silk Trousers
(75, @GUID_ARMOR_ALLIANCE_1    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- Grand Marshal's Wyrmhide Gloves
(75, @GUID_ARMOR_ALLIANCE_1    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- Grand Marshal's Wyrmhide Helm
(75, @GUID_ARMOR_ALLIANCE_1    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- Grand Marshal's Wyrmhide Legguards
(75, @GUID_ARMOR_ALLIANCE_1    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- Grand Marshal's Wyrmhide Spaulders
(75, @GUID_ARMOR_ALLIANCE_1    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- Grand Marshal's Wyrmhide Tunic
(75, @GUID_ARMOR_ALLIANCE_1    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Chain Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Chain Girdle
(75, @GUID_ARMOR_ALLIANCE_1    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Chain Sabatons
(75, @GUID_ARMOR_ALLIANCE_1    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Dragonhide Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Dragonhide Boots
(75, @GUID_ARMOR_ALLIANCE_1    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Dragonhide Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Dreadweave Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Dreadweave Cuffs
(75, @GUID_ARMOR_ALLIANCE_1    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Dreadweave Stalkers
(75, @GUID_ARMOR_ALLIANCE_1    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Kodohide Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Kodohide Boots
(75, @GUID_ARMOR_ALLIANCE_1    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Kodohide Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Lamellar Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Lamellar Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Lamellar Greaves
(75, @GUID_ARMOR_ALLIANCE_1    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Leather Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Leather Boots
(75, @GUID_ARMOR_ALLIANCE_1    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Leather Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Linked Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Linked Girdle
(75, @GUID_ARMOR_ALLIANCE_1    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Linked Sabatons
(75, @GUID_ARMOR_ALLIANCE_1    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Mail Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Mail Girdle
(75, @GUID_ARMOR_ALLIANCE_1    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Mail Sabatons
(75, @GUID_ARMOR_ALLIANCE_1    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Plate Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Plate Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Plate Greaves
(75, @GUID_ARMOR_ALLIANCE_1    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Scaled Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Scaled Bracers
(75, @GUID_ARMOR_ALLIANCE_1    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Scaled Greaves
(75, @GUID_ARMOR_ALLIANCE_1    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Silk Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Silk Cuffs
(75, @GUID_ARMOR_ALLIANCE_1    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Silk Footguards
(75, @GUID_ARMOR_ALLIANCE_1    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- Marshal's Wyrmhide Belt
(75, @GUID_ARMOR_ALLIANCE_1    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- Marshal's Wyrmhide Boots
(75, @GUID_ARMOR_ALLIANCE_1    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- Marshal's Wyrmhide Bracers
(75, @GUID_ACCESSORY_ALLIANCE_1, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Bold Ornate Ruby
(75, @GUID_ACCESSORY_ALLIANCE_1, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Gleaming Ornate Dawnstone
(75, @GUID_ACCESSORY_ALLIANCE_1, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Runed Ornate Ruby
(75, @GUID_ACCESSORY_ALLIANCE_1, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Smooth Ornate Dawnstone
(75, @GUID_ACCESSORY_ALLIANCE_1, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Inscribed Ornate Topaz
(75, @GUID_ACCESSORY_ALLIANCE_1, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Potent Ornate Topaz
(75, @GUID_ACCESSORY_ALLIANCE_1, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_1), -- Talisman of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Dominance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Triumph
(75, @GUID_ACCESSORY_ALLIANCE_1, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Dominance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Triumph
(75, @GUID_ACCESSORY_ALLIANCE_1, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cape
(75, @GUID_ACCESSORY_ALLIANCE_1, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cloak
(75, @GUID_ACCESSORY_ALLIANCE_1, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_1), -- Star's Lament
(75, @GUID_ACCESSORY_ALLIANCE_1, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_1), -- Star's Tears
(75, @GUID_ACCESSORY_ALLIANCE_1, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_ALLIANCE_1, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_ACCESSORY_ALLIANCE_1, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Alliance
(75, @GUID_WEAPON_HORDE_1      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Claymore
(75, @GUID_WEAPON_HORDE_1      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Bonegrinder
(75, @GUID_WEAPON_HORDE_1      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Decapitator
(75, @GUID_WEAPON_HORDE_1      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Maul
(75, @GUID_WEAPON_HORDE_1      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's Painsaw
(75, @GUID_WEAPON_HORDE_1      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_1), -- High Warlord's War Staff
(75, @GUID_WEAPON_HORDE_1      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Cleaver
(75, @GUID_WEAPON_HORDE_1      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Hacker
(75, @GUID_WEAPON_HORDE_1      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Left Ripper
(75, @GUID_WEAPON_HORDE_1      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Bonecracker
(75, @GUID_WEAPON_HORDE_1      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Pummeler
(75, @GUID_WEAPON_HORDE_1      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Quickblade
(75, @GUID_WEAPON_HORDE_1      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Right Ripper
(75, @GUID_WEAPON_HORDE_1      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Shanker
(75, @GUID_WEAPON_HORDE_1      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Shiv
(75, @GUID_WEAPON_HORDE_1      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Spellblade
(75, @GUID_WEAPON_HORDE_1      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Slicer
(75, @GUID_WEAPON_HORDE_1      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Battletome
(75, @GUID_WEAPON_HORDE_1      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_1), -- High Warlord's Barricade
(75, @GUID_WEAPON_HORDE_1      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_1), -- High Warlord's Heavy Crossbow
(75, @GUID_ARMOR_HORDE_1       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Chain Bracers
(75, @GUID_ARMOR_HORDE_1       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Chain Girdle
(75, @GUID_ARMOR_HORDE_1       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Chain Sabatons
(75, @GUID_ARMOR_HORDE_1       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Dragonhide Belt
(75, @GUID_ARMOR_HORDE_1       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Dragonhide Boots
(75, @GUID_ARMOR_HORDE_1       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Dragonhide Bracers
(75, @GUID_ARMOR_HORDE_1       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Dreadweave Belt
(75, @GUID_ARMOR_HORDE_1       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Dreadweave Cuffs
(75, @GUID_ARMOR_HORDE_1       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Dreadweave Stalkers
(75, @GUID_ARMOR_HORDE_1       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Kodohide Belt
(75, @GUID_ARMOR_HORDE_1       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Kodohide Boots
(75, @GUID_ARMOR_HORDE_1       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Kodohide Bracers
(75, @GUID_ARMOR_HORDE_1       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Lamellar Belt
(75, @GUID_ARMOR_HORDE_1       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Lamellar Bracers
(75, @GUID_ARMOR_HORDE_1       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Lamellar Greaves
(75, @GUID_ARMOR_HORDE_1       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Leather Belt
(75, @GUID_ARMOR_HORDE_1       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Leather Boots
(75, @GUID_ARMOR_HORDE_1       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Leather Bracers
(75, @GUID_ARMOR_HORDE_1       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Linked Bracers
(75, @GUID_ARMOR_HORDE_1       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Linked Girdle
(75, @GUID_ARMOR_HORDE_1       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Linked Sabatons
(75, @GUID_ARMOR_HORDE_1       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Mail Bracers
(75, @GUID_ARMOR_HORDE_1       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Mail Girdle
(75, @GUID_ARMOR_HORDE_1       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Mail Sabatons
(75, @GUID_ARMOR_HORDE_1       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Plate Belt
(75, @GUID_ARMOR_HORDE_1       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Plate Bracers
(75, @GUID_ARMOR_HORDE_1       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Plate Greaves
(75, @GUID_ARMOR_HORDE_1       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Scaled Belt
(75, @GUID_ARMOR_HORDE_1       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Scaled Bracers
(75, @GUID_ARMOR_HORDE_1       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Scaled Greaves
(75, @GUID_ARMOR_HORDE_1       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Silk Belt
(75, @GUID_ARMOR_HORDE_1       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Silk Cuffs
(75, @GUID_ARMOR_HORDE_1       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Silk Footguards
(75, @GUID_ARMOR_HORDE_1       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_1), -- General's Wyrmhide Belt
(75, @GUID_ARMOR_HORDE_1       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_1), -- General's Wyrmhide Boots
(75, @GUID_ARMOR_HORDE_1       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_1), -- General's Wyrmhide Bracers
(75, @GUID_ARMOR_HORDE_1       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Chain Armor
(75, @GUID_ARMOR_HORDE_1       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Chain Gauntlets
(75, @GUID_ARMOR_HORDE_1       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Chain Helm
(75, @GUID_ARMOR_HORDE_1       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Chain Leggings
(75, @GUID_ARMOR_HORDE_1       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Chain Spaulders
(75, @GUID_ARMOR_HORDE_1       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Dragonhide Gloves
(75, @GUID_ARMOR_HORDE_1       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Dragonhide Helm
(75, @GUID_ARMOR_HORDE_1       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Dragonhide Legguards
(75, @GUID_ARMOR_HORDE_1       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Dragonhide Spaulders
(75, @GUID_ARMOR_HORDE_1       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Dragonhide Tunic
(75, @GUID_ARMOR_HORDE_1       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Dreadweave Gloves
(75, @GUID_ARMOR_HORDE_1       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Dreadweave Hood
(75, @GUID_ARMOR_HORDE_1       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Dreadweave Leggings
(75, @GUID_ARMOR_HORDE_1       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Dreadweave Mantle
(75, @GUID_ARMOR_HORDE_1       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Dreadweave Robe
(75, @GUID_ARMOR_HORDE_1       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Kodohide Gloves
(75, @GUID_ARMOR_HORDE_1       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Kodohide Helm
(75, @GUID_ARMOR_HORDE_1       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Kodohide Legguards
(75, @GUID_ARMOR_HORDE_1       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Kodohide Spaulders
(75, @GUID_ARMOR_HORDE_1       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Kodohide Tunic
(75, @GUID_ARMOR_HORDE_1       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Lamellar Chestpiece
(75, @GUID_ARMOR_HORDE_1       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Lamellar Gauntlets
(75, @GUID_ARMOR_HORDE_1       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Lamellar Helm
(75, @GUID_ARMOR_HORDE_1       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Lamellar Legguards
(75, @GUID_ARMOR_HORDE_1       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Lamellar Shoulders
(75, @GUID_ARMOR_HORDE_1       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Leather Gloves
(75, @GUID_ARMOR_HORDE_1       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Leather Helm
(75, @GUID_ARMOR_HORDE_1       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Leather Legguards
(75, @GUID_ARMOR_HORDE_1       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Leather Spaulders
(75, @GUID_ARMOR_HORDE_1       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Leather Tunic
(75, @GUID_ARMOR_HORDE_1       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Linked Armor
(75, @GUID_ARMOR_HORDE_1       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Linked Gauntlets
(75, @GUID_ARMOR_HORDE_1       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Linked Helm
(75, @GUID_ARMOR_HORDE_1       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Linked Leggings
(75, @GUID_ARMOR_HORDE_1       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Linked Spaulders
(75, @GUID_ARMOR_HORDE_1       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Mail Armor
(75, @GUID_ARMOR_HORDE_1       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Mail Gauntlets
(75, @GUID_ARMOR_HORDE_1       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Mail Helm
(75, @GUID_ARMOR_HORDE_1       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Mail Leggings
(75, @GUID_ARMOR_HORDE_1       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Mail Spaulders
(75, @GUID_ARMOR_HORDE_1       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Mooncloth Cowl
(75, @GUID_ARMOR_HORDE_1       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Mooncloth Legguards
(75, @GUID_ARMOR_HORDE_1       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Mooncloth Mitts
(75, @GUID_ARMOR_HORDE_1       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Mooncloth Shoulderpads
(75, @GUID_ARMOR_HORDE_1       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Mooncloth Vestments
(75, @GUID_ARMOR_HORDE_1       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Ornamented Chestplate
(75, @GUID_ARMOR_HORDE_1       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Ornamented Gloves
(75, @GUID_ARMOR_HORDE_1       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Ornamented Headguard
(75, @GUID_ARMOR_HORDE_1       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Ornamented Leggings
(75, @GUID_ARMOR_HORDE_1       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Ornamented Spaulders
(75, @GUID_ARMOR_HORDE_1       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Plate Chestpiece
(75, @GUID_ARMOR_HORDE_1       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Plate Gauntlets
(75, @GUID_ARMOR_HORDE_1       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Plate Helm
(75, @GUID_ARMOR_HORDE_1       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Plate Legguards
(75, @GUID_ARMOR_HORDE_1       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Plate Shoulders
(75, @GUID_ARMOR_HORDE_1       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Ringmail Chestguard
(75, @GUID_ARMOR_HORDE_1       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Ringmail Gloves
(75, @GUID_ARMOR_HORDE_1       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Ringmail Headpiece
(75, @GUID_ARMOR_HORDE_1       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Ringmail Legguards
(75, @GUID_ARMOR_HORDE_1       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Ringmail Shoulderpads
(75, @GUID_ARMOR_HORDE_1       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Satin Gloves
(75, @GUID_ARMOR_HORDE_1       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Satin Hood
(75, @GUID_ARMOR_HORDE_1       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Satin Leggings
(75, @GUID_ARMOR_HORDE_1       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Satin Mantle
(75, @GUID_ARMOR_HORDE_1       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Satin Robe
(75, @GUID_ARMOR_HORDE_1       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Scaled Chestpiece
(75, @GUID_ARMOR_HORDE_1       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Scaled Gauntlets
(75, @GUID_ARMOR_HORDE_1       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Scaled Helm
(75, @GUID_ARMOR_HORDE_1       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Scaled Legguards
(75, @GUID_ARMOR_HORDE_1       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Scaled Shoulders
(75, @GUID_ARMOR_HORDE_1       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Silk Amice
(75, @GUID_ARMOR_HORDE_1       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Silk Cowl
(75, @GUID_ARMOR_HORDE_1       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Silk Handguards
(75, @GUID_ARMOR_HORDE_1       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Silk Raiment
(75, @GUID_ARMOR_HORDE_1       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Silk Trousers
(75, @GUID_ARMOR_HORDE_1       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_1), -- High Warlord's Wyrmhide Gloves
(75, @GUID_ARMOR_HORDE_1       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_1), -- High Warlord's Wyrmhide Helm
(75, @GUID_ARMOR_HORDE_1       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_1), -- High Warlord's Wyrmhide Legguards
(75, @GUID_ARMOR_HORDE_1       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_1), -- High Warlord's Wyrmhide Spaulders
(75, @GUID_ARMOR_HORDE_1       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_1), -- High Warlord's Wyrmhide Tunic
(75, @GUID_ACCESSORY_HORDE_1   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Runed Ornate Ruby
(75, @GUID_ACCESSORY_HORDE_1   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Smooth Ornate Dawnstone
(75, @GUID_ACCESSORY_HORDE_1   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Gleaming Ornate Dawnstone
(75, @GUID_ACCESSORY_HORDE_1   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_1), -- Bold Ornate Ruby
(75, @GUID_ACCESSORY_HORDE_1   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Potent Ornate Topaz
(75, @GUID_ACCESSORY_HORDE_1   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_1), -- Inscribed Ornate Topaz
(75, @GUID_ACCESSORY_HORDE_1   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_1), -- Talisman of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Triumph
(75, @GUID_ACCESSORY_HORDE_1   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_1), -- Pendant of Dominance
(75, @GUID_ACCESSORY_HORDE_1   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Triumph
(75, @GUID_ACCESSORY_HORDE_1   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_1), -- Band of Dominance
(75, @GUID_ACCESSORY_HORDE_1   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cloak
(75, @GUID_ACCESSORY_HORDE_1   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_1), -- Sergeant's Heavy Cape
(75, @GUID_ACCESSORY_HORDE_1   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_1), -- Star's Lament
(75, @GUID_ACCESSORY_HORDE_1   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_1), -- Star's Tears
(75, @GUID_ACCESSORY_HORDE_1   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Healing Potion
(75, @GUID_ACCESSORY_HORDE_1   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_1), -- Major Combat Mana Potion
(75, @GUID_ACCESSORY_HORDE_1   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
(75, @GUID_ACCESSORY_HORDE_1   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_1), -- Medallion of the Horde
-- Season 2
(76, @GUID_WEAPON_ALLIANCE_2   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Bonegrinder
(76, @GUID_WEAPON_ALLIANCE_2   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Warblade
(76, @GUID_WEAPON_ALLIANCE_2   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Decapitator
(76, @GUID_WEAPON_ALLIANCE_2   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Maul
(76, @GUID_WEAPON_ALLIANCE_2   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's Painsaw
(76, @GUID_WEAPON_ALLIANCE_2   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- Grand Marshal's War Staff
(76, @GUID_WEAPON_ALLIANCE_2   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Barricade
(76, @GUID_WEAPON_ALLIANCE_2   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Battletome
(76, @GUID_WEAPON_ALLIANCE_2   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Cleaver
(76, @GUID_WEAPON_ALLIANCE_2   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Hacker
(76, @GUID_WEAPON_ALLIANCE_2   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Left Ripper
(76, @GUID_WEAPON_ALLIANCE_2   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Bonecracker
(76, @GUID_WEAPON_ALLIANCE_2   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Pummeler
(76, @GUID_WEAPON_ALLIANCE_2   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Quickblade
(76, @GUID_WEAPON_ALLIANCE_2   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Right Ripper
(76, @GUID_WEAPON_ALLIANCE_2   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Shanker
(76, @GUID_WEAPON_ALLIANCE_2   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Shiv
(76, @GUID_WEAPON_ALLIANCE_2   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Slicer
(76, @GUID_WEAPON_ALLIANCE_2   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- Grand Marshal's Spellblade
(76, @GUID_WEAPON_ALLIANCE_2   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_2), -- Grand Marshal's Heavy Crossbow
(76, @GUID_ARMOR_ALLIANCE_2    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Chain Armor
(76, @GUID_ARMOR_ALLIANCE_2    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Chain Gauntlets
(76, @GUID_ARMOR_ALLIANCE_2    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Chain Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Chain Leggings
(76, @GUID_ARMOR_ALLIANCE_2    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Chain Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Dragonhide Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Dragonhide Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Dragonhide Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Dragonhide Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Dragonhide Tunic
(76, @GUID_ARMOR_ALLIANCE_2    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Dreadweave Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Dreadweave Hood
(76, @GUID_ARMOR_ALLIANCE_2    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Dreadweave Leggings
(76, @GUID_ARMOR_ALLIANCE_2    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Dreadweave Mantle
(76, @GUID_ARMOR_ALLIANCE_2    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Dreadweave Robe
(76, @GUID_ARMOR_ALLIANCE_2    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Kodohide Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Kodohide Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Kodohide Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Kodohide Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Kodohide Tunic
(76, @GUID_ARMOR_ALLIANCE_2    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Lamellar Chestpiece
(76, @GUID_ARMOR_ALLIANCE_2    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Lamellar Gauntlets
(76, @GUID_ARMOR_ALLIANCE_2    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Lamellar Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Lamellar Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Lamellar Shoulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Leather Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Leather Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Leather Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Leather Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Leather Tunic
(76, @GUID_ARMOR_ALLIANCE_2    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Linked Armor
(76, @GUID_ARMOR_ALLIANCE_2    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Linked Gauntlets
(76, @GUID_ARMOR_ALLIANCE_2    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Linked Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Linked Leggings
(76, @GUID_ARMOR_ALLIANCE_2    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Linked Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Mail Armor
(76, @GUID_ARMOR_ALLIANCE_2    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Mail Gauntlets
(76, @GUID_ARMOR_ALLIANCE_2    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Mail Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Mail Leggings
(76, @GUID_ARMOR_ALLIANCE_2    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Mail Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Mooncloth Cowl
(76, @GUID_ARMOR_ALLIANCE_2    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Mooncloth Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Mooncloth Mitts
(76, @GUID_ARMOR_ALLIANCE_2    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Mooncloth Shoulderpads
(76, @GUID_ARMOR_ALLIANCE_2    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Mooncloth Vestments
(76, @GUID_ARMOR_ALLIANCE_2    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Ornamented Chestplate
(76, @GUID_ARMOR_ALLIANCE_2    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Ornamented Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Ornamented Headguard
(76, @GUID_ARMOR_ALLIANCE_2    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Ornamented Leggings
(76, @GUID_ARMOR_ALLIANCE_2    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Ornamented Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Plate Chestpiece
(76, @GUID_ARMOR_ALLIANCE_2    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Plate Gauntlets
(76, @GUID_ARMOR_ALLIANCE_2    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Plate Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Plate Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Plate Shoulders
(76, @GUID_ARMOR_ALLIANCE_2    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Ringmail Chestguard
(76, @GUID_ARMOR_ALLIANCE_2    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Ringmail Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Ringmail Headpiece
(76, @GUID_ARMOR_ALLIANCE_2    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Ringmail Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Ringmail Shoulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Satin Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Satin Hood
(76, @GUID_ARMOR_ALLIANCE_2    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Satin Leggings
(76, @GUID_ARMOR_ALLIANCE_2    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Satin Mantle
(76, @GUID_ARMOR_ALLIANCE_2    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Satin Robe
(76, @GUID_ARMOR_ALLIANCE_2    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Scaled Chestpiece
(76, @GUID_ARMOR_ALLIANCE_2    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Scaled Gauntlets
(76, @GUID_ARMOR_ALLIANCE_2    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Scaled Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Scaled Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Scaled Shoulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Silk Amice
(76, @GUID_ARMOR_ALLIANCE_2    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Silk Cowl
(76, @GUID_ARMOR_ALLIANCE_2    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Silk Handguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Silk Raiment
(76, @GUID_ARMOR_ALLIANCE_2    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Silk Trousers
(76, @GUID_ARMOR_ALLIANCE_2    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- Grand Marshal's Wyrmhide Gloves
(76, @GUID_ARMOR_ALLIANCE_2    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- Grand Marshal's Wyrmhide Helm
(76, @GUID_ARMOR_ALLIANCE_2    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- Grand Marshal's Wyrmhide Legguards
(76, @GUID_ARMOR_ALLIANCE_2    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- Grand Marshal's Wyrmhide Spaulders
(76, @GUID_ARMOR_ALLIANCE_2    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- Grand Marshal's Wyrmhide Tunic
(76, @GUID_ARMOR_ALLIANCE_2    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Chain Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Chain Girdle
(76, @GUID_ARMOR_ALLIANCE_2    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Chain Sabatons
(76, @GUID_ARMOR_ALLIANCE_2    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Dragonhide Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Dragonhide Boots
(76, @GUID_ARMOR_ALLIANCE_2    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Dragonhide Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Dreadweave Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Dreadweave Cuffs
(76, @GUID_ARMOR_ALLIANCE_2    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Dreadweave Stalkers
(76, @GUID_ARMOR_ALLIANCE_2    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Kodohide Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Kodohide Boots
(76, @GUID_ARMOR_ALLIANCE_2    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Kodohide Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Lamellar Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Lamellar Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Lamellar Greaves
(76, @GUID_ARMOR_ALLIANCE_2    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Leather Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Leather Boots
(76, @GUID_ARMOR_ALLIANCE_2    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Leather Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Linked Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Linked Girdle
(76, @GUID_ARMOR_ALLIANCE_2    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Linked Sabatons
(76, @GUID_ARMOR_ALLIANCE_2    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Mail Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Mail Girdle
(76, @GUID_ARMOR_ALLIANCE_2    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Mail Sabatons
(76, @GUID_ARMOR_ALLIANCE_2    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Plate Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Plate Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Plate Greaves
(76, @GUID_ARMOR_ALLIANCE_2    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Scaled Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Scaled Bracers
(76, @GUID_ARMOR_ALLIANCE_2    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Scaled Greaves
(76, @GUID_ARMOR_ALLIANCE_2    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Silk Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Silk Cuffs
(76, @GUID_ARMOR_ALLIANCE_2    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Silk Footguards
(76, @GUID_ARMOR_ALLIANCE_2    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- Marshal's Wyrmhide Belt
(76, @GUID_ARMOR_ALLIANCE_2    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- Marshal's Wyrmhide Boots
(76, @GUID_ARMOR_ALLIANCE_2    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- Marshal's Wyrmhide Bracers
(76, @GUID_ACCESSORY_ALLIANCE_2, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Bold Ornate Ruby
(76, @GUID_ACCESSORY_ALLIANCE_2, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Gleaming Ornate Dawnstone
(76, @GUID_ACCESSORY_ALLIANCE_2, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Runed Ornate Ruby
(76, @GUID_ACCESSORY_ALLIANCE_2, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Smooth Ornate Dawnstone
(76, @GUID_ACCESSORY_ALLIANCE_2, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Inscribed Ornate Topaz
(76, @GUID_ACCESSORY_ALLIANCE_2, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Potent Ornate Topaz
(76, @GUID_ACCESSORY_ALLIANCE_2, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_2), -- Talisman of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Dominance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Triumph
(76, @GUID_ACCESSORY_ALLIANCE_2, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Dominance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Triumph
(76, @GUID_ACCESSORY_ALLIANCE_2, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cape
(76, @GUID_ACCESSORY_ALLIANCE_2, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cloak
(76, @GUID_ACCESSORY_ALLIANCE_2, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_2), -- Star's Lament
(76, @GUID_ACCESSORY_ALLIANCE_2, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_2), -- Star's Tears
(76, @GUID_ACCESSORY_ALLIANCE_2, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_ALLIANCE_2, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_ACCESSORY_ALLIANCE_2, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Alliance
(76, @GUID_WEAPON_HORDE_2      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Claymore
(76, @GUID_WEAPON_HORDE_2      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Bonegrinder
(76, @GUID_WEAPON_HORDE_2      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Decapitator
(76, @GUID_WEAPON_HORDE_2      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Maul
(76, @GUID_WEAPON_HORDE_2      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's Painsaw
(76, @GUID_WEAPON_HORDE_2      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_2), -- High Warlord's War Staff
(76, @GUID_WEAPON_HORDE_2      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Cleaver
(76, @GUID_WEAPON_HORDE_2      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Hacker
(76, @GUID_WEAPON_HORDE_2      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Left Ripper
(76, @GUID_WEAPON_HORDE_2      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Bonecracker
(76, @GUID_WEAPON_HORDE_2      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Pummeler
(76, @GUID_WEAPON_HORDE_2      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Quickblade
(76, @GUID_WEAPON_HORDE_2      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Right Ripper
(76, @GUID_WEAPON_HORDE_2      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Shanker
(76, @GUID_WEAPON_HORDE_2      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Shiv
(76, @GUID_WEAPON_HORDE_2      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Spellblade
(76, @GUID_WEAPON_HORDE_2      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Slicer
(76, @GUID_WEAPON_HORDE_2      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Battletome
(76, @GUID_WEAPON_HORDE_2      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_2), -- High Warlord's Barricade
(76, @GUID_WEAPON_HORDE_2      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_2), -- High Warlord's Heavy Crossbow
(76, @GUID_ARMOR_HORDE_2       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Chain Bracers
(76, @GUID_ARMOR_HORDE_2       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Chain Girdle
(76, @GUID_ARMOR_HORDE_2       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Chain Sabatons
(76, @GUID_ARMOR_HORDE_2       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Dragonhide Belt
(76, @GUID_ARMOR_HORDE_2       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Dragonhide Boots
(76, @GUID_ARMOR_HORDE_2       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Dragonhide Bracers
(76, @GUID_ARMOR_HORDE_2       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Dreadweave Belt
(76, @GUID_ARMOR_HORDE_2       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Dreadweave Cuffs
(76, @GUID_ARMOR_HORDE_2       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Dreadweave Stalkers
(76, @GUID_ARMOR_HORDE_2       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Kodohide Belt
(76, @GUID_ARMOR_HORDE_2       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Kodohide Boots
(76, @GUID_ARMOR_HORDE_2       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Kodohide Bracers
(76, @GUID_ARMOR_HORDE_2       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Lamellar Belt
(76, @GUID_ARMOR_HORDE_2       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Lamellar Bracers
(76, @GUID_ARMOR_HORDE_2       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Lamellar Greaves
(76, @GUID_ARMOR_HORDE_2       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Leather Belt
(76, @GUID_ARMOR_HORDE_2       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Leather Boots
(76, @GUID_ARMOR_HORDE_2       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Leather Bracers
(76, @GUID_ARMOR_HORDE_2       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Linked Bracers
(76, @GUID_ARMOR_HORDE_2       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Linked Girdle
(76, @GUID_ARMOR_HORDE_2       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Linked Sabatons
(76, @GUID_ARMOR_HORDE_2       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Mail Bracers
(76, @GUID_ARMOR_HORDE_2       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Mail Girdle
(76, @GUID_ARMOR_HORDE_2       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Mail Sabatons
(76, @GUID_ARMOR_HORDE_2       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Plate Belt
(76, @GUID_ARMOR_HORDE_2       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Plate Bracers
(76, @GUID_ARMOR_HORDE_2       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Plate Greaves
(76, @GUID_ARMOR_HORDE_2       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Scaled Belt
(76, @GUID_ARMOR_HORDE_2       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Scaled Bracers
(76, @GUID_ARMOR_HORDE_2       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Scaled Greaves
(76, @GUID_ARMOR_HORDE_2       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Silk Belt
(76, @GUID_ARMOR_HORDE_2       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Silk Cuffs
(76, @GUID_ARMOR_HORDE_2       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Silk Footguards
(76, @GUID_ARMOR_HORDE_2       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_2), -- General's Wyrmhide Belt
(76, @GUID_ARMOR_HORDE_2       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_2), -- General's Wyrmhide Boots
(76, @GUID_ARMOR_HORDE_2       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_2), -- General's Wyrmhide Bracers
(76, @GUID_ARMOR_HORDE_2       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Chain Armor
(76, @GUID_ARMOR_HORDE_2       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Chain Gauntlets
(76, @GUID_ARMOR_HORDE_2       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Chain Helm
(76, @GUID_ARMOR_HORDE_2       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Chain Leggings
(76, @GUID_ARMOR_HORDE_2       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Chain Spaulders
(76, @GUID_ARMOR_HORDE_2       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Dragonhide Gloves
(76, @GUID_ARMOR_HORDE_2       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Dragonhide Helm
(76, @GUID_ARMOR_HORDE_2       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Dragonhide Legguards
(76, @GUID_ARMOR_HORDE_2       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Dragonhide Spaulders
(76, @GUID_ARMOR_HORDE_2       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Dragonhide Tunic
(76, @GUID_ARMOR_HORDE_2       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Dreadweave Gloves
(76, @GUID_ARMOR_HORDE_2       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Dreadweave Hood
(76, @GUID_ARMOR_HORDE_2       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Dreadweave Leggings
(76, @GUID_ARMOR_HORDE_2       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Dreadweave Mantle
(76, @GUID_ARMOR_HORDE_2       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Dreadweave Robe
(76, @GUID_ARMOR_HORDE_2       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Kodohide Gloves
(76, @GUID_ARMOR_HORDE_2       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Kodohide Helm
(76, @GUID_ARMOR_HORDE_2       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Kodohide Legguards
(76, @GUID_ARMOR_HORDE_2       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Kodohide Spaulders
(76, @GUID_ARMOR_HORDE_2       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Kodohide Tunic
(76, @GUID_ARMOR_HORDE_2       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Lamellar Chestpiece
(76, @GUID_ARMOR_HORDE_2       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Lamellar Gauntlets
(76, @GUID_ARMOR_HORDE_2       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Lamellar Helm
(76, @GUID_ARMOR_HORDE_2       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Lamellar Legguards
(76, @GUID_ARMOR_HORDE_2       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Lamellar Shoulders
(76, @GUID_ARMOR_HORDE_2       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Leather Gloves
(76, @GUID_ARMOR_HORDE_2       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Leather Helm
(76, @GUID_ARMOR_HORDE_2       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Leather Legguards
(76, @GUID_ARMOR_HORDE_2       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Leather Spaulders
(76, @GUID_ARMOR_HORDE_2       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Leather Tunic
(76, @GUID_ARMOR_HORDE_2       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Linked Armor
(76, @GUID_ARMOR_HORDE_2       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Linked Gauntlets
(76, @GUID_ARMOR_HORDE_2       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Linked Helm
(76, @GUID_ARMOR_HORDE_2       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Linked Leggings
(76, @GUID_ARMOR_HORDE_2       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Linked Spaulders
(76, @GUID_ARMOR_HORDE_2       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Mail Armor
(76, @GUID_ARMOR_HORDE_2       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Mail Gauntlets
(76, @GUID_ARMOR_HORDE_2       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Mail Helm
(76, @GUID_ARMOR_HORDE_2       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Mail Leggings
(76, @GUID_ARMOR_HORDE_2       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Mail Spaulders
(76, @GUID_ARMOR_HORDE_2       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Mooncloth Cowl
(76, @GUID_ARMOR_HORDE_2       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Mooncloth Legguards
(76, @GUID_ARMOR_HORDE_2       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Mooncloth Mitts
(76, @GUID_ARMOR_HORDE_2       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Mooncloth Shoulderpads
(76, @GUID_ARMOR_HORDE_2       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Mooncloth Vestments
(76, @GUID_ARMOR_HORDE_2       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Ornamented Chestplate
(76, @GUID_ARMOR_HORDE_2       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Ornamented Gloves
(76, @GUID_ARMOR_HORDE_2       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Ornamented Headguard
(76, @GUID_ARMOR_HORDE_2       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Ornamented Leggings
(76, @GUID_ARMOR_HORDE_2       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Ornamented Spaulders
(76, @GUID_ARMOR_HORDE_2       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Plate Chestpiece
(76, @GUID_ARMOR_HORDE_2       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Plate Gauntlets
(76, @GUID_ARMOR_HORDE_2       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Plate Helm
(76, @GUID_ARMOR_HORDE_2       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Plate Legguards
(76, @GUID_ARMOR_HORDE_2       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Plate Shoulders
(76, @GUID_ARMOR_HORDE_2       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Ringmail Chestguard
(76, @GUID_ARMOR_HORDE_2       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Ringmail Gloves
(76, @GUID_ARMOR_HORDE_2       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Ringmail Headpiece
(76, @GUID_ARMOR_HORDE_2       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Ringmail Legguards
(76, @GUID_ARMOR_HORDE_2       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Ringmail Shoulderpads
(76, @GUID_ARMOR_HORDE_2       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Satin Gloves
(76, @GUID_ARMOR_HORDE_2       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Satin Hood
(76, @GUID_ARMOR_HORDE_2       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Satin Leggings
(76, @GUID_ARMOR_HORDE_2       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Satin Mantle
(76, @GUID_ARMOR_HORDE_2       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Satin Robe
(76, @GUID_ARMOR_HORDE_2       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Scaled Chestpiece
(76, @GUID_ARMOR_HORDE_2       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Scaled Gauntlets
(76, @GUID_ARMOR_HORDE_2       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Scaled Helm
(76, @GUID_ARMOR_HORDE_2       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Scaled Legguards
(76, @GUID_ARMOR_HORDE_2       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Scaled Shoulders
(76, @GUID_ARMOR_HORDE_2       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Silk Amice
(76, @GUID_ARMOR_HORDE_2       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Silk Cowl
(76, @GUID_ARMOR_HORDE_2       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Silk Handguards
(76, @GUID_ARMOR_HORDE_2       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Silk Raiment
(76, @GUID_ARMOR_HORDE_2       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Silk Trousers
(76, @GUID_ARMOR_HORDE_2       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_2), -- High Warlord's Wyrmhide Gloves
(76, @GUID_ARMOR_HORDE_2       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_2), -- High Warlord's Wyrmhide Helm
(76, @GUID_ARMOR_HORDE_2       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_2), -- High Warlord's Wyrmhide Legguards
(76, @GUID_ARMOR_HORDE_2       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_2), -- High Warlord's Wyrmhide Spaulders
(76, @GUID_ARMOR_HORDE_2       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_2), -- High Warlord's Wyrmhide Tunic
(76, @GUID_ACCESSORY_HORDE_2   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Runed Ornate Ruby
(76, @GUID_ACCESSORY_HORDE_2   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Smooth Ornate Dawnstone
(76, @GUID_ACCESSORY_HORDE_2   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Gleaming Ornate Dawnstone
(76, @GUID_ACCESSORY_HORDE_2   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_2), -- Bold Ornate Ruby
(76, @GUID_ACCESSORY_HORDE_2   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Potent Ornate Topaz
(76, @GUID_ACCESSORY_HORDE_2   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_2), -- Inscribed Ornate Topaz
(76, @GUID_ACCESSORY_HORDE_2   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_2), -- Talisman of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Triumph
(76, @GUID_ACCESSORY_HORDE_2   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_2), -- Pendant of Dominance
(76, @GUID_ACCESSORY_HORDE_2   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Triumph
(76, @GUID_ACCESSORY_HORDE_2   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_2), -- Band of Dominance
(76, @GUID_ACCESSORY_HORDE_2   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cloak
(76, @GUID_ACCESSORY_HORDE_2   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_2), -- Sergeant's Heavy Cape
(76, @GUID_ACCESSORY_HORDE_2   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_2), -- Star's Lament
(76, @GUID_ACCESSORY_HORDE_2   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_2), -- Star's Tears
(76, @GUID_ACCESSORY_HORDE_2   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Healing Potion
(76, @GUID_ACCESSORY_HORDE_2   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_2), -- Major Combat Mana Potion
(76, @GUID_ACCESSORY_HORDE_2   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
(76, @GUID_ACCESSORY_HORDE_2   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_2), -- Medallion of the Horde
-- Season 3
(55, @GUID_WEAPON_ALLIANCE_3   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Bonegrinder
(55, @GUID_WEAPON_ALLIANCE_3   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Warblade
(55, @GUID_WEAPON_ALLIANCE_3   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Decapitator
(55, @GUID_WEAPON_ALLIANCE_3   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Maul
(55, @GUID_WEAPON_ALLIANCE_3   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's Painsaw
(55, @GUID_WEAPON_ALLIANCE_3   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- Grand Marshal's War Staff
(55, @GUID_WEAPON_ALLIANCE_3   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Barricade
(55, @GUID_WEAPON_ALLIANCE_3   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Battletome
(55, @GUID_WEAPON_ALLIANCE_3   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Cleaver
(55, @GUID_WEAPON_ALLIANCE_3   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Hacker
(55, @GUID_WEAPON_ALLIANCE_3   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Left Ripper
(55, @GUID_WEAPON_ALLIANCE_3   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Bonecracker
(55, @GUID_WEAPON_ALLIANCE_3   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Pummeler
(55, @GUID_WEAPON_ALLIANCE_3   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Quickblade
(55, @GUID_WEAPON_ALLIANCE_3   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Right Ripper
(55, @GUID_WEAPON_ALLIANCE_3   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Shanker
(55, @GUID_WEAPON_ALLIANCE_3   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Shiv
(55, @GUID_WEAPON_ALLIANCE_3   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Slicer
(55, @GUID_WEAPON_ALLIANCE_3   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- Grand Marshal's Spellblade
(55, @GUID_WEAPON_ALLIANCE_3   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_3), -- Grand Marshal's Heavy Crossbow
(55, @GUID_ARMOR_ALLIANCE_3    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Chain Armor
(55, @GUID_ARMOR_ALLIANCE_3    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Chain Gauntlets
(55, @GUID_ARMOR_ALLIANCE_3    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Chain Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Chain Leggings
(55, @GUID_ARMOR_ALLIANCE_3    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Chain Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Dragonhide Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Dragonhide Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Dragonhide Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Dragonhide Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Dragonhide Tunic
(55, @GUID_ARMOR_ALLIANCE_3    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Dreadweave Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Dreadweave Hood
(55, @GUID_ARMOR_ALLIANCE_3    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Dreadweave Leggings
(55, @GUID_ARMOR_ALLIANCE_3    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Dreadweave Mantle
(55, @GUID_ARMOR_ALLIANCE_3    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Dreadweave Robe
(55, @GUID_ARMOR_ALLIANCE_3    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Kodohide Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Kodohide Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Kodohide Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Kodohide Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Kodohide Tunic
(55, @GUID_ARMOR_ALLIANCE_3    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Lamellar Chestpiece
(55, @GUID_ARMOR_ALLIANCE_3    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Lamellar Gauntlets
(55, @GUID_ARMOR_ALLIANCE_3    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Lamellar Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Lamellar Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Lamellar Shoulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Leather Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Leather Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Leather Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Leather Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Leather Tunic
(55, @GUID_ARMOR_ALLIANCE_3    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Linked Armor
(55, @GUID_ARMOR_ALLIANCE_3    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Linked Gauntlets
(55, @GUID_ARMOR_ALLIANCE_3    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Linked Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Linked Leggings
(55, @GUID_ARMOR_ALLIANCE_3    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Linked Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Mail Armor
(55, @GUID_ARMOR_ALLIANCE_3    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Mail Gauntlets
(55, @GUID_ARMOR_ALLIANCE_3    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Mail Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Mail Leggings
(55, @GUID_ARMOR_ALLIANCE_3    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Mail Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Mooncloth Cowl
(55, @GUID_ARMOR_ALLIANCE_3    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Mooncloth Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Mooncloth Mitts
(55, @GUID_ARMOR_ALLIANCE_3    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Mooncloth Shoulderpads
(55, @GUID_ARMOR_ALLIANCE_3    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Mooncloth Vestments
(55, @GUID_ARMOR_ALLIANCE_3    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Ornamented Chestplate
(55, @GUID_ARMOR_ALLIANCE_3    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Ornamented Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Ornamented Headguard
(55, @GUID_ARMOR_ALLIANCE_3    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Ornamented Leggings
(55, @GUID_ARMOR_ALLIANCE_3    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Ornamented Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Plate Chestpiece
(55, @GUID_ARMOR_ALLIANCE_3    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Plate Gauntlets
(55, @GUID_ARMOR_ALLIANCE_3    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Plate Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Plate Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Plate Shoulders
(55, @GUID_ARMOR_ALLIANCE_3    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Ringmail Chestguard
(55, @GUID_ARMOR_ALLIANCE_3    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Ringmail Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Ringmail Headpiece
(55, @GUID_ARMOR_ALLIANCE_3    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Ringmail Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Ringmail Shoulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Satin Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Satin Hood
(55, @GUID_ARMOR_ALLIANCE_3    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Satin Leggings
(55, @GUID_ARMOR_ALLIANCE_3    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Satin Mantle
(55, @GUID_ARMOR_ALLIANCE_3    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Satin Robe
(55, @GUID_ARMOR_ALLIANCE_3    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Scaled Chestpiece
(55, @GUID_ARMOR_ALLIANCE_3    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Scaled Gauntlets
(55, @GUID_ARMOR_ALLIANCE_3    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Scaled Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Scaled Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Scaled Shoulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Silk Amice
(55, @GUID_ARMOR_ALLIANCE_3    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Silk Cowl
(55, @GUID_ARMOR_ALLIANCE_3    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Silk Handguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Silk Raiment
(55, @GUID_ARMOR_ALLIANCE_3    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Silk Trousers
(55, @GUID_ARMOR_ALLIANCE_3    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- Grand Marshal's Wyrmhide Gloves
(55, @GUID_ARMOR_ALLIANCE_3    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- Grand Marshal's Wyrmhide Helm
(55, @GUID_ARMOR_ALLIANCE_3    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- Grand Marshal's Wyrmhide Legguards
(55, @GUID_ARMOR_ALLIANCE_3    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- Grand Marshal's Wyrmhide Spaulders
(55, @GUID_ARMOR_ALLIANCE_3    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- Grand Marshal's Wyrmhide Tunic
(55, @GUID_ARMOR_ALLIANCE_3    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Chain Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Chain Girdle
(55, @GUID_ARMOR_ALLIANCE_3    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Chain Sabatons
(55, @GUID_ARMOR_ALLIANCE_3    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Dragonhide Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Dragonhide Boots
(55, @GUID_ARMOR_ALLIANCE_3    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Dragonhide Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Dreadweave Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Dreadweave Cuffs
(55, @GUID_ARMOR_ALLIANCE_3    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Dreadweave Stalkers
(55, @GUID_ARMOR_ALLIANCE_3    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Kodohide Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Kodohide Boots
(55, @GUID_ARMOR_ALLIANCE_3    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Kodohide Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Lamellar Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Lamellar Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Lamellar Greaves
(55, @GUID_ARMOR_ALLIANCE_3    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Leather Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Leather Boots
(55, @GUID_ARMOR_ALLIANCE_3    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Leather Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Linked Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Linked Girdle
(55, @GUID_ARMOR_ALLIANCE_3    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Linked Sabatons
(55, @GUID_ARMOR_ALLIANCE_3    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Mail Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Mail Girdle
(55, @GUID_ARMOR_ALLIANCE_3    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Mail Sabatons
(55, @GUID_ARMOR_ALLIANCE_3    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Plate Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Plate Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Plate Greaves
(55, @GUID_ARMOR_ALLIANCE_3    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Scaled Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Scaled Bracers
(55, @GUID_ARMOR_ALLIANCE_3    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Scaled Greaves
(55, @GUID_ARMOR_ALLIANCE_3    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Silk Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Silk Cuffs
(55, @GUID_ARMOR_ALLIANCE_3    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Silk Footguards
(55, @GUID_ARMOR_ALLIANCE_3    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- Marshal's Wyrmhide Belt
(55, @GUID_ARMOR_ALLIANCE_3    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- Marshal's Wyrmhide Boots
(55, @GUID_ARMOR_ALLIANCE_3    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- Marshal's Wyrmhide Bracers
(55, @GUID_ACCESSORY_ALLIANCE_3, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Bold Ornate Ruby
(55, @GUID_ACCESSORY_ALLIANCE_3, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Gleaming Ornate Dawnstone
(55, @GUID_ACCESSORY_ALLIANCE_3, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Runed Ornate Ruby
(55, @GUID_ACCESSORY_ALLIANCE_3, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Smooth Ornate Dawnstone
(55, @GUID_ACCESSORY_ALLIANCE_3, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Inscribed Ornate Topaz
(55, @GUID_ACCESSORY_ALLIANCE_3, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Potent Ornate Topaz
(55, @GUID_ACCESSORY_ALLIANCE_3, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_3), -- Talisman of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Dominance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Triumph
(55, @GUID_ACCESSORY_ALLIANCE_3, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Dominance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Triumph
(55, @GUID_ACCESSORY_ALLIANCE_3, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cape
(55, @GUID_ACCESSORY_ALLIANCE_3, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cloak
(55, @GUID_ACCESSORY_ALLIANCE_3, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_3), -- Star's Lament
(55, @GUID_ACCESSORY_ALLIANCE_3, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_3), -- Star's Tears
(55, @GUID_ACCESSORY_ALLIANCE_3, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_ALLIANCE_3, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_ACCESSORY_ALLIANCE_3, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Alliance
(55, @GUID_WEAPON_HORDE_3      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Claymore
(55, @GUID_WEAPON_HORDE_3      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Bonegrinder
(55, @GUID_WEAPON_HORDE_3      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Decapitator
(55, @GUID_WEAPON_HORDE_3      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Maul
(55, @GUID_WEAPON_HORDE_3      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's Painsaw
(55, @GUID_WEAPON_HORDE_3      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_3), -- High Warlord's War Staff
(55, @GUID_WEAPON_HORDE_3      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Cleaver
(55, @GUID_WEAPON_HORDE_3      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Hacker
(55, @GUID_WEAPON_HORDE_3      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Left Ripper
(55, @GUID_WEAPON_HORDE_3      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Bonecracker
(55, @GUID_WEAPON_HORDE_3      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Pummeler
(55, @GUID_WEAPON_HORDE_3      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Quickblade
(55, @GUID_WEAPON_HORDE_3      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Right Ripper
(55, @GUID_WEAPON_HORDE_3      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Shanker
(55, @GUID_WEAPON_HORDE_3      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Shiv
(55, @GUID_WEAPON_HORDE_3      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Spellblade
(55, @GUID_WEAPON_HORDE_3      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Slicer
(55, @GUID_WEAPON_HORDE_3      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Battletome
(55, @GUID_WEAPON_HORDE_3      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_3), -- High Warlord's Barricade
(55, @GUID_WEAPON_HORDE_3      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_3), -- High Warlord's Heavy Crossbow
(55, @GUID_ARMOR_HORDE_3       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Chain Bracers
(55, @GUID_ARMOR_HORDE_3       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Chain Girdle
(55, @GUID_ARMOR_HORDE_3       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Chain Sabatons
(55, @GUID_ARMOR_HORDE_3       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Dragonhide Belt
(55, @GUID_ARMOR_HORDE_3       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Dragonhide Boots
(55, @GUID_ARMOR_HORDE_3       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Dragonhide Bracers
(55, @GUID_ARMOR_HORDE_3       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Dreadweave Belt
(55, @GUID_ARMOR_HORDE_3       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Dreadweave Cuffs
(55, @GUID_ARMOR_HORDE_3       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Dreadweave Stalkers
(55, @GUID_ARMOR_HORDE_3       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Kodohide Belt
(55, @GUID_ARMOR_HORDE_3       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Kodohide Boots
(55, @GUID_ARMOR_HORDE_3       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Kodohide Bracers
(55, @GUID_ARMOR_HORDE_3       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Lamellar Belt
(55, @GUID_ARMOR_HORDE_3       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Lamellar Bracers
(55, @GUID_ARMOR_HORDE_3       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Lamellar Greaves
(55, @GUID_ARMOR_HORDE_3       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Leather Belt
(55, @GUID_ARMOR_HORDE_3       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Leather Boots
(55, @GUID_ARMOR_HORDE_3       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Leather Bracers
(55, @GUID_ARMOR_HORDE_3       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Linked Bracers
(55, @GUID_ARMOR_HORDE_3       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Linked Girdle
(55, @GUID_ARMOR_HORDE_3       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Linked Sabatons
(55, @GUID_ARMOR_HORDE_3       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Mail Bracers
(55, @GUID_ARMOR_HORDE_3       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Mail Girdle
(55, @GUID_ARMOR_HORDE_3       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Mail Sabatons
(55, @GUID_ARMOR_HORDE_3       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Plate Belt
(55, @GUID_ARMOR_HORDE_3       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Plate Bracers
(55, @GUID_ARMOR_HORDE_3       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Plate Greaves
(55, @GUID_ARMOR_HORDE_3       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Scaled Belt
(55, @GUID_ARMOR_HORDE_3       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Scaled Bracers
(55, @GUID_ARMOR_HORDE_3       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Scaled Greaves
(55, @GUID_ARMOR_HORDE_3       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Silk Belt
(55, @GUID_ARMOR_HORDE_3       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Silk Cuffs
(55, @GUID_ARMOR_HORDE_3       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Silk Footguards
(55, @GUID_ARMOR_HORDE_3       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_3), -- General's Wyrmhide Belt
(55, @GUID_ARMOR_HORDE_3       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_3), -- General's Wyrmhide Boots
(55, @GUID_ARMOR_HORDE_3       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_3), -- General's Wyrmhide Bracers
(55, @GUID_ARMOR_HORDE_3       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Chain Armor
(55, @GUID_ARMOR_HORDE_3       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Chain Gauntlets
(55, @GUID_ARMOR_HORDE_3       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Chain Helm
(55, @GUID_ARMOR_HORDE_3       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Chain Leggings
(55, @GUID_ARMOR_HORDE_3       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Chain Spaulders
(55, @GUID_ARMOR_HORDE_3       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Dragonhide Gloves
(55, @GUID_ARMOR_HORDE_3       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Dragonhide Helm
(55, @GUID_ARMOR_HORDE_3       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Dragonhide Legguards
(55, @GUID_ARMOR_HORDE_3       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Dragonhide Spaulders
(55, @GUID_ARMOR_HORDE_3       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Dragonhide Tunic
(55, @GUID_ARMOR_HORDE_3       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Dreadweave Gloves
(55, @GUID_ARMOR_HORDE_3       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Dreadweave Hood
(55, @GUID_ARMOR_HORDE_3       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Dreadweave Leggings
(55, @GUID_ARMOR_HORDE_3       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Dreadweave Mantle
(55, @GUID_ARMOR_HORDE_3       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Dreadweave Robe
(55, @GUID_ARMOR_HORDE_3       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Kodohide Gloves
(55, @GUID_ARMOR_HORDE_3       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Kodohide Helm
(55, @GUID_ARMOR_HORDE_3       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Kodohide Legguards
(55, @GUID_ARMOR_HORDE_3       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Kodohide Spaulders
(55, @GUID_ARMOR_HORDE_3       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Kodohide Tunic
(55, @GUID_ARMOR_HORDE_3       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Lamellar Chestpiece
(55, @GUID_ARMOR_HORDE_3       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Lamellar Gauntlets
(55, @GUID_ARMOR_HORDE_3       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Lamellar Helm
(55, @GUID_ARMOR_HORDE_3       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Lamellar Legguards
(55, @GUID_ARMOR_HORDE_3       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Lamellar Shoulders
(55, @GUID_ARMOR_HORDE_3       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Leather Gloves
(55, @GUID_ARMOR_HORDE_3       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Leather Helm
(55, @GUID_ARMOR_HORDE_3       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Leather Legguards
(55, @GUID_ARMOR_HORDE_3       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Leather Spaulders
(55, @GUID_ARMOR_HORDE_3       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Leather Tunic
(55, @GUID_ARMOR_HORDE_3       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Linked Armor
(55, @GUID_ARMOR_HORDE_3       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Linked Gauntlets
(55, @GUID_ARMOR_HORDE_3       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Linked Helm
(55, @GUID_ARMOR_HORDE_3       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Linked Leggings
(55, @GUID_ARMOR_HORDE_3       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Linked Spaulders
(55, @GUID_ARMOR_HORDE_3       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Mail Armor
(55, @GUID_ARMOR_HORDE_3       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Mail Gauntlets
(55, @GUID_ARMOR_HORDE_3       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Mail Helm
(55, @GUID_ARMOR_HORDE_3       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Mail Leggings
(55, @GUID_ARMOR_HORDE_3       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Mail Spaulders
(55, @GUID_ARMOR_HORDE_3       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Mooncloth Cowl
(55, @GUID_ARMOR_HORDE_3       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Mooncloth Legguards
(55, @GUID_ARMOR_HORDE_3       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Mooncloth Mitts
(55, @GUID_ARMOR_HORDE_3       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Mooncloth Shoulderpads
(55, @GUID_ARMOR_HORDE_3       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Mooncloth Vestments
(55, @GUID_ARMOR_HORDE_3       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Ornamented Chestplate
(55, @GUID_ARMOR_HORDE_3       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Ornamented Gloves
(55, @GUID_ARMOR_HORDE_3       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Ornamented Headguard
(55, @GUID_ARMOR_HORDE_3       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Ornamented Leggings
(55, @GUID_ARMOR_HORDE_3       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Ornamented Spaulders
(55, @GUID_ARMOR_HORDE_3       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Plate Chestpiece
(55, @GUID_ARMOR_HORDE_3       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Plate Gauntlets
(55, @GUID_ARMOR_HORDE_3       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Plate Helm
(55, @GUID_ARMOR_HORDE_3       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Plate Legguards
(55, @GUID_ARMOR_HORDE_3       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Plate Shoulders
(55, @GUID_ARMOR_HORDE_3       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Ringmail Chestguard
(55, @GUID_ARMOR_HORDE_3       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Ringmail Gloves
(55, @GUID_ARMOR_HORDE_3       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Ringmail Headpiece
(55, @GUID_ARMOR_HORDE_3       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Ringmail Legguards
(55, @GUID_ARMOR_HORDE_3       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Ringmail Shoulderpads
(55, @GUID_ARMOR_HORDE_3       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Satin Gloves
(55, @GUID_ARMOR_HORDE_3       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Satin Hood
(55, @GUID_ARMOR_HORDE_3       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Satin Leggings
(55, @GUID_ARMOR_HORDE_3       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Satin Mantle
(55, @GUID_ARMOR_HORDE_3       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Satin Robe
(55, @GUID_ARMOR_HORDE_3       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Scaled Chestpiece
(55, @GUID_ARMOR_HORDE_3       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Scaled Gauntlets
(55, @GUID_ARMOR_HORDE_3       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Scaled Helm
(55, @GUID_ARMOR_HORDE_3       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Scaled Legguards
(55, @GUID_ARMOR_HORDE_3       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Scaled Shoulders
(55, @GUID_ARMOR_HORDE_3       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Silk Amice
(55, @GUID_ARMOR_HORDE_3       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Silk Cowl
(55, @GUID_ARMOR_HORDE_3       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Silk Handguards
(55, @GUID_ARMOR_HORDE_3       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Silk Raiment
(55, @GUID_ARMOR_HORDE_3       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Silk Trousers
(55, @GUID_ARMOR_HORDE_3       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_3), -- High Warlord's Wyrmhide Gloves
(55, @GUID_ARMOR_HORDE_3       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_3), -- High Warlord's Wyrmhide Helm
(55, @GUID_ARMOR_HORDE_3       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_3), -- High Warlord's Wyrmhide Legguards
(55, @GUID_ARMOR_HORDE_3       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_3), -- High Warlord's Wyrmhide Spaulders
(55, @GUID_ARMOR_HORDE_3       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_3), -- High Warlord's Wyrmhide Tunic
(55, @GUID_ACCESSORY_HORDE_3   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Runed Ornate Ruby
(55, @GUID_ACCESSORY_HORDE_3   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Smooth Ornate Dawnstone
(55, @GUID_ACCESSORY_HORDE_3   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Gleaming Ornate Dawnstone
(55, @GUID_ACCESSORY_HORDE_3   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_3), -- Bold Ornate Ruby
(55, @GUID_ACCESSORY_HORDE_3   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Potent Ornate Topaz
(55, @GUID_ACCESSORY_HORDE_3   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_3), -- Inscribed Ornate Topaz
(55, @GUID_ACCESSORY_HORDE_3   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_3), -- Talisman of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Triumph
(55, @GUID_ACCESSORY_HORDE_3   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_3), -- Pendant of Dominance
(55, @GUID_ACCESSORY_HORDE_3   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Triumph
(55, @GUID_ACCESSORY_HORDE_3   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_3), -- Band of Dominance
(55, @GUID_ACCESSORY_HORDE_3   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cloak
(55, @GUID_ACCESSORY_HORDE_3   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_3), -- Sergeant's Heavy Cape
(55, @GUID_ACCESSORY_HORDE_3   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_3), -- Star's Lament
(55, @GUID_ACCESSORY_HORDE_3   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_3), -- Star's Tears
(55, @GUID_ACCESSORY_HORDE_3   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Healing Potion
(55, @GUID_ACCESSORY_HORDE_3   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_3), -- Major Combat Mana Potion
(55, @GUID_ACCESSORY_HORDE_3   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
(55, @GUID_ACCESSORY_HORDE_3   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_3), -- Medallion of the Horde
-- Season 4
(56, @GUID_WEAPON_ALLIANCE_4   , 28942, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Bonegrinder
(56, @GUID_WEAPON_ALLIANCE_4   , 28943, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Warblade
(56, @GUID_WEAPON_ALLIANCE_4   , 28945, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Decapitator
(56, @GUID_WEAPON_ALLIANCE_4   , 28948, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Maul
(56, @GUID_WEAPON_ALLIANCE_4   , 28949, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's Painsaw
(56, @GUID_WEAPON_ALLIANCE_4   , 28959, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- Grand Marshal's War Staff
(56, @GUID_WEAPON_ALLIANCE_4   , 28940, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Barricade
(56, @GUID_WEAPON_ALLIANCE_4   , 28941, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Battletome
(56, @GUID_WEAPON_ALLIANCE_4   , 28944, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Cleaver
(56, @GUID_WEAPON_ALLIANCE_4   , 28946, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Hacker
(56, @GUID_WEAPON_ALLIANCE_4   , 28947, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Left Ripper
(56, @GUID_WEAPON_ALLIANCE_4   , 28950, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Bonecracker
(56, @GUID_WEAPON_ALLIANCE_4   , 28951, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Pummeler
(56, @GUID_WEAPON_ALLIANCE_4   , 28952, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Quickblade
(56, @GUID_WEAPON_ALLIANCE_4   , 28953, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Right Ripper
(56, @GUID_WEAPON_ALLIANCE_4   , 28954, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Shanker
(56, @GUID_WEAPON_ALLIANCE_4   , 28955, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Shiv
(56, @GUID_WEAPON_ALLIANCE_4   , 28956, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Slicer
(56, @GUID_WEAPON_ALLIANCE_4   , 28957, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- Grand Marshal's Spellblade
(56, @GUID_WEAPON_ALLIANCE_4   , 28960, 0, 0, 0, @EXT_WEP_HONOR_03_4), -- Grand Marshal's Heavy Crossbow
(56, @GUID_ARMOR_ALLIANCE_4    , 28613, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Chain Armor
(56, @GUID_ARMOR_ALLIANCE_4    , 28614, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Chain Gauntlets
(56, @GUID_ARMOR_ALLIANCE_4    , 28615, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Chain Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28616, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Chain Leggings
(56, @GUID_ARMOR_ALLIANCE_4    , 28617, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Chain Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28618, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Dragonhide Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 28619, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Dragonhide Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28620, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Dragonhide Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28622, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Dragonhide Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28623, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Dragonhide Tunic
(56, @GUID_ARMOR_ALLIANCE_4    , 28624, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Dreadweave Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 28625, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Dreadweave Hood
(56, @GUID_ARMOR_ALLIANCE_4    , 28626, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Dreadweave Leggings
(56, @GUID_ARMOR_ALLIANCE_4    , 28627, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Dreadweave Mantle
(56, @GUID_ARMOR_ALLIANCE_4    , 28628, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Dreadweave Robe
(56, @GUID_ARMOR_ALLIANCE_4    , 31589, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Kodohide Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 31590, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Kodohide Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 31591, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Kodohide Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 31592, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Kodohide Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 31593, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Kodohide Tunic
(56, @GUID_ARMOR_ALLIANCE_4    , 28679, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Lamellar Chestpiece
(56, @GUID_ARMOR_ALLIANCE_4    , 28680, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Lamellar Gauntlets
(56, @GUID_ARMOR_ALLIANCE_4    , 28681, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Lamellar Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28724, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Lamellar Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28683, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Lamellar Shoulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28684, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Leather Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 28685, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Leather Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28686, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Leather Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28687, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Leather Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28688, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Leather Tunic
(56, @GUID_ARMOR_ALLIANCE_4    , 28689, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Linked Armor
(56, @GUID_ARMOR_ALLIANCE_4    , 28690, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Linked Gauntlets
(56, @GUID_ARMOR_ALLIANCE_4    , 28691, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Linked Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28692, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Linked Leggings
(56, @GUID_ARMOR_ALLIANCE_4    , 28693, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Linked Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28694, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Mail Armor
(56, @GUID_ARMOR_ALLIANCE_4    , 28695, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Mail Gauntlets
(56, @GUID_ARMOR_ALLIANCE_4    , 28696, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Mail Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28697, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Mail Leggings
(56, @GUID_ARMOR_ALLIANCE_4    , 28698, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Mail Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 31622, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Mooncloth Cowl
(56, @GUID_ARMOR_ALLIANCE_4    , 31623, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Mooncloth Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 31620, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Mooncloth Mitts
(56, @GUID_ARMOR_ALLIANCE_4    , 31624, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Mooncloth Shoulderpads
(56, @GUID_ARMOR_ALLIANCE_4    , 31625, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Mooncloth Vestments
(56, @GUID_ARMOR_ALLIANCE_4    , 31630, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Ornamented Chestplate
(56, @GUID_ARMOR_ALLIANCE_4    , 31631, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Ornamented Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 31632, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Ornamented Headguard
(56, @GUID_ARMOR_ALLIANCE_4    , 31633, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Ornamented Leggings
(56, @GUID_ARMOR_ALLIANCE_4    , 31634, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Ornamented Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28699, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Plate Chestpiece
(56, @GUID_ARMOR_ALLIANCE_4    , 28700, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Plate Gauntlets
(56, @GUID_ARMOR_ALLIANCE_4    , 28701, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Plate Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28702, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Plate Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28703, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Plate Shoulders
(56, @GUID_ARMOR_ALLIANCE_4    , 31640, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Ringmail Chestguard
(56, @GUID_ARMOR_ALLIANCE_4    , 31641, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Ringmail Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 31642, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Ringmail Headpiece
(56, @GUID_ARMOR_ALLIANCE_4    , 31643, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Ringmail Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 31644, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Ringmail Shoulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28704, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Satin Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 28705, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Satin Hood
(56, @GUID_ARMOR_ALLIANCE_4    , 28706, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Satin Leggings
(56, @GUID_ARMOR_ALLIANCE_4    , 28707, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Satin Mantle
(56, @GUID_ARMOR_ALLIANCE_4    , 28708, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Satin Robe
(56, @GUID_ARMOR_ALLIANCE_4    , 28709, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Scaled Chestpiece
(56, @GUID_ARMOR_ALLIANCE_4    , 28710, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Scaled Gauntlets
(56, @GUID_ARMOR_ALLIANCE_4    , 28711, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Scaled Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28712, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Scaled Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28713, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Scaled Shoulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28714, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Silk Amice
(56, @GUID_ARMOR_ALLIANCE_4    , 28715, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Silk Cowl
(56, @GUID_ARMOR_ALLIANCE_4    , 28716, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Silk Handguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28717, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Silk Raiment
(56, @GUID_ARMOR_ALLIANCE_4    , 28718, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Silk Trousers
(56, @GUID_ARMOR_ALLIANCE_4    , 28719, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- Grand Marshal's Wyrmhide Gloves
(56, @GUID_ARMOR_ALLIANCE_4    , 28720, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- Grand Marshal's Wyrmhide Helm
(56, @GUID_ARMOR_ALLIANCE_4    , 28721, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- Grand Marshal's Wyrmhide Legguards
(56, @GUID_ARMOR_ALLIANCE_4    , 28722, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- Grand Marshal's Wyrmhide Spaulders
(56, @GUID_ARMOR_ALLIANCE_4    , 28723, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- Grand Marshal's Wyrmhide Tunic
(56, @GUID_ARMOR_ALLIANCE_4    , 28973, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Chain Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28974, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Chain Girdle
(56, @GUID_ARMOR_ALLIANCE_4    , 28975, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Chain Sabatons
(56, @GUID_ARMOR_ALLIANCE_4    , 28976, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Dragonhide Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 28977, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Dragonhide Boots
(56, @GUID_ARMOR_ALLIANCE_4    , 28978, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Dragonhide Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28980, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Dreadweave Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 28981, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Dreadweave Cuffs
(56, @GUID_ARMOR_ALLIANCE_4    , 28982, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Dreadweave Stalkers
(56, @GUID_ARMOR_ALLIANCE_4    , 31596, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Kodohide Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 31597, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Kodohide Boots
(56, @GUID_ARMOR_ALLIANCE_4    , 31599, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Kodohide Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28983, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Lamellar Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 28984, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Lamellar Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28985, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Lamellar Greaves
(56, @GUID_ARMOR_ALLIANCE_4    , 28986, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Leather Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 28987, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Leather Boots
(56, @GUID_ARMOR_ALLIANCE_4    , 28988, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Leather Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28989, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Linked Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28990, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Linked Girdle
(56, @GUID_ARMOR_ALLIANCE_4    , 28991, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Linked Sabatons
(56, @GUID_ARMOR_ALLIANCE_4    , 28992, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Mail Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28993, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Mail Girdle
(56, @GUID_ARMOR_ALLIANCE_4    , 28994, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Mail Sabatons
(56, @GUID_ARMOR_ALLIANCE_4    , 28995, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Plate Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 28996, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Plate Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 28997, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Plate Greaves
(56, @GUID_ARMOR_ALLIANCE_4    , 28998, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Scaled Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 28999, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Scaled Bracers
(56, @GUID_ARMOR_ALLIANCE_4    , 29000, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Scaled Greaves
(56, @GUID_ARMOR_ALLIANCE_4    , 29001, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Silk Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 29002, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Silk Cuffs
(56, @GUID_ARMOR_ALLIANCE_4    , 29003, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Silk Footguards
(56, @GUID_ARMOR_ALLIANCE_4    , 29004, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- Marshal's Wyrmhide Belt
(56, @GUID_ARMOR_ALLIANCE_4    , 29005, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- Marshal's Wyrmhide Boots
(56, @GUID_ARMOR_ALLIANCE_4    , 29006, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- Marshal's Wyrmhide Bracers
(56, @GUID_ACCESSORY_ALLIANCE_4, 28362, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Bold Ornate Ruby
(56, @GUID_ACCESSORY_ALLIANCE_4, 28120, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Gleaming Ornate Dawnstone
(56, @GUID_ACCESSORY_ALLIANCE_4, 28118, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Runed Ornate Ruby
(56, @GUID_ACCESSORY_ALLIANCE_4, 28119, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Smooth Ornate Dawnstone
(56, @GUID_ACCESSORY_ALLIANCE_4, 28363, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Inscribed Ornate Topaz
(56, @GUID_ACCESSORY_ALLIANCE_4, 28123, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Potent Ornate Topaz
(56, @GUID_ACCESSORY_ALLIANCE_4, 25829, 0, 0, 0, @EXT_ACC_HONOR_03_4), -- Talisman of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28245, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Dominance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28244, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Triumph
(56, @GUID_ACCESSORY_ALLIANCE_4, 28247, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Dominance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28246, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Triumph
(56, @GUID_ACCESSORY_ALLIANCE_4, 28379, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cape
(56, @GUID_ACCESSORY_ALLIANCE_4, 28380, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cloak
(56, @GUID_ACCESSORY_ALLIANCE_4, 32455, 8, 0, 0, @EXT_ACC_HONOR_06_4), -- Star's Lament
(56, @GUID_ACCESSORY_ALLIANCE_4, 32453, 8, 0, 0, @EXT_ACC_HONOR_07_4), -- Star's Tears
(56, @GUID_ACCESSORY_ALLIANCE_4, 31838, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31840, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31839, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31841, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31852, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31854, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31853, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 31855, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_ALLIANCE_4, 37864, 1, 0, 0, @EXT_ACC_HONOR_12_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28234, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28235, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28236, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28237, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 28238, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 30348, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 30349, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 30350, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 30351, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_ACCESSORY_ALLIANCE_4, 38589, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Alliance
(56, @GUID_WEAPON_HORDE_4      , 28293, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Claymore
(56, @GUID_WEAPON_HORDE_4      , 28917, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Bonegrinder
(56, @GUID_WEAPON_HORDE_4      , 28918, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Decapitator
(56, @GUID_WEAPON_HORDE_4      , 28919, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Maul
(56, @GUID_WEAPON_HORDE_4      , 28923, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's Painsaw
(56, @GUID_WEAPON_HORDE_4      , 28935, 0, 0, 0, @EXT_WEP_HONOR_01_4), -- High Warlord's War Staff
(56, @GUID_WEAPON_HORDE_4      , 28920, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Cleaver
(56, @GUID_WEAPON_HORDE_4      , 28921, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Hacker
(56, @GUID_WEAPON_HORDE_4      , 28922, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Left Ripper
(56, @GUID_WEAPON_HORDE_4      , 28924, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Bonecracker
(56, @GUID_WEAPON_HORDE_4      , 28925, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Pummeler
(56, @GUID_WEAPON_HORDE_4      , 28926, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Quickblade
(56, @GUID_WEAPON_HORDE_4      , 28928, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Right Ripper
(56, @GUID_WEAPON_HORDE_4      , 28929, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Shanker
(56, @GUID_WEAPON_HORDE_4      , 28930, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Shiv
(56, @GUID_WEAPON_HORDE_4      , 28931, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Spellblade
(56, @GUID_WEAPON_HORDE_4      , 28937, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Slicer
(56, @GUID_WEAPON_HORDE_4      , 28938, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Battletome
(56, @GUID_WEAPON_HORDE_4      , 28939, 0, 0, 0, @EXT_WEP_HONOR_02_4), -- High Warlord's Barricade
(56, @GUID_WEAPON_HORDE_4      , 28933, 0, 0, 0, @EXT_WEP_HONOR_03_4), -- High Warlord's Heavy Crossbow
(56, @GUID_ARMOR_HORDE_4       , 28451, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Chain Bracers
(56, @GUID_ARMOR_HORDE_4       , 28450, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Chain Girdle
(56, @GUID_ARMOR_HORDE_4       , 28449, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Chain Sabatons
(56, @GUID_ARMOR_HORDE_4       , 28443, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Dragonhide Belt
(56, @GUID_ARMOR_HORDE_4       , 28444, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Dragonhide Boots
(56, @GUID_ARMOR_HORDE_4       , 28445, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Dragonhide Bracers
(56, @GUID_ARMOR_HORDE_4       , 28404, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Dreadweave Belt
(56, @GUID_ARMOR_HORDE_4       , 28405, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Dreadweave Cuffs
(56, @GUID_ARMOR_HORDE_4       , 28402, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Dreadweave Stalkers
(56, @GUID_ARMOR_HORDE_4       , 31594, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Kodohide Belt
(56, @GUID_ARMOR_HORDE_4       , 31595, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Kodohide Boots
(56, @GUID_ARMOR_HORDE_4       , 31598, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Kodohide Bracers
(56, @GUID_ARMOR_HORDE_4       , 28641, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Lamellar Belt
(56, @GUID_ARMOR_HORDE_4       , 28643, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Lamellar Bracers
(56, @GUID_ARMOR_HORDE_4       , 28642, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Lamellar Greaves
(56, @GUID_ARMOR_HORDE_4       , 28423, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Leather Belt
(56, @GUID_ARMOR_HORDE_4       , 28422, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Leather Boots
(56, @GUID_ARMOR_HORDE_4       , 28424, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Leather Bracers
(56, @GUID_ARMOR_HORDE_4       , 28605, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Linked Bracers
(56, @GUID_ARMOR_HORDE_4       , 28629, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Linked Girdle
(56, @GUID_ARMOR_HORDE_4       , 28630, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Linked Sabatons
(56, @GUID_ARMOR_HORDE_4       , 28638, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Mail Bracers
(56, @GUID_ARMOR_HORDE_4       , 28639, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Mail Girdle
(56, @GUID_ARMOR_HORDE_4       , 28640, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Mail Sabatons
(56, @GUID_ARMOR_HORDE_4       , 28385, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Plate Belt
(56, @GUID_ARMOR_HORDE_4       , 28381, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Plate Bracers
(56, @GUID_ARMOR_HORDE_4       , 28383, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Plate Greaves
(56, @GUID_ARMOR_HORDE_4       , 28644, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Scaled Belt
(56, @GUID_ARMOR_HORDE_4       , 28646, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Scaled Bracers
(56, @GUID_ARMOR_HORDE_4       , 28645, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Scaled Greaves
(56, @GUID_ARMOR_HORDE_4       , 28409, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Silk Belt
(56, @GUID_ARMOR_HORDE_4       , 28411, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Silk Cuffs
(56, @GUID_ARMOR_HORDE_4       , 28410, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Silk Footguards
(56, @GUID_ARMOR_HORDE_4       , 28446, 3, 0, 0, @EXT_ARM_HONOR_07_4), -- General's Wyrmhide Belt
(56, @GUID_ARMOR_HORDE_4       , 28447, 3, 0, 0, @EXT_ARM_HONOR_08_4), -- General's Wyrmhide Boots
(56, @GUID_ARMOR_HORDE_4       , 28448, 3, 0, 0, @EXT_ARM_HONOR_06_4), -- General's Wyrmhide Bracers
(56, @GUID_ARMOR_HORDE_4       , 28805, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Chain Armor
(56, @GUID_ARMOR_HORDE_4       , 28806, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Chain Gauntlets
(56, @GUID_ARMOR_HORDE_4       , 28807, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Chain Helm
(56, @GUID_ARMOR_HORDE_4       , 28808, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Chain Leggings
(56, @GUID_ARMOR_HORDE_4       , 28809, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Chain Spaulders
(56, @GUID_ARMOR_HORDE_4       , 28811, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Dragonhide Gloves
(56, @GUID_ARMOR_HORDE_4       , 28812, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Dragonhide Helm
(56, @GUID_ARMOR_HORDE_4       , 28813, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Dragonhide Legguards
(56, @GUID_ARMOR_HORDE_4       , 28814, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Dragonhide Spaulders
(56, @GUID_ARMOR_HORDE_4       , 28815, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Dragonhide Tunic
(56, @GUID_ARMOR_HORDE_4       , 28817, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Dreadweave Gloves
(56, @GUID_ARMOR_HORDE_4       , 28818, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Dreadweave Hood
(56, @GUID_ARMOR_HORDE_4       , 28819, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Dreadweave Leggings
(56, @GUID_ARMOR_HORDE_4       , 28820, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Dreadweave Mantle
(56, @GUID_ARMOR_HORDE_4       , 28821, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Dreadweave Robe
(56, @GUID_ARMOR_HORDE_4       , 31584, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Kodohide Gloves
(56, @GUID_ARMOR_HORDE_4       , 31585, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Kodohide Helm
(56, @GUID_ARMOR_HORDE_4       , 31586, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Kodohide Legguards
(56, @GUID_ARMOR_HORDE_4       , 31587, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Kodohide Spaulders
(56, @GUID_ARMOR_HORDE_4       , 31588, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Kodohide Tunic
(56, @GUID_ARMOR_HORDE_4       , 28831, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Lamellar Chestpiece
(56, @GUID_ARMOR_HORDE_4       , 28832, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Lamellar Gauntlets
(56, @GUID_ARMOR_HORDE_4       , 28833, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Lamellar Helm
(56, @GUID_ARMOR_HORDE_4       , 28834, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Lamellar Legguards
(56, @GUID_ARMOR_HORDE_4       , 28835, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Lamellar Shoulders
(56, @GUID_ARMOR_HORDE_4       , 28836, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Leather Gloves
(56, @GUID_ARMOR_HORDE_4       , 28837, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Leather Helm
(56, @GUID_ARMOR_HORDE_4       , 28838, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Leather Legguards
(56, @GUID_ARMOR_HORDE_4       , 28839, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Leather Spaulders
(56, @GUID_ARMOR_HORDE_4       , 28840, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Leather Tunic
(56, @GUID_ARMOR_HORDE_4       , 28841, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Linked Armor
(56, @GUID_ARMOR_HORDE_4       , 28842, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Linked Gauntlets
(56, @GUID_ARMOR_HORDE_4       , 28843, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Linked Helm
(56, @GUID_ARMOR_HORDE_4       , 28844, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Linked Leggings
(56, @GUID_ARMOR_HORDE_4       , 28845, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Linked Spaulders
(56, @GUID_ARMOR_HORDE_4       , 28846, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Mail Armor
(56, @GUID_ARMOR_HORDE_4       , 28847, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Mail Gauntlets
(56, @GUID_ARMOR_HORDE_4       , 28848, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Mail Helm
(56, @GUID_ARMOR_HORDE_4       , 28849, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Mail Leggings
(56, @GUID_ARMOR_HORDE_4       , 28850, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Mail Spaulders
(56, @GUID_ARMOR_HORDE_4       , 31626, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Mooncloth Cowl
(56, @GUID_ARMOR_HORDE_4       , 31627, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Mooncloth Legguards
(56, @GUID_ARMOR_HORDE_4       , 31621, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Mooncloth Mitts
(56, @GUID_ARMOR_HORDE_4       , 31628, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Mooncloth Shoulderpads
(56, @GUID_ARMOR_HORDE_4       , 31629, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Mooncloth Vestments
(56, @GUID_ARMOR_HORDE_4       , 31635, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Ornamented Chestplate
(56, @GUID_ARMOR_HORDE_4       , 31636, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Ornamented Gloves
(56, @GUID_ARMOR_HORDE_4       , 31637, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Ornamented Headguard
(56, @GUID_ARMOR_HORDE_4       , 31638, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Ornamented Leggings
(56, @GUID_ARMOR_HORDE_4       , 31639, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Ornamented Spaulders
(56, @GUID_ARMOR_HORDE_4       , 28851, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Plate Chestpiece
(56, @GUID_ARMOR_HORDE_4       , 28852, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Plate Gauntlets
(56, @GUID_ARMOR_HORDE_4       , 28853, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Plate Helm
(56, @GUID_ARMOR_HORDE_4       , 28854, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Plate Legguards
(56, @GUID_ARMOR_HORDE_4       , 28855, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Plate Shoulders
(56, @GUID_ARMOR_HORDE_4       , 31646, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Ringmail Chestguard
(56, @GUID_ARMOR_HORDE_4       , 31647, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Ringmail Gloves
(56, @GUID_ARMOR_HORDE_4       , 31648, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Ringmail Headpiece
(56, @GUID_ARMOR_HORDE_4       , 31649, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Ringmail Legguards
(56, @GUID_ARMOR_HORDE_4       , 31650, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Ringmail Shoulderpads
(56, @GUID_ARMOR_HORDE_4       , 28856, 1, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Satin Gloves
(56, @GUID_ARMOR_HORDE_4       , 28857, 1, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Satin Hood
(56, @GUID_ARMOR_HORDE_4       , 28858, 1, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Satin Leggings
(56, @GUID_ARMOR_HORDE_4       , 28859, 1, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Satin Mantle
(56, @GUID_ARMOR_HORDE_4       , 28860, 1, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Satin Robe
(56, @GUID_ARMOR_HORDE_4       , 28861, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Scaled Chestpiece
(56, @GUID_ARMOR_HORDE_4       , 28862, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Scaled Gauntlets
(56, @GUID_ARMOR_HORDE_4       , 28863, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Scaled Helm
(56, @GUID_ARMOR_HORDE_4       , 28864, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Scaled Legguards
(56, @GUID_ARMOR_HORDE_4       , 28865, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Scaled Shoulders
(56, @GUID_ARMOR_HORDE_4       , 28866, 0, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Silk Amice
(56, @GUID_ARMOR_HORDE_4       , 28867, 0, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Silk Cowl
(56, @GUID_ARMOR_HORDE_4       , 28868, 0, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Silk Handguards
(56, @GUID_ARMOR_HORDE_4       , 28869, 0, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Silk Raiment
(56, @GUID_ARMOR_HORDE_4       , 28870, 0, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Silk Trousers
(56, @GUID_ARMOR_HORDE_4       , 28871, 2, 0, 0, @EXT_ARM_HONOR_02_4), -- High Warlord's Wyrmhide Gloves
(56, @GUID_ARMOR_HORDE_4       , 28872, 2, 0, 0, @EXT_ARM_HONOR_03_4), -- High Warlord's Wyrmhide Helm
(56, @GUID_ARMOR_HORDE_4       , 28873, 2, 0, 0, @EXT_ARM_HONOR_04_4), -- High Warlord's Wyrmhide Legguards
(56, @GUID_ARMOR_HORDE_4       , 28874, 2, 0, 0, @EXT_ARM_HONOR_05_4), -- High Warlord's Wyrmhide Spaulders
(56, @GUID_ARMOR_HORDE_4       , 28875, 2, 0, 0, @EXT_ARM_HONOR_01_4), -- High Warlord's Wyrmhide Tunic
(56, @GUID_ACCESSORY_HORDE_4   , 28118, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Runed Ornate Ruby
(56, @GUID_ACCESSORY_HORDE_4   , 28119, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Smooth Ornate Dawnstone
(56, @GUID_ACCESSORY_HORDE_4   , 28120, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Gleaming Ornate Dawnstone
(56, @GUID_ACCESSORY_HORDE_4   , 28362, 6, 0, 0, @EXT_ACC_HONOR_01_4), -- Bold Ornate Ruby
(56, @GUID_ACCESSORY_HORDE_4   , 28123, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Potent Ornate Topaz
(56, @GUID_ACCESSORY_HORDE_4   , 28363, 6, 0, 0, @EXT_ACC_HONOR_02_4), -- Inscribed Ornate Topaz
(56, @GUID_ACCESSORY_HORDE_4   , 24551, 0, 0, 0, @EXT_ACC_HONOR_03_4), -- Talisman of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 28244, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Triumph
(56, @GUID_ACCESSORY_HORDE_4   , 28245, 2, 0, 0, @EXT_ACC_HONOR_04_4), -- Pendant of Dominance
(56, @GUID_ACCESSORY_HORDE_4   , 28246, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Triumph
(56, @GUID_ACCESSORY_HORDE_4   , 28247, 3, 0, 0, @EXT_ACC_HONOR_14_4), -- Band of Dominance
(56, @GUID_ACCESSORY_HORDE_4   , 28377, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cloak
(56, @GUID_ACCESSORY_HORDE_4   , 28378, 4, 0, 0, @EXT_ACC_HONOR_05_4), -- Sergeant's Heavy Cape
(56, @GUID_ACCESSORY_HORDE_4   , 32455, 8, 0, 0, @EXT_ACC_HONOR_06_4), -- Star's Lament
(56, @GUID_ACCESSORY_HORDE_4   , 32453, 8, 0, 0, @EXT_ACC_HONOR_07_4), -- Star's Tears
(56, @GUID_ACCESSORY_HORDE_4   , 31838, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31840, 7, 0, 0, @EXT_ACC_HONOR_08_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31839, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31841, 7, 0, 0, @EXT_ACC_HONOR_09_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31852, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31854, 7, 0, 0, @EXT_ACC_HONOR_10_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31853, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Healing Potion
(56, @GUID_ACCESSORY_HORDE_4   , 31855, 7, 0, 0, @EXT_ACC_HONOR_11_4), -- Major Combat Mana Potion
(56, @GUID_ACCESSORY_HORDE_4   , 37865, 1, 0, 0, @EXT_ACC_HONOR_12_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 28239, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 28240, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 28241, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 28242, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 28243, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 30343, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 30344, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 30345, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 30346, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
(56, @GUID_ACCESSORY_HORDE_4   , 38588, 5, 0, 0, @EXT_ACC_HONOR_13_4), -- Medallion of the Horde
/*
	Season One Arena Vendor
		Present in all 4 seasons
*/
-- Season 1
(75, @GUID_SEASON_ONE_1, 24550, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_1), -- Gladiator's Greatsword
(75, @GUID_SEASON_ONE_1, 24557, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_1), -- Gladiator's War Staff
(75, @GUID_SEASON_ONE_1, 28294, 0, 0, 0, @EXT_WEP_SEASON_ONE_08_1), -- Gladiator's Heavy Crossbow
(75, @GUID_SEASON_ONE_1, 28298, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_1), -- Gladiator's Decapitator
(75, @GUID_SEASON_ONE_1, 28299, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_1), -- Gladiator's Bonegrinder
(75, @GUID_SEASON_ONE_1, 28300, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_1), -- Gladiator's Painsaw
(75, @GUID_SEASON_ONE_1, 28476, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_1), -- Gladiator's Maul
(75, @GUID_SEASON_ONE_1, 28297, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_1), -- Gladiator's Spellblade
(75, @GUID_SEASON_ONE_1, 32450, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_1), -- Gladiator's Gavel
(75, @GUID_SEASON_ONE_1, 32451, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_1), -- Gladiator's Salvation
(75, @GUID_SEASON_ONE_1, 28295, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_1), -- Gladiator's Slicer
(75, @GUID_SEASON_ONE_1, 28302, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_1), -- Gladiator's Bonecracker
(75, @GUID_SEASON_ONE_1, 28305, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_1), -- Gladiator's Pummeler
(75, @GUID_SEASON_ONE_1, 28307, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_1), -- Gladiator's Quickblade
(75, @GUID_SEASON_ONE_1, 28308, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_1), -- Gladiator's Cleaver
(75, @GUID_SEASON_ONE_1, 28309, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_1), -- Gladiator's Hacker
(75, @GUID_SEASON_ONE_1, 28310, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_1), -- Gladiator's Shiv
(75, @GUID_SEASON_ONE_1, 28312, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_1), -- Gladiator's Shanker
(75, @GUID_SEASON_ONE_1, 28313, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_1), -- Gladiator's Right Ripper
(75, @GUID_SEASON_ONE_1, 28314, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_1), -- Gladiator's Left Ripper
(75, @GUID_SEASON_ONE_1, 28319, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_1), -- Gladiator's War Edge
(75, @GUID_SEASON_ONE_1, 28320, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_1), -- Gladiator's Touch of Defeat
(75, @GUID_SEASON_ONE_1, 28346, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_1), -- Gladiator's Endgame
(75, @GUID_SEASON_ONE_1, 28355, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_1), -- Gladiator's Idol of Tenacity
(75, @GUID_SEASON_ONE_1, 28356, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_1), -- Gladiator's Libram of Justice
(75, @GUID_SEASON_ONE_1, 32452, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_1), -- Gladiator's Reprieve
(75, @GUID_SEASON_ONE_1, 28358, 0, 0, 0, @EXT_WEP_SEASON_ONE_06_1), -- Gladiator's Shield Wall
(75, @GUID_SEASON_ONE_1, 28357, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_1), -- Gladiator's Totem of the Third Wind
(75, @GUID_SEASON_ONE_1, 28334, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Chain Armor
(75, @GUID_SEASON_ONE_1, 28335, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Chain Gauntlets
(75, @GUID_SEASON_ONE_1, 28331, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Chain Helm
(75, @GUID_SEASON_ONE_1, 28332, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Chain Leggings
(75, @GUID_SEASON_ONE_1, 28333, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Chain Spaulders
(75, @GUID_SEASON_ONE_1, 28126, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Dragonhide Gloves
(75, @GUID_SEASON_ONE_1, 28127, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Dragonhide Helm
(75, @GUID_SEASON_ONE_1, 28128, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Dragonhide Legguards
(75, @GUID_SEASON_ONE_1, 28129, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Dragonhide Spaulders
(75, @GUID_SEASON_ONE_1, 28130, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Dragonhide Tunic
(75, @GUID_SEASON_ONE_1, 24556, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Dreadweave Gloves
(75, @GUID_SEASON_ONE_1, 24553, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Dreadweave Hood
(75, @GUID_SEASON_ONE_1, 24555, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Dreadweave Leggings
(75, @GUID_SEASON_ONE_1, 24554, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Dreadweave Mantle
(75, @GUID_SEASON_ONE_1, 24552, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Dreadweave Robe
(75, @GUID_SEASON_ONE_1, 30186, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Felweave Amice
(75, @GUID_SEASON_ONE_1, 30187, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Felweave Cowl
(75, @GUID_SEASON_ONE_1, 30188, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Felweave Handguards
(75, @GUID_SEASON_ONE_1, 30200, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Felweave Raiment
(75, @GUID_SEASON_ONE_1, 30201, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Felweave Trousers
(75, @GUID_SEASON_ONE_1, 31375, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Kodohide Gloves
(75, @GUID_SEASON_ONE_1, 31376, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Kodohide Helm
(75, @GUID_SEASON_ONE_1, 31377, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Kodohide Legguards
(75, @GUID_SEASON_ONE_1, 31378, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Kodohide Spaulders
(75, @GUID_SEASON_ONE_1, 31379, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Kodohide Tunic
(75, @GUID_SEASON_ONE_1, 27702, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Lamellar Chestpiece
(75, @GUID_SEASON_ONE_1, 27703, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Lamellar Gauntlets
(75, @GUID_SEASON_ONE_1, 27704, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Lamellar Helm
(75, @GUID_SEASON_ONE_1, 27705, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Lamellar Legguards
(75, @GUID_SEASON_ONE_1, 27706, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Lamellar Shoulders
(75, @GUID_SEASON_ONE_1, 25834, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Leather Gloves
(75, @GUID_SEASON_ONE_1, 25830, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Leather Helm
(75, @GUID_SEASON_ONE_1, 25833, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Leather Legguards
(75, @GUID_SEASON_ONE_1, 25832, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Leather Spaulders
(75, @GUID_SEASON_ONE_1, 25831, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Leather Tunic
(75, @GUID_SEASON_ONE_1, 25997, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Linked Armor
(75, @GUID_SEASON_ONE_1, 26000, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Linked Gauntlets
(75, @GUID_SEASON_ONE_1, 25998, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Linked Helm
(75, @GUID_SEASON_ONE_1, 26001, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Linked Leggings
(75, @GUID_SEASON_ONE_1, 25999, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Linked Spaulders
(75, @GUID_SEASON_ONE_1, 27469, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Mail Armor
(75, @GUID_SEASON_ONE_1, 27470, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Mail Gauntlets
(75, @GUID_SEASON_ONE_1, 27471, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Mail Helm
(75, @GUID_SEASON_ONE_1, 27472, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Mail Leggings
(75, @GUID_SEASON_ONE_1, 27473, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Mail Spaulders
(75, @GUID_SEASON_ONE_1, 31409, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Mooncloth Gloves
(75, @GUID_SEASON_ONE_1, 31410, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Mooncloth Hood
(75, @GUID_SEASON_ONE_1, 31411, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Mooncloth Leggings
(75, @GUID_SEASON_ONE_1, 31412, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Mooncloth Mantle
(75, @GUID_SEASON_ONE_1, 31413, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Mooncloth Robe
(75, @GUID_SEASON_ONE_1, 31613, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Ornamented Chestguard
(75, @GUID_SEASON_ONE_1, 31614, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Ornamented Gloves
(75, @GUID_SEASON_ONE_1, 31616, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Ornamented Headcover
(75, @GUID_SEASON_ONE_1, 31618, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Ornamented Legplates
(75, @GUID_SEASON_ONE_1, 31619, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Ornamented Spaulders
(75, @GUID_SEASON_ONE_1, 24544, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Plate Chestpiece
(75, @GUID_SEASON_ONE_1, 24549, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Plate Gauntlets
(75, @GUID_SEASON_ONE_1, 24545, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Plate Helm
(75, @GUID_SEASON_ONE_1, 24547, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Plate Legguards
(75, @GUID_SEASON_ONE_1, 24546, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Plate Shoulders
(75, @GUID_SEASON_ONE_1, 31396, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Ringmail Armor
(75, @GUID_SEASON_ONE_1, 31397, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Ringmail Gauntlets
(75, @GUID_SEASON_ONE_1, 31400, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Ringmail Helm
(75, @GUID_SEASON_ONE_1, 31406, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Ringmail Leggings
(75, @GUID_SEASON_ONE_1, 31407, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Ringmail Spaulders
(75, @GUID_SEASON_ONE_1, 27707, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Satin Gloves
(75, @GUID_SEASON_ONE_1, 27708, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Satin Hood
(75, @GUID_SEASON_ONE_1, 27709, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Satin Leggings
(75, @GUID_SEASON_ONE_1, 27710, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Satin Mantle
(75, @GUID_SEASON_ONE_1, 27711, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Satin Robe
(75, @GUID_SEASON_ONE_1, 27879, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Scaled Chestpiece
(75, @GUID_SEASON_ONE_1, 27880, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Scaled Gauntlets
(75, @GUID_SEASON_ONE_1, 27881, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Scaled Helm
(75, @GUID_SEASON_ONE_1, 27882, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Scaled Legguards
(75, @GUID_SEASON_ONE_1, 27883, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Scaled Shoulders
(75, @GUID_SEASON_ONE_1, 25854, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Silk Amice
(75, @GUID_SEASON_ONE_1, 25855, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Silk Cowl
(75, @GUID_SEASON_ONE_1, 25857, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Silk Handguards
(75, @GUID_SEASON_ONE_1, 25856, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Silk Raiment
(75, @GUID_SEASON_ONE_1, 25858, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Silk Trousers
(75, @GUID_SEASON_ONE_1, 28136, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_1), -- Gladiator's Wyrmhide Gloves
(75, @GUID_SEASON_ONE_1, 28137, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_1), -- Gladiator's Wyrmhide Helm
(75, @GUID_SEASON_ONE_1, 28138, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_1), -- Gladiator's Wyrmhide Legguards
(75, @GUID_SEASON_ONE_1, 28139, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_1), -- Gladiator's Wyrmhide Spaulders
(75, @GUID_SEASON_ONE_1, 28140, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_1), -- Gladiator's Wyrmhide Tunic
-- Season 2
(76, @GUID_SEASON_ONE_2, 24550, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_2), -- Gladiator's Greatsword
(76, @GUID_SEASON_ONE_2, 24557, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_2), -- Gladiator's War Staff
(76, @GUID_SEASON_ONE_2, 28294, 0, 0, 0, @EXT_WEP_SEASON_ONE_08_2), -- Gladiator's Heavy Crossbow
(76, @GUID_SEASON_ONE_2, 28298, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_2), -- Gladiator's Decapitator
(76, @GUID_SEASON_ONE_2, 28299, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_2), -- Gladiator's Bonegrinder
(76, @GUID_SEASON_ONE_2, 28300, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_2), -- Gladiator's Painsaw
(76, @GUID_SEASON_ONE_2, 28476, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_2), -- Gladiator's Maul
(76, @GUID_SEASON_ONE_2, 28297, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_2), -- Gladiator's Spellblade
(76, @GUID_SEASON_ONE_2, 32450, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_2), -- Gladiator's Gavel
(76, @GUID_SEASON_ONE_2, 32451, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_2), -- Gladiator's Salvation
(76, @GUID_SEASON_ONE_2, 28295, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_2), -- Gladiator's Slicer
(76, @GUID_SEASON_ONE_2, 28302, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_2), -- Gladiator's Bonecracker
(76, @GUID_SEASON_ONE_2, 28305, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_2), -- Gladiator's Pummeler
(76, @GUID_SEASON_ONE_2, 28307, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_2), -- Gladiator's Quickblade
(76, @GUID_SEASON_ONE_2, 28308, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_2), -- Gladiator's Cleaver
(76, @GUID_SEASON_ONE_2, 28309, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_2), -- Gladiator's Hacker
(76, @GUID_SEASON_ONE_2, 28310, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_2), -- Gladiator's Shiv
(76, @GUID_SEASON_ONE_2, 28312, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_2), -- Gladiator's Shanker
(76, @GUID_SEASON_ONE_2, 28313, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_2), -- Gladiator's Right Ripper
(76, @GUID_SEASON_ONE_2, 28314, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_2), -- Gladiator's Left Ripper
(76, @GUID_SEASON_ONE_2, 28319, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_2), -- Gladiator's War Edge
(76, @GUID_SEASON_ONE_2, 28320, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_2), -- Gladiator's Touch of Defeat
(76, @GUID_SEASON_ONE_2, 28346, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_2), -- Gladiator's Endgame
(76, @GUID_SEASON_ONE_2, 28355, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_2), -- Gladiator's Idol of Tenacity
(76, @GUID_SEASON_ONE_2, 28356, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_2), -- Gladiator's Libram of Justice
(76, @GUID_SEASON_ONE_2, 32452, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_2), -- Gladiator's Reprieve
(76, @GUID_SEASON_ONE_2, 28358, 0, 0, 0, @EXT_WEP_SEASON_ONE_06_2), -- Gladiator's Shield Wall
(76, @GUID_SEASON_ONE_2, 28357, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_2), -- Gladiator's Totem of the Third Wind
(76, @GUID_SEASON_ONE_2, 28334, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Chain Armor
(76, @GUID_SEASON_ONE_2, 28335, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Chain Gauntlets
(76, @GUID_SEASON_ONE_2, 28331, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Chain Helm
(76, @GUID_SEASON_ONE_2, 28332, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Chain Leggings
(76, @GUID_SEASON_ONE_2, 28333, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Chain Spaulders
(76, @GUID_SEASON_ONE_2, 28126, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Dragonhide Gloves
(76, @GUID_SEASON_ONE_2, 28127, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Dragonhide Helm
(76, @GUID_SEASON_ONE_2, 28128, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Dragonhide Legguards
(76, @GUID_SEASON_ONE_2, 28129, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Dragonhide Spaulders
(76, @GUID_SEASON_ONE_2, 28130, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Dragonhide Tunic
(76, @GUID_SEASON_ONE_2, 24556, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Dreadweave Gloves
(76, @GUID_SEASON_ONE_2, 24553, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Dreadweave Hood
(76, @GUID_SEASON_ONE_2, 24555, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Dreadweave Leggings
(76, @GUID_SEASON_ONE_2, 24554, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Dreadweave Mantle
(76, @GUID_SEASON_ONE_2, 24552, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Dreadweave Robe
(76, @GUID_SEASON_ONE_2, 30186, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Felweave Amice
(76, @GUID_SEASON_ONE_2, 30187, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Felweave Cowl
(76, @GUID_SEASON_ONE_2, 30188, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Felweave Handguards
(76, @GUID_SEASON_ONE_2, 30200, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Felweave Raiment
(76, @GUID_SEASON_ONE_2, 30201, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Felweave Trousers
(76, @GUID_SEASON_ONE_2, 31375, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Kodohide Gloves
(76, @GUID_SEASON_ONE_2, 31376, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Kodohide Helm
(76, @GUID_SEASON_ONE_2, 31377, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Kodohide Legguards
(76, @GUID_SEASON_ONE_2, 31378, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Kodohide Spaulders
(76, @GUID_SEASON_ONE_2, 31379, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Kodohide Tunic
(76, @GUID_SEASON_ONE_2, 27702, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Lamellar Chestpiece
(76, @GUID_SEASON_ONE_2, 27703, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Lamellar Gauntlets
(76, @GUID_SEASON_ONE_2, 27704, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Lamellar Helm
(76, @GUID_SEASON_ONE_2, 27705, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Lamellar Legguards
(76, @GUID_SEASON_ONE_2, 27706, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Lamellar Shoulders
(76, @GUID_SEASON_ONE_2, 25834, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Leather Gloves
(76, @GUID_SEASON_ONE_2, 25830, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Leather Helm
(76, @GUID_SEASON_ONE_2, 25833, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Leather Legguards
(76, @GUID_SEASON_ONE_2, 25832, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Leather Spaulders
(76, @GUID_SEASON_ONE_2, 25831, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Leather Tunic
(76, @GUID_SEASON_ONE_2, 25997, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Linked Armor
(76, @GUID_SEASON_ONE_2, 26000, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Linked Gauntlets
(76, @GUID_SEASON_ONE_2, 25998, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Linked Helm
(76, @GUID_SEASON_ONE_2, 26001, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Linked Leggings
(76, @GUID_SEASON_ONE_2, 25999, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Linked Spaulders
(76, @GUID_SEASON_ONE_2, 27469, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Mail Armor
(76, @GUID_SEASON_ONE_2, 27470, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Mail Gauntlets
(76, @GUID_SEASON_ONE_2, 27471, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Mail Helm
(76, @GUID_SEASON_ONE_2, 27472, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Mail Leggings
(76, @GUID_SEASON_ONE_2, 27473, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Mail Spaulders
(76, @GUID_SEASON_ONE_2, 31409, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Mooncloth Gloves
(76, @GUID_SEASON_ONE_2, 31410, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Mooncloth Hood
(76, @GUID_SEASON_ONE_2, 31411, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Mooncloth Leggings
(76, @GUID_SEASON_ONE_2, 31412, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Mooncloth Mantle
(76, @GUID_SEASON_ONE_2, 31413, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Mooncloth Robe
(76, @GUID_SEASON_ONE_2, 31613, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Ornamented Chestguard
(76, @GUID_SEASON_ONE_2, 31614, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Ornamented Gloves
(76, @GUID_SEASON_ONE_2, 31616, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Ornamented Headcover
(76, @GUID_SEASON_ONE_2, 31618, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Ornamented Legplates
(76, @GUID_SEASON_ONE_2, 31619, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Ornamented Spaulders
(76, @GUID_SEASON_ONE_2, 24544, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Plate Chestpiece
(76, @GUID_SEASON_ONE_2, 24549, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Plate Gauntlets
(76, @GUID_SEASON_ONE_2, 24545, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Plate Helm
(76, @GUID_SEASON_ONE_2, 24547, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Plate Legguards
(76, @GUID_SEASON_ONE_2, 24546, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Plate Shoulders
(76, @GUID_SEASON_ONE_2, 31396, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Ringmail Armor
(76, @GUID_SEASON_ONE_2, 31397, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Ringmail Gauntlets
(76, @GUID_SEASON_ONE_2, 31400, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Ringmail Helm
(76, @GUID_SEASON_ONE_2, 31406, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Ringmail Leggings
(76, @GUID_SEASON_ONE_2, 31407, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Ringmail Spaulders
(76, @GUID_SEASON_ONE_2, 27707, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Satin Gloves
(76, @GUID_SEASON_ONE_2, 27708, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Satin Hood
(76, @GUID_SEASON_ONE_2, 27709, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Satin Leggings
(76, @GUID_SEASON_ONE_2, 27710, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Satin Mantle
(76, @GUID_SEASON_ONE_2, 27711, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Satin Robe
(76, @GUID_SEASON_ONE_2, 27879, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Scaled Chestpiece
(76, @GUID_SEASON_ONE_2, 27880, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Scaled Gauntlets
(76, @GUID_SEASON_ONE_2, 27881, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Scaled Helm
(76, @GUID_SEASON_ONE_2, 27882, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Scaled Legguards
(76, @GUID_SEASON_ONE_2, 27883, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Scaled Shoulders
(76, @GUID_SEASON_ONE_2, 25854, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Silk Amice
(76, @GUID_SEASON_ONE_2, 25855, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Silk Cowl
(76, @GUID_SEASON_ONE_2, 25857, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Silk Handguards
(76, @GUID_SEASON_ONE_2, 25856, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Silk Raiment
(76, @GUID_SEASON_ONE_2, 25858, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Silk Trousers
(76, @GUID_SEASON_ONE_2, 28136, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_2), -- Gladiator's Wyrmhide Gloves
(76, @GUID_SEASON_ONE_2, 28137, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_2), -- Gladiator's Wyrmhide Helm
(76, @GUID_SEASON_ONE_2, 28138, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_2), -- Gladiator's Wyrmhide Legguards
(76, @GUID_SEASON_ONE_2, 28139, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_2), -- Gladiator's Wyrmhide Spaulders
(76, @GUID_SEASON_ONE_2, 28140, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_2), -- Gladiator's Wyrmhide Tunic
-- Season 3
-- (55, @GUID_SEASON_ONE_3, 24550, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_3), -- Gladiator's Greatsword
-- (55, @GUID_SEASON_ONE_3, 24557, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_3), -- Gladiator's War Staff
-- (55, @GUID_SEASON_ONE_3, 28294, 0, 0, 0, @EXT_WEP_SEASON_ONE_08_3), -- Gladiator's Heavy Crossbow
-- (55, @GUID_SEASON_ONE_3, 28298, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_3), -- Gladiator's Decapitator
-- (55, @GUID_SEASON_ONE_3, 28299, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_3), -- Gladiator's Bonegrinder
-- (55, @GUID_SEASON_ONE_3, 28300, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_3), -- Gladiator's Painsaw
-- (55, @GUID_SEASON_ONE_3, 28476, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_3), -- Gladiator's Maul
-- (55, @GUID_SEASON_ONE_3, 28297, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_3), -- Gladiator's Spellblade
-- (55, @GUID_SEASON_ONE_3, 32450, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_3), -- Gladiator's Gavel
-- (55, @GUID_SEASON_ONE_3, 32451, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_3), -- Gladiator's Salvation
-- (55, @GUID_SEASON_ONE_3, 28295, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_3), -- Gladiator's Slicer
-- (55, @GUID_SEASON_ONE_3, 28302, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_3), -- Gladiator's Bonecracker
-- (55, @GUID_SEASON_ONE_3, 28305, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_3), -- Gladiator's Pummeler
-- (55, @GUID_SEASON_ONE_3, 28307, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_3), -- Gladiator's Quickblade
-- (55, @GUID_SEASON_ONE_3, 28308, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_3), -- Gladiator's Cleaver
-- (55, @GUID_SEASON_ONE_3, 28309, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_3), -- Gladiator's Hacker
-- (55, @GUID_SEASON_ONE_3, 28310, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_3), -- Gladiator's Shiv
-- (55, @GUID_SEASON_ONE_3, 28312, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_3), -- Gladiator's Shanker
-- (55, @GUID_SEASON_ONE_3, 28313, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_3), -- Gladiator's Right Ripper
-- (55, @GUID_SEASON_ONE_3, 28314, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_3), -- Gladiator's Left Ripper
-- (55, @GUID_SEASON_ONE_3, 28319, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_3), -- Gladiator's War Edge
-- (55, @GUID_SEASON_ONE_3, 28320, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_3), -- Gladiator's Touch of Defeat
-- (55, @GUID_SEASON_ONE_3, 28346, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_3), -- Gladiator's Endgame
-- (55, @GUID_SEASON_ONE_3, 28355, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_3), -- Gladiator's Idol of Tenacity
-- (55, @GUID_SEASON_ONE_3, 28356, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_3), -- Gladiator's Libram of Justice
-- (55, @GUID_SEASON_ONE_3, 32452, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_3), -- Gladiator's Reprieve
-- (55, @GUID_SEASON_ONE_3, 28358, 0, 0, 0, @EXT_WEP_SEASON_ONE_06_3), -- Gladiator's Shield Wall
-- (55, @GUID_SEASON_ONE_3, 28357, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_3), -- Gladiator's Totem of the Third Wind
(55, @GUID_SEASON_ONE_3, 28334, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Chain Armor
(55, @GUID_SEASON_ONE_3, 28335, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Chain Gauntlets
(55, @GUID_SEASON_ONE_3, 28331, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Chain Helm
(55, @GUID_SEASON_ONE_3, 28332, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Chain Leggings
(55, @GUID_SEASON_ONE_3, 28333, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Chain Spaulders
(55, @GUID_SEASON_ONE_3, 28126, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Dragonhide Gloves
(55, @GUID_SEASON_ONE_3, 28127, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Dragonhide Helm
(55, @GUID_SEASON_ONE_3, 28128, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Dragonhide Legguards
(55, @GUID_SEASON_ONE_3, 28129, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Dragonhide Spaulders
(55, @GUID_SEASON_ONE_3, 28130, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Dragonhide Tunic
(55, @GUID_SEASON_ONE_3, 24556, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Dreadweave Gloves
(55, @GUID_SEASON_ONE_3, 24553, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Dreadweave Hood
(55, @GUID_SEASON_ONE_3, 24555, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Dreadweave Leggings
(55, @GUID_SEASON_ONE_3, 24554, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Dreadweave Mantle
(55, @GUID_SEASON_ONE_3, 24552, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Dreadweave Robe
(55, @GUID_SEASON_ONE_3, 30186, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Felweave Amice
(55, @GUID_SEASON_ONE_3, 30187, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Felweave Cowl
(55, @GUID_SEASON_ONE_3, 30188, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Felweave Handguards
(55, @GUID_SEASON_ONE_3, 30200, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Felweave Raiment
(55, @GUID_SEASON_ONE_3, 30201, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Felweave Trousers
(55, @GUID_SEASON_ONE_3, 31375, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Kodohide Gloves
(55, @GUID_SEASON_ONE_3, 31376, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Kodohide Helm
(55, @GUID_SEASON_ONE_3, 31377, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Kodohide Legguards
(55, @GUID_SEASON_ONE_3, 31378, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Kodohide Spaulders
(55, @GUID_SEASON_ONE_3, 31379, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Kodohide Tunic
(55, @GUID_SEASON_ONE_3, 27702, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Lamellar Chestpiece
(55, @GUID_SEASON_ONE_3, 27703, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Lamellar Gauntlets
(55, @GUID_SEASON_ONE_3, 27704, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Lamellar Helm
(55, @GUID_SEASON_ONE_3, 27705, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Lamellar Legguards
(55, @GUID_SEASON_ONE_3, 27706, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Lamellar Shoulders
(55, @GUID_SEASON_ONE_3, 25834, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Leather Gloves
(55, @GUID_SEASON_ONE_3, 25830, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Leather Helm
(55, @GUID_SEASON_ONE_3, 25833, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Leather Legguards
(55, @GUID_SEASON_ONE_3, 25832, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Leather Spaulders
(55, @GUID_SEASON_ONE_3, 25831, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Leather Tunic
(55, @GUID_SEASON_ONE_3, 25997, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Linked Armor
(55, @GUID_SEASON_ONE_3, 26000, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Linked Gauntlets
(55, @GUID_SEASON_ONE_3, 25998, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Linked Helm
(55, @GUID_SEASON_ONE_3, 26001, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Linked Leggings
(55, @GUID_SEASON_ONE_3, 25999, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Linked Spaulders
(55, @GUID_SEASON_ONE_3, 27469, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Mail Armor
(55, @GUID_SEASON_ONE_3, 27470, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Mail Gauntlets
(55, @GUID_SEASON_ONE_3, 27471, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Mail Helm
(55, @GUID_SEASON_ONE_3, 27472, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Mail Leggings
(55, @GUID_SEASON_ONE_3, 27473, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Mail Spaulders
(55, @GUID_SEASON_ONE_3, 31409, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Mooncloth Gloves
(55, @GUID_SEASON_ONE_3, 31410, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Mooncloth Hood
(55, @GUID_SEASON_ONE_3, 31411, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Mooncloth Leggings
(55, @GUID_SEASON_ONE_3, 31412, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Mooncloth Mantle
(55, @GUID_SEASON_ONE_3, 31413, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Mooncloth Robe
(55, @GUID_SEASON_ONE_3, 31613, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Ornamented Chestguard
(55, @GUID_SEASON_ONE_3, 31614, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Ornamented Gloves
(55, @GUID_SEASON_ONE_3, 31616, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Ornamented Headcover
(55, @GUID_SEASON_ONE_3, 31618, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Ornamented Legplates
(55, @GUID_SEASON_ONE_3, 31619, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Ornamented Spaulders
(55, @GUID_SEASON_ONE_3, 24544, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Plate Chestpiece
(55, @GUID_SEASON_ONE_3, 24549, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Plate Gauntlets
(55, @GUID_SEASON_ONE_3, 24545, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Plate Helm
(55, @GUID_SEASON_ONE_3, 24547, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Plate Legguards
(55, @GUID_SEASON_ONE_3, 24546, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Plate Shoulders
(55, @GUID_SEASON_ONE_3, 31396, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Ringmail Armor
(55, @GUID_SEASON_ONE_3, 31397, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Ringmail Gauntlets
(55, @GUID_SEASON_ONE_3, 31400, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Ringmail Helm
(55, @GUID_SEASON_ONE_3, 31406, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Ringmail Leggings
(55, @GUID_SEASON_ONE_3, 31407, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Ringmail Spaulders
(55, @GUID_SEASON_ONE_3, 27707, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Satin Gloves
(55, @GUID_SEASON_ONE_3, 27708, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Satin Hood
(55, @GUID_SEASON_ONE_3, 27709, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Satin Leggings
(55, @GUID_SEASON_ONE_3, 27710, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Satin Mantle
(55, @GUID_SEASON_ONE_3, 27711, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Satin Robe
(55, @GUID_SEASON_ONE_3, 27879, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Scaled Chestpiece
(55, @GUID_SEASON_ONE_3, 27880, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Scaled Gauntlets
(55, @GUID_SEASON_ONE_3, 27881, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Scaled Helm
(55, @GUID_SEASON_ONE_3, 27882, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Scaled Legguards
(55, @GUID_SEASON_ONE_3, 27883, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Scaled Shoulders
(55, @GUID_SEASON_ONE_3, 25854, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Silk Amice
(55, @GUID_SEASON_ONE_3, 25855, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Silk Cowl
(55, @GUID_SEASON_ONE_3, 25857, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Silk Handguards
(55, @GUID_SEASON_ONE_3, 25856, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Silk Raiment
(55, @GUID_SEASON_ONE_3, 25858, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Silk Trousers
(55, @GUID_SEASON_ONE_3, 28136, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_3), -- Gladiator's Wyrmhide Gloves
(55, @GUID_SEASON_ONE_3, 28137, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_3), -- Gladiator's Wyrmhide Helm
(55, @GUID_SEASON_ONE_3, 28138, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_3), -- Gladiator's Wyrmhide Legguards
(55, @GUID_SEASON_ONE_3, 28139, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_3), -- Gladiator's Wyrmhide Spaulders
(55, @GUID_SEASON_ONE_3, 28140, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_3), -- Gladiator's Wyrmhide Tunic
-- Season 4
-- (56, @GUID_SEASON_ONE_4, 24550, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_4), -- Gladiator's Greatsword
-- (56, @GUID_SEASON_ONE_4, 24557, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_4), -- Gladiator's War Staff
-- (56, @GUID_SEASON_ONE_4, 28294, 0, 0, 0, @EXT_WEP_SEASON_ONE_08_4), -- Gladiator's Heavy Crossbow
-- (56, @GUID_SEASON_ONE_4, 28298, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_4), -- Gladiator's Decapitator
-- (56, @GUID_SEASON_ONE_4, 28299, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_4), -- Gladiator's Bonegrinder
-- (56, @GUID_SEASON_ONE_4, 28300, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_4), -- Gladiator's Painsaw
-- (56, @GUID_SEASON_ONE_4, 28476, 0, 0, 0, @EXT_WEP_SEASON_ONE_01_4), -- Gladiator's Maul
-- (56, @GUID_SEASON_ONE_4, 28297, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_4), -- Gladiator's Spellblade
-- (56, @GUID_SEASON_ONE_4, 32450, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_4), -- Gladiator's Gavel
-- (56, @GUID_SEASON_ONE_4, 32451, 0, 0, 0, @EXT_WEP_SEASON_ONE_02_4), -- Gladiator's Salvation
-- (56, @GUID_SEASON_ONE_4, 28295, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_4), -- Gladiator's Slicer
-- (56, @GUID_SEASON_ONE_4, 28302, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_4), -- Gladiator's Bonecracker
-- (56, @GUID_SEASON_ONE_4, 28305, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_4), -- Gladiator's Pummeler
-- (56, @GUID_SEASON_ONE_4, 28307, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_4), -- Gladiator's Quickblade
-- (56, @GUID_SEASON_ONE_4, 28308, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_4), -- Gladiator's Cleaver
-- (56, @GUID_SEASON_ONE_4, 28309, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_4), -- Gladiator's Hacker
-- (56, @GUID_SEASON_ONE_4, 28310, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_4), -- Gladiator's Shiv
-- (56, @GUID_SEASON_ONE_4, 28312, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_4), -- Gladiator's Shanker
-- (56, @GUID_SEASON_ONE_4, 28313, 0, 0, 0, @EXT_WEP_SEASON_ONE_04_4), -- Gladiator's Right Ripper
-- (56, @GUID_SEASON_ONE_4, 28314, 0, 0, 0, @EXT_WEP_SEASON_ONE_05_4), -- Gladiator's Left Ripper
-- (56, @GUID_SEASON_ONE_4, 28319, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_4), -- Gladiator's War Edge
-- (56, @GUID_SEASON_ONE_4, 28320, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_4), -- Gladiator's Touch of Defeat
-- (56, @GUID_SEASON_ONE_4, 28346, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_4), -- Gladiator's Endgame
-- (56, @GUID_SEASON_ONE_4, 28355, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_4), -- Gladiator's Idol of Tenacity
-- (56, @GUID_SEASON_ONE_4, 28356, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_4), -- Gladiator's Libram of Justice
-- (56, @GUID_SEASON_ONE_4, 32452, 0, 0, 0, @EXT_WEP_SEASON_ONE_03_4), -- Gladiator's Reprieve
-- (56, @GUID_SEASON_ONE_4, 28358, 0, 0, 0, @EXT_WEP_SEASON_ONE_06_4), -- Gladiator's Shield Wall
-- (56, @GUID_SEASON_ONE_4, 28357, 0, 0, 0, @EXT_WEP_SEASON_ONE_07_4), -- Gladiator's Totem of the Third Wind
(56, @GUID_SEASON_ONE_4, 28334, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Chain Armor
(56, @GUID_SEASON_ONE_4, 28335, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Chain Gauntlets
(56, @GUID_SEASON_ONE_4, 28331, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Chain Helm
(56, @GUID_SEASON_ONE_4, 28332, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Chain Leggings
(56, @GUID_SEASON_ONE_4, 28333, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Chain Spaulders
(56, @GUID_SEASON_ONE_4, 28126, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Dragonhide Gloves
(56, @GUID_SEASON_ONE_4, 28127, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Dragonhide Helm
(56, @GUID_SEASON_ONE_4, 28128, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Dragonhide Legguards
(56, @GUID_SEASON_ONE_4, 28129, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Dragonhide Spaulders
(56, @GUID_SEASON_ONE_4, 28130, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Dragonhide Tunic
(56, @GUID_SEASON_ONE_4, 24556, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Dreadweave Gloves
(56, @GUID_SEASON_ONE_4, 24553, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Dreadweave Hood
(56, @GUID_SEASON_ONE_4, 24555, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Dreadweave Leggings
(56, @GUID_SEASON_ONE_4, 24554, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Dreadweave Mantle
(56, @GUID_SEASON_ONE_4, 24552, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Dreadweave Robe
(56, @GUID_SEASON_ONE_4, 30186, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Felweave Amice
(56, @GUID_SEASON_ONE_4, 30187, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Felweave Cowl
(56, @GUID_SEASON_ONE_4, 30188, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Felweave Handguards
(56, @GUID_SEASON_ONE_4, 30200, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Felweave Raiment
(56, @GUID_SEASON_ONE_4, 30201, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Felweave Trousers
(56, @GUID_SEASON_ONE_4, 31375, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Kodohide Gloves
(56, @GUID_SEASON_ONE_4, 31376, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Kodohide Helm
(56, @GUID_SEASON_ONE_4, 31377, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Kodohide Legguards
(56, @GUID_SEASON_ONE_4, 31378, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Kodohide Spaulders
(56, @GUID_SEASON_ONE_4, 31379, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Kodohide Tunic
(56, @GUID_SEASON_ONE_4, 27702, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Lamellar Chestpiece
(56, @GUID_SEASON_ONE_4, 27703, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Lamellar Gauntlets
(56, @GUID_SEASON_ONE_4, 27704, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Lamellar Helm
(56, @GUID_SEASON_ONE_4, 27705, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Lamellar Legguards
(56, @GUID_SEASON_ONE_4, 27706, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Lamellar Shoulders
(56, @GUID_SEASON_ONE_4, 25834, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Leather Gloves
(56, @GUID_SEASON_ONE_4, 25830, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Leather Helm
(56, @GUID_SEASON_ONE_4, 25833, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Leather Legguards
(56, @GUID_SEASON_ONE_4, 25832, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Leather Spaulders
(56, @GUID_SEASON_ONE_4, 25831, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Leather Tunic
(56, @GUID_SEASON_ONE_4, 25997, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Linked Armor
(56, @GUID_SEASON_ONE_4, 26000, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Linked Gauntlets
(56, @GUID_SEASON_ONE_4, 25998, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Linked Helm
(56, @GUID_SEASON_ONE_4, 26001, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Linked Leggings
(56, @GUID_SEASON_ONE_4, 25999, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Linked Spaulders
(56, @GUID_SEASON_ONE_4, 27469, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Mail Armor
(56, @GUID_SEASON_ONE_4, 27470, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Mail Gauntlets
(56, @GUID_SEASON_ONE_4, 27471, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Mail Helm
(56, @GUID_SEASON_ONE_4, 27472, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Mail Leggings
(56, @GUID_SEASON_ONE_4, 27473, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Mail Spaulders
(56, @GUID_SEASON_ONE_4, 31409, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Mooncloth Gloves
(56, @GUID_SEASON_ONE_4, 31410, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Mooncloth Hood
(56, @GUID_SEASON_ONE_4, 31411, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Mooncloth Leggings
(56, @GUID_SEASON_ONE_4, 31412, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Mooncloth Mantle
(56, @GUID_SEASON_ONE_4, 31413, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Mooncloth Robe
(56, @GUID_SEASON_ONE_4, 31613, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Ornamented Chestguard
(56, @GUID_SEASON_ONE_4, 31614, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Ornamented Gloves
(56, @GUID_SEASON_ONE_4, 31616, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Ornamented Headcover
(56, @GUID_SEASON_ONE_4, 31618, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Ornamented Legplates
(56, @GUID_SEASON_ONE_4, 31619, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Ornamented Spaulders
(56, @GUID_SEASON_ONE_4, 24544, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Plate Chestpiece
(56, @GUID_SEASON_ONE_4, 24549, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Plate Gauntlets
(56, @GUID_SEASON_ONE_4, 24545, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Plate Helm
(56, @GUID_SEASON_ONE_4, 24547, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Plate Legguards
(56, @GUID_SEASON_ONE_4, 24546, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Plate Shoulders
(56, @GUID_SEASON_ONE_4, 31396, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Ringmail Armor
(56, @GUID_SEASON_ONE_4, 31397, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Ringmail Gauntlets
(56, @GUID_SEASON_ONE_4, 31400, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Ringmail Helm
(56, @GUID_SEASON_ONE_4, 31406, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Ringmail Leggings
(56, @GUID_SEASON_ONE_4, 31407, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Ringmail Spaulders
(56, @GUID_SEASON_ONE_4, 27707, 2, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Satin Gloves
(56, @GUID_SEASON_ONE_4, 27708, 2, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Satin Hood
(56, @GUID_SEASON_ONE_4, 27709, 2, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Satin Leggings
(56, @GUID_SEASON_ONE_4, 27710, 2, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Satin Mantle
(56, @GUID_SEASON_ONE_4, 27711, 2, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Satin Robe
(56, @GUID_SEASON_ONE_4, 27879, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Scaled Chestpiece
(56, @GUID_SEASON_ONE_4, 27880, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Scaled Gauntlets
(56, @GUID_SEASON_ONE_4, 27881, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Scaled Helm
(56, @GUID_SEASON_ONE_4, 27882, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Scaled Legguards
(56, @GUID_SEASON_ONE_4, 27883, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Scaled Shoulders
(56, @GUID_SEASON_ONE_4, 25854, 1, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Silk Amice
(56, @GUID_SEASON_ONE_4, 25855, 1, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Silk Cowl
(56, @GUID_SEASON_ONE_4, 25857, 1, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Silk Handguards
(56, @GUID_SEASON_ONE_4, 25856, 1, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Silk Raiment
(56, @GUID_SEASON_ONE_4, 25858, 1, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Silk Trousers
(56, @GUID_SEASON_ONE_4, 28136, 3, 0, 0, @EXT_ARM_SEASON_ONE_05_4), -- Gladiator's Wyrmhide Gloves
(56, @GUID_SEASON_ONE_4, 28137, 3, 0, 0, @EXT_ARM_SEASON_ONE_01_4), -- Gladiator's Wyrmhide Helm
(56, @GUID_SEASON_ONE_4, 28138, 3, 0, 0, @EXT_ARM_SEASON_ONE_04_4), -- Gladiator's Wyrmhide Legguards
(56, @GUID_SEASON_ONE_4, 28139, 3, 0, 0, @EXT_ARM_SEASON_ONE_02_4), -- Gladiator's Wyrmhide Spaulders
(56, @GUID_SEASON_ONE_4, 28140, 3, 0, 0, @EXT_ARM_SEASON_ONE_03_4), -- Gladiator's Wyrmhide Tunic
/*
	Season Two Arena Vendor
		Present in 3 seasons
*/
-- Season 2
(76, @GUID_SEASON_TWO_2, 31959, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_2), -- Merciless Gladiator's Bonegrinder
(76, @GUID_SEASON_TWO_2, 31986, 0, 0, 0, @EXT_WEP_SEASON_TWO_08_2), -- Merciless Gladiator's Crossbow of the Phoenix
(76, @GUID_SEASON_TWO_2, 31966, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_2), -- Merciless Gladiator's Decapitator
(76, @GUID_SEASON_TWO_2, 31984, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_2), -- Merciless Gladiator's Greatsword
(76, @GUID_SEASON_TWO_2, 32014, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_2), -- Merciless Gladiator's Maul
(76, @GUID_SEASON_TWO_2, 32025, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_2), -- Merciless Gladiator's Painsaw
(76, @GUID_SEASON_TWO_2, 32055, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_2), -- Merciless Gladiator's War Staff
(76, @GUID_SEASON_TWO_2, 32962, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Touch of Defeat
(76, @GUID_SEASON_TWO_2, 32054, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's War Edge
(76, @GUID_SEASON_TWO_2, 32963, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_2), -- Merciless Gladiator's Gavel
(76, @GUID_SEASON_TWO_2, 32964, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_2), -- Merciless Gladiator's Salvation
(76, @GUID_SEASON_TWO_2, 32053, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_2), -- Merciless Gladiator's Spellblade
(76, @GUID_SEASON_TWO_2, 31958, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_2), -- Merciless Gladiator's Bonecracker
(76, @GUID_SEASON_TWO_2, 31985, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_2), -- Merciless Gladiator's Hacker
(76, @GUID_SEASON_TWO_2, 32003, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_2), -- Merciless Gladiator's Left Ripper
(76, @GUID_SEASON_TWO_2, 32027, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_2), -- Merciless Gladiator's Quickblade
(76, @GUID_SEASON_TWO_2, 32046, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_2), -- Merciless Gladiator's Shiv
(76, @GUID_SEASON_TWO_2, 31965, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_2), -- Merciless Gladiator's Cleaver
(76, @GUID_SEASON_TWO_2, 32026, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_2), -- Merciless Gladiator's Pummeler
(76, @GUID_SEASON_TWO_2, 32028, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_2), -- Merciless Gladiator's Right Ripper
(76, @GUID_SEASON_TWO_2, 32044, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_2), -- Merciless Gladiator's Shanker
(76, @GUID_SEASON_TWO_2, 32052, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_2), -- Merciless Gladiator's Slicer
(76, @GUID_SEASON_TWO_2, 31978, 0, 0, 0, @EXT_WEP_SEASON_TWO_03_2), -- Merciless Gladiator's Endgame
(76, @GUID_SEASON_TWO_2, 32961, 0, 0, 0, @EXT_WEP_SEASON_TWO_03_2), -- Merciless Gladiator's Reprieve
(76, @GUID_SEASON_TWO_2, 33946, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Idol of Resolve
(76, @GUID_SEASON_TWO_2, 33943, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Idol of Steadfastness
(76, @GUID_SEASON_TWO_2, 33076, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Idol of Tenacity
(76, @GUID_SEASON_TWO_2, 33937, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Libram of Fortitude
(76, @GUID_SEASON_TWO_2, 33077, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Libram of Justice
(76, @GUID_SEASON_TWO_2, 33949, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Libram of Vengeance
(76, @GUID_SEASON_TWO_2, 33940, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Totem of Indomitability
(76, @GUID_SEASON_TWO_2, 33952, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Totem of Survival
(76, @GUID_SEASON_TWO_2, 33078, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_2), -- Merciless Gladiator's Totem of the Third Wind
(76, @GUID_SEASON_TWO_2, 32045, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_2), -- Merciless Gladiator's Shield Wall
(76, @GUID_SEASON_TWO_2, 33309, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_2), -- Merciless Gladiator's Redoubt
(76, @GUID_SEASON_TWO_2, 33313, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_2), -- Merciless Gladiator's Barrier
(76, @GUID_SEASON_TWO_2, 31960, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Chain Armor
(76, @GUID_SEASON_TWO_2, 31961, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Chain Gauntlets
(76, @GUID_SEASON_TWO_2, 31962, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Chain Helm
(76, @GUID_SEASON_TWO_2, 31963, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Chain Leggings
(76, @GUID_SEASON_TWO_2, 31964, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Chain Spaulders
(76, @GUID_SEASON_TWO_2, 31967, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Dragonhide Gloves
(76, @GUID_SEASON_TWO_2, 31968, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Dragonhide Helm
(76, @GUID_SEASON_TWO_2, 31969, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Dragonhide Legguards
(76, @GUID_SEASON_TWO_2, 31971, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Dragonhide Spaulders
(76, @GUID_SEASON_TWO_2, 31972, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Dragonhide Tunic
(76, @GUID_SEASON_TWO_2, 31973, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Dreadweave Gloves
(76, @GUID_SEASON_TWO_2, 31974, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Dreadweave Hood
(76, @GUID_SEASON_TWO_2, 31975, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Dreadweave Leggings
(76, @GUID_SEASON_TWO_2, 31976, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Dreadweave Mantle
(76, @GUID_SEASON_TWO_2, 31977, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Dreadweave Robe
(76, @GUID_SEASON_TWO_2, 31979, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Felweave Amice
(76, @GUID_SEASON_TWO_2, 31980, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Felweave Cowl
(76, @GUID_SEASON_TWO_2, 31981, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Felweave Handguards
(76, @GUID_SEASON_TWO_2, 31982, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Felweave Raiment
(76, @GUID_SEASON_TWO_2, 31983, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Felweave Trousers
(76, @GUID_SEASON_TWO_2, 31987, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Kodohide Gloves
(76, @GUID_SEASON_TWO_2, 31988, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Kodohide Helm
(76, @GUID_SEASON_TWO_2, 31989, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Kodohide Legguards
(76, @GUID_SEASON_TWO_2, 31990, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Kodohide Spaulders
(76, @GUID_SEASON_TWO_2, 31991, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Kodohide Tunic
(76, @GUID_SEASON_TWO_2, 31992, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Lamellar Chestpiece
(76, @GUID_SEASON_TWO_2, 31993, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Lamellar Gauntlets
(76, @GUID_SEASON_TWO_2, 31997, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Lamellar Helm
(76, @GUID_SEASON_TWO_2, 31995, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Lamellar Legguards
(76, @GUID_SEASON_TWO_2, 31996, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Lamellar Shoulders
(76, @GUID_SEASON_TWO_2, 31998, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Leather Gloves
(76, @GUID_SEASON_TWO_2, 31999, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Leather Helm
(76, @GUID_SEASON_TWO_2, 32000, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Leather Legguards
(76, @GUID_SEASON_TWO_2, 32001, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Leather Spaulders
(76, @GUID_SEASON_TWO_2, 32002, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Leather Tunic
(76, @GUID_SEASON_TWO_2, 32004, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Linked Armor
(76, @GUID_SEASON_TWO_2, 32005, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Linked Gauntlets
(76, @GUID_SEASON_TWO_2, 32006, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Linked Helm
(76, @GUID_SEASON_TWO_2, 32007, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Linked Leggings
(76, @GUID_SEASON_TWO_2, 32008, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Linked Spaulders
(76, @GUID_SEASON_TWO_2, 32009, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Mail Armor
(76, @GUID_SEASON_TWO_2, 32010, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Mail Gauntlets
(76, @GUID_SEASON_TWO_2, 32011, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Mail Helm
(76, @GUID_SEASON_TWO_2, 32012, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Mail Leggings
(76, @GUID_SEASON_TWO_2, 32013, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Mail Spaulders
(76, @GUID_SEASON_TWO_2, 32015, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Mooncloth Gloves
(76, @GUID_SEASON_TWO_2, 32016, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Mooncloth Hood
(76, @GUID_SEASON_TWO_2, 32017, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Mooncloth Leggings
(76, @GUID_SEASON_TWO_2, 32018, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Mooncloth Mantle
(76, @GUID_SEASON_TWO_2, 32019, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Mooncloth Robe
(76, @GUID_SEASON_TWO_2, 32020, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Ornamented Chestguard
(76, @GUID_SEASON_TWO_2, 32021, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Ornamented Gloves
(76, @GUID_SEASON_TWO_2, 32022, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Ornamented Headcover
(76, @GUID_SEASON_TWO_2, 32023, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Ornamented Legplates
(76, @GUID_SEASON_TWO_2, 32024, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Ornamented Spaulders
(76, @GUID_SEASON_TWO_2, 30486, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Plate Chestpiece
(76, @GUID_SEASON_TWO_2, 30487, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Plate Gauntlets
(76, @GUID_SEASON_TWO_2, 30488, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Plate Helm
(76, @GUID_SEASON_TWO_2, 30489, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Plate Legguards
(76, @GUID_SEASON_TWO_2, 30490, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Plate Shoulders
(76, @GUID_SEASON_TWO_2, 32029, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Ringmail Armor
(76, @GUID_SEASON_TWO_2, 32030, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Ringmail Gauntlets
(76, @GUID_SEASON_TWO_2, 32031, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Ringmail Helm
(76, @GUID_SEASON_TWO_2, 32032, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Ringmail Leggings
(76, @GUID_SEASON_TWO_2, 32033, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Ringmail Spaulders
(76, @GUID_SEASON_TWO_2, 32034, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Satin Gloves
(76, @GUID_SEASON_TWO_2, 32035, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Satin Hood
(76, @GUID_SEASON_TWO_2, 32036, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Satin Leggings
(76, @GUID_SEASON_TWO_2, 32037, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Satin Mantle
(76, @GUID_SEASON_TWO_2, 32038, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Satin Robe
(76, @GUID_SEASON_TWO_2, 32039, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Scaled Chestpiece
(76, @GUID_SEASON_TWO_2, 32040, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Scaled Gauntlets
(76, @GUID_SEASON_TWO_2, 32041, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Scaled Helm
(76, @GUID_SEASON_TWO_2, 32042, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Scaled Legguards
(76, @GUID_SEASON_TWO_2, 32043, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Scaled Shoulders
(76, @GUID_SEASON_TWO_2, 32047, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Silk Amice
(76, @GUID_SEASON_TWO_2, 32048, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Silk Cowl
(76, @GUID_SEASON_TWO_2, 32049, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Silk Handguards
(76, @GUID_SEASON_TWO_2, 32050, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Silk Raiment
(76, @GUID_SEASON_TWO_2, 32051, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Silk Trousers
(76, @GUID_SEASON_TWO_2, 32056, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_2), -- Merciless Gladiator's Wyrmhide Gloves
(76, @GUID_SEASON_TWO_2, 32057, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_2), -- Merciless Gladiator's Wyrmhide Helm
(76, @GUID_SEASON_TWO_2, 32058, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_2), -- Merciless Gladiator's Wyrmhide Legguards
(76, @GUID_SEASON_TWO_2, 32059, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_2), -- Merciless Gladiator's Wyrmhide Spaulders
(76, @GUID_SEASON_TWO_2, 32060, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_2), -- Merciless Gladiator's Wyrmhide Tunic
-- Season 3
(55, @GUID_SEASON_TWO_3, 31959, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_3), -- Merciless Gladiator's Bonegrinder
(55, @GUID_SEASON_TWO_3, 31986, 0, 0, 0, @EXT_WEP_SEASON_TWO_08_3), -- Merciless Gladiator's Crossbow of the Phoenix
(55, @GUID_SEASON_TWO_3, 31966, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_3), -- Merciless Gladiator's Decapitator
(55, @GUID_SEASON_TWO_3, 31984, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_3), -- Merciless Gladiator's Greatsword
(55, @GUID_SEASON_TWO_3, 32014, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_3), -- Merciless Gladiator's Maul
(55, @GUID_SEASON_TWO_3, 32025, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_3), -- Merciless Gladiator's Painsaw
(55, @GUID_SEASON_TWO_3, 32055, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_3), -- Merciless Gladiator's War Staff
(55, @GUID_SEASON_TWO_3, 32962, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Touch of Defeat
(55, @GUID_SEASON_TWO_3, 32054, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's War Edge
(55, @GUID_SEASON_TWO_3, 32963, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_3), -- Merciless Gladiator's Gavel
(55, @GUID_SEASON_TWO_3, 32964, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_3), -- Merciless Gladiator's Salvation
(55, @GUID_SEASON_TWO_3, 32053, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_3), -- Merciless Gladiator's Spellblade
(55, @GUID_SEASON_TWO_3, 31958, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_3), -- Merciless Gladiator's Bonecracker
(55, @GUID_SEASON_TWO_3, 31985, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_3), -- Merciless Gladiator's Hacker
(55, @GUID_SEASON_TWO_3, 32003, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_3), -- Merciless Gladiator's Left Ripper
(55, @GUID_SEASON_TWO_3, 32027, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_3), -- Merciless Gladiator's Quickblade
(55, @GUID_SEASON_TWO_3, 32046, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_3), -- Merciless Gladiator's Shiv
(55, @GUID_SEASON_TWO_3, 31965, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_3), -- Merciless Gladiator's Cleaver
(55, @GUID_SEASON_TWO_3, 32026, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_3), -- Merciless Gladiator's Pummeler
(55, @GUID_SEASON_TWO_3, 32028, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_3), -- Merciless Gladiator's Right Ripper
(55, @GUID_SEASON_TWO_3, 32044, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_3), -- Merciless Gladiator's Shanker
(55, @GUID_SEASON_TWO_3, 32052, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_3), -- Merciless Gladiator's Slicer
(55, @GUID_SEASON_TWO_3, 31978, 0, 0, 0, @EXT_WEP_SEASON_TWO_03_3), -- Merciless Gladiator's Endgame
(55, @GUID_SEASON_TWO_3, 32961, 0, 0, 0, @EXT_WEP_SEASON_TWO_03_3), -- Merciless Gladiator's Reprieve
(55, @GUID_SEASON_TWO_3, 33946, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Idol of Resolve
(55, @GUID_SEASON_TWO_3, 33943, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Idol of Steadfastness
(55, @GUID_SEASON_TWO_3, 33076, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Idol of Tenacity
(55, @GUID_SEASON_TWO_3, 33937, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Libram of Fortitude
(55, @GUID_SEASON_TWO_3, 33077, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Libram of Justice
(55, @GUID_SEASON_TWO_3, 33949, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Libram of Vengeance
(55, @GUID_SEASON_TWO_3, 33940, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Totem of Indomitability
(55, @GUID_SEASON_TWO_3, 33952, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Totem of Survival
(55, @GUID_SEASON_TWO_3, 33078, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_3), -- Merciless Gladiator's Totem of the Third Wind
(55, @GUID_SEASON_TWO_3, 32045, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_3), -- Merciless Gladiator's Shield Wall
(55, @GUID_SEASON_TWO_3, 33309, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_3), -- Merciless Gladiator's Redoubt
(55, @GUID_SEASON_TWO_3, 33313, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_3), -- Merciless Gladiator's Barrier
(55, @GUID_SEASON_TWO_3, 31960, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Chain Armor
(55, @GUID_SEASON_TWO_3, 31961, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Chain Gauntlets
(55, @GUID_SEASON_TWO_3, 31962, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Chain Helm
(55, @GUID_SEASON_TWO_3, 31963, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Chain Leggings
(55, @GUID_SEASON_TWO_3, 31964, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Chain Spaulders
(55, @GUID_SEASON_TWO_3, 31967, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Dragonhide Gloves
(55, @GUID_SEASON_TWO_3, 31968, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Dragonhide Helm
(55, @GUID_SEASON_TWO_3, 31969, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Dragonhide Legguards
(55, @GUID_SEASON_TWO_3, 31971, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Dragonhide Spaulders
(55, @GUID_SEASON_TWO_3, 31972, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Dragonhide Tunic
(55, @GUID_SEASON_TWO_3, 31973, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Dreadweave Gloves
(55, @GUID_SEASON_TWO_3, 31974, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Dreadweave Hood
(55, @GUID_SEASON_TWO_3, 31975, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Dreadweave Leggings
(55, @GUID_SEASON_TWO_3, 31976, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Dreadweave Mantle
(55, @GUID_SEASON_TWO_3, 31977, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Dreadweave Robe
(55, @GUID_SEASON_TWO_3, 31979, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Felweave Amice
(55, @GUID_SEASON_TWO_3, 31980, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Felweave Cowl
(55, @GUID_SEASON_TWO_3, 31981, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Felweave Handguards
(55, @GUID_SEASON_TWO_3, 31982, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Felweave Raiment
(55, @GUID_SEASON_TWO_3, 31983, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Felweave Trousers
(55, @GUID_SEASON_TWO_3, 31987, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Kodohide Gloves
(55, @GUID_SEASON_TWO_3, 31988, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Kodohide Helm
(55, @GUID_SEASON_TWO_3, 31989, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Kodohide Legguards
(55, @GUID_SEASON_TWO_3, 31990, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Kodohide Spaulders
(55, @GUID_SEASON_TWO_3, 31991, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Kodohide Tunic
(55, @GUID_SEASON_TWO_3, 31992, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Lamellar Chestpiece
(55, @GUID_SEASON_TWO_3, 31993, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Lamellar Gauntlets
(55, @GUID_SEASON_TWO_3, 31997, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Lamellar Helm
(55, @GUID_SEASON_TWO_3, 31995, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Lamellar Legguards
(55, @GUID_SEASON_TWO_3, 31996, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Lamellar Shoulders
(55, @GUID_SEASON_TWO_3, 31998, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Leather Gloves
(55, @GUID_SEASON_TWO_3, 31999, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Leather Helm
(55, @GUID_SEASON_TWO_3, 32000, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Leather Legguards
(55, @GUID_SEASON_TWO_3, 32001, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Leather Spaulders
(55, @GUID_SEASON_TWO_3, 32002, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Leather Tunic
(55, @GUID_SEASON_TWO_3, 32004, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Linked Armor
(55, @GUID_SEASON_TWO_3, 32005, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Linked Gauntlets
(55, @GUID_SEASON_TWO_3, 32006, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Linked Helm
(55, @GUID_SEASON_TWO_3, 32007, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Linked Leggings
(55, @GUID_SEASON_TWO_3, 32008, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Linked Spaulders
(55, @GUID_SEASON_TWO_3, 32009, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Mail Armor
(55, @GUID_SEASON_TWO_3, 32010, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Mail Gauntlets
(55, @GUID_SEASON_TWO_3, 32011, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Mail Helm
(55, @GUID_SEASON_TWO_3, 32012, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Mail Leggings
(55, @GUID_SEASON_TWO_3, 32013, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Mail Spaulders
(55, @GUID_SEASON_TWO_3, 32015, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Mooncloth Gloves
(55, @GUID_SEASON_TWO_3, 32016, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Mooncloth Hood
(55, @GUID_SEASON_TWO_3, 32017, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Mooncloth Leggings
(55, @GUID_SEASON_TWO_3, 32018, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Mooncloth Mantle
(55, @GUID_SEASON_TWO_3, 32019, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Mooncloth Robe
(55, @GUID_SEASON_TWO_3, 32020, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Ornamented Chestguard
(55, @GUID_SEASON_TWO_3, 32021, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Ornamented Gloves
(55, @GUID_SEASON_TWO_3, 32022, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Ornamented Headcover
(55, @GUID_SEASON_TWO_3, 32023, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Ornamented Legplates
(55, @GUID_SEASON_TWO_3, 32024, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Ornamented Spaulders
(55, @GUID_SEASON_TWO_3, 30486, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Plate Chestpiece
(55, @GUID_SEASON_TWO_3, 30487, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Plate Gauntlets
(55, @GUID_SEASON_TWO_3, 30488, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Plate Helm
(55, @GUID_SEASON_TWO_3, 30489, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Plate Legguards
(55, @GUID_SEASON_TWO_3, 30490, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Plate Shoulders
(55, @GUID_SEASON_TWO_3, 32029, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Ringmail Armor
(55, @GUID_SEASON_TWO_3, 32030, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Ringmail Gauntlets
(55, @GUID_SEASON_TWO_3, 32031, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Ringmail Helm
(55, @GUID_SEASON_TWO_3, 32032, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Ringmail Leggings
(55, @GUID_SEASON_TWO_3, 32033, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Ringmail Spaulders
(55, @GUID_SEASON_TWO_3, 32034, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Satin Gloves
(55, @GUID_SEASON_TWO_3, 32035, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Satin Hood
(55, @GUID_SEASON_TWO_3, 32036, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Satin Leggings
(55, @GUID_SEASON_TWO_3, 32037, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Satin Mantle
(55, @GUID_SEASON_TWO_3, 32038, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Satin Robe
(55, @GUID_SEASON_TWO_3, 32039, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Scaled Chestpiece
(55, @GUID_SEASON_TWO_3, 32040, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Scaled Gauntlets
(55, @GUID_SEASON_TWO_3, 32041, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Scaled Helm
(55, @GUID_SEASON_TWO_3, 32042, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Scaled Legguards
(55, @GUID_SEASON_TWO_3, 32043, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Scaled Shoulders
(55, @GUID_SEASON_TWO_3, 32047, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Silk Amice
(55, @GUID_SEASON_TWO_3, 32048, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Silk Cowl
(55, @GUID_SEASON_TWO_3, 32049, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Silk Handguards
(55, @GUID_SEASON_TWO_3, 32050, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Silk Raiment
(55, @GUID_SEASON_TWO_3, 32051, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Silk Trousers
(55, @GUID_SEASON_TWO_3, 32056, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_3), -- Merciless Gladiator's Wyrmhide Gloves
(55, @GUID_SEASON_TWO_3, 32057, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_3), -- Merciless Gladiator's Wyrmhide Helm
(55, @GUID_SEASON_TWO_3, 32058, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_3), -- Merciless Gladiator's Wyrmhide Legguards
(55, @GUID_SEASON_TWO_3, 32059, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_3), -- Merciless Gladiator's Wyrmhide Spaulders
(55, @GUID_SEASON_TWO_3, 32060, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_3), -- Merciless Gladiator's Wyrmhide Tunic
-- Season 4
(56, @GUID_SEASON_TWO_4, 31959, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_4), -- Merciless Gladiator's Bonegrinder
(56, @GUID_SEASON_TWO_4, 31986, 0, 0, 0, @EXT_WEP_SEASON_TWO_08_4), -- Merciless Gladiator's Crossbow of the Phoenix
(56, @GUID_SEASON_TWO_4, 31966, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_4), -- Merciless Gladiator's Decapitator
(56, @GUID_SEASON_TWO_4, 31984, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_4), -- Merciless Gladiator's Greatsword
(56, @GUID_SEASON_TWO_4, 32014, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_4), -- Merciless Gladiator's Maul
(56, @GUID_SEASON_TWO_4, 32025, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_4), -- Merciless Gladiator's Painsaw
(56, @GUID_SEASON_TWO_4, 32055, 0, 0, 0, @EXT_WEP_SEASON_TWO_01_4), -- Merciless Gladiator's War Staff
(56, @GUID_SEASON_TWO_4, 32962, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Touch of Defeat
(56, @GUID_SEASON_TWO_4, 32054, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's War Edge
(56, @GUID_SEASON_TWO_4, 32963, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_4), -- Merciless Gladiator's Gavel
(56, @GUID_SEASON_TWO_4, 32964, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_4), -- Merciless Gladiator's Salvation
(56, @GUID_SEASON_TWO_4, 32053, 0, 0, 0, @EXT_WEP_SEASON_TWO_02_4), -- Merciless Gladiator's Spellblade
(56, @GUID_SEASON_TWO_4, 31958, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_4), -- Merciless Gladiator's Bonecracker
(56, @GUID_SEASON_TWO_4, 31985, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_4), -- Merciless Gladiator's Hacker
(56, @GUID_SEASON_TWO_4, 32003, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_4), -- Merciless Gladiator's Left Ripper
(56, @GUID_SEASON_TWO_4, 32027, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_4), -- Merciless Gladiator's Quickblade
(56, @GUID_SEASON_TWO_4, 32046, 0, 0, 0, @EXT_WEP_SEASON_TWO_05_4), -- Merciless Gladiator's Shiv
(56, @GUID_SEASON_TWO_4, 31965, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_4), -- Merciless Gladiator's Cleaver
(56, @GUID_SEASON_TWO_4, 32026, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_4), -- Merciless Gladiator's Pummeler
(56, @GUID_SEASON_TWO_4, 32028, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_4), -- Merciless Gladiator's Right Ripper
(56, @GUID_SEASON_TWO_4, 32044, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_4), -- Merciless Gladiator's Shanker
(56, @GUID_SEASON_TWO_4, 32052, 0, 0, 0, @EXT_WEP_SEASON_TWO_04_4), -- Merciless Gladiator's Slicer
(56, @GUID_SEASON_TWO_4, 31978, 0, 0, 0, @EXT_WEP_SEASON_TWO_03_4), -- Merciless Gladiator's Endgame
(56, @GUID_SEASON_TWO_4, 32961, 0, 0, 0, @EXT_WEP_SEASON_TWO_03_4), -- Merciless Gladiator's Reprieve
(56, @GUID_SEASON_TWO_4, 33946, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Idol of Resolve
(56, @GUID_SEASON_TWO_4, 33943, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Idol of Steadfastness
(56, @GUID_SEASON_TWO_4, 33076, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Idol of Tenacity
(56, @GUID_SEASON_TWO_4, 33937, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Libram of Fortitude
(56, @GUID_SEASON_TWO_4, 33077, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Libram of Justice
(56, @GUID_SEASON_TWO_4, 33949, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Libram of Vengeance
(56, @GUID_SEASON_TWO_4, 33940, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Totem of Indomitability
(56, @GUID_SEASON_TWO_4, 33952, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Totem of Survival
(56, @GUID_SEASON_TWO_4, 33078, 0, 0, 0, @EXT_WEP_SEASON_TWO_07_4), -- Merciless Gladiator's Totem of the Third Wind
(56, @GUID_SEASON_TWO_4, 32045, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_4), -- Merciless Gladiator's Shield Wall
(56, @GUID_SEASON_TWO_4, 33309, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_4), -- Merciless Gladiator's Redoubt
(56, @GUID_SEASON_TWO_4, 33313, 0, 0, 0, @EXT_WEP_SEASON_TWO_06_4), -- Merciless Gladiator's Barrier
(56, @GUID_SEASON_TWO_4, 31960, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Chain Armor
(56, @GUID_SEASON_TWO_4, 31961, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Chain Gauntlets
(56, @GUID_SEASON_TWO_4, 31962, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Chain Helm
(56, @GUID_SEASON_TWO_4, 31963, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Chain Leggings
(56, @GUID_SEASON_TWO_4, 31964, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Chain Spaulders
(56, @GUID_SEASON_TWO_4, 31967, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Dragonhide Gloves
(56, @GUID_SEASON_TWO_4, 31968, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Dragonhide Helm
(56, @GUID_SEASON_TWO_4, 31969, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Dragonhide Legguards
(56, @GUID_SEASON_TWO_4, 31971, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Dragonhide Spaulders
(56, @GUID_SEASON_TWO_4, 31972, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Dragonhide Tunic
(56, @GUID_SEASON_TWO_4, 31973, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Dreadweave Gloves
(56, @GUID_SEASON_TWO_4, 31974, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Dreadweave Hood
(56, @GUID_SEASON_TWO_4, 31975, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Dreadweave Leggings
(56, @GUID_SEASON_TWO_4, 31976, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Dreadweave Mantle
(56, @GUID_SEASON_TWO_4, 31977, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Dreadweave Robe
(56, @GUID_SEASON_TWO_4, 31979, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Felweave Amice
(56, @GUID_SEASON_TWO_4, 31980, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Felweave Cowl
(56, @GUID_SEASON_TWO_4, 31981, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Felweave Handguards
(56, @GUID_SEASON_TWO_4, 31982, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Felweave Raiment
(56, @GUID_SEASON_TWO_4, 31983, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Felweave Trousers
(56, @GUID_SEASON_TWO_4, 31987, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Kodohide Gloves
(56, @GUID_SEASON_TWO_4, 31988, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Kodohide Helm
(56, @GUID_SEASON_TWO_4, 31989, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Kodohide Legguards
(56, @GUID_SEASON_TWO_4, 31990, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Kodohide Spaulders
(56, @GUID_SEASON_TWO_4, 31991, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Kodohide Tunic
(56, @GUID_SEASON_TWO_4, 31992, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Lamellar Chestpiece
(56, @GUID_SEASON_TWO_4, 31993, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Lamellar Gauntlets
(56, @GUID_SEASON_TWO_4, 31997, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Lamellar Helm
(56, @GUID_SEASON_TWO_4, 31995, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Lamellar Legguards
(56, @GUID_SEASON_TWO_4, 31996, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Lamellar Shoulders
(56, @GUID_SEASON_TWO_4, 31998, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Leather Gloves
(56, @GUID_SEASON_TWO_4, 31999, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Leather Helm
(56, @GUID_SEASON_TWO_4, 32000, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Leather Legguards
(56, @GUID_SEASON_TWO_4, 32001, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Leather Spaulders
(56, @GUID_SEASON_TWO_4, 32002, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Leather Tunic
(56, @GUID_SEASON_TWO_4, 32004, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Linked Armor
(56, @GUID_SEASON_TWO_4, 32005, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Linked Gauntlets
(56, @GUID_SEASON_TWO_4, 32006, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Linked Helm
(56, @GUID_SEASON_TWO_4, 32007, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Linked Leggings
(56, @GUID_SEASON_TWO_4, 32008, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Linked Spaulders
(56, @GUID_SEASON_TWO_4, 32009, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Mail Armor
(56, @GUID_SEASON_TWO_4, 32010, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Mail Gauntlets
(56, @GUID_SEASON_TWO_4, 32011, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Mail Helm
(56, @GUID_SEASON_TWO_4, 32012, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Mail Leggings
(56, @GUID_SEASON_TWO_4, 32013, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Mail Spaulders
(56, @GUID_SEASON_TWO_4, 32015, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Mooncloth Gloves
(56, @GUID_SEASON_TWO_4, 32016, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Mooncloth Hood
(56, @GUID_SEASON_TWO_4, 32017, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Mooncloth Leggings
(56, @GUID_SEASON_TWO_4, 32018, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Mooncloth Mantle
(56, @GUID_SEASON_TWO_4, 32019, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Mooncloth Robe
(56, @GUID_SEASON_TWO_4, 32020, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Ornamented Chestguard
(56, @GUID_SEASON_TWO_4, 32021, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Ornamented Gloves
(56, @GUID_SEASON_TWO_4, 32022, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Ornamented Headcover
(56, @GUID_SEASON_TWO_4, 32023, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Ornamented Legplates
(56, @GUID_SEASON_TWO_4, 32024, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Ornamented Spaulders
(56, @GUID_SEASON_TWO_4, 30486, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Plate Chestpiece
(56, @GUID_SEASON_TWO_4, 30487, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Plate Gauntlets
(56, @GUID_SEASON_TWO_4, 30488, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Plate Helm
(56, @GUID_SEASON_TWO_4, 30489, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Plate Legguards
(56, @GUID_SEASON_TWO_4, 30490, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Plate Shoulders
(56, @GUID_SEASON_TWO_4, 32029, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Ringmail Armor
(56, @GUID_SEASON_TWO_4, 32030, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Ringmail Gauntlets
(56, @GUID_SEASON_TWO_4, 32031, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Ringmail Helm
(56, @GUID_SEASON_TWO_4, 32032, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Ringmail Leggings
(56, @GUID_SEASON_TWO_4, 32033, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Ringmail Spaulders
(56, @GUID_SEASON_TWO_4, 32034, 2, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Satin Gloves
(56, @GUID_SEASON_TWO_4, 32035, 2, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Satin Hood
(56, @GUID_SEASON_TWO_4, 32036, 2, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Satin Leggings
(56, @GUID_SEASON_TWO_4, 32037, 2, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Satin Mantle
(56, @GUID_SEASON_TWO_4, 32038, 2, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Satin Robe
(56, @GUID_SEASON_TWO_4, 32039, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Scaled Chestpiece
(56, @GUID_SEASON_TWO_4, 32040, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Scaled Gauntlets
(56, @GUID_SEASON_TWO_4, 32041, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Scaled Helm
(56, @GUID_SEASON_TWO_4, 32042, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Scaled Legguards
(56, @GUID_SEASON_TWO_4, 32043, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Scaled Shoulders
(56, @GUID_SEASON_TWO_4, 32047, 1, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Silk Amice
(56, @GUID_SEASON_TWO_4, 32048, 1, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Silk Cowl
(56, @GUID_SEASON_TWO_4, 32049, 1, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Silk Handguards
(56, @GUID_SEASON_TWO_4, 32050, 1, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Silk Raiment
(56, @GUID_SEASON_TWO_4, 32051, 1, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Silk Trousers
(56, @GUID_SEASON_TWO_4, 32056, 3, 0, 0, @EXT_ARM_SEASON_TWO_05_4), -- Merciless Gladiator's Wyrmhide Gloves
(56, @GUID_SEASON_TWO_4, 32057, 3, 0, 0, @EXT_ARM_SEASON_TWO_01_4), -- Merciless Gladiator's Wyrmhide Helm
(56, @GUID_SEASON_TWO_4, 32058, 3, 0, 0, @EXT_ARM_SEASON_TWO_04_4), -- Merciless Gladiator's Wyrmhide Legguards
(56, @GUID_SEASON_TWO_4, 32059, 3, 0, 0, @EXT_ARM_SEASON_TWO_02_4), -- Merciless Gladiator's Wyrmhide Spaulders
(56, @GUID_SEASON_TWO_4, 32060, 3, 0, 0, @EXT_ARM_SEASON_TWO_03_4), -- Merciless Gladiator's Wyrmhide Tunic
/*
	Season Three Arena Vendor
		Present in 2 seasons
*/
-- Season 3
(55, @GUID_SEASON_THREE_3, 33662, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Bonecracker
(55, @GUID_SEASON_THREE_3, 33689, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Hacker
(55, @GUID_SEASON_THREE_3, 33705, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Left Ripper
(55, @GUID_SEASON_THREE_3, 33734, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Quickblade
(55, @GUID_SEASON_THREE_3, 33756, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Shiv
(55, @GUID_SEASON_THREE_3, 33801, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Mutilator
(55, @GUID_SEASON_THREE_3, 34015, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Chopper
(55, @GUID_SEASON_THREE_3, 34016, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_3), -- Vengeful Gladiator's Left Render
(55, @GUID_SEASON_THREE_3, 33669, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_3), -- Vengeful Gladiator's Cleaver
(55, @GUID_SEASON_THREE_3, 33733, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_3), -- Vengeful Gladiator's Pummeler
(55, @GUID_SEASON_THREE_3, 33737, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_3), -- Vengeful Gladiator's Right Ripper
(55, @GUID_SEASON_THREE_3, 33754, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_3), -- Vengeful Gladiator's Shanker
(55, @GUID_SEASON_THREE_3, 33762, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_3), -- Vengeful Gladiator's Slicer
(55, @GUID_SEASON_THREE_3, 33687, 0, 0, 0, @EXT_WEP_SEASON_THREE_02_3), -- Vengeful Gladiator's Gavel
(55, @GUID_SEASON_THREE_3, 33743, 0, 0, 0, @EXT_WEP_SEASON_THREE_02_3), -- Vengeful Gladiator's Salvation
(55, @GUID_SEASON_THREE_3, 33763, 0, 0, 0, @EXT_WEP_SEASON_THREE_02_3), -- Vengeful Gladiator's Spellblade
(55, @GUID_SEASON_THREE_3, 33765, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's War Edge
(55, @GUID_SEASON_THREE_3, 34014, 0, 0, 0, @EXT_WEP_SEASON_THREE_09_3), -- Vengeful Gladiator's Waraxe
(55, @GUID_SEASON_THREE_3, 34059, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Baton of Light
(55, @GUID_SEASON_THREE_3, 34066, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Piercing Touch
(55, @GUID_SEASON_THREE_3, 33006, 0, 0, 0, @EXT_WEP_SEASON_THREE_08_3), -- Vengeful Gladiator's Heavy Crossbow
(55, @GUID_SEASON_THREE_3, 33663, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's Bonegrinder
(55, @GUID_SEASON_THREE_3, 33670, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's Decapitator
(55, @GUID_SEASON_THREE_3, 33688, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's Greatsword
(55, @GUID_SEASON_THREE_3, 33716, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's Staff
(55, @GUID_SEASON_THREE_3, 33727, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's Painsaw
(55, @GUID_SEASON_THREE_3, 33766, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's War Staff
(55, @GUID_SEASON_THREE_3, 34529, 0, 0, 0, @EXT_WEP_SEASON_THREE_08_3), -- Vengeful Gladiator's Longbow
(55, @GUID_SEASON_THREE_3, 34530, 0, 0, 0, @EXT_WEP_SEASON_THREE_08_3), -- Vengeful Gladiator's Rifle
(55, @GUID_SEASON_THREE_3, 34540, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_3), -- Vengeful Gladiator's Battle Staff
(55, @GUID_SEASON_THREE_3, 33764, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Touch of Defeat
(55, @GUID_SEASON_THREE_3, 33661, 0, 0, 0, @EXT_WEP_SEASON_THREE_06_3), -- Vengeful Gladiator's Barrier
(55, @GUID_SEASON_THREE_3, 33681, 0, 0, 0, @EXT_WEP_SEASON_THREE_03_3), -- Vengeful Gladiator's Endgame
(55, @GUID_SEASON_THREE_3, 34033, 0, 0, 0, @EXT_WEP_SEASON_THREE_03_3), -- Vengeful Gladiator's Grimoire
(55, @GUID_SEASON_THREE_3, 33947, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Idol of Resolve
(55, @GUID_SEASON_THREE_3, 33944, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Idol of Steadfastness
(55, @GUID_SEASON_THREE_3, 33841, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Idol of Tenacity
(55, @GUID_SEASON_THREE_3, 33938, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Libram of Fortitude
(55, @GUID_SEASON_THREE_3, 33842, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Libram of Justice
(55, @GUID_SEASON_THREE_3, 33950, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Libram of Vengeance
(55, @GUID_SEASON_THREE_3, 33735, 0, 0, 0, @EXT_WEP_SEASON_THREE_06_3), -- Vengeful Gladiator's Redoubt
(55, @GUID_SEASON_THREE_3, 33736, 0, 0, 0, @EXT_WEP_SEASON_THREE_03_3), -- Vengeful Gladiator's Reprieve
(55, @GUID_SEASON_THREE_3, 33755, 0, 0, 0, @EXT_WEP_SEASON_THREE_06_3), -- Vengeful Gladiator's Shield Wall
(55, @GUID_SEASON_THREE_3, 33941, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Totem of Indomitability
(55, @GUID_SEASON_THREE_3, 33953, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Totem of Survival
(55, @GUID_SEASON_THREE_3, 33843, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_3), -- Vengeful Gladiator's Totem of the Third Wind
(55, @GUID_SEASON_THREE_3, 33664, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Chain Armor
(55, @GUID_SEASON_THREE_3, 33665, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Chain Gauntlets
(55, @GUID_SEASON_THREE_3, 33666, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Chain Helm
(55, @GUID_SEASON_THREE_3, 33667, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Chain Leggings
(55, @GUID_SEASON_THREE_3, 33668, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Chain Spaulders
(55, @GUID_SEASON_THREE_3, 33671, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Dragonhide Gloves
(55, @GUID_SEASON_THREE_3, 33672, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Dragonhide Helm
(55, @GUID_SEASON_THREE_3, 33673, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Dragonhide Legguards
(55, @GUID_SEASON_THREE_3, 33674, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Dragonhide Spaulders
(55, @GUID_SEASON_THREE_3, 33675, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Dragonhide Tunic
(55, @GUID_SEASON_THREE_3, 33676, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Dreadweave Gloves
(55, @GUID_SEASON_THREE_3, 33677, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Dreadweave Hood
(55, @GUID_SEASON_THREE_3, 33678, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Dreadweave Leggings
(55, @GUID_SEASON_THREE_3, 33679, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Dreadweave Mantle
(55, @GUID_SEASON_THREE_3, 33680, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Dreadweave Robe
(55, @GUID_SEASON_THREE_3, 33682, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Felweave Amice
(55, @GUID_SEASON_THREE_3, 33683, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Felweave Cowl
(55, @GUID_SEASON_THREE_3, 33684, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Felweave Handguards
(55, @GUID_SEASON_THREE_3, 33685, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Felweave Raiment
(55, @GUID_SEASON_THREE_3, 33686, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Felweave Trousers
(55, @GUID_SEASON_THREE_3, 33690, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Kodohide Gloves
(55, @GUID_SEASON_THREE_3, 33691, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Kodohide Helm
(55, @GUID_SEASON_THREE_3, 33692, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Kodohide Legguards
(55, @GUID_SEASON_THREE_3, 33693, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Kodohide Spaulders
(55, @GUID_SEASON_THREE_3, 33694, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Kodohide Tunic
(55, @GUID_SEASON_THREE_3, 33695, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Lamellar Chestpiece
(55, @GUID_SEASON_THREE_3, 33696, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Lamellar Gauntlets
(55, @GUID_SEASON_THREE_3, 33697, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Lamellar Helm
(55, @GUID_SEASON_THREE_3, 33698, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Lamellar Legguards
(55, @GUID_SEASON_THREE_3, 33699, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Lamellar Shoulders
(55, @GUID_SEASON_THREE_3, 33700, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Leather Gloves
(55, @GUID_SEASON_THREE_3, 33701, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Leather Helm
(55, @GUID_SEASON_THREE_3, 33702, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Leather Legguards
(55, @GUID_SEASON_THREE_3, 33703, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Leather Spaulders
(55, @GUID_SEASON_THREE_3, 33704, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Leather Tunic
(55, @GUID_SEASON_THREE_3, 33706, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Linked Armor
(55, @GUID_SEASON_THREE_3, 33707, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Linked Gauntlets
(55, @GUID_SEASON_THREE_3, 33708, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Linked Helm
(55, @GUID_SEASON_THREE_3, 33709, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Linked Leggings
(55, @GUID_SEASON_THREE_3, 33710, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Linked Spaulders
(55, @GUID_SEASON_THREE_3, 33711, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Mail Armor
(55, @GUID_SEASON_THREE_3, 33712, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Mail Gauntlets
(55, @GUID_SEASON_THREE_3, 33713, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Mail Helm
(55, @GUID_SEASON_THREE_3, 33714, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Mail Leggings
(55, @GUID_SEASON_THREE_3, 33715, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Mail Spaulders
(55, @GUID_SEASON_THREE_3, 33717, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Mooncloth Gloves
(55, @GUID_SEASON_THREE_3, 33718, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Mooncloth Hood
(55, @GUID_SEASON_THREE_3, 33719, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Mooncloth Leggings
(55, @GUID_SEASON_THREE_3, 33720, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Mooncloth Mantle
(55, @GUID_SEASON_THREE_3, 33721, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Mooncloth Robe
(55, @GUID_SEASON_THREE_3, 33722, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Ornamented Chestguard
(55, @GUID_SEASON_THREE_3, 33723, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Ornamented Gloves
(55, @GUID_SEASON_THREE_3, 33724, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Ornamented Headcover
(55, @GUID_SEASON_THREE_3, 33725, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Ornamented Legplates
(55, @GUID_SEASON_THREE_3, 33726, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Ornamented Spaulders
(55, @GUID_SEASON_THREE_3, 33728, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Plate Chestpiece
(55, @GUID_SEASON_THREE_3, 33729, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Plate Gauntlets
(55, @GUID_SEASON_THREE_3, 33730, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Plate Helm
(55, @GUID_SEASON_THREE_3, 33731, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Plate Legguards
(55, @GUID_SEASON_THREE_3, 33732, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Plate Shoulders
(55, @GUID_SEASON_THREE_3, 33738, 3, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Ringmail Armor
(55, @GUID_SEASON_THREE_3, 33739, 3, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Ringmail Gauntlets
(55, @GUID_SEASON_THREE_3, 33740, 3, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Ringmail Helm
(55, @GUID_SEASON_THREE_3, 33741, 3, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Ringmail Leggings
(55, @GUID_SEASON_THREE_3, 33742, 3, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Ringmail Spaulders
(55, @GUID_SEASON_THREE_3, 33744, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Satin Gloves
(55, @GUID_SEASON_THREE_3, 33745, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Satin Hood
(55, @GUID_SEASON_THREE_3, 33746, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Satin Leggings
(55, @GUID_SEASON_THREE_3, 33747, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Satin Mantle
(55, @GUID_SEASON_THREE_3, 33748, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Satin Robe
(55, @GUID_SEASON_THREE_3, 33749, 3, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Scaled Chestpiece
(55, @GUID_SEASON_THREE_3, 33750, 3, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Scaled Gauntlets
(55, @GUID_SEASON_THREE_3, 33751, 3, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Scaled Helm
(55, @GUID_SEASON_THREE_3, 33752, 3, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Scaled Legguards
(55, @GUID_SEASON_THREE_3, 33753, 3, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Scaled Shoulders
(55, @GUID_SEASON_THREE_3, 33757, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Silk Amice
(55, @GUID_SEASON_THREE_3, 33758, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Silk Cowl
(55, @GUID_SEASON_THREE_3, 33759, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Silk Handguards
(55, @GUID_SEASON_THREE_3, 33760, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Silk Raiment
(55, @GUID_SEASON_THREE_3, 33761, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Silk Trousers
(55, @GUID_SEASON_THREE_3, 33767, 3, 0, 0, @EXT_ARM_SEASON_THREE_05_3), -- Vengeful Gladiator's Wyrmhide Gloves
(55, @GUID_SEASON_THREE_3, 33768, 3, 0, 0, @EXT_ARM_SEASON_THREE_01_3), -- Vengeful Gladiator's Wyrmhide Helm
(55, @GUID_SEASON_THREE_3, 33769, 3, 0, 0, @EXT_ARM_SEASON_THREE_04_3), -- Vengeful Gladiator's Wyrmhide Legguards
(55, @GUID_SEASON_THREE_3, 33770, 3, 0, 0, @EXT_ARM_SEASON_THREE_02_3), -- Vengeful Gladiator's Wyrmhide Spaulders
(55, @GUID_SEASON_THREE_3, 33771, 3, 0, 0, @EXT_ARM_SEASON_THREE_03_3), -- Vengeful Gladiator's Wyrmhide Tunic
-- Season 4
(56, @GUID_SEASON_THREE_4, 33662, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Bonecracker
(56, @GUID_SEASON_THREE_4, 33689, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Hacker
(56, @GUID_SEASON_THREE_4, 33705, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Left Ripper
(56, @GUID_SEASON_THREE_4, 33734, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Quickblade
(56, @GUID_SEASON_THREE_4, 33756, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Shiv
(56, @GUID_SEASON_THREE_4, 33801, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Mutilator
(56, @GUID_SEASON_THREE_4, 34015, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Chopper
(56, @GUID_SEASON_THREE_4, 34016, 0, 0, 0, @EXT_WEP_SEASON_THREE_05_4), -- Vengeful Gladiator's Left Render
(56, @GUID_SEASON_THREE_4, 33669, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_4), -- Vengeful Gladiator's Cleaver
(56, @GUID_SEASON_THREE_4, 33733, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_4), -- Vengeful Gladiator's Pummeler
(56, @GUID_SEASON_THREE_4, 33737, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_4), -- Vengeful Gladiator's Right Ripper
(56, @GUID_SEASON_THREE_4, 33754, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_4), -- Vengeful Gladiator's Shanker
(56, @GUID_SEASON_THREE_4, 33762, 0, 0, 0, @EXT_WEP_SEASON_THREE_04_4), -- Vengeful Gladiator's Slicer
(56, @GUID_SEASON_THREE_4, 33687, 0, 0, 0, @EXT_WEP_SEASON_THREE_02_4), -- Vengeful Gladiator's Gavel
(56, @GUID_SEASON_THREE_4, 33743, 0, 0, 0, @EXT_WEP_SEASON_THREE_02_4), -- Vengeful Gladiator's Salvation
(56, @GUID_SEASON_THREE_4, 33763, 0, 0, 0, @EXT_WEP_SEASON_THREE_02_4), -- Vengeful Gladiator's Spellblade
(56, @GUID_SEASON_THREE_4, 33765, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's War Edge
(56, @GUID_SEASON_THREE_4, 34014, 0, 0, 0, @EXT_WEP_SEASON_THREE_09_4), -- Vengeful Gladiator's Waraxe
(56, @GUID_SEASON_THREE_4, 34059, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Baton of Light
(56, @GUID_SEASON_THREE_4, 34066, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Piercing Touch
(56, @GUID_SEASON_THREE_4, 33006, 0, 0, 0, @EXT_WEP_SEASON_THREE_08_4), -- Vengeful Gladiator's Heavy Crossbow
(56, @GUID_SEASON_THREE_4, 33663, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's Bonegrinder
(56, @GUID_SEASON_THREE_4, 33670, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's Decapitator
(56, @GUID_SEASON_THREE_4, 33688, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's Greatsword
(56, @GUID_SEASON_THREE_4, 33716, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's Staff
(56, @GUID_SEASON_THREE_4, 33727, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's Painsaw
(56, @GUID_SEASON_THREE_4, 33766, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's War Staff
(56, @GUID_SEASON_THREE_4, 34529, 0, 0, 0, @EXT_WEP_SEASON_THREE_08_4), -- Vengeful Gladiator's Longbow
(56, @GUID_SEASON_THREE_4, 34530, 0, 0, 0, @EXT_WEP_SEASON_THREE_08_4), -- Vengeful Gladiator's Rifle
(56, @GUID_SEASON_THREE_4, 34540, 0, 0, 0, @EXT_WEP_SEASON_THREE_01_4), -- Vengeful Gladiator's Battle Staff
(56, @GUID_SEASON_THREE_4, 33764, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Touch of Defeat
(56, @GUID_SEASON_THREE_4, 33661, 0, 0, 0, @EXT_WEP_SEASON_THREE_06_4), -- Vengeful Gladiator's Barrier
(56, @GUID_SEASON_THREE_4, 33681, 0, 0, 0, @EXT_WEP_SEASON_THREE_03_4), -- Vengeful Gladiator's Endgame
(56, @GUID_SEASON_THREE_4, 34033, 0, 0, 0, @EXT_WEP_SEASON_THREE_03_4), -- Vengeful Gladiator's Grimoire
(56, @GUID_SEASON_THREE_4, 33947, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Idol of Resolve
(56, @GUID_SEASON_THREE_4, 33944, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Idol of Steadfastness
(56, @GUID_SEASON_THREE_4, 33841, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Idol of Tenacity
(56, @GUID_SEASON_THREE_4, 33938, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Libram of Fortitude
(56, @GUID_SEASON_THREE_4, 33842, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Libram of Justice
(56, @GUID_SEASON_THREE_4, 33950, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Libram of Vengeance
(56, @GUID_SEASON_THREE_4, 33735, 0, 0, 0, @EXT_WEP_SEASON_THREE_06_4), -- Vengeful Gladiator's Redoubt
(56, @GUID_SEASON_THREE_4, 33736, 0, 0, 0, @EXT_WEP_SEASON_THREE_03_4), -- Vengeful Gladiator's Reprieve
(56, @GUID_SEASON_THREE_4, 33755, 0, 0, 0, @EXT_WEP_SEASON_THREE_06_4), -- Vengeful Gladiator's Shield Wall
(56, @GUID_SEASON_THREE_4, 33941, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Totem of Indomitability
(56, @GUID_SEASON_THREE_4, 33953, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Totem of Survival
(56, @GUID_SEASON_THREE_4, 33843, 0, 0, 0, @EXT_WEP_SEASON_THREE_07_4), -- Vengeful Gladiator's Totem of the Third Wind
(56, @GUID_SEASON_THREE_4, 33664, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Chain Armor
(56, @GUID_SEASON_THREE_4, 33665, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Chain Gauntlets
(56, @GUID_SEASON_THREE_4, 33666, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Chain Helm
(56, @GUID_SEASON_THREE_4, 33667, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Chain Leggings
(56, @GUID_SEASON_THREE_4, 33668, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Chain Spaulders
(56, @GUID_SEASON_THREE_4, 33671, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Dragonhide Gloves
(56, @GUID_SEASON_THREE_4, 33672, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Dragonhide Helm
(56, @GUID_SEASON_THREE_4, 33673, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Dragonhide Legguards
(56, @GUID_SEASON_THREE_4, 33674, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Dragonhide Spaulders
(56, @GUID_SEASON_THREE_4, 33675, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Dragonhide Tunic
(56, @GUID_SEASON_THREE_4, 33676, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Dreadweave Gloves
(56, @GUID_SEASON_THREE_4, 33677, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Dreadweave Hood
(56, @GUID_SEASON_THREE_4, 33678, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Dreadweave Leggings
(56, @GUID_SEASON_THREE_4, 33679, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Dreadweave Mantle
(56, @GUID_SEASON_THREE_4, 33680, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Dreadweave Robe
(56, @GUID_SEASON_THREE_4, 33682, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Felweave Amice
(56, @GUID_SEASON_THREE_4, 33683, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Felweave Cowl
(56, @GUID_SEASON_THREE_4, 33684, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Felweave Handguards
(56, @GUID_SEASON_THREE_4, 33685, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Felweave Raiment
(56, @GUID_SEASON_THREE_4, 33686, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Felweave Trousers
(56, @GUID_SEASON_THREE_4, 33690, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Kodohide Gloves
(56, @GUID_SEASON_THREE_4, 33691, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Kodohide Helm
(56, @GUID_SEASON_THREE_4, 33692, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Kodohide Legguards
(56, @GUID_SEASON_THREE_4, 33693, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Kodohide Spaulders
(56, @GUID_SEASON_THREE_4, 33694, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Kodohide Tunic
(56, @GUID_SEASON_THREE_4, 33695, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Lamellar Chestpiece
(56, @GUID_SEASON_THREE_4, 33696, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Lamellar Gauntlets
(56, @GUID_SEASON_THREE_4, 33697, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Lamellar Helm
(56, @GUID_SEASON_THREE_4, 33698, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Lamellar Legguards
(56, @GUID_SEASON_THREE_4, 33699, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Lamellar Shoulders
(56, @GUID_SEASON_THREE_4, 33700, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Leather Gloves
(56, @GUID_SEASON_THREE_4, 33701, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Leather Helm
(56, @GUID_SEASON_THREE_4, 33702, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Leather Legguards
(56, @GUID_SEASON_THREE_4, 33703, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Leather Spaulders
(56, @GUID_SEASON_THREE_4, 33704, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Leather Tunic
(56, @GUID_SEASON_THREE_4, 33706, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Linked Armor
(56, @GUID_SEASON_THREE_4, 33707, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Linked Gauntlets
(56, @GUID_SEASON_THREE_4, 33708, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Linked Helm
(56, @GUID_SEASON_THREE_4, 33709, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Linked Leggings
(56, @GUID_SEASON_THREE_4, 33710, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Linked Spaulders
(56, @GUID_SEASON_THREE_4, 33711, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Mail Armor
(56, @GUID_SEASON_THREE_4, 33712, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Mail Gauntlets
(56, @GUID_SEASON_THREE_4, 33713, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Mail Helm
(56, @GUID_SEASON_THREE_4, 33714, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Mail Leggings
(56, @GUID_SEASON_THREE_4, 33715, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Mail Spaulders
(56, @GUID_SEASON_THREE_4, 33717, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Mooncloth Gloves
(56, @GUID_SEASON_THREE_4, 33718, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Mooncloth Hood
(56, @GUID_SEASON_THREE_4, 33719, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Mooncloth Leggings
(56, @GUID_SEASON_THREE_4, 33720, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Mooncloth Mantle
(56, @GUID_SEASON_THREE_4, 33721, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Mooncloth Robe
(56, @GUID_SEASON_THREE_4, 33722, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Ornamented Chestguard
(56, @GUID_SEASON_THREE_4, 33723, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Ornamented Gloves
(56, @GUID_SEASON_THREE_4, 33724, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Ornamented Headcover
(56, @GUID_SEASON_THREE_4, 33725, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Ornamented Legplates
(56, @GUID_SEASON_THREE_4, 33726, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Ornamented Spaulders
(56, @GUID_SEASON_THREE_4, 33728, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Plate Chestpiece
(56, @GUID_SEASON_THREE_4, 33729, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Plate Gauntlets
(56, @GUID_SEASON_THREE_4, 33730, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Plate Helm
(56, @GUID_SEASON_THREE_4, 33731, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Plate Legguards
(56, @GUID_SEASON_THREE_4, 33732, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Plate Shoulders
(56, @GUID_SEASON_THREE_4, 33738, 3, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Ringmail Armor
(56, @GUID_SEASON_THREE_4, 33739, 3, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Ringmail Gauntlets
(56, @GUID_SEASON_THREE_4, 33740, 3, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Ringmail Helm
(56, @GUID_SEASON_THREE_4, 33741, 3, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Ringmail Leggings
(56, @GUID_SEASON_THREE_4, 33742, 3, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Ringmail Spaulders
(56, @GUID_SEASON_THREE_4, 33744, 2, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Satin Gloves
(56, @GUID_SEASON_THREE_4, 33745, 2, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Satin Hood
(56, @GUID_SEASON_THREE_4, 33746, 2, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Satin Leggings
(56, @GUID_SEASON_THREE_4, 33747, 2, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Satin Mantle
(56, @GUID_SEASON_THREE_4, 33748, 2, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Satin Robe
(56, @GUID_SEASON_THREE_4, 33749, 3, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Scaled Chestpiece
(56, @GUID_SEASON_THREE_4, 33750, 3, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Scaled Gauntlets
(56, @GUID_SEASON_THREE_4, 33751, 3, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Scaled Helm
(56, @GUID_SEASON_THREE_4, 33752, 3, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Scaled Legguards
(56, @GUID_SEASON_THREE_4, 33753, 3, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Scaled Shoulders
(56, @GUID_SEASON_THREE_4, 33757, 1, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Silk Amice
(56, @GUID_SEASON_THREE_4, 33758, 1, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Silk Cowl
(56, @GUID_SEASON_THREE_4, 33759, 1, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Silk Handguards
(56, @GUID_SEASON_THREE_4, 33760, 1, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Silk Raiment
(56, @GUID_SEASON_THREE_4, 33761, 1, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Silk Trousers
(56, @GUID_SEASON_THREE_4, 33767, 3, 0, 0, @EXT_ARM_SEASON_THREE_05_4), -- Vengeful Gladiator's Wyrmhide Gloves
(56, @GUID_SEASON_THREE_4, 33768, 3, 0, 0, @EXT_ARM_SEASON_THREE_01_4), -- Vengeful Gladiator's Wyrmhide Helm
(56, @GUID_SEASON_THREE_4, 33769, 3, 0, 0, @EXT_ARM_SEASON_THREE_04_4), -- Vengeful Gladiator's Wyrmhide Legguards
(56, @GUID_SEASON_THREE_4, 33770, 3, 0, 0, @EXT_ARM_SEASON_THREE_02_4), -- Vengeful Gladiator's Wyrmhide Spaulders
(56, @GUID_SEASON_THREE_4, 33771, 3, 0, 0, @EXT_ARM_SEASON_THREE_03_4), -- Vengeful Gladiator's Wyrmhide Tunic
/*
	Season Four Arena Vendor
		Present in 1 season
*/
-- Season 4
(56, @GUID_SEASON_FOUR_4, 34985, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Baton of Light
(56, @GUID_SEASON_FOUR_4, 35065, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Piercing Touch
(56, @GUID_SEASON_FOUR_4, 35107, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Touch of Defeat
(56, @GUID_SEASON_FOUR_4, 35108, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's War Edge
(56, @GUID_SEASON_FOUR_4, 34987, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's Battle Staff
(56, @GUID_SEASON_FOUR_4, 34989, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's Bonegrinder
(56, @GUID_SEASON_FOUR_4, 34997, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's Decapitator
(56, @GUID_SEASON_FOUR_4, 35015, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's Greatsword
(56, @GUID_SEASON_FOUR_4, 35018, 0, 0, 0, @EXT_WEP_SEASON_FOUR_08_4), -- Brutal Gladiator's Heavy Crossbow
(56, @GUID_SEASON_FOUR_4, 35047, 0, 0, 0, @EXT_WEP_SEASON_FOUR_08_4), -- Brutal Gladiator's Longbow
(56, @GUID_SEASON_FOUR_4, 35064, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's Painsaw
(56, @GUID_SEASON_FOUR_4, 35075, 0, 0, 0, @EXT_WEP_SEASON_FOUR_08_4), -- Brutal Gladiator's Rifle
(56, @GUID_SEASON_FOUR_4, 35103, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's Staff
(56, @GUID_SEASON_FOUR_4, 35109, 0, 0, 0, @EXT_WEP_SEASON_FOUR_01_4), -- Brutal Gladiator's War Staff
(56, @GUID_SEASON_FOUR_4, 35014, 0, 0, 0, @EXT_WEP_SEASON_FOUR_02_4), -- Brutal Gladiator's Gavel
(56, @GUID_SEASON_FOUR_4, 35082, 0, 0, 0, @EXT_WEP_SEASON_FOUR_02_4), -- Brutal Gladiator's Salvation
(56, @GUID_SEASON_FOUR_4, 35102, 0, 0, 0, @EXT_WEP_SEASON_FOUR_02_4), -- Brutal Gladiator's Spellblade
(56, @GUID_SEASON_FOUR_4, 34996, 0, 0, 0, @EXT_WEP_SEASON_FOUR_04_4), -- Brutal Gladiator's Cleaver
(56, @GUID_SEASON_FOUR_4, 35071, 0, 0, 0, @EXT_WEP_SEASON_FOUR_04_4), -- Brutal Gladiator's Pummeler
(56, @GUID_SEASON_FOUR_4, 35076, 0, 0, 0, @EXT_WEP_SEASON_FOUR_04_4), -- Brutal Gladiator's Right Ripper
(56, @GUID_SEASON_FOUR_4, 35093, 0, 0, 0, @EXT_WEP_SEASON_FOUR_04_4), -- Brutal Gladiator's Shanker
(56, @GUID_SEASON_FOUR_4, 35101, 0, 0, 0, @EXT_WEP_SEASON_FOUR_04_4), -- Brutal Gladiator's Slicer
(56, @GUID_SEASON_FOUR_4, 34988, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Bonecracker
(56, @GUID_SEASON_FOUR_4, 34995, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Chopper
(56, @GUID_SEASON_FOUR_4, 35017, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Hacker
(56, @GUID_SEASON_FOUR_4, 35037, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Left Render
(56, @GUID_SEASON_FOUR_4, 35038, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Left Ripper
(56, @GUID_SEASON_FOUR_4, 35058, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Mutilator
(56, @GUID_SEASON_FOUR_4, 35072, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Quickblade
(56, @GUID_SEASON_FOUR_4, 35095, 0, 0, 0, @EXT_WEP_SEASON_FOUR_05_4), -- Brutal Gladiator's Shiv
(56, @GUID_SEASON_FOUR_4, 35110, 0, 0, 0, @EXT_WEP_SEASON_FOUR_09_4), -- Brutal Gladiator's Waraxe
(56, @GUID_SEASON_FOUR_4, 36737, 0, 0, 0, @EXT_WEP_SEASON_FOUR_09_4), -- Brutal Gladiator's Hatchet
(56, @GUID_SEASON_FOUR_4, 34986, 0, 0, 0, @EXT_WEP_SEASON_FOUR_06_4), -- Brutal Gladiator's Barrier
(56, @GUID_SEASON_FOUR_4, 35008, 0, 0, 0, @EXT_WEP_SEASON_FOUR_03_4), -- Brutal Gladiator's Endgame
(56, @GUID_SEASON_FOUR_4, 35016, 0, 0, 0, @EXT_WEP_SEASON_FOUR_03_4), -- Brutal Gladiator's Grimoire
(56, @GUID_SEASON_FOUR_4, 35019, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Idol of Resolve
(56, @GUID_SEASON_FOUR_4, 35020, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Idol of Steadfastness
(56, @GUID_SEASON_FOUR_4, 35021, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Idol of Tenacity
(56, @GUID_SEASON_FOUR_4, 35039, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Libram of Fortitude
(56, @GUID_SEASON_FOUR_4, 35040, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Libram of Justice
(56, @GUID_SEASON_FOUR_4, 35041, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Libram of Vengeance
(56, @GUID_SEASON_FOUR_4, 35073, 0, 0, 0, @EXT_WEP_SEASON_FOUR_06_4), -- Brutal Gladiator's Redoubt
(56, @GUID_SEASON_FOUR_4, 35074, 0, 0, 0, @EXT_WEP_SEASON_FOUR_03_4), -- Brutal Gladiator's Reprieve
(56, @GUID_SEASON_FOUR_4, 35094, 0, 0, 0, @EXT_WEP_SEASON_FOUR_06_4), -- Brutal Gladiator's Shield Wall
(56, @GUID_SEASON_FOUR_4, 35104, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Totem of Indomitability
(56, @GUID_SEASON_FOUR_4, 35105, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Totem of Survival
(56, @GUID_SEASON_FOUR_4, 35106, 0, 0, 0, @EXT_WEP_SEASON_FOUR_07_4), -- Brutal Gladiator's Totem of the Third Wind
(56, @GUID_SEASON_FOUR_4, 34990, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Chain Armor
(56, @GUID_SEASON_FOUR_4, 34991, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Chain Gauntlets
(56, @GUID_SEASON_FOUR_4, 34992, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Chain Helm
(56, @GUID_SEASON_FOUR_4, 34993, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Chain Leggings
(56, @GUID_SEASON_FOUR_4, 34994, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Chain Spaulders
(56, @GUID_SEASON_FOUR_4, 34998, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Dragonhide Gloves
(56, @GUID_SEASON_FOUR_4, 34999, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Dragonhide Helm
(56, @GUID_SEASON_FOUR_4, 35000, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Dragonhide Legguards
(56, @GUID_SEASON_FOUR_4, 35001, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Dragonhide Spaulders
(56, @GUID_SEASON_FOUR_4, 35002, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Dragonhide Tunic
(56, @GUID_SEASON_FOUR_4, 35003, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Dreadweave Gloves
(56, @GUID_SEASON_FOUR_4, 35004, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Dreadweave Hood
(56, @GUID_SEASON_FOUR_4, 35005, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Dreadweave Leggings
(56, @GUID_SEASON_FOUR_4, 35006, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Dreadweave Mantle
(56, @GUID_SEASON_FOUR_4, 35007, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Dreadweave Robe
(56, @GUID_SEASON_FOUR_4, 35009, 2, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Felweave Amice
(56, @GUID_SEASON_FOUR_4, 35010, 2, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Felweave Cowl
(56, @GUID_SEASON_FOUR_4, 35011, 2, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Felweave Handguards
(56, @GUID_SEASON_FOUR_4, 35012, 2, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Felweave Raiment
(56, @GUID_SEASON_FOUR_4, 35013, 2, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Felweave Trousers
(56, @GUID_SEASON_FOUR_4, 35022, 2, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Kodohide Gloves
(56, @GUID_SEASON_FOUR_4, 35023, 2, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Kodohide Helm
(56, @GUID_SEASON_FOUR_4, 35024, 2, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Kodohide Legguards
(56, @GUID_SEASON_FOUR_4, 35025, 2, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Kodohide Spaulders
(56, @GUID_SEASON_FOUR_4, 35026, 2, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Kodohide Tunic
(56, @GUID_SEASON_FOUR_4, 35027, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Lamellar Chestpiece
(56, @GUID_SEASON_FOUR_4, 35028, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Lamellar Gauntlets
(56, @GUID_SEASON_FOUR_4, 35029, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Lamellar Helm
(56, @GUID_SEASON_FOUR_4, 35030, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Lamellar Legguards
(56, @GUID_SEASON_FOUR_4, 35031, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Lamellar Shoulders
(56, @GUID_SEASON_FOUR_4, 35032, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Leather Gloves
(56, @GUID_SEASON_FOUR_4, 35033, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Leather Helm
(56, @GUID_SEASON_FOUR_4, 35034, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Leather Legguards
(56, @GUID_SEASON_FOUR_4, 35035, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Leather Spaulders
(56, @GUID_SEASON_FOUR_4, 35036, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Leather Tunic
(56, @GUID_SEASON_FOUR_4, 35042, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Linked Armor
(56, @GUID_SEASON_FOUR_4, 35043, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Linked Gauntlets
(56, @GUID_SEASON_FOUR_4, 35044, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Linked Helm
(56, @GUID_SEASON_FOUR_4, 35045, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Linked Leggings
(56, @GUID_SEASON_FOUR_4, 35046, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Linked Spaulders
(56, @GUID_SEASON_FOUR_4, 35048, 2, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Mail Armor
(56, @GUID_SEASON_FOUR_4, 35049, 2, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Mail Gauntlets
(56, @GUID_SEASON_FOUR_4, 35050, 2, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Mail Helm
(56, @GUID_SEASON_FOUR_4, 35051, 2, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Mail Leggings
(56, @GUID_SEASON_FOUR_4, 35052, 2, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Mail Spaulders
(56, @GUID_SEASON_FOUR_4, 35053, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Mooncloth Gloves
(56, @GUID_SEASON_FOUR_4, 35054, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Mooncloth Hood
(56, @GUID_SEASON_FOUR_4, 35055, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Mooncloth Leggings
(56, @GUID_SEASON_FOUR_4, 35056, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Mooncloth Mantle
(56, @GUID_SEASON_FOUR_4, 35057, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Mooncloth Robe
(56, @GUID_SEASON_FOUR_4, 35059, 2, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Ornamented Chestguard
(56, @GUID_SEASON_FOUR_4, 35060, 2, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Ornamented Gloves
(56, @GUID_SEASON_FOUR_4, 35061, 2, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Ornamented Headcover
(56, @GUID_SEASON_FOUR_4, 35062, 2, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Ornamented Legplates
(56, @GUID_SEASON_FOUR_4, 35063, 2, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Ornamented Spaulders
(56, @GUID_SEASON_FOUR_4, 35066, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Plate Chestpiece
(56, @GUID_SEASON_FOUR_4, 35067, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Plate Gauntlets
(56, @GUID_SEASON_FOUR_4, 35068, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Plate Helm
(56, @GUID_SEASON_FOUR_4, 35069, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Plate Legguards
(56, @GUID_SEASON_FOUR_4, 35070, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Plate Shoulders
(56, @GUID_SEASON_FOUR_4, 35077, 3, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Ringmail Armor
(56, @GUID_SEASON_FOUR_4, 35078, 3, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Ringmail Gauntlets
(56, @GUID_SEASON_FOUR_4, 35079, 3, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Ringmail Helm
(56, @GUID_SEASON_FOUR_4, 35080, 3, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Ringmail Leggings
(56, @GUID_SEASON_FOUR_4, 35081, 3, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Ringmail Spaulders
(56, @GUID_SEASON_FOUR_4, 35083, 2, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Satin Gloves
(56, @GUID_SEASON_FOUR_4, 35084, 2, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Satin Hood
(56, @GUID_SEASON_FOUR_4, 35085, 2, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Satin Leggings
(56, @GUID_SEASON_FOUR_4, 35086, 2, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Satin Mantle
(56, @GUID_SEASON_FOUR_4, 35087, 2, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Satin Robe
(56, @GUID_SEASON_FOUR_4, 35088, 3, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Scaled Chestpiece
(56, @GUID_SEASON_FOUR_4, 35089, 3, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Scaled Gauntlets
(56, @GUID_SEASON_FOUR_4, 35090, 3, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Scaled Helm
(56, @GUID_SEASON_FOUR_4, 35091, 3, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Scaled Legguards
(56, @GUID_SEASON_FOUR_4, 35092, 3, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Scaled Shoulders
(56, @GUID_SEASON_FOUR_4, 35096, 1, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Silk Amice
(56, @GUID_SEASON_FOUR_4, 35097, 1, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Silk Cowl
(56, @GUID_SEASON_FOUR_4, 35098, 1, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Silk Handguards
(56, @GUID_SEASON_FOUR_4, 35099, 1, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Silk Raiment
(56, @GUID_SEASON_FOUR_4, 35100, 1, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Silk Trousers
(56, @GUID_SEASON_FOUR_4, 35111, 3, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Brutal Gladiator's Wyrmhide Gloves
(56, @GUID_SEASON_FOUR_4, 35112, 3, 0, 0, @EXT_ARM_SEASON_FOUR_01_4), -- Brutal Gladiator's Wyrmhide Helm
(56, @GUID_SEASON_FOUR_4, 35113, 3, 0, 0, @EXT_ARM_SEASON_FOUR_04_4), -- Brutal Gladiator's Wyrmhide Legguards
(56, @GUID_SEASON_FOUR_4, 35114, 3, 0, 0, @EXT_ARM_SEASON_FOUR_02_4), -- Brutal Gladiator's Wyrmhide Spaulders
(56, @GUID_SEASON_FOUR_4, 35115, 3, 0, 0, @EXT_ARM_SEASON_FOUR_03_4), -- Brutal Gladiator's Wyrmhide Tunic
-- (56, @GUID_SEASON_FOUR_4, 38545, 4, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Bold Ornate Ruby
-- (56, @GUID_SEASON_FOUR_4, 38546, 4, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Gleaming Ornate Dawnstone
-- (56, @GUID_SEASON_FOUR_4, 38547, 4, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Inscribed Ornate Topaz
-- (56, @GUID_SEASON_FOUR_4, 38548, 4, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Potent Ornate Topaz
-- (56, @GUID_SEASON_FOUR_4, 38549, 4, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Runed Ornate Ruby
-- (56, @GUID_SEASON_FOUR_4, 38550, 4, 0, 0, @EXT_ARM_SEASON_FOUR_05_4), -- Smooth Ornate Dawnstone
/*
	Arena Accessory Vendor
		Present in 3 seasons, from 2nd to 4th
*/
-- Season 2
-- (76, @GUID_ARENA_ACCESSORY_2, 38545, 4, 0, 0, @EXT_GEM_ACCESSORY_01_2), -- Bold Ornate Ruby
-- (76, @GUID_ARENA_ACCESSORY_2, 38546, 4, 0, 0, @EXT_GEM_ACCESSORY_01_2), -- Gleaming Ornate Dawnstone
-- (76, @GUID_ARENA_ACCESSORY_2, 38547, 4, 0, 0, @EXT_GEM_ACCESSORY_01_2), -- Inscribed Ornate Topaz
-- (76, @GUID_ARENA_ACCESSORY_2, 38548, 4, 0, 0, @EXT_GEM_ACCESSORY_01_2), -- Potent Ornate Topaz
-- (76, @GUID_ARENA_ACCESSORY_2, 38549, 4, 0, 0, @EXT_GEM_ACCESSORY_01_2), -- Runed Ornate Ruby
-- (76, @GUID_ARENA_ACCESSORY_2, 38550, 4, 0, 0, @EXT_GEM_ACCESSORY_01_2), -- Smooth Ornate Dawnstone
(76, @GUID_ARENA_ACCESSORY_2, 33056, 0, 0, 0, @EXT_ACC_ACCESSORY_01_2),  -- Veteran's Band of Dominance
(76, @GUID_ARENA_ACCESSORY_2, 33064, 0, 0, 0, @EXT_ACC_ACCESSORY_01_2),  -- Veteran's Band of Salvation
(76, @GUID_ARENA_ACCESSORY_2, 33057, 0, 0, 0, @EXT_ACC_ACCESSORY_01_2),  -- Veteran's Band of Triumph
(76, @GUID_ARENA_ACCESSORY_2, 32809, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Chain Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32797, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Chain Girdle
(76, @GUID_ARENA_ACCESSORY_2, 32785, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Chain Sabatons
(76, @GUID_ARENA_ACCESSORY_2, 32786, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Dragonhide Boots
(76, @GUID_ARENA_ACCESSORY_2, 32810, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Dragonhide Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32799, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Dreadweave Belt
(76, @GUID_ARENA_ACCESSORY_2, 32811, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Dreadweave Cuffs
(76, @GUID_ARENA_ACCESSORY_2, 32787, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Dreadweave Stalkers
(76, @GUID_ARENA_ACCESSORY_2, 32800, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Kodohide Belt
(76, @GUID_ARENA_ACCESSORY_2, 32788, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Kodohide Boots
(76, @GUID_ARENA_ACCESSORY_2, 32812, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Kodohide Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32801, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Lamellar Belt
(76, @GUID_ARENA_ACCESSORY_2, 32813, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Lamellar Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32789, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Lamellar Greaves
(76, @GUID_ARENA_ACCESSORY_2, 32802, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Leather Belt
(76, @GUID_ARENA_ACCESSORY_2, 32790, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Leather Boots
(76, @GUID_ARENA_ACCESSORY_2, 32814, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Leather Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32816, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Linked Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32803, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Linked Girdle
(76, @GUID_ARENA_ACCESSORY_2, 32791, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Linked Sabatons
(76, @GUID_ARENA_ACCESSORY_2, 32817, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Mail Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32804, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Mail Girdle
(76, @GUID_ARENA_ACCESSORY_2, 32792, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Mail Sabatons
(76, @GUID_ARENA_ACCESSORY_2, 32979, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Mooncloth Belt
(76, @GUID_ARENA_ACCESSORY_2, 32980, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Mooncloth Cuffs
(76, @GUID_ARENA_ACCESSORY_2, 32981, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Mooncloth Slippers
(76, @GUID_ARENA_ACCESSORY_2, 32988, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Ornamented Belt
(76, @GUID_ARENA_ACCESSORY_2, 32989, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Ornamented Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32990, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Ornamented Greaves
(76, @GUID_ARENA_ACCESSORY_2, 33067, 1, 0, 0, @EXT_ACC_ACCESSORY_05_2),  -- Veteran's Pendant of Conquest
(76, @GUID_ARENA_ACCESSORY_2, 33065, 1, 0, 0, @EXT_ACC_ACCESSORY_05_2),  -- Veteran's Pendant of Dominance
(76, @GUID_ARENA_ACCESSORY_2, 33068, 1, 0, 0, @EXT_ACC_ACCESSORY_05_2),  -- Veteran's Pendant of Salvation
(76, @GUID_ARENA_ACCESSORY_2, 33066, 1, 0, 0, @EXT_ACC_ACCESSORY_05_2),  -- Veteran's Pendant of Triumph
(76, @GUID_ARENA_ACCESSORY_2, 32805, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Plate Belt
(76, @GUID_ARENA_ACCESSORY_2, 32818, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Plate Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32793, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Plate Greaves
(76, @GUID_ARENA_ACCESSORY_2, 32997, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Ringmail Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32998, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Ringmail Girdle
(76, @GUID_ARENA_ACCESSORY_2, 32999, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Ringmail Sabatons
(76, @GUID_ARENA_ACCESSORY_2, 32806, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Scaled Belt
(76, @GUID_ARENA_ACCESSORY_2, 32819, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Scaled Bracers
(76, @GUID_ARENA_ACCESSORY_2, 32794, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Scaled Greaves
(76, @GUID_ARENA_ACCESSORY_2, 32807, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Silk Belt
(76, @GUID_ARENA_ACCESSORY_2, 32820, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Silk Cuffs
(76, @GUID_ARENA_ACCESSORY_2, 32795, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Silk Footguards
(76, @GUID_ARENA_ACCESSORY_2, 32808, 2, 0, 0, @EXT_ACC_ACCESSORY_03_2),  -- Veteran's Wyrmhide Belt
(76, @GUID_ARENA_ACCESSORY_2, 32796, 2, 0, 0, @EXT_ACC_ACCESSORY_04_2),  -- Veteran's Wyrmhide Boots
(76, @GUID_ARENA_ACCESSORY_2, 32821, 2, 0, 0, @EXT_ACC_ACCESSORY_02_2),  -- Veteran's Wyrmhide Bracers
-- Season 3
-- (55, @GUID_ARENA_ACCESSORY_3, 38545, 4, 0, 0, @EXT_GEM_ACCESSORY_01_3), -- Bold Ornate Ruby
-- (55, @GUID_ARENA_ACCESSORY_3, 38546, 4, 0, 0, @EXT_GEM_ACCESSORY_01_3), -- Gleaming Ornate Dawnstone
-- (55, @GUID_ARENA_ACCESSORY_3, 38547, 4, 0, 0, @EXT_GEM_ACCESSORY_01_3), -- Inscribed Ornate Topaz
-- (55, @GUID_ARENA_ACCESSORY_3, 38548, 4, 0, 0, @EXT_GEM_ACCESSORY_01_3), -- Potent Ornate Topaz
-- (55, @GUID_ARENA_ACCESSORY_3, 38549, 4, 0, 0, @EXT_GEM_ACCESSORY_01_3), -- Runed Ornate Ruby
-- (55, @GUID_ARENA_ACCESSORY_3, 38550, 4, 0, 0, @EXT_GEM_ACCESSORY_01_3), -- Smooth Ornate Dawnstone
(55, @GUID_ARENA_ACCESSORY_3, 35327, 0, 0, 0, @EXT_ACC_ACCESSORY_01_3), -- Battlemaster's Alacrity
(55, @GUID_ARENA_ACCESSORY_3, 34049, 0, 0, 0, @EXT_ACC_ACCESSORY_01_3), -- Battlemaster's Audacity
(55, @GUID_ARENA_ACCESSORY_3, 34576, 0, 0, 0, @EXT_ACC_ACCESSORY_01_3), -- Battlemaster's Cruelty
(55, @GUID_ARENA_ACCESSORY_3, 34162, 0, 0, 0, @EXT_ACC_ACCESSORY_01_3), -- Battlemaster's Depravity
(55, @GUID_ARENA_ACCESSORY_3, 33832, 0, 0, 0, @EXT_ACC_ACCESSORY_01_3), -- Battlemaster's Determination
(55, @GUID_ARENA_ACCESSORY_3, 34050, 0, 0, 0, @EXT_ACC_ACCESSORY_01_3), -- Battlemaster's Perseverance
(55, @GUID_ARENA_ACCESSORY_3, 33056, 4, 0, 0, @EXT_ACC_ACCESSORY_02_3), -- Veteran's Band of Dominance
(55, @GUID_ARENA_ACCESSORY_3, 33064, 4, 0, 0, @EXT_ACC_ACCESSORY_02_3), -- Veteran's Band of Salvation
(55, @GUID_ARENA_ACCESSORY_3, 33057, 4, 0, 0, @EXT_ACC_ACCESSORY_02_3), -- Veteran's Band of Triumph
(55, @GUID_ARENA_ACCESSORY_3, 33853, 1, 0, 0, @EXT_ACC_ACCESSORY_03_3), -- Vindicator's Band of Dominance
(55, @GUID_ARENA_ACCESSORY_3, 33918, 1, 0, 0, @EXT_ACC_ACCESSORY_03_3), -- Vindicator's Band of Salvation
(55, @GUID_ARENA_ACCESSORY_3, 35320, 1, 0, 0, @EXT_ACC_ACCESSORY_03_3), -- Vindicator's Band of Subjugation
(55, @GUID_ARENA_ACCESSORY_3, 33919, 1, 0, 0, @EXT_ACC_ACCESSORY_03_3), -- Vindicator's Band of Triumph
(55, @GUID_ARENA_ACCESSORY_3, 33876, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Chain Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33877, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Chain Girdle
(55, @GUID_ARENA_ACCESSORY_3, 33878, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Chain Sabatons
(55, @GUID_ARENA_ACCESSORY_3, 33879, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Dragonhide Belt
(55, @GUID_ARENA_ACCESSORY_3, 33880, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Dragonhide Boots
(55, @GUID_ARENA_ACCESSORY_3, 33881, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Dragonhide Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33882, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Dreadweave Belt
(55, @GUID_ARENA_ACCESSORY_3, 33883, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Dreadweave Cuffs
(55, @GUID_ARENA_ACCESSORY_3, 33884, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Dreadweave Stalkers
(55, @GUID_ARENA_ACCESSORY_3, 33885, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Kodohide Belt
(55, @GUID_ARENA_ACCESSORY_3, 33886, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Kodohide Boots
(55, @GUID_ARENA_ACCESSORY_3, 33887, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Kodohide Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33888, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Lamellar Belt
(55, @GUID_ARENA_ACCESSORY_3, 33889, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Lamellar Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33890, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Lamellar Greaves
(55, @GUID_ARENA_ACCESSORY_3, 33891, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Leather Belt
(55, @GUID_ARENA_ACCESSORY_3, 33892, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Leather Boots
(55, @GUID_ARENA_ACCESSORY_3, 33893, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Leather Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33894, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Linked Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33895, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Linked Girdle
(55, @GUID_ARENA_ACCESSORY_3, 33896, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Linked Sabatons
(55, @GUID_ARENA_ACCESSORY_3, 33897, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Mail Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33898, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Mail Girdle
(55, @GUID_ARENA_ACCESSORY_3, 33899, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Mail Sabatons
(55, @GUID_ARENA_ACCESSORY_3, 33900, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Mooncloth Belt
(55, @GUID_ARENA_ACCESSORY_3, 33901, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Mooncloth Cuffs
(55, @GUID_ARENA_ACCESSORY_3, 33902, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Mooncloth Slippers
(55, @GUID_ARENA_ACCESSORY_3, 33903, 3, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Ornamented Belt
(55, @GUID_ARENA_ACCESSORY_3, 33904, 3, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Ornamented Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33905, 3, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Ornamented Greaves
(55, @GUID_ARENA_ACCESSORY_3, 33920, 2, 0, 0, @EXT_ACC_ACCESSORY_07_3), -- Vindicator's Pendant of Conquest
(55, @GUID_ARENA_ACCESSORY_3, 33921, 2, 0, 0, @EXT_ACC_ACCESSORY_07_3), -- Vindicator's Pendant of Dominance
(55, @GUID_ARENA_ACCESSORY_3, 35317, 2, 0, 0, @EXT_ACC_ACCESSORY_07_3), -- Vindicator's Pendant of Reprieve
(55, @GUID_ARENA_ACCESSORY_3, 33922, 2, 0, 0, @EXT_ACC_ACCESSORY_07_3), -- Vindicator's Pendant of Salvation
(55, @GUID_ARENA_ACCESSORY_3, 35319, 2, 0, 0, @EXT_ACC_ACCESSORY_07_3), -- Vindicator's Pendant of Subjugation
(55, @GUID_ARENA_ACCESSORY_3, 33923, 2, 0, 0, @EXT_ACC_ACCESSORY_07_3), -- Vindicator's Pendant of Triumph
(55, @GUID_ARENA_ACCESSORY_3, 33811, 4, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Plate Belt
(55, @GUID_ARENA_ACCESSORY_3, 33813, 4, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Plate Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33812, 4, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Plate Greaves
(55, @GUID_ARENA_ACCESSORY_3, 33906, 4, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Ringmail Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33907, 4, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Ringmail Girdle
(55, @GUID_ARENA_ACCESSORY_3, 33908, 4, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Ringmail Sabatons
(55, @GUID_ARENA_ACCESSORY_3, 33909, 4, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Scaled Belt
(55, @GUID_ARENA_ACCESSORY_3, 33910, 4, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Scaled Bracers
(55, @GUID_ARENA_ACCESSORY_3, 33911, 4, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Scaled Greaves
(55, @GUID_ARENA_ACCESSORY_3, 33912, 4, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Silk Belt
(55, @GUID_ARENA_ACCESSORY_3, 33913, 4, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Silk Cuffs
(55, @GUID_ARENA_ACCESSORY_3, 33914, 4, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Silk Footguards
(55, @GUID_ARENA_ACCESSORY_3, 33915, 4, 0, 0, @EXT_ACC_ACCESSORY_05_3), -- Vindicator's Wyrmhide Belt
(55, @GUID_ARENA_ACCESSORY_3, 33916, 4, 0, 0, @EXT_ACC_ACCESSORY_06_3), -- Vindicator's Wyrmhide Boots
(55, @GUID_ARENA_ACCESSORY_3, 33917, 4, 0, 0, @EXT_ACC_ACCESSORY_04_3), -- Vindicator's Wyrmhide Bracers
-- Season 4
(56, @GUID_ARENA_ACCESSORY_4, 38545, 4, 0, 0, @EXT_GEM_ACCESSORY_01_4), -- Bold Ornate Ruby
(56, @GUID_ARENA_ACCESSORY_4, 38546, 4, 0, 0, @EXT_GEM_ACCESSORY_01_4), -- Gleaming Ornate Dawnstone
(56, @GUID_ARENA_ACCESSORY_4, 38547, 4, 0, 0, @EXT_GEM_ACCESSORY_01_4), -- Inscribed Ornate Topaz
(56, @GUID_ARENA_ACCESSORY_4, 38548, 4, 0, 0, @EXT_GEM_ACCESSORY_01_4), -- Potent Ornate Topaz
(56, @GUID_ARENA_ACCESSORY_4, 38549, 4, 0, 0, @EXT_GEM_ACCESSORY_01_4), -- Runed Ornate Ruby
(56, @GUID_ARENA_ACCESSORY_4, 38550, 4, 0, 0, @EXT_GEM_ACCESSORY_01_4), -- Smooth Ornate Dawnstone
(56, @GUID_ARENA_ACCESSORY_4, 35327, 0, 0, 0, @EXT_ACC_ACCESSORY_01_4), -- Battlemaster's Alacrity
(56, @GUID_ARENA_ACCESSORY_4, 34049, 0, 0, 0, @EXT_ACC_ACCESSORY_01_4), -- Battlemaster's Audacity
(56, @GUID_ARENA_ACCESSORY_4, 34576, 0, 0, 0, @EXT_ACC_ACCESSORY_01_4), -- Battlemaster's Cruelty
(56, @GUID_ARENA_ACCESSORY_4, 34162, 0, 0, 0, @EXT_ACC_ACCESSORY_01_4), -- Battlemaster's Depravity
(56, @GUID_ARENA_ACCESSORY_4, 33832, 0, 0, 0, @EXT_ACC_ACCESSORY_01_4), -- Battlemaster's Determination
(56, @GUID_ARENA_ACCESSORY_4, 34050, 0, 0, 0, @EXT_ACC_ACCESSORY_01_4), -- Battlemaster's Perseverance
(56, @GUID_ARENA_ACCESSORY_4, 35129, 1, 0, 0, @EXT_ACC_ACCESSORY_02_4), -- Guardian's Band of Dominance
(56, @GUID_ARENA_ACCESSORY_4, 35130, 1, 0, 0, @EXT_ACC_ACCESSORY_02_4), -- Guardian's Band of Salvation
(56, @GUID_ARENA_ACCESSORY_4, 37927, 1, 0, 0, @EXT_ACC_ACCESSORY_02_4), -- Guardian's Band of Subjugation
(56, @GUID_ARENA_ACCESSORY_4, 35131, 1, 0, 0, @EXT_ACC_ACCESSORY_02_4), -- Guardian's Band of Triumph
(56, @GUID_ARENA_ACCESSORY_4, 35166, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Chain Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35151, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Chain Girdle
(56, @GUID_ARENA_ACCESSORY_4, 35136, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Chain Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 35152, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Dragonhide Belt
(56, @GUID_ARENA_ACCESSORY_4, 35137, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Dragonhide Boots
(56, @GUID_ARENA_ACCESSORY_4, 35167, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Dragonhide Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35153, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Dreadweave Belt
(56, @GUID_ARENA_ACCESSORY_4, 35168, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Dreadweave Cuffs
(56, @GUID_ARENA_ACCESSORY_4, 35138, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Dreadweave Stalkers
(56, @GUID_ARENA_ACCESSORY_4, 35154, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Kodohide Belt
(56, @GUID_ARENA_ACCESSORY_4, 35139, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Kodohide Boots
(56, @GUID_ARENA_ACCESSORY_4, 35169, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Kodohide Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35155, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Lamellar Belt
(56, @GUID_ARENA_ACCESSORY_4, 35170, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Lamellar Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35140, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Lamellar Greaves
(56, @GUID_ARENA_ACCESSORY_4, 35156, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Leather Belt
(56, @GUID_ARENA_ACCESSORY_4, 35141, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Leather Boots
(56, @GUID_ARENA_ACCESSORY_4, 35171, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Leather Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35172, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Linked Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35157, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Linked Girdle
(56, @GUID_ARENA_ACCESSORY_4, 35142, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Linked Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 35173, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Mail Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35158, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Mail Girdle
(56, @GUID_ARENA_ACCESSORY_4, 35143, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Mail Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 35159, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Mooncloth Belt
(56, @GUID_ARENA_ACCESSORY_4, 35174, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Mooncloth Cuffs
(56, @GUID_ARENA_ACCESSORY_4, 35144, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Mooncloth Slippers
(56, @GUID_ARENA_ACCESSORY_4, 35160, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Ornamented Belt
(56, @GUID_ARENA_ACCESSORY_4, 35175, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Ornamented Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35145, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Ornamented Greaves
(56, @GUID_ARENA_ACCESSORY_4, 35132, 2, 0, 0, @EXT_ACC_ACCESSORY_06_4), -- Guardian's Pendant of Conquest
(56, @GUID_ARENA_ACCESSORY_4, 35133, 2, 0, 0, @EXT_ACC_ACCESSORY_06_4), -- Guardian's Pendant of Dominance
(56, @GUID_ARENA_ACCESSORY_4, 37929, 2, 0, 0, @EXT_ACC_ACCESSORY_06_4), -- Guardian's Pendant of Reprieve
(56, @GUID_ARENA_ACCESSORY_4, 35134, 2, 0, 0, @EXT_ACC_ACCESSORY_06_4), -- Guardian's Pendant of Salvation
(56, @GUID_ARENA_ACCESSORY_4, 37928, 2, 0, 0, @EXT_ACC_ACCESSORY_06_4), -- Guardian's Pendant of Subjugation
(56, @GUID_ARENA_ACCESSORY_4, 35135, 2, 0, 0, @EXT_ACC_ACCESSORY_06_4), -- Guardian's Pendant of Triumph
(56, @GUID_ARENA_ACCESSORY_4, 35161, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Plate Belt
(56, @GUID_ARENA_ACCESSORY_4, 35176, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Plate Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35146, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Plate Greaves
(56, @GUID_ARENA_ACCESSORY_4, 35177, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Ringmail Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35162, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Ringmail Girdle
(56, @GUID_ARENA_ACCESSORY_4, 35147, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Ringmail Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 35163, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Scaled Belt
(56, @GUID_ARENA_ACCESSORY_4, 35178, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Scaled Bracers
(56, @GUID_ARENA_ACCESSORY_4, 35148, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Scaled Greaves
(56, @GUID_ARENA_ACCESSORY_4, 35164, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Silk Belt
(56, @GUID_ARENA_ACCESSORY_4, 35179, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Silk Cuffs
(56, @GUID_ARENA_ACCESSORY_4, 35149, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Silk Footguards
(56, @GUID_ARENA_ACCESSORY_4, 35165, 3, 0, 0, @EXT_ACC_ACCESSORY_04_4), -- Guardian's Wyrmhide Belt
(56, @GUID_ARENA_ACCESSORY_4, 35150, 3, 0, 0, @EXT_ACC_ACCESSORY_05_4), -- Guardian's Wyrmhide Boots
(56, @GUID_ARENA_ACCESSORY_4, 35180, 3, 0, 0, @EXT_ACC_ACCESSORY_03_4), -- Guardian's Wyrmhide Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33853, 4, 0, 0, @EXT_ACC_ACCESSORY_07_4), -- Vindicator's Band of Dominance
(56, @GUID_ARENA_ACCESSORY_4, 33918, 4, 0, 0, @EXT_ACC_ACCESSORY_07_4), -- Vindicator's Band of Salvation
(56, @GUID_ARENA_ACCESSORY_4, 35320, 4, 0, 0, @EXT_ACC_ACCESSORY_07_4), -- Vindicator's Band of Subjugation
(56, @GUID_ARENA_ACCESSORY_4, 33919, 4, 0, 0, @EXT_ACC_ACCESSORY_07_4), -- Vindicator's Band of Triumph
(56, @GUID_ARENA_ACCESSORY_4, 33876, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Chain Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33878, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Chain Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 33880, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Dragonhide Boots
(56, @GUID_ARENA_ACCESSORY_4, 33881, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Dragonhide Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33883, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Dreadweave Cuffs
(56, @GUID_ARENA_ACCESSORY_4, 33884, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Dreadweave Stalkers
(56, @GUID_ARENA_ACCESSORY_4, 33886, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Kodohide Boots
(56, @GUID_ARENA_ACCESSORY_4, 33887, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Kodohide Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33889, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Lamellar Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33890, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Lamellar Greaves
(56, @GUID_ARENA_ACCESSORY_4, 33892, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Leather Boots
(56, @GUID_ARENA_ACCESSORY_4, 33893, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Leather Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33894, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Linked Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33896, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Linked Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 33897, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Mail Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33899, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Mail Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 33901, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Mooncloth Cuffs
(56, @GUID_ARENA_ACCESSORY_4, 33902, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Mooncloth Slippers
(56, @GUID_ARENA_ACCESSORY_4, 33904, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Ornamented Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33905, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Ornamented Greaves
(56, @GUID_ARENA_ACCESSORY_4, 33920, 5, 0, 0, @EXT_ACC_ACCESSORY_10_4), -- Vindicator's Pendant of Conquest
(56, @GUID_ARENA_ACCESSORY_4, 33921, 5, 0, 0, @EXT_ACC_ACCESSORY_10_4), -- Vindicator's Pendant of Dominance
(56, @GUID_ARENA_ACCESSORY_4, 35317, 5, 0, 0, @EXT_ACC_ACCESSORY_10_4), -- Vindicator's Pendant of Reprieve
(56, @GUID_ARENA_ACCESSORY_4, 33922, 5, 0, 0, @EXT_ACC_ACCESSORY_10_4), -- Vindicator's Pendant of Salvation
(56, @GUID_ARENA_ACCESSORY_4, 35319, 5, 0, 0, @EXT_ACC_ACCESSORY_10_4), -- Vindicator's Pendant of Subjugation
(56, @GUID_ARENA_ACCESSORY_4, 33923, 5, 0, 0, @EXT_ACC_ACCESSORY_10_4), -- Vindicator's Pendant of Triumph
(56, @GUID_ARENA_ACCESSORY_4, 33813, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Plate Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33812, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Plate Greaves
(56, @GUID_ARENA_ACCESSORY_4, 33906, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Ringmail Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33908, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Ringmail Sabatons
(56, @GUID_ARENA_ACCESSORY_4, 33910, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Scaled Bracers
(56, @GUID_ARENA_ACCESSORY_4, 33911, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Scaled Greaves
(56, @GUID_ARENA_ACCESSORY_4, 33913, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4), -- Vindicator's Silk Cuffs
(56, @GUID_ARENA_ACCESSORY_4, 33914, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Silk Footguards
(56, @GUID_ARENA_ACCESSORY_4, 33916, 6, 0, 0, @EXT_ACC_ACCESSORY_09_4), -- Vindicator's Wyrmhide Boots
(56, @GUID_ARENA_ACCESSORY_4, 33917, 6, 0, 0, @EXT_ACC_ACCESSORY_08_4); -- Vindicator's Wyrmhide Bracers

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
(23, @NPC_ARMOR_ALLIANCE, 28613, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28614, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28615, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28616, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28617, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_ALLIANCE, 28618, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28619, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28620, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28622, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28623, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28624, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28625, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28626, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28627, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 28628, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_ALLIANCE, 31589, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31590, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31591, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31592, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 31593, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28679, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28680, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28681, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28724, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28683, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28684, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28685, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28686, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28687, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28688, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_ALLIANCE, 28689, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28690, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28691, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28692, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28693, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28694, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28695, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28696, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28697, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28698, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31622, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31623, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31620, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31624, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31625, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 31630, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31631, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31632, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31633, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 31634, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28699, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28700, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28701, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28702, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 28703, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_ALLIANCE, 31640, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31641, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31642, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31643, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 31644, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_ALLIANCE, 28704, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28705, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28706, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28707, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28708, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_ALLIANCE, 28709, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28710, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28711, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28712, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28713, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_ALLIANCE, 28714, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28715, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28716, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28717, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28718, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_ALLIANCE, 28719, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28720, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28721, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28722, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28723, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_ALLIANCE, 28973, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28974, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28975, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28976, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28977, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28978, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28980, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_ALLIANCE, 28981, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_ALLIANCE, 28982, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_ALLIANCE, 31596, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 31597, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 31599, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28983, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28984, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28985, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28986, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28987, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28988, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 28989, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28990, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28991, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28992, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28993, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28994, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_ALLIANCE, 28995, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28996, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28997, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28998, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 28999, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 29000, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_ALLIANCE, 29001, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_ALLIANCE, 29002, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_ALLIANCE, 29003, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_ALLIANCE, 29004, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 29005, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_ALLIANCE, 29006, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''); -- Leather

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_HORDE) AND (`SourceEntry` IN (28451,28450,28449,28443,28444,28445,28404,28405,28402,31594,31595,31598,28641,28643,28642,28423,28422,28424,28605,28629,28630,28638,28639,28640,28385,28381,28383,28644,28646,28645,28409,28411,28410,28446,28447,28448,28805,28806,28807,28808,28809,28811,28812,28813,28814,28815,28817,28818,28819,28820,28821,31584,31585,31586,31587,31588,28831,28832,28833,28834,28835,28836,28837,28838,28839,28840,28841,28842,28843,28844,28845,28846,28847,28848,28849,28850,31626,31627,31621,31628,31629,31635,31636,31637,31638,31639,28851,28852,28853,28854,28855,31646,31647,31648,31649,31650,28856,28857,28858,28859,28860,28861,28862,28863,28864,28865,28866,28867,28868,28869,28870,28871,28872,28873,28874,28875));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ARMOR_HORDE, 28451, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28450, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28449, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28443, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28444, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28445, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28404, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_HORDE, 28405, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_HORDE, 28402, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_HORDE, 31594, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 31595, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 31598, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28641, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28643, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28642, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28423, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28422, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28424, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28605, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28629, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28630, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28638, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28639, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28640, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARMOR_HORDE, 28385, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28381, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28383, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28644, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28646, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28645, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARMOR_HORDE, 28409, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_HORDE, 28411, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_HORDE, 28410, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARMOR_HORDE, 28446, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28447, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28448, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARMOR_HORDE, 28805, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28806, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28807, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28808, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28809, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_ARMOR_HORDE, 28811, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28812, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28813, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28814, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28815, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28817, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28818, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28819, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28820, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 28821, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_ARMOR_HORDE, 31584, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31585, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31586, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31587, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 31588, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28831, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28832, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28833, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28834, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28835, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28836, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28837, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28838, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28839, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28840, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_ARMOR_HORDE, 28841, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28842, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28843, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28844, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28845, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28846, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28847, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28848, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28849, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28850, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31626, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31627, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31621, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31628, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31629, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 31635, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31636, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31637, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31638, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 31639, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28851, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28852, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28853, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28854, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 28855, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_ARMOR_HORDE, 31646, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31647, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31648, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31649, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 31650, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_ARMOR_HORDE, 28856, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28857, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28858, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28859, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28860, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_ARMOR_HORDE, 28861, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28862, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28863, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28864, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28865, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_ARMOR_HORDE, 28866, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28867, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28868, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28869, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28870, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_ARMOR_HORDE, 28871, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28872, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28873, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28874, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_ARMOR_HORDE, 28875, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''); -- Druid

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_ONE) AND (`SourceEntry` IN (24544,24545,24546,24547,24549,24552,24553,24554,24555,24556,25830,25831,25832,25833,25834,25854,25855,25856,25857,25858,25997,25998,25999,26000,26001,27469,27470,27471,27472,27473,27702,27703,27704,27705,27706,27707,27708,27709,27710,27711,27879,27880,27881,27882,27883,28126,28127,28128,28129,28130,28136,28137,28138,28139,28140,28331,28332,28333,28334,28335,30186,30187,30188,30200,30201,31375,31376,31377,31378,31379,28355,31396,31397,31400,31406,31407,28357,31409,31410,31411,31412,31413,31613,31614,31616,31618,28356,31619));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_SEASON_ONE, 24544, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_ONE, 24545, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_ONE, 24546, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_ONE, 24547, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_ONE, 24549, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_ONE, 24552, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 24553, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 24554, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 24555, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 24556, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 25830, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_ONE, 25831, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_ONE, 25832, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_ONE, 25833, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_ONE, 25834, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_ONE, 25854, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_ONE, 25855, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_ONE, 25856, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_ONE, 25857, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_ONE, 25858, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_ONE, 25997, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 25998, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 25999, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 26000, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 26001, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 27469, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 27470, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 27471, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 27472, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 27473, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 27702, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27703, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27704, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27705, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27706, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27707, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 27708, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 27709, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 27710, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 27711, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 27879, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27880, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27881, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27882, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 27883, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 28126, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28127, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28128, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28129, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28130, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28136, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28137, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28138, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28139, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28140, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28331, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_ONE, 28332, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_ONE, 28333, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_ONE, 28334, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_ONE, 28335, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_ONE, 30186, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 30187, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 30188, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 30200, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 30201, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_ONE, 31375, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 31376, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 31377, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 31378, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 31379, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 28355, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_ONE, 31396, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 31397, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 31400, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 31406, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 31407, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 28357, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_ONE, 31409, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 31410, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 31411, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 31412, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 31413, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_ONE, 31613, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 31614, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 31616, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 31618, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 28356, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_ONE, 31619, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''); -- Paladin

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_TWO) AND (`SourceEntry` IN (30486,30487,30488,30489,30490,31960,31961,31962,31963,31964,31967,31968,31969,31971,31972,31973,31974,31975,31976,31977,31979,31980,31981,31982,31983,31987,31988,31989,31990,31991,31992,31993,31995,31996,31997,31998,31999,32000,32001,32002,32004,32005,32006,32007,32008,32009,32010,32011,32012,32013,32015,32016,32017,32018,32019,32020,32021,32022,32023,32024,32029,32030,32031,32032,32033,32034,32035,32036,32037,32038,32039,32040,32041,32042,32043,32047,32048,32049,32050,32051,32056,32057,32058,32059,32060,33946,33943,33076,33937,33077,33949,33940,33952,33078));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_SEASON_TWO, 30486, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_TWO, 30487, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_TWO, 30488, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_TWO, 30489, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_TWO, 30490, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_TWO, 31960, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_TWO, 31961, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_TWO, 31962, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_TWO, 31963, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_TWO, 31964, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_TWO, 31967, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31968, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31969, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31971, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31972, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31973, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31974, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31975, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31976, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31977, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31979, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31980, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31981, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31982, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31983, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_TWO, 31987, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31988, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31989, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31990, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31991, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 31992, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 31993, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 31995, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 31996, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 31997, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 31998, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_TWO, 31999, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_TWO, 32000, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_TWO, 32001, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_TWO, 32002, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_TWO, 32004, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32005, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32006, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32007, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32008, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32009, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32010, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32011, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32012, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32013, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32015, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32016, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32017, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32018, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32019, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32020, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32021, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32022, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32023, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32024, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32029, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32030, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32031, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32032, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32033, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 32034, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32035, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32036, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32037, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32038, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_TWO, 32039, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32040, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32041, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32042, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32043, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 32047, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_TWO, 32048, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_TWO, 32049, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_TWO, 32050, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_TWO, 32051, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_TWO, 32056, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 32057, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 32058, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 32059, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 32060, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 33946, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 33943, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 33076, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_TWO, 33937, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 33077, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 33949, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_TWO, 33940, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 33952, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_TWO, 33078, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''); -- Shaman

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_THREE) AND (`SourceEntry` IN (33664,33665,33666,33667,33668,33671,33672,33673,33674,33675,33676,33677,33678,33679,33680,33682,33683,33684,33685,33686,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699,33700,33701,33702,33703,33704,33706,33707,33708,33709,33710,33711,33712,33713,33714,33715,33717,33718,33719,33720,33721,33722,33723,33724,33725,33726,33728,33729,33730,33731,33732,33738,33739,33740,33741,33742,33744,33745,33746,33747,33748,33749,33750,33751,33752,33753,33757,33758,33759,33760,33761,33767,33768,33769,33770,33771,33947,33944,33841,33938,33842,33950,33941,33953,33843,34014));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_SEASON_THREE, 33664, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_THREE, 33665, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_THREE, 33666, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_THREE, 33667, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_THREE, 33668, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_THREE, 33671, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33672, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33673, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33674, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33675, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33676, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33677, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33678, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33679, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33680, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33682, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33683, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33684, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33685, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33686, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_THREE, 33690, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33691, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33692, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33693, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33694, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33695, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33696, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33697, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33698, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33699, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33700, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_THREE, 33701, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_THREE, 33702, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_THREE, 33703, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_THREE, 33704, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_THREE, 33706, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33707, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33708, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33709, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33710, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33711, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33712, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33713, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33714, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33715, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33717, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33718, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33719, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33720, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33721, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33722, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33723, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33724, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33725, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33726, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33728, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_THREE, 33729, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_THREE, 33730, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_THREE, 33731, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_THREE, 33732, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_THREE, 33738, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33739, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33740, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33741, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33742, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33744, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33745, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33746, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33747, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33748, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_THREE, 33749, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33750, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33751, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33752, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33753, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33757, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_THREE, 33758, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_THREE, 33759, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_THREE, 33760, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_THREE, 33761, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_THREE, 33767, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33768, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33769, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33770, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33771, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33947, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33944, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33841, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_THREE, 33938, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33842, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33950, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_THREE, 33941, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33953, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 33843, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_THREE, 34014, 0, 1, 15, 0, 36, 0, 0, 0, 0, 0, '', ''); -- Hunter/DK

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_FOUR) AND (`SourceEntry` IN (34990,34991,34992,34993,34994,34998,34999,35000,35001,35002,35003,35004,35005,35006,35007,35009,35010,35011,35012,35013,35022,35023,35024,35025,35026,35027,35028,35029,35030,35031,35032,35033,35034,35035,35036,35042,35043,35044,35045,35046,35048,35049,35050,35051,35052,35053,35054,35055,35056,35057,35059,35060,35061,35062,35063,35066,35067,35068,35069,35070,35077,35078,35079,35080,35081,35083,35084,35085,35086,35087,35088,35089,35090,35091,35092,35096,35097,35098,35099,35100,35111,35112,35113,35114,35115,35019,35020,35021,35039,35040,35041,35104,35105,35106,35110,36737));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_SEASON_FOUR, 34990, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_FOUR, 34991, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_FOUR, 34992, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_FOUR, 34993, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_FOUR, 34994, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_FOUR, 34998, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 34999, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35000, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35001, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35002, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35003, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35004, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35005, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35006, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35007, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35009, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35010, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35011, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35012, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35013, 0, 1, 15, 0, 256, 0, 0, 0, 0, 0, '', ''), -- Warlock
(23, @NPC_SEASON_FOUR, 35022, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35023, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35024, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35025, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35026, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35027, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35028, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35029, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35030, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35031, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35032, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_FOUR, 35033, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_FOUR, 35034, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_FOUR, 35035, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_FOUR, 35036, 0, 1, 15, 0, 8, 0, 0, 0, 0, 0, '', ''), -- Rogue
(23, @NPC_SEASON_FOUR, 35042, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35043, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35044, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35045, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35046, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35048, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35049, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35050, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35051, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35052, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35053, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35054, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35055, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35056, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35057, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35059, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35060, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35061, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35062, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35063, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35066, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_FOUR, 35067, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_FOUR, 35068, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_FOUR, 35069, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_FOUR, 35070, 0, 1, 15, 0, 1, 0, 0, 0, 0, 0, '', ''), -- Warrior
(23, @NPC_SEASON_FOUR, 35077, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35078, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35079, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35080, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35081, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35083, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35084, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35085, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35086, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35087, 0, 1, 15, 0, 16, 0, 0, 0, 0, 0, '', ''), -- Priest
(23, @NPC_SEASON_FOUR, 35088, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35089, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35090, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35091, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35092, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35096, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_FOUR, 35097, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_FOUR, 35098, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_FOUR, 35099, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_FOUR, 35100, 0, 1, 15, 0, 128, 0, 0, 0, 0, 0, '', ''), -- Mage
(23, @NPC_SEASON_FOUR, 35111, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35112, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35113, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35114, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35115, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35019, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35020, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35021, 0, 1, 15, 0, 1024, 0, 0, 0, 0, 0, '', ''), -- Druid
(23, @NPC_SEASON_FOUR, 35039, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35040, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35041, 0, 1, 15, 0, 2, 0, 0, 0, 0, 0, '', ''), -- Paladin
(23, @NPC_SEASON_FOUR, 35104, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35105, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35106, 0, 1, 15, 0, 64, 0, 0, 0, 0, 0, '', ''), -- Shaman
(23, @NPC_SEASON_FOUR, 35110, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''), -- Hunter
(23, @NPC_SEASON_FOUR, 36737, 0, 1, 15, 0, 4, 0, 0, 0, 0, 0, '', ''); -- Hunter

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARENA_ACCESSORY) AND (`SourceEntry` IN (32799,32811,32787,32979,32980,32981,32807,32820,32795,32786,32788,32790,32796,32800,32802,32808,32810,32812,32814,32821,32785,32791,32792,32797,32803,32804,32809,32816,32817,32997,32998,32999,32789,32793,32794,32801,32805,32806,32813,32818,32819,32988,32989,32990,33882,33883,33884,33900,33901,33902,33912,33913,33914,33879,33880,33881,33885,33886,33887,33891,33892,33893,33915,33916,33917,33877,33894,33895,33896,33897,33898,33899,33906,33907,33908,33811,33812,33813,33888,33889,33890,33903,33904,33905,33909,33910,33911,35138,35144,35149,35153,35159,35164,35168,35174,35179,35137,35139,35141,35150,35152,35154,35156,35165,35167,35169,35171,35180,33876,33878,35136,35142,35143,35147,35151,35157,35158,35162,35166,35172,35173,35177,35140,35145,35146,35148,35155,35160,35161,35163,35170,35175,35176,35178));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, @NPC_ARENA_ACCESSORY, 32799, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32811, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32787, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32979, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32980, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32981, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32807, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32820, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32795, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 32786, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32788, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32790, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32796, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32800, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32802, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32808, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32810, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32812, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32814, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32821, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 32785, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32791, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32792, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32797, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32803, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32804, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32809, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32816, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32817, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32997, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32998, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32999, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 32789, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32793, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32794, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32801, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32805, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32806, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32813, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32818, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32819, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32988, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32989, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 32990, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33882, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33883, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33884, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33900, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33901, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33902, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33912, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33913, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33914, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 33879, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33880, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33881, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33885, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33886, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33887, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33891, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33892, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33893, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33915, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33916, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33917, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33877, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33894, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33895, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33896, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33897, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33898, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33899, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33906, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33907, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33908, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33811, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33812, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33813, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33888, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33889, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33890, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33903, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33904, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33905, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33909, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33910, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 33911, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35138, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35144, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35149, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35153, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35159, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35164, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35168, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35174, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35179, 0, 1, 15, 0, 400, 0, 0, 0, 0, 0, '', ''), -- Cloth
(23, @NPC_ARENA_ACCESSORY, 35137, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35139, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35141, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35150, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35152, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35154, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35156, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35165, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35167, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35169, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35171, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 35180, 0, 1, 15, 0, 1032, 0, 0, 0, 0, 0, '', ''), -- Leather
(23, @NPC_ARENA_ACCESSORY, 33876, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 33878, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35136, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35142, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35143, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35147, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35151, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35157, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35158, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35162, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35166, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35172, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35173, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35177, 0, 1, 15, 0, 68, 0, 0, 0, 0, 0, '', ''), -- Mail
(23, @NPC_ARENA_ACCESSORY, 35140, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35145, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35146, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35148, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35155, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35160, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35161, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35163, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35170, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35175, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35176, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''), -- Plate
(23, @NPC_ARENA_ACCESSORY, 35178, 0, 1, 15, 0, 35, 0, 0, 0, 0, 0, '', ''); -- Plate
