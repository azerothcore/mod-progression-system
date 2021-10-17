-- restore Satchel of Helpful Goods loot (50, 57)
DELETE FROM `item_loot_template` WHERE `Entry` IN (52002, 52003);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(52002, 1, 10046, 100, 0, 1, 1, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 2, 10047, 100, 0, 1, 2, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 3, 10048, 100, 0, 1, 3, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 4, 10049, 100, 0, 1, 4, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 1, 10050, 100, 0, 1, 1, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 2, 10051, 100, 0, 1, 2, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 3, 10052, 100, 0, 1, 3, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52003, 4, 10053, 100, 0, 1, 4, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)');
