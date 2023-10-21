-- 80 level range - Tier 8 & Furious Gladiator
-- restore Emalon at Vaulth of Archavon
UPDATE `creature` SET `phaseMask` = 1 WHERE `id1` = 33993;
-- restore no gold from kara philantropist
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE (`entry` = 16470);
-- Restore Badge of Justice to kara chess
DELETE FROM `gameobject_loot_template` WHERE `Item` = 29434 AND `Entry` = 20712;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(20712,29434,0,100,0,1,0,1,1,'Dust Covered Chest - Badge of Justice');
