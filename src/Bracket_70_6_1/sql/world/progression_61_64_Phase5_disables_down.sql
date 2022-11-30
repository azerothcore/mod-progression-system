-- Restore Shattered Sun Offensive NPCs and Vendors near Portal to Isle of Quel'Danas
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN (
24932, -- Exarch Naasun
27667, -- Anwehu (Badge Vendor)
27666, -- Ontuvo (Jewelcrafting Vendor)
25885, -- Whirligig Wafflefry
25141, -- Commander Steele
25167, -- General Tiras'alan
25140, -- Lord Torvos
19202  -- Emissary Mordin
);
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN (
24938, -- Shattered Sun Marksman
25115  -- Shattered Sun Warrior
) AND `guid` IN (96656, 96593);

-- Change Grand Anchorite Almonen (19216) and Harbinger Haronem (19475) Faction to SSO
UPDATE `creature_template` SET `faction` = 1956 WHERE `entry` IN (19216, 19475);

-- Restore Ids of Shattered Sun Offensive NPCs in Shattrath
-- Shattered Sun Marksman (24938) to Veteran Vindicator (19165)
UPDATE `creature` SET `id1`=24938 WHERE `id1`=19165 AND `guid` IN (96658, 96657);
-- Shattered Sun Marksman (25142) to Veteran Vindicator (19337)
UPDATE `creature` SET `id1`=25142 WHERE `id1`=19337 AND `guid` IN (96622, 96623, 96624, 96625, 96626, 96627, 96628, 96629, 96630, 96631, 96632, 96633, 96634, 96635, 96636, 96637, 96638, 96639, 96640);
-- Shattered Sun Trainee (25134) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=25134 WHERE `id1`=19153 AND `guid` IN (96595, 96596, 96597, 96598, 96599);
-- Shattered Sun Trainee (25135) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=25135 WHERE `id1`=19153 AND `guid` IN (96600, 96601, 96602);
-- Shattered Sun Trainee (25136) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=25136 WHERE `id1`=19153 AND `guid` IN (96603, 96604, 96605, 96606, 96607, 96608, 96609);
-- Shattered Sun Trainee (25137) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=25137 WHERE `id1`=19153 AND `guid` IN (96610, 96611, 96612, 96613, 96614, 96615, 96616, 96617, 96618);
-- Shattered Sun Veteran (25143) to Seasoned Vindicator (19651)
UPDATE `creature` SET `id1`=25143 WHERE `id1`=19651 AND `guid` IN (96641, 96642);
-- Shattered Sun Cleric (25155) to Aldor Marksman (19337)
UPDATE `creature` SET `id1`=25155 WHERE `id1`=19337 AND `guid` IN (96647, 96648, 96649, 96650, 96651, 96652);
-- Shattered Sun Magi (25153) to Aldor Anchorite (19142)
UPDATE `creature` SET `id1`=25153 WHERE `id1`=19142 AND `guid` IN (96643, 96644, 96645, 96646);
-- Captain Dranarus (25138) to Seasoned Vindicator (19651)
UPDATE `creature` SET `id1`=25138 WHERE `id1`=19651;

-- Restore gameobjects
UPDATE `gameobject` SET `phasemask` = 1 WHERE `id` IN (
187056, -- Isle of Quel'Danas Portal
187345  -- Sunwell Plateau map below A'dal
);

-- Move G'eras back to their usual spot
UPDATE `creature` SET `position_x`=-1841.98, `position_y`=5471.1, `position_z`=1.01826, `orientation`=4.39823 WHERE `guid`=96654 AND `id1`=18525;
-- Move G'eras Vindicators back to their usual spot
UPDATE `creature` SET `position_x`=-1838.96, `position_y`=5466.96, `position_z`=1.2443  , `orientation`=3.90954 WHERE `guid`=96659 AND `id1`=20331;
UPDATE `creature` SET `position_x`=-1844.29, `position_y`=5475.24, `position_z`=0.940471, `orientation`=1.39626 WHERE `guid`=96660 AND `id1`=20331;
UPDATE `creature` SET `position_x`=-1846.48, `position_y`=5470.35, `position_z`=0.940442, `orientation`=2.74017 WHERE `guid`=96661 AND `id1`=20331;
UPDATE `creature` SET `position_x`=-1836.19, `position_y`=5472.1 , `position_z`=1.29797 , `orientation`=5.55015 WHERE `guid`=96662 AND `id1`=20331;

-- Enable breadcrumb quests and SSO dailies
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11481, 11482, 11550, 11513, 11514, 11515, 11516, 11875, 11877, 11880);
