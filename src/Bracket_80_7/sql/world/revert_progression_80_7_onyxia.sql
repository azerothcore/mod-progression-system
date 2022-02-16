-- Onyxia
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `lootid` = 10184, `DamageModifier` = 35 WHERE `entry` = 10184;

UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 11262; -- Onyxian Whelps
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `lootid` = 12129, `skinloot` = 12129 WHERE `entry` = 12129; -- Onyxian Warder

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
DELETE FROM `reference_loot_template` WHERE `Entry` IN (54001, 54002);

DELETE FROM `disables` WHERE `entry` = 12559 AND `sourceType` = 4;

DELETE FROM `disables` WHERE `entry` IN (12565, 12566, 12564, 12558) AND `sourceType` = 4;

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 15;

UPDATE `dungeon_access_template` SET `min_level` = 80 WHERE `map_id` = 249 AND `difficulty` = 0;

DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = 249;

-- Might want to revert this sooner at 61-64, Ony achievements
UPDATE `achievement_criteria_data` SET `value1` = 1 WHERE `criteria_id` IN (12567, 12568, 12569);

UPDATE `item_template` SET `startquest` = 0 WHERE `entry` = 18401; -- Foror's Compendium of Dragonslaying

DELETE FROM `creature_questender` WHERE `quest` = 7495;
DELETE FROM `creature_questender` WHERE `quest` = 7490;
DELETE FROM `creature_queststarter` WHERE `quest` = 7496;
DELETE FROM `creature_questender` WHERE `quest` = 7496;
DELETE FROM `creature_queststarter` WHERE `quest` = 7497;
DELETE FROM `creature_questender` WHERE `quest` = 7497;
DELETE FROM `creature_queststarter` WHERE `quest` = 7493;

UPDATE `quest_template_addon` SET `PrevQuestID` = 24428 WHERE `ID` = 7497;
UPDATE `quest_template_addon` SET `PrevQuestID` = 24429 WHERE `ID` = 7493;

-- Compendium
UPDATE `item_template` SET `startquest` = 0 WHERE `entry` = 18401; -- Foror's Compendium of Dragonslaying
UPDATE `item_template` SET `startquest` = 0 WHERE `entry` = 18513; -- Dull Elven Blade
UPDATE `item_template` SET `spellid_1` = 0 WHERE `entry` = 18489;

DELETE FROM `creature_questender` WHERE `quest` IN (7507, 7508, 7509); -- Lorekeeper Lydros, Foror's Compendium
DELETE FROM `creature_queststarter` WHERE `quest` = 7509;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup` = 5747;
DELETE FROM `gossip_menu` WHERE `TextId` = 60040 AND `MenuId` = 5747;
DELETE FROM `npc_text` WHERE `ID` IN (60040, 60041, 60042, 60043, 60044, 60046);
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (60040, 60041, 60042, 60043, 60044, 60045, 60046);

DELETE FROM spell_linked_spell where spell_trigger = 7509;

UPDATE `quest_template_addon` SET `SpecialFlags` = 1 WHERE `id` = 7509;
