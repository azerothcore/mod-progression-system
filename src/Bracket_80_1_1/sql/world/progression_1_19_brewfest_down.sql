UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` IN (23872, 23795, 26776, 26764, 26822);
UPDATE `creature_template` SET `lootid` = 23872 WHERE `entry` = 23872;

DELETE FROM `item_loot_template` WHERE `Entry` = 54535 AND `Item` IN (48663, 49120, 49426);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54535,48663,0,8,0,1,0,1,1,'Keg-Shaped Treasure Chest - Tankard O\' Terror'),
(54535,49120,0,8,0,1,0,1,1,'Keg-Shaped Treasure Chest - Direbrew\'s Bloody Shanker'),
(54535,49426,0,100,0,1,1,2,2,'Keg-Shaped Treasure Chest - Emblem of Frost');

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (40437, 40441);

DELETE FROM `creature` WHERE `id1` IN (40437, 40441) AND `guid` IN (3200500, 3200501);

DELETE FROM `game_event_creature` WHERE `eventEntry` = 24 AND `guid` IN (3200500, 3200501);
