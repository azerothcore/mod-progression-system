-- Restore the ilvl-232 Frostscythe of Lord Ahune (54806) to the RDF satchel at
-- the Trial of the Crusader phase, where its item level fits. It is withheld in
-- earlier WotLK phases by Bracket_80_1_1.
DELETE FROM `item_loot_template` WHERE (`Entry` = 54536);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54536, 23247, 0, 97, 0, 1, 1, 5, 15, 'Satchel of Chilled Goods - Burning Blossom'),
(54536, 40753, 0, 100, 0, 1, 0, 2, 2, 'Satchel of Chilled Goods - Emblem of Valor'),
(54536, 53641, 0, 3, 0, 1, 1, 1, 1, 'Satchel of Chilled Goods - Ice Chip'),
(54536, 54806, 0, 1.4, 0, 1, 0, 1, 1, 'Satchel of Chilled Goods - Frostscythe of Lord Ahune');
