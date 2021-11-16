-- disable Satchel of Helpful Goods loot (50, 57)
DELETE FROM `item_loot_template` WHERE `Entry` IN (52002, 52003);
