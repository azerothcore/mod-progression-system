-- Onyxia
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `lootid` = 10184, `DamageModifier` = 35 WHERE `entry` = 10184;

-- Trash mobs
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `skinloot` = 100001 WHERE `entry` = 11262; -- Onyxian Whelp
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `lootid` = 12129, `skinloot` = 12129 WHERE `entry` = 12129; -- Onyxian Warder

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
DELETE FROM `reference_loot_template` WHERE `Entry` IN (54000, 54001);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` = 54003 AND `SourceEntry` = 21108;

-- Level 80 achievements and statistic
DELETE FROM `disables` WHERE `sourceType` = 4 AND `entry` IN (12558, 12559, 12564, 12565, 12566, 13276);

-- The 25-player criteria require the 25-player difficulty again; the instance-script rows never changed
UPDATE `achievement_criteria_data` SET `value1` = 1 WHERE `criteria_id` IN (12567, 12568, 12569) AND `type` = 12;

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 15;

UPDATE `dungeon_access_template` SET `min_level` = 80 WHERE `map_id` = 249 AND `difficulty` = 0;

DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = 249;

-- Victory for the Alliance / Horde (level 60 turn-ins). The cloak quests chain from the level 80 versions again;
-- their Haleh / Rokaro starter and ender rows are stock data and stay.
DELETE FROM `creature_questender` WHERE `quest` IN (7490, 7495);

UPDATE `quest_template_addon` SET `PrevQuestID` = 24428 WHERE `ID` = 7497;
UPDATE `quest_template_addon` SET `PrevQuestID` = 24429 WHERE `ID` = 7493;

-- Foror's Compendium
UPDATE `item_template` SET `startquest` = 0 WHERE `entry` IN (18401, 18513); -- Foror's Compendium of Dragonslaying, A Dull and Flat Elven Blade

DELETE FROM `creature_queststarter` WHERE `quest` = 7509;
DELETE FROM `creature_questender` WHERE `quest` IN (7507, 7508, 7509);

UPDATE `quest_template_addon` SET `SpecialFlags` = 1 WHERE `ID` = 7509;

-- Lorekeeper Lydros gossip
DELETE FROM `gossip_menu` WHERE `MenuID` = 5747 AND `TextID` = 60040;
DELETE FROM `gossip_menu` WHERE `MenuID` IN (60041, 60042, 60043, 60044, 60045, 60046);
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (5747, 60041, 60042, 60043, 60044, 60045, 60046);
DELETE FROM `npc_text` WHERE `ID` IN (60040, 60041, 60042, 60043, 60044, 60045, 60046);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup` = 5747;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 14368 AND `source_type` = 0 AND `id` IN (1, 2);

-- Quel'Serrar forging
-- Stock value is -1, which the loader rejects as a broken learning format and resets to 0 at startup
UPDATE `item_template` SET `spellid_1` = 0 WHERE `entry` = 18489; -- Unfired Ancient Blade
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 22905;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 22905;
