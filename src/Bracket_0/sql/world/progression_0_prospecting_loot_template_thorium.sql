-- Remove TBC gems from Thorium prospecting
DELETE FROM `prospecting_loot_template` WHERE (`Entry` = 10620) AND (`Item` IN (1));
