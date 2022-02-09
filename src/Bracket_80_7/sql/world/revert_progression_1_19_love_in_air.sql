UPDATE `creature_template` SET `ScriptName` = "" WHERE `entry` = 40438;
UPDATE `creature_template` SET `ScriptName` = "" WHERE `entry` = 38208;

DELETE FROM `creature` WHERE `guid` IN (3110427, 3110428, 3110429, 3110430, 3110431, 3110432, 3110433, 3110434) AND `id1` = 40438;

DELETE FROM `item_loot_template` WHERE `Entry` = 54537;
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54537,1,50011,15,0,1,0,1,1, 'Heart-Shaped Box - (ReferenceTable)'),
(54537,49426,0,100,0,1,0,2,2,'Heart-Shaped Box - Emblem of Frost'),
(54537,49927,0,100,0,1,0,5,10,'Heart-Shaped Box - Love Token'),
(54537,50250,0,0.1,0,1,0,1,1,'Heart-Shaped Box - Big Love Rocket');

UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82 WHERE `entry` IN (36565, 36296, 36272);
UPDATE `creature_template` SET `lootid` = 36296 WHERE `entry` = 36296;

UPDATE `item_template` SET `RequiredLevel` = 80 WHERE `entry` = 50250; -- love rocket
