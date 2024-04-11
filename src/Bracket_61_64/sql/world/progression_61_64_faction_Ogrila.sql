-- Disable Ogri'la quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11009,11010,11022,11023,11025,11026,11027,11030,11051,11058,11059,11060,11061,11065,11066,11079,11080,11091,11102);
INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES
(1, 11009, 'Ogre Heaven'),
(1, 11010, 'Bombing Run'),
(1, 11022, 'Speak with Mog\'dorg'),
(1, 11023, 'Bomb Them Again!'),
(1, 11025, 'The Crystals'),
(1, 11026, 'Banish the Demons'),
(1, 11027, 'Yous Have Da Darkrune?'),
(1, 11030, 'Our Boy Wants To Be A Skyguard Ranger'),
(1, 11051, 'Banish More Demons'),
(1, 11058, 'An Apexis Relic'),
(1, 11059, 'Guardian of the Monument'),
(1, 11060, 'A Crystalforged Darkrune'),
(1, 11061, 'A Father\'s Duty'),
(1, 11065, 'Wrangle Some Aether Rays!'),
(1, 11066, 'Wrangle More Aether Rays!'),
(1, 11079, 'A Fel Whip For Gahk'),
(1, 11080, 'The Relic\'s Emanation'),
(1, 11091, 'A Special Thank You'),
(1, 11102, 'Bombing Run');
