-- Obsidian Sanctum drakes: Valor -> Triumph
-- Shadron (10N: 30451, 25N: 31520)
-- Vesperon (10N: 30449, 25N: 31535)
-- Tenebron (10N: 30452, 25N: 31534)
UPDATE `creature_loot_template`
SET `Item` = 47241, `Comment` = 'Emblem of Triumph'
WHERE `Entry` IN (30451, 31520, 30449, 31535, 30452, 31534)
AND `Item` = 40753;

-- Sartharion 10M: Valor -> Triumph
UPDATE `creature_loot_template`
SET `Item` = 47241, `Comment` = 'Emblem of Triumph'
WHERE `Entry` = 28860
AND `Item` = 40753;

-- Satchel of Spoils (10M): Valor -> Triumph
UPDATE `item_loot_template`
SET `Item` = 47241, `Comment` = 'Satchel of Spoils - Emblem of Triumph'
WHERE `Entry` = 43347
AND `Item` = 40753;

-- Large Satchel of Spoils (25M): Valor -> Triumph
UPDATE `item_loot_template`
SET `Item` = 47241, `Comment` = 'Large Satchel of Spoils - Emblem of Triumph'
WHERE `Entry` = 43346
AND `Item` = 40753;
