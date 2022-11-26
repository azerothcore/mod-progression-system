-- Hide Shattered Sun Offensive NPCs and Vendors near Portal to Isle of Quel'Danas
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
24932, -- Exarch Naasun
27667, -- Anwehu (Badge Vendor)
27666, -- Ontuvo (Jewelcrafting Vendor)
25885, -- Whirligig Wafflefry
25141, -- Commander Steele
25167, -- General Tiras'alan
25140, -- Lord Torvos
19202  -- Emissary Mordin
);
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
24938, -- Shattered Sun Marksman
25115  -- Shattered Sun Warrior
) AND `guid` IN (96656, 96593);

-- Change Grand Anchorite Almonen (19216) and Harbinger Haronem (19475) Faction to Aldor
UPDATE `creature_template` SET `faction` = 1743 WHERE `entry` IN (19216, 19475);

-- Change Ids of Shattered Sun Offensive NPCs in Shattrath
-- Shattered Sun Marksman (24938) to Veteran Vindicator (19165)
UPDATE `creature` SET `id1`=19165 WHERE `id1`=24938 AND `guid` IN (96658, 96657);
-- Shattered Sun Marksman (25142) to Aldor Marksman (19337)
UPDATE `creature` SET `id1`=19337 WHERE `id1`=25142 AND `guid` IN (96622, 96623, 96624, 96625, 96626, 96627, 96628, 96629, 96630, 96631, 96632, 96633, 96634, 96635, 96636, 96637, 96638, 96639, 96640);
-- Shattered Sun Trainee (25134) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=19153 WHERE `id1`=25134 AND `guid` IN (96595, 96596, 96597, 96598, 96599);
-- Shattered Sun Trainee (25135) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=19153 WHERE `id1`=25135 AND `guid` IN (96600, 96601, 96602);
-- Shattered Sun Trainee (25136) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=19153 WHERE `id1`=25136 AND `guid` IN (96603, 96604, 96605, 96606, 96607, 96608, 96609);
-- Shattered Sun Trainee (25137) to Aldor Neophyte (19153)
UPDATE `creature` SET `id1`=19153 WHERE `id1`=25137 AND `guid` IN (96610, 96611, 96612, 96613, 96614, 96615, 96616, 96617, 96618);
-- Shattered Sun Veteran (25143) to Seasoned Vindicator (19651)
UPDATE `creature` SET `id1`=19651 WHERE `id1`=25143 AND `guid` IN (96641, 96642);
-- Shattered Sun Cleric (25155) to Aldor Marksman (19337)
UPDATE `creature` SET `id1`=19337 WHERE `id1`=25155 AND `guid` IN (96647, 96648, 96649, 96650, 96651, 96652);
-- Shattered Sun Magi (25153) to Aldor Anchorite (19142)
UPDATE `creature` SET `id1`=19142 WHERE `id1`=25153 AND `guid` IN (96643, 96644, 96645, 96646);
-- Captain Dranarus (25138) to Seasoned Vindicator (19651)
UPDATE `creature` SET `id1`=19651 WHERE `id1`=25138;

-- Hide Isle of Quel'Danas portal
UPDATE `gameobject` SET `phasemask` = 16384 WHERE `id`=187056;

-- Move G'eras to their pre-2.4 position (CUSTOM: no sniff found)
UPDATE `creature` SET `position_x`=-1839.880005, `position_y`=5500.600098, `position_z`=-12.427900, `orientation`=4.5 WHERE `id1`=18525;
-- Move G'eras Vindicators to their pre-2.4 positions (CUSTOM: no sniff found)
UPDATE `creature` SET `position_x`=-1850.318237, `position_y`=5487.258301, `position_z`=-12.427303, `orientation`=4.58 WHERE `guid`=96659 AND `id1`=20331;
UPDATE `creature` SET `position_x`=-1839.435181, `position_y`=5484.992676, `position_z`=-12.427303, `orientation`=4.23 WHERE `guid`=96660 AND `id1`=20331;
UPDATE `creature` SET `position_x`=-1832.658813, `position_y`=5497.825195, `position_z`=-12.427303, `orientation`=3.76 WHERE `guid`=96661 AND `id1`=20331;
UPDATE `creature` SET `position_x`=-1847.195190, `position_y`=5502.587402, `position_z`=-12.427303, `orientation`=5    WHERE `guid`=96662 AND `id1`=20331;
