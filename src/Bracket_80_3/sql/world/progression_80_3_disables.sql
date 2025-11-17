-- 80 level range - Tier 9 (Call of the Crusade) & Relentless Gladiator
-- Makes instances (and RDF) Onyxia's Lair, Trial of the Crusader and Trial of the Champion available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (249, 649, 650);

-- Make the quests  Lord Jaraxxus Must Die! and available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` = 24589;
