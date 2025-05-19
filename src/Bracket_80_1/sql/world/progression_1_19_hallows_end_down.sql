SET @QUESTID = 50000;
DELETE FROM `quest_template` WHERE `ID` = @QUESTID;

DELETE FROM `item_loot_template` WHERE `entry` = 54516 AND `item` IN (49426, 49128, 49126);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54516,49126,0,2,0,1,0,1,1,'Loot-Filled Pumpkin - The Horseman\'s Horrific Helm'),
(54516,49128,0,2,0,1,0,1,1,'Loot-Filled Pumpkin - The Horseman\'s Baleful Blade'),
(54516,49426,0,100,0,1,0,2,2,'Loot-Filled Pumpkin - Emblem of Frost');

UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` IN (23682, 23775,23694, 23545);
UPDATE `creature_template` SET `lootid` = 23682 WHERE `entry` = 23682;
DELETE FROM `creature_loot_template` WHERE `Entry` = 236820;
