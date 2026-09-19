-- Coren Direbrew's Keg-Shaped Treasure Chest still pays the Emblem of Valor set
-- by Bracket_80_1_1. From 3.1 the badge tier is Conquest, so hand out one of
-- those instead.
-- DELETE + INSERT rather than an UPDATE: on a ReapplyUpdates run
-- progression_80_1_brewfest.sql re-inserts its Valor row before this file runs
-- again, and an UPDATE would then hit the (Entry, Item) duplicate key.

SET @CONQUEST = 45624;

DELETE FROM `item_loot_template` WHERE `Entry` = 54535 AND `Item` IN (40753, 45624, 49426);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54535, @CONQUEST, 0, 100, 0, 1, 1, 1, 1, 'Keg-Shaped Treasure Chest - Emblem of Conquest');
