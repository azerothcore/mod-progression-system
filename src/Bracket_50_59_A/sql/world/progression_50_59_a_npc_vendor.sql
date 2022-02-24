-- STARTING PHASE 50-59

SET @EXTENDED_COST = 444; -- 5k honor

-- Thanthaldis Snowgleam <Stormpike Supply Officer> (13217)
-- item req lvl 55 blue
DELETE FROM `npc_vendor` WHERE (`entry` = 13217) AND `item` IN (19084,19086,19091,19092,19093,19094,19097,19098);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(13217, 0, 19084, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19086, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19091, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19092, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19093, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19094, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19097, 0, 0, @EXTENDED_COST, 0),
(13217, 0, 19098, 0, 0, @EXTENDED_COST, 0);

-- Jekyll Flandring <Frostwolf Supply Officer> (13219)
-- item req lvl 55 blue
DELETE FROM `npc_vendor` WHERE (`entry` = 13219) AND `item` IN (19083, 19085, 19087, 19088, 19089, 19090, 19095, 19096);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(13219, 0, 19083, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19085, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19087, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19088, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19089, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19090, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19095, 0, 0, @EXTENDED_COST, 0),
(13219, 0, 19096, 0, 0, @EXTENDED_COST, 0);

SET @EXTENDED_COST = 444; -- 5k honor

-- Master Sergeant Biggins <Accessories Quartermaster> (12781)
-- items req lvl 58 blue (sergeant)
DELETE FROM `npc_vendor` WHERE (`entry` = 12781) AND `item` IN (16342, 18443, 18445, 18448, 18452, 18454, 18456);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12781, 0, 16342, 0, 0, @EXTENDED_COST, 0),
(12781, 0, 18443, 0, 0, @EXTENDED_COST, 0),
(12781, 0, 18445, 0, 0, @EXTENDED_COST, 0),
(12781, 0, 18448, 0, 0, @EXTENDED_COST, 0),
(12781, 0, 18452, 0, 0, @EXTENDED_COST, 0),
(12781, 0, 18454, 0, 0, @EXTENDED_COST, 0),
(12781, 0, 18456, 0, 0, @EXTENDED_COST, 0);

-- Brave Stonehide <Accessories Quartermaster> (12793)
-- items req lvl 58 blue (sergeant items)
DELETE FROM `npc_vendor` WHERE (`entry` = 12793) AND `item` IN (16335, 16486, 16497, 16532, 18429, 18434, 18461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12793, 0, 16335, 0, 0, @EXTENDED_COST, 0),
(12793, 0, 16486, 0, 0, @EXTENDED_COST, 0),
(12793, 0, 16497, 0, 0, @EXTENDED_COST, 0),
(12793, 0, 16532, 0, 0, @EXTENDED_COST, 0),
(12793, 0, 18429, 0, 0, @EXTENDED_COST, 0),
(12793, 0, 18434, 0, 0, @EXTENDED_COST, 0),
(12793, 0, 18461, 0, 0, @EXTENDED_COST, 0);

-- Samuel Hawke <League of Arathor Supply Officer> (15127)
-- items req lvl 58
DELETE FROM `npc_vendor` WHERE (`entry` = 15127) AND `item` IN (20041, 20042, 20043, 20044, 20045, 20046, 20047, 20048, 20049, 20050, 20051, 20052, 20053, 20054, 20071);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(15127, 0, 20041, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20042, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20043, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20044, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20045, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20046, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20047, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20048, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20049, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20050, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20051, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20052, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20053, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20054, 0, 0, @EXTENDED_COST, 0),
(15127, 0, 20071, 0, 0, @EXTENDED_COST, 0);

-- Rutherford Twing <Defilers Supply Officer> (15126)
DELETE FROM `npc_vendor` WHERE (`entry` = 15126) AND `item` IN (20072, 20150, 20154, 20159, 20163, 20167, 20171, 20177, 20181, 20186, 20190, 20195, 20199, 20204, 20208);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(15126, 0, 20072, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20150, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20154, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20159, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20163, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20167, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20171, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20177, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20181, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20186, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20190, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20195, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20199, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20204, 0, 0, @EXTENDED_COST, 0),
(15126, 0, 20208, 0, 0, @EXTENDED_COST, 0);

SET @EXTENDED_COST = 444; -- 5 k honor
-- Illiyana Moonblaze <Silverwing Supply Officer> (14753)
DELETE FROM `npc_vendor` WHERE (`entry` = 14753) AND `item` IN (19514, 19522, 19530, 19538, 19546, 19554, 19562, 19570, 19580, 19583, 19589, 19596);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
-- lvl 58
(14753, 0, 19514, 0, 0, @EXTENDED_COST, 0),
(14753, 0, 19522, 0, 0, @EXTENDED_COST, 0),
(14753, 0, 19530, 0, 0, @EXTENDED_COST, 0),
(14753, 0, 19538, 0, 0, @EXTENDED_COST, 0),
-- lvl 58 weapons 1h
(14753, 0, 19546, 0, 0, 171, 0), --  15000 honor
(14753, 0, 19554, 0, 0, 171, 0), --  15000 honor
(14753, 0, 19562, 0, 0, 171, 0), --  15000 honor
-- lvl 58 weapon 2h
(14753, 0, 19570, 0, 0, 2257, 0), --  25000 honor
-- lvl 50
(14753, 0, 19580, 0, 0, 2277, 0), -- 12000 honor
(14753, 0, 19583, 0, 0, 2277, 0), -- 12000 honor
(14753, 0, 19589, 0, 0, 2277, 0), -- 12000 honor
(14753, 0, 19596, 0, 0, 2277, 0); -- 12000 honor

-- Kelm Hargunth <Warsong Supply Officer> (14754)
DELETE FROM `npc_vendor` WHERE (`entry` = 14754) AND `item` IN (19510, 19518, 19526, 19534, 19542, 19558, 19550, 19566, 19580, 19583, 19589, 19596);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
-- lvl 58
(14754, 0, 19510, 0, 0, @EXTENDED_COST, 0),
(14754, 0, 19518, 0, 0, @EXTENDED_COST, 0),
(14754, 0, 19526, 0, 0, @EXTENDED_COST, 0),
(14754, 0, 19534, 0, 0, @EXTENDED_COST, 0),
-- lvl 58 weapon 1h
(14754, 0, 19542, 0, 0, 171, 0), -- 15000 honor
(14754, 0, 19558, 0, 0, 171, 0), -- 15000 honor
(14754, 0, 19550, 0, 0, 171, 0), -- 15000 honor
-- lvl 58 weapon 2h
(14754, 0, 19566, 0, 0, 2257, 0), -- 25000 honor
-- lvl 50
(14754, 0, 19580, 0, 0, 2277, 0), -- 12000 honor
(14754, 0, 19583, 0, 0, 2277, 0), -- 12000 honor
(14754, 0, 19589, 0, 0, 2277, 0), -- 12000 honor
(14754, 0, 19596, 0, 0, 2277, 0); -- 12000 honor
