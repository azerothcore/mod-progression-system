-- Patch 3.2 removed Emblem of Heroism and Emblem of Valor as drops. Everything
-- that dropped them now drops Emblem of Conquest, in both raid sizes.

SET @CONQUEST = 45624;

-- Sartharion 10M 28860, Tenebron 10M 30452, Shadron 10M 30451, Vesperon 10M 30449,
-- Sartharion 25M 31311, Shadron 25M 31520, Tenebron 25M 31534, Vesperon 25M 31535
UPDATE `creature_loot_template`
SET `Item` = @CONQUEST, `Comment` = 'Emblem of Conquest'
WHERE `Entry` IN (28860, 30452, 30451, 30449, 31311, 31520, 31534, 31535)
AND `Item` IN (40752, 40753, 47241);

-- Sartharion (25M) bonus emblem per drake left up
UPDATE `reference_loot_template`
SET `Item` = @CONQUEST, `Comment` = 'Emblem of Conquest'
WHERE `Entry` = 34349 AND `Item` IN (40752, 40753, 47241);

UPDATE `item_loot_template`
SET `Item` = @CONQUEST, `Comment` = 'Satchel of Spoils - Emblem of Conquest'
WHERE `Entry` = 43347 AND `Item` IN (40752, 40753, 47241);

UPDATE `item_loot_template`
SET `Item` = @CONQUEST, `Comment` = 'Large Satchel of Spoils - Emblem of Conquest'
WHERE `Entry` = 43346 AND `Item` IN (40752, 40753, 47241);
