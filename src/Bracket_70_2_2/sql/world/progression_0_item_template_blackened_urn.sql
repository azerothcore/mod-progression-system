-- make blackened urn unsellable and give as reward
UPDATE `item_template` SET `Quality` = 1, `SellPrice` = 0, `description` = 'Used to summon Nightbane in Karazhan' WHERE (`entry` = 24140);
UPDATE `quest_template` SET `StartItem` = 24140 WHERE `ID` = 9644;
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 1 WHERE (`ID` = 9644);
