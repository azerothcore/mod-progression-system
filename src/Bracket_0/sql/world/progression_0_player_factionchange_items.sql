-- Champion's Sanctuary sets
DELETE FROM `player_factionchange_items` WHERE `alliance_id` IN (16393, 16397, 16423, 16422, 16424, 16421) OR `horde_id` IN (16494, 16496, 16501, 16503, 16504);
INSERT INTO `player_factionchange_items` (`alliance_id`, `alliance_comment`, `horde_id`, `horde_comment`) VALUES
(16494, 'Blood Guard\'s Dragonhide Boots', 16393, 'Knight-Lieutenant\'s Dragonhide Footwraps'),
(16496, 'Blood Guard\'s Dragonhide Gauntlets', 16397, 'Knight-Lieutenant\'s Dragonhide Gloves'),
(16501, 'Champion\'s Dragonhide Spaulders', 16423, 'Lieutenant Commander\'s Dragonhide Epaulets'),
(16502, 'Legionnaire\'s Dragonhide Trousers', 16422, 'Knight-Captain\'s Dragonhide Leggings'),
(16503, 'Champion\'s Dragonhide Helm', 16424, 'Lieutenant Commander\'s Dragonhide Shroud'),
(16504, 'Legionnaire\'s Dragonhide Breastplate', 16421, 'Knight-Captain\'s Dragonhide Tunic');
