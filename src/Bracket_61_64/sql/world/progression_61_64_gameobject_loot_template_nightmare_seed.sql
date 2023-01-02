-- Add Nightmare Seed to Nightmare Vine loot table
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 18118) AND (`Item` IN (22797));
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(18118, 22797, 0, 10, 0, 1, 0, 1, 3, 'Nightmare Vine - Nightmare Seed');
