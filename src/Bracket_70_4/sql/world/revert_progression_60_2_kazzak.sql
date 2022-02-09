UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `ScriptName` = '' WHERE `entry` = 12397;

DELETE FROM `spell_script_names` WHERE `spell_id` = 21056;

DELETE FROM `creature_text` WHERE `CreatureID` = 12397;

DELETE FROM `creature` WHERE `guid` = 156950 AND `id1` = 12397;

DELETE FROM `reference_loot_template` WHERE `Entry` = 60000;

DELETE FROM `creature_loot_template` WHERE `Entry` = 12397 AND `Reference` = 60000;

DELETE FROM `creature_loot_template` WHERE `Entry` = 12397 AND `Item` IN (19133, 19134, 19135, 18546, 18544, 18543, 18204, 17113, 17112, 17111);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12397, 17111, 0, 2.4096, 0, 1, 0, 1, 1, 'Lord Kazzak - Blazefury Medallion'),
(12397, 17112, 0, 21.28, 0, 1, 0, 1, 1, 'Lord Kazzak - Empyrean Demolisher'),
(12397, 17113, 0, 19.8, 0, 1, 0, 1, 1, 'Lord Kazzak - Amberseal Keeper'),
(12397, 18204, 0, 17.72, 0, 1, 0, 1, 1, 'Lord Kazzak - Eskhandar\'s Pelt'),
(12397, 18543, 0, 7.2289, 0, 1, 0, 1, 1, 'Lord Kazzak - Ring of Entropy'),
(12397, 18544, 0, 6.0241, 0, 1, 0, 1, 1, 'Lord Kazzak - Doomhide Gauntlets'),
(12397, 18546, 0, 22.8916, 0, 1, 0, 1, 1, 'Lord Kazzak - Infernal Headcage'),
(12397, 19133, 0, 12.0482, 0, 1, 0, 1, 1, 'Lord Kazzak - Fel Infused Leggings'),
(12397, 19134, 0, 3.6145, 0, 1, 0, 1, 1, 'Lord Kazzak - Flayed Doomguard Belt'),
(12397, 19135, 0, 3.6145, 0, 1, 0, 1, 1,' Lord Kazzak - Blacklight Bracer');

