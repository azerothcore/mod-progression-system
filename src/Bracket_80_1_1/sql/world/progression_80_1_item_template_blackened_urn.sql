-- revert kara blackened urn
UPDATE `item_template` SET `Quality` = 0, `SellPrice` = 20000, `description` = 'Though the urn now appears to be empty, it might still be worth something to a vendor.
' WHERE (`entry` = 24140);
UPDATE `quest_template` SET `StartItem` = 0 WHERE `ID` = 9644;
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 0 WHERE (`ID` = 9644);
