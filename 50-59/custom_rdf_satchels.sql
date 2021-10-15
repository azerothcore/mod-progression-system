DELETE FROM `reference_loot_template` WHERE `Entry` IN (999555, 999556);
DELETE FROM `item_loot_template` WHERE `Entry` IN (52002, 52003);

INSERT INTO `reference_loot_template` VALUES
-- Ores
(999555, 10620, 0, 0, 0, 1, 1, 1, 1, 'Thorium Ore'),
(999555, 7911, 0, 0, 0, 1, 1, 1, 1, 'Truesilver ore'),
-- cloth
(999555, 14047, 0, 0, 0, 1, 1, 1, 1, 'Runecloth'),
-- herbs
(999555, 13464, 0, 0, 0, 1, 1, 1, 1, 'Golden Sansam'),
(999555, 13463, 0, 0, 0, 1, 1, 1, 1, 'Dreamfoil'),
(999555, 8838, 0, 0, 0, 1, 1, 1, 1, 'Sungrass'),
(999555, 8846, 0, 0, 0, 1, 1, 1, 1, 'Gromsblood'),
-- essences
(999555, 7080, 0, 0, 0, 1, 1, 1, 1, 'Essence of Water'),
(999555, 7078, 0, 0, 0, 1, 1, 1, 1, 'Essence of Fire'),
(999555, 7082, 0, 0, 0, 1, 1, 1, 1, 'Essence of Air'),
(999555, 7076, 0, 0, 0, 1, 1, 1, 1, 'Essence of Earth'),
(999555, 12808, 0, 0, 0, 1, 1, 1, 1, 'Essence of Undeath'),
(999555, 12803, 0, 0, 0, 1, 1, 1, 1, 'Living Essence'),
-- gems
(999555, 7910, 0, 0, 0, 1, 1, 1, 1, 'Star Ruby'),
(999555, 12799, 0, 0, 0, 1, 1, 1, 1, 'Large Opal'),
(999555, 12364, 0, 0, 0, 1, 1, 1, 1, 'Huge Emerald'),
(999555, 12361, 0, 0, 0, 1, 1, 1, 1, 'Blue Sapphire'),
(999555, 12800, 0, 0, 0, 1, 1, 1, 1, 'Azerothian Diamond'),
-- leather
(999555, 8170, 0, 0, 0, 1, 1, 1, 1, 'Rugged Leather'),
(999555, 15407, 0, 0, 0, 1, 1, 1, 1, 'Cured Rugged Hide');

INSERT INTO `reference_loot_template` VALUES
-- Ores
(999556, 10620, 0, 0, 0, 1, 1, 1, 1, 'Thorium Ore'),
(999556, 7911, 0, 0, 0, 1, 1, 1, 1, 'Truesilver ore'),
-- cloth
(999556, 14047, 0, 0, 0, 1, 1, 1, 1, 'Runecloth'),
-- herbs
(999556, 13464, 0, 0, 0, 1, 1, 1, 1, 'Golden Sansam'),
(999556, 13463, 0, 0, 0, 1, 1, 1, 1, 'Dreamfoil'),
(999556, 8838, 0, 0, 0, 1, 1, 1, 1, 'Sungrass'),
(999556, 8846, 0, 0, 0, 1, 1, 1, 1, 'Gromsblood'),
-- essences
(999556, 7080, 0, 0, 0, 1, 1, 1, 1, 'Essence of Water'),
(999556, 7078, 0, 0, 0, 1, 1, 1, 1, 'Essence of Fire'),
(999556, 7082, 0, 0, 0, 1, 1, 1, 1, 'Essence of Air'),
(999556, 7076, 0, 0, 0, 1, 1, 1, 1, 'Essence of Earth'),
(999556, 12808, 0, 0, 0, 1, 1, 1, 1, 'Essence of Undeath'),
(999556, 12803, 0, 0, 0, 1, 1, 1, 1, 'Living Essence'),
-- gems
(999556, 7910, 0, 0, 0, 1, 1, 1, 1, 'Star Ruby'),
(999556, 12799, 0, 0, 0, 1, 1, 1, 1, 'Large Opal'),
(999556, 12364, 0, 0, 0, 1, 1, 1, 1, 'Huge Emerald'),
(999556, 12361, 0, 0, 0, 1, 1, 1, 1, 'Blue Sapphire'),
(999556, 12800, 0, 0, 0, 1, 1, 1, 1, 'Azerothian Diamond'),
-- leather
(999556, 8170, 0, 0, 0, 1, 1, 1, 1, 'Rugged Leather'),
(999556, 15407, 0, 0, 0, 1, 1, 1, 1, 'Cured Rugged Hide');

INSERT INTO `item_loot_template` VALUES
(52002, 1, 999555, 100, 0, 1, 1, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 2, 999556, 100, 0, 1, 2, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 3, 999556, 100, 0, 1, 3, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 4, 999556, 100, 0, 1, 4, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),

(52003, 1, 999555, 100, 0, 1, 1, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 2, 999556, 100, 0, 1, 2, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 3, 999555, 100, 0, 1, 3, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 4, 999555, 100, 0, 1, 4, 3, 3, 'Satchel of Helpful Goods - (ReferenceTable)'),
