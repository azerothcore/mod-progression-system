-- Enable WOTLK Transports to Northrend
DELETE FROM `transports` WHERE `guid` IN (10, 11, 12, 17) AND `entry` IN (181688, 181689, 186238, 190536);
INSERT INTO `transports` (`guid`, `entry`, `name`, `ScriptName`) VALUES
(10, 181688, 'Menethil Harbor, Wetlands and Valgarde, Howling Fjord ("Northspear")', ''),
(11, 181689, 'Undercity, Tirisfal Glades and Vengeance Landing, Howling Fjord ("Zeppelin, Horde (Cloudkisser)")', ''),
(12, 186238, 'Orgrimmar, Durotar and Warsong Hold, Borean Tundra ("Zeppelin, Horde (The Mighty Wind)")', ''),
(17, 190536, 'Stormwing Harbor and Valiance Keep, Borean Tundra ("The Kraken")', '');
