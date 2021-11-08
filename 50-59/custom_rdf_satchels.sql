DELETE FROM `item_loot_template` WHERE `Entry` IN (52002, 52003);
UPDATE `item_template` SET `minMoneyLoot` = 8000, `maxMoneyLoot` = 25000 WHERE `Entry` IN  52003);

--Restores previous satchel that was changed to gold reward, back to normal rewards
INSERT INTO item_loot_template (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
(52002, 1, 10046, 100, 0, 1, 1, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 2, 10047, 100, 0, 1, 2, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 3, 10048, 100, 0, 1, 3, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)'),
(52002, 4, 10049, 100, 0, 1, 4, 1, 1, 'Satchel of Helpful Goods - (ReferenceTable)');

UPDATE item_template SET minMoneyLoot = 0, maxMoneyLoot = 0 WHERE Entry IN (52002);

