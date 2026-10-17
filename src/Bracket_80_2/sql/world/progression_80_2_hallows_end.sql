-- The Headless Horseman's Loot-Filled Pumpkin still pays the two Emblems of
-- Valor set by Bracket_80_1_1. From 3.1 the badge tier is Conquest, so hand out
-- one of those instead, matching Coren Direbrew's keg.
-- DELETE + INSERT rather than an UPDATE: on a ReapplyUpdates run the 80_1_1
-- files re-create the Valor row before this file runs again, and an UPDATE
-- would then hit the (Entry, Item) duplicate key.

SET @CONQUEST = 45624;

DELETE FROM `item_loot_template` WHERE `Entry` = 54516 AND `Item` IN (40753, 45624, 49426);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54516, @CONQUEST, 0, 100, 0, 1, 0, 1, 1, 'Loot-Filled Pumpkin - Emblem of Conquest');
