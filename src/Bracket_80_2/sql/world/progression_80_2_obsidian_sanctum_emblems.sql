-- Obsidian Sanctum keeps its 3.0.8 emblems through 3.1: 10-man Heroism, 25-man
-- Valor. Nothing changes here on a healthy realm. This only clears the Emblem
-- of Triumph left behind on realms that ran the module's old 80_2 down file,
-- which reverted Obsidian Sanctum to its stock 3.3.5 loot four phases early.

SET @HEROISM = 40752,
@VALOR = 40753;

-- Sartharion 10M 28860, Tenebron 10M 30452, Shadron 10M 30451, Vesperon 10M 30449
UPDATE `creature_loot_template`
SET `Item` = @HEROISM, `Comment` = 'Emblem of Heroism'
WHERE `Entry` IN (28860, 30452, 30451, 30449)
AND `Item` = 47241;

-- Sartharion 25M 31311, Shadron 25M 31520, Tenebron 25M 31534, Vesperon 25M 31535
UPDATE `creature_loot_template`
SET `Item` = @VALOR, `Comment` = 'Emblem of Valor'
WHERE `Entry` IN (31311, 31520, 31534, 31535)
AND `Item` = 47241;

-- Sartharion (25M) bonus emblem per drake left up
UPDATE `reference_loot_template`
SET `Item` = @VALOR, `Comment` = 'Emblem of Valor'
WHERE `Entry` = 34349 AND `Item` = 47241;

UPDATE `item_loot_template`
SET `Item` = @HEROISM, `Comment` = 'Satchel of Spoils - Emblem of Heroism'
WHERE `Entry` = 43347 AND `Item` = 47241;

UPDATE `item_loot_template`
SET `Item` = @VALOR, `Comment` = 'Large Satchel of Spoils - Emblem of Valor'
WHERE `Entry` = 43346 AND `Item` = 47241;
