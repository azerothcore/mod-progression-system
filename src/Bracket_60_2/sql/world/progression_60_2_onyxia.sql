-- Onyxia
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `damagemodifier` = 35 WHERE `entry` = 36538;

-- Trash mobs
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `lootid` = 0 WHERE `entry` = 36572;

DELETE FROM `reference_loot_template` WHERE `Entry` IN (54000, 54001);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54000, 17064, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Shard of the Scale'),
(54000, 17067, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Ancient Cornerstone Grimoire'),
(54000, 17068, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Deathbringer'),
(54000, 17075, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Viskag the Bloodletter'),
(54000, 17078, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Sapphiron Drape'),
(54000, 18205, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Eskhandar Collar'),
(54000, 18813, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Ring of Binding');

INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54001, 16900, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Stormrage Covert'),
(54001, 16908, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Bloodfang Hood'),
(54001, 16914, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Netherwind Crown'),
(54001, 16921, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Halo of Transcendence'),
(54001, 16929, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Nemesis Skullcap'),
(54001, 16939, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Dragonstalker Helmet'),
(54001, 16947, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Helmet of Ten Storms'),
(54001, 16955, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Judgment Crown'),
(54001, 16963, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Helm of Wrath');

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54003, 1, 54000, 100, 0, 1, 0, 1, 2, 'Onyxia - Reference Loot - Trinkets & Misc'),
(54003, 2, 54001, 100, 0, 1, 0, 1, 2, 'Onyxia - Reference Loot - Tier Pieces'),
(54003, 17966, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Onyxia Hide Backpack'),
(54003, 18422, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Head of Onyxia'),
(54003, 18423, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Head of Onyxia'),
(54003, 18705, 0, 100, 1, 1, 0, 1, 1, 'Onyxia - Mature Black Dragon Sinew'),
(54003, 21108, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Draconic for Dummies');

UPDATE `creature_template` SET `lootid` = 54003 WHERE `entry` = 36538;

DELETE FROM `disables` WHERE `entry` = 12559 AND `sourceType` = 4;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(4, 12559, 0, 0, 0, 'Disable Onyxia Lair 25 achievement');
