-- 80 level range - Tier 10 (Fall of the Lich King) & Wrathful Gladiator
-- Makes instances (and RDF) Icecrown Citadel, The Forge of Souls, Pit of Saron and Halls of Reflection available again.
DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (631,632,658,668);

-- Make the quests Inside the Frozen Citadel available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (24506, 24510);

-- Makes the weekely gossip and quest/gossip flags for Archmage Lan'dalock
UPDATE `creature_template` SET `gossip_menu_id` = 10061, `npcflag` = `npcflag` | 3 WHERE `entry` = 20735;
