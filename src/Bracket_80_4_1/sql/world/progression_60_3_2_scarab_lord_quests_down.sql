-- Revert drop rate for Nightmare_corruption
UPDATE `creature_loot_template` SET `Chance` = 100 WHERE `Item` = 21146;
UPDATE `creature_loot_template` SET `Chance` = 100 WHERE `Item` = 21147;
UPDATE `creature_loot_template` SET `Chance` = 100 WHERE `Item` = 21148;

-- Revert Narain's Scrying Goggles
DELETE FROM `creature_loot_template` WHERE `Item` = 20951;
INSERT INTO `creature_loot_template` (`Chance`, `Comment`, `Entry`, `GroupId`, `Item`, `LootMode`, `MaxCount`, `MinCount`, `QuestRequired`, `Reference`) VALUES 
(1, NULL, 11502, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Molten Giant - Narain\'s Scrying Goggles', 11658, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Molten Destroyer - Narain\'s Scrying Goggles', 11659, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Flamewaker - Narain\'s Scrying Goggles', 11661, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Flamewaker Priest - Narain\'s Scrying Goggles', 11662, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Flamewaker Healer - Narain\'s Scrying Goggles', 11663, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Flamewaker Elite - Narain\'s Scrying Goggles', 11664, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Lava Annihilator - Narain\'s Scrying Goggles', 11665, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Firewalker - Narain\'s Scrying Goggles', 11666, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Flameguard - Narain\'s Scrying Goggles', 11667, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Firelord - Narain\'s Scrying Goggles', 11668, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Ancient Core Hound - Narain\'s Scrying Goggles', 11673, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 11982, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 11988, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 12056, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 12057, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Lava Elemental - Narain\'s Scrying Goggles', 12076, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 12098, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Lava Reaver - Narain\'s Scrying Goggles', 12100, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Lava Surger - Narain\'s Scrying Goggles', 12101, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 12118, 0, 20951, 1, 1, 1, 1, 0),
(100, 'Flamewaker Protector - Narain\'s Scrying Goggles', 12119, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 12259, 0, 20951, 1, 1, 1, 1, 0),
(1, NULL, 12264, 0, 20951, 1, 1, 1, 1, 0);
