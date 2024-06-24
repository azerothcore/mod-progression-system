-- Change Ahune loot to TBC-Era
DELETE FROM `gameobject_loot_template` WHERE (`Entry` IN (28682, 28683));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Chance`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(28682, 34955, 2, 0, 1, 1, 'Scorched Stone'),
(28682, 35494, 0, 1, 1, 1, 'Shroud of Winter\'s Chill'),
(28682, 35495, 0, 1, 1, 1, 'The Frost Lord\'s War Cloak'),
(28682, 35496, 0, 1, 1, 1, 'Icebound Cloak'),
(28682, 35497, 0, 1, 1, 1, 'Cloak of the Frigid Winds'),
(28682, 35498, 10, 0, 1, 1, 'Formula: Enchant Weapon - Deathfrost'),
(28682, 35514, 5, 0, 1, 1, 'Frostscythe of Lord Ahune'),
(28682, 35557, 50, 2, 2, 2, 'Huge Snowball'),
(28682, 35720, 50, 2, 6, 6, 'Lord of Frost\'s Private Label'),
(28682, 35723, 100, 0, 1, 1, 'Shards of Ahune'),

(28683, 29434, 100, 0, 1, 1, 'Badge of Justice'),
(28683, 34955, 5, 0, 1, 1, 'Scorched Stone'),
(28683, 35498, 20, 0, 1, 1, 'Formula: Enchant Weapon - Deathfrost'),
(28683, 35507, 0, 1, 1, 1, 'Amulet of Bitter Hatred'),
(28683, 35508, 0, 1, 1, 1, 'Choker of the Arctic Flow'),
(28683, 35509, 0, 1, 1, 1, 'Amulet of Glacial Tranquility'),
(28683, 35511, 0, 1, 1, 1, 'Hailstone Pendant'),
(28683, 35514, 10, 0, 1, 1, 'Frostscythe of Lord Ahune'),
(28683, 35557, 50, 2, 2, 2, 'Huge Snowball'),
(28683, 35720, 50, 2, 6, 6, 'Lord of Frost\'s Private Label'),
(28683, 35723, 100, 0, 1, 1, 'Shards of Ahune');

-- Change quest level requirement down to 65
UPDATE `quest_template` SET `MinLevel` = 65 WHERE (`ID` = 11972);
UPDATE `item_template` SET `RequiredLevel` = 65 WHERE (`entry` = 35723);

UPDATE `creature_template` SET `MaxLevel` = 70, `MinLevel` = 70 WHERE `entry` IN (25755, 25756, 25757, 26340, 26341, 26342, 26339, 25865, 40446);
UPDATE `creature_template` SET `MaxLevel` = 72, `MinLevel` = 72 WHERE `entry` IN (25740, 26338, 26865, 26339);

-- Summon Loot Bunny SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 25746 AND `source_type` = 0 AND `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25746,0,1,0,8,0,100,2,45941,0,0,0,11,45939,0,0,0,0,0,1,0,0,0,0,0,0,0,'[PH] Ahune Loot Loc Bunny - On SpellHit - Cast \'Summon Loot\'');
UPDATE `smart_scripts` SET `event_flags` = 4 WHERE `entryorguid` = 25746 AND `source_type` = 0 AND `id` = 0;
