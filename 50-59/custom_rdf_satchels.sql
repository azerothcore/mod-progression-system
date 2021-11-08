DELETE FROM `reference_loot_template` WHERE `Entry` IN (999555, 999556);
DELETE FROM `item_loot_template` WHERE `Entry` IN (52003);
UPDATE `item_template` SET `minMoneyLoot` = 8000, `maxMoneyLoot` = 25000 WHERE `Entry` IN  52003);


