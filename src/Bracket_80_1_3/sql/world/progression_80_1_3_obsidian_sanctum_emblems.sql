-- Obsidian Sanctum drakes: Heroism -> Valor
-- Shadron (10N: 30451, 25N: 31520)
-- Vesperon (10N: 30449, 25N: 31535)
-- Tenebron (10N: 30452, 25N: 31534)
UPDATE `creature_loot_template`
SET `Item` = 40753, `Comment` = 'Emblem of Valor'
WHERE `Entry` IN (30451, 31520, 30449, 31535, 30452, 31534)
AND `Item` = 40752;

-- Sartharion 10M: Heroism -> Valor
UPDATE `creature_loot_template`
SET `Item` = 40753, `Comment` = 'Emblem of Valor'
WHERE `Entry` = 28860
AND `Item` = 40752;
