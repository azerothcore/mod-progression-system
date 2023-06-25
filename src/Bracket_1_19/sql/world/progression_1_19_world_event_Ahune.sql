-- Change Ahune loot to TBC-Era
DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (28682, 28683));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Chance`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(28682, 35723, 100, 0, 1, 1, 'Shards of Ahune'),
(28682, 35720, 50, 2, 6, 6, 'Lord of Frost\'s Private Label'),
(28682, 35557, 50, 2, 2, 2, 'Huge Snowball'),
(28682, 35514, 5, 0, 1, 1, 'Frostscythe of Lord Ahune'),
(28682, 35498, 10, 0, 1, 1, 'Formula: Enchant Weapon - Deathfrost'),
(28682, 35497, 0, 1, 1, 1, 'Cloak of the Frigid Winds'),
(28682, 35496, 0, 1, 1, 1, 'Icebound Cloak'),
(28682, 35495, 0, 1, 1, 1, 'The Frost Lord\'s War Cloak'),
(28682, 35494, 0, 1, 1, 1, 'Shroud of Winter\'s Chill'),
(28682, 34955, 2, 0, 1, 1, 'Scorched Stone'),
(28683, 35723, 100, 0, 1, 1, 'Shards of Ahune'),
(28683, 35720, 50, 2, 6, 6, 'Lord of Frost\'s Private Label'),
(28683, 35557, 50, 2, 2, 2, 'Huge Snowball'),
(28683, 35514, 5, 0, 1, 1, 'Frostscythe of Lord Ahune'),
(28683, 35498, 10, 0, 1, 1, 'Formula: Enchant Weapon - Deathfrost'),
(28683, 35497, 0, 1, 1, 1, 'Cloak of the Frigid Winds'),
(28683, 35496, 0, 1, 1, 1, 'Icebound Cloak'),
(28683, 35495, 0, 1, 1, 1, 'The Frost Lord\'s War Cloak'),
(28683, 35494, 0, 1, 1, 1, 'Shroud of Winter\'s Chill'),
(28683, 34955, 2, 0, 1, 1, 'Scorched Stone');

-- Change quest level requirement down to 65
UPDATE `quest_template` SET `MinLevel` = 65 WHERE (`ID` = 11972);
UPDATE `item_template` SET `RequiredLevel` = 65 WHERE (`entry` = 35723);

UPDATE `creature_template` SET `MaxLevel` = 70, `MinLevel` = 70 WHERE `entry` IN (25755, 25756, 25757, 26340, 26341, 26342, 26339, 25865);
UPDATE `creature_template` SET `MaxLevel` = 72, `MinLevel` = 72 WHERE `entry` IN (25740, 26338, 26865, 26339);
