-- Make the quests Inside the Frozen Citadel available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (24506, 24510);

-- Makes the weekely gossip and quest/gossip flags for Archmage Lan'dalock
UPDATE `creature_template` SET `gossip_menu_id` = 10061, `npcflag` = `npcflag` | 3 WHERE `entry` = 20735;
