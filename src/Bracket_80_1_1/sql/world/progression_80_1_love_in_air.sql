-- Heart-Shaped Box (54537): hand out the phase-appropriate Emblem of Valor
-- (40753) instead of the ICC-era Emblem of Frost (49426), matching the Brewfest
-- chest and the Ahune satchel.
UPDATE `item_loot_template`
SET `Item` = 40753, `Comment` = 'Heart-Shaped Box - Emblem of Valor'
WHERE `Entry` = 54537 AND `Item` = 49426;
