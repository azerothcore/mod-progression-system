DELETE FROM `creature_loot_template` WHERE (`Entry` = 18831);
INSERT INTO `creature_loot_template` 
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(18831, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'High King Maulgar - Recipe: Insane Strength Potion'),
(18831, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'High King Maulgar - Schematic: Mana Potion Injector'),
(18831, 28795, 0, 0, 0, 1, 1, 1, 1, 'High King Maulgar - Bladespire Warbands'),
(18831, 28796, 0, 0, 0, 1, 1, 1, 1, 'High King Maulgar - Malefic Mask of the Shadows'),
(18831, 28797, 0, 0, 0, 1, 1, 1, 1, 'High King Maulgar - Brute Cloak of the Ogre-Magi'),
(18831, 28799, 0, 0, 0, 1, 1, 1, 1, 'High King Maulgar - Belt of Divine Inspiration'),
(18831, 28800, 0, 0, 0, 1, 1, 1, 1, 'High King Maulgar - Hammer of the Naaru'),
(18831, 28801, 0, 0, 0, 1, 1, 1, 1, 'High King Maulgar - Maulgar\'s Warhelm'),
(18831, 29434, 0, 100, 0, 1, 0, 2, 2, 'High King Maulgar - Badge of Justice'),
(18831, 34050, 34050, 100, 0, 1, 1, 3, 3, 'High King Maulgar - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE `Entry` = 19044;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(19044, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'Gruul the Dragonkiller - Recipe: Insane Strength Potion'),
(19044, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'Gruul the Dragonkiller - Schematic: Mana Potion Injector'),
(19044, 29434, 0, 100, 0, 1, 0, 3, 3, 'Gruul the Dragonkiller - Badge of Justice'),
(19044, 31750, 0, 100, 1, 1, 0, 1, 1, 'Gruul the Dragonkiller - Earthen Signet'),
(19044, 34051, 34051, 100, 0, 1, 0, 2, 2, 'Gruul the Dragonkiller - (ReferenceTable)'),
(19044, 190039, 34051, 100, 0, 1, 1, 1, 1, 'Gruul the Dragonkiller - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE `Entry` = 17257;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17257,22903,0,0.2,0,1,0,1,1,'Magtheridon - Recipe: Insane Strength Potion'),
(17257,23884,0,0.2,0,1,0,1,1,'Magtheridon - Schematic: Mana Potion Injector'),
(17257,29434,0,100,0,1,0,3,3,'Magtheridon - Badge of Justice'),
(17257,32385,0,100,0,1,0,1,1,'Magtheridon - Magtheridon\s Head'),
(17257,32386,0,100,0,1,0,1,1,'Magtheridon - Magtheridon\s Head'),
(17257,34039,34039,100,0,1,1,1,1,'Magtheridon - (ReferenceTable)'),
(17257,34845,0,100,0,1,0,1,1,'Magtheridon - Pit Lord\s Satchel'),
(17257,34846,0,100,0,1,0,1,1,'Magtheridon - Black Sack of Gems'),
(17257,90039,34039,100,0,1,0,2,2,'Magtheridon - (ReferenceTable)');
