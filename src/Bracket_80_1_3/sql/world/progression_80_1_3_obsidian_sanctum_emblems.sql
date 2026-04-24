-- Obsidian Sanctum 25-man drakes: Heroism -> Valor
-- Shadron 25M: 31520, Vesperon 25M: 31535, Tenebron 25M: 31534, Sartharion 25M: 31311
-- (10-man drakes remain at Heroism from Bracket_80_1_2 blanket conversion)
UPDATE `creature_loot_template`
SET `Item` = 40753, `Comment` = 'Emblem of Valor'
WHERE `Entry` IN (31520, 31535, 31534, 31311)
AND `Item` = 40752;

-- Sartharion (25M): Heroism -> Valor
UPDATE `reference_loot_template`
SET `Entry`=40753, `Comment`='Emblem of Valor'
WHERE `Entry`=34349 AND `Item`=40752;

-- Satchel of Spoils (10M): Triumph -> Heroism
UPDATE `item_loot_template`
SET `Item` = 40752, `Comment` = 'Satchel of Spoils - Emblem of Heroism'
WHERE `Entry` = 43347
AND `Item` = 47241;

-- Large Satchel of Spoils (25M): Triumph -> Valor
UPDATE `item_loot_template`
SET `Item` = 40753, `Comment` = 'Large Satchel of Spoils - Emblem of Valor'
WHERE `Entry` = 43346
AND `Item` = 47241;
