DELETE FROM `disables` WHERE `sourceType` = 10 AND `entry` IN (36919, 36922, 36925, 36928, 36931, 36934);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(10, 36919, 0, 0, 0, 'Cardinal Ruby'),
(10, 36922, 0, 0, 0, 'King\'s Amber'),
(10, 36925, 0, 0, 0, 'Majestic Zircon'),
(10, 36928, 0, 0, 0, 'Dreadstone'),
(10, 36931, 0, 0, 0, 'Ametrine'),
(10, 36934, 0, 0, 0, 'Eye of Zul');

DELETE FROM `npc_vendor` WHERE `item` IN (36919, 36922, 36925, 36928, 36931, 36934);

DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (66659, 66664, 66662, 66660, 66663, 66658);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(1, 66659, 1, 0, 0, 'Transmute: Cardinal Ruby'),
(1, 66664, 1, 0, 0, 'Transmute: Eye of Zul'),
(1, 66662, 1, 0, 0, 'Transmute: Dreadstone'),
(1, 66660, 1, 0, 0, 'Transmute: King\'s Amber'),
(1, 66663, 1, 0, 0, 'Transmute: Majestic Zircon'),
(1, 66658, 1, 0, 0, 'Transmute: Ametrine');

-- UPDATE `item_instance` SET `itemEntry` = 36918 WHERE `itemEntry` = 36919; -- Cardinal Ruby → Scarlet Ruby
-- UPDATE `item_instance` SET `itemEntry` = 36921 WHERE `itemEntry` = 36922; -- King's Amber → Autumn's Glow
-- UPDATE `item_instance` SET `itemEntry` = 36924 WHERE `itemEntry` = 36925; -- Majestic Zircon → Sky Sapphire
-- UPDATE `item_instance` SET `itemEntry` = 36927 WHERE `itemEntry` = 36928; -- Dreadstone → Twilight Opal
-- UPDATE `item_instance` SET `itemEntry` = 36930 WHERE `itemEntry` = 36931; -- Ametrine → Monarch Topaz
-- UPDATE `item_instance` SET `itemEntry` = 36933 WHERE `itemEntry` = 36934; -- Eye of Zul → Forest Emerald
