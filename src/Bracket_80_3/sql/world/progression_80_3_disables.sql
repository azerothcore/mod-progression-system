-- 80 level range - Tier 9 (Call of the Crusade) & Relentless Gladiator
-- Makes instances (and RDF) Onyxia's Lair, Trial of the Crusader and Trial of the Champion available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (249, 649, 650);

-- Make the quests  Lord Jaraxxus Must Die! and Proof of Demise: The Black Knight available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (24589, 14199);

-- Removes the flag UNAVAILABLE from Proof of Demise: The Black Knight
UPDATE `quest_template` SET `flags` = `flags` &~ 16384 WHERE `ID` = 14199;
-- Adds Archmage Lan'dalock as the quest starter
DELETE FROM `creature_queststarter` WHERE `quest` = 14199 AND `id` = 20735;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (20735, 14199);
-- Adds Archmage Lan'dalock as the quest ender
DELETE FROM `creature_questender` WHERE `quest` = 14199 AND `id` = 20735;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (20735, 14199);
