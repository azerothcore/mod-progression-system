-- 80 level range - Tier 10 (Fall of the Lich King) & Wrathful Gladiator
-- Makes instances (and RDF) Icecrown Citadel, The Forge of Souls, Pit of Saron and Halls of Reflection available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (631,632,658,668);

-- Make the quests Inside the Frozen Citadel available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (24506, 24510);

-- Adds the flag UNAVAILABLE from Proof of Demise: The Black Knight
UPDATE `quest_template` SET `flags` = `flags` | 16384 WHERE `ID` = 14199;
-- Removes Archmage Lan'dalock as the quest starter
DELETE FROM `creature_queststarter` WHERE `quest` = 14199 AND `id` = 20735;
-- Removes Archmage Lan'dalock as the quest ender
DELETE FROM `creature_questender` WHERE `quest` = 14199 AND `id` = 20735;