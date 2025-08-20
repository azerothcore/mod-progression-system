-- Disable WOTLK Transports to Northrend
DELETE FROM `transports` WHERE `guid` IN (10, 11, 12, 17) AND `entry` IN (181688, 181689, 186238, 190536);
