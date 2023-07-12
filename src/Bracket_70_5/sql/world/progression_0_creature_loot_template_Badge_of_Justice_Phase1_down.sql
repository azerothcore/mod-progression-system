-- Restore Badge of Justice from Phase 1 Raids
DELETE FROM `creature_loot_template` WHERE `Entry` IN  (17225, 15690, 15688, 15689, 16524, 15691, 17533, 18168, 17521, 16457, 15687, 16152, 19044, 18831, 17257) AND (`Item` IN (29434));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17257, 29434, 0, 100, 0, 1, 0, 3, 3, 'Magtheridon - Badge of Justice'),
(18831, 29434, 0, 100, 0, 1, 0, 2, 2, 'High King Maulgar - Badge of Justice'),
(19044, 29434, 0, 100, 0, 1, 0, 3, 3, 'Gruul - Badge of Justice'),
(16152, 29434, 0, 100, 0, 1, 0, 1, 1, 'Attumen the Huntsman - Badge of Justice'),
(15687, 29434, 0, 100, 0, 1, 0, 2, 2, 'Moroes - Badge of Justice'),
(16457, 29434, 0, 100, 0, 1, 0, 2, 2, 'Maiden of Virtue - Badge of Justice'),
(17521, 29434, 0, 100, 0, 1, 0, 2, 2, 'The Big Bad Wolf - Badge of Justice'),
(18168, 29434, 0, 100, 0, 1, 0, 2, 2, 'The Crone - Badge of Justice'),
(15691, 29434, 0, 100, 0, 1, 0, 2, 2, 'The Curator - Badge of Justice'),
(16524, 29434, 0, 100, 0, 1, 0, 2, 2, 'Shade of Aran - Badge of Justice'),
(15689, 29434, 0, 100, 0, 1, 0, 2, 2, 'Netherspite - Badge of Justice'),
(15688, 29434, 0, 100, 0, 1, 0, 2, 2, 'Terestian Illhoof - Badge of Justice'),
(15690, 29434, 0, 100, 0, 1, 0, 3, 3, 'Prince Malchezaar - Badge of Justice'),
(17225, 29434, 0, 100, 0, 1, 0, 2, 2, 'Nightbane - Badge of Justice'),
(17533, 29434, 0, 100, 0, 1, 0, 1, 1, 'Romulo - Badge of Justice');
