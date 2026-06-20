-- Ahune RDF satchel (54536) in the first WotLK phase: hand out the
-- phase-appropriate Emblem of Valor (40753) instead of the ICC-era Emblem of
-- Frost (49426), and withhold the ilvl-232 Frostscythe (54806) until the Trial
-- of the Crusader phase (Bracket_80_3), where its item level fits.
DELETE FROM `item_loot_template` WHERE (`Entry` = 54536);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54536, 23247, 0, 97, 0, 1, 1, 5, 15, 'Satchel of Chilled Goods - Burning Blossom'),
(54536, 40753, 0, 100, 0, 1, 0, 2, 2, 'Satchel of Chilled Goods - Emblem of Valor'),
(54536, 53641, 0, 3, 0, 1, 1, 1, 1, 'Satchel of Chilled Goods - Ice Chip');
