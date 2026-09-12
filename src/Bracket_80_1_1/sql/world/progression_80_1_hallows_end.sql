-- Loot-Filled Pumpkin (54516): hand out the phase-appropriate Emblem of Valor
-- (40753) instead of the ICC-era Emblem of Frost (49426), matching the Brewfest
-- chest and the Ahune satchel.
UPDATE `item_loot_template`
SET `Item` = 40753, `Comment` = 'Loot-Filled Pumpkin - Emblem of Valor'
WHERE `Entry` = 54516 AND `Item` = 49426;
