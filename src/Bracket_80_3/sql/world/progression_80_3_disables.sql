-- 80 level range - Tier 9 (Call of the Crusade) & Relentless Gladiator
-- Makes instances (and RDF) Onyxia's Lair and Trial of the Crusader available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (249, 649);

-- Make the quest Lord Jaraxxus Must Die! available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` = 24589;
