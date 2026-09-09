-- Coren Direbrew and his helpers back to level 80 with the stock loot table.
-- This lives in an 80_1-prefixed file because the updater applies files in
-- filename order and the level-70 rows from Bracket_70_1_1 / Bracket_70_4_1
-- must be overridden after them.
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` IN (23872, 23795, 26776, 26764, 26822);
UPDATE `creature_template` SET `lootid` = 23872 WHERE `entry` = 23872;

-- Keg-Shaped Treasure Chest (54535): hand out the phase-appropriate Emblem of
-- Valor (40753) instead of the ICC-era Emblem of Frost (49426), matching the
-- heroic daily and the Ahune satchel.
DELETE FROM `item_loot_template` WHERE `Entry` = 54535 AND `Item` IN (48663, 49120, 49426, 40753);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54535,48663,0,8,0,1,0,1,1,'Keg-Shaped Treasure Chest - Tankard O\' Terror'),
(54535,49120,0,8,0,1,0,1,1,'Keg-Shaped Treasure Chest - Direbrew\'s Bloody Shanker'),
(54535,40753,0,100,0,1,1,2,2,'Keg-Shaped Treasure Chest - Emblem of Valor');
