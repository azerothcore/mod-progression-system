-- Obsidian Sanctum 10-man drakes: Heroism -> Triumph
-- Shadron 10N: 30451, Vesperon 10N: 30449, Tenebron 10N: 30452
UPDATE `creature_loot_template`
SET `Item` = 47241, `Comment` = 'Emblem of Triumph'
WHERE `Entry` IN (30451, 30449, 30452)
AND `Item` = 40752;

-- Obsidian Sanctum 25-man: Valor -> Triumph
-- Sartharion 25N: 31311
-- Shadron 25N: 31520, Vesperon 25N: 31535, Tenebron 25N: 31534
UPDATE `creature_loot_template`
SET `Item` = 47241, `Comment` = 'Emblem of Triumph'
WHERE `Entry` IN (31311, 31520, 31535, 31534)
AND `Item` = 40753;

-- Sartharion 10M: Heroism -> Triumph
UPDATE `creature_loot_template`
SET `Item` = 47241, `Comment` = 'Emblem of Triumph'
WHERE `Entry` = 28860
AND `Item` = 40752;

-- Satchel of Spoils (10M): Heroism -> Triumph
UPDATE `item_loot_template`
SET `Item` = 47241, `Comment` = 'Satchel of Spoils - Emblem of Triumph'
WHERE `Entry` = 43347
AND `Item` = 40752;

-- Large Satchel of Spoils (25M): Valor -> Triumph
UPDATE `item_loot_template`
SET `Item` = 47241, `Comment` = 'Large Satchel of Spoils - Emblem of Triumph'
WHERE `Entry` = 43346
AND `Item` = 40753;
