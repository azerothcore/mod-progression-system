-- Add attunement requirements for TBC
DELETE FROM `dungeon_access_requirements` WHERE `comment` LIKE 'Progression:%' AND `dungeon_access_id` IN (33,34,48,49,54,55,29,46,47,32,64);
INSERT INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `leader_only`, `requirement_note`, `comment`) VALUES
(33, 2, 28395, 1, (NULL), 'Progression: Hellfire Citadel: The Shattered Halls (Normal)'),
(34, 2, 28395, 1, (NULL), 'Progression: Hellfire Citadel: The Shattered Halls (Heroic)'),
(48, 2, 31084, 1, (NULL), 'Progression: Tempest Keep: The Arcatraz (Normal)'),
(49, 2, 31084, 1, (NULL), 'Progression: Tempest Keep: The Arcatraz (Heroic)'),
(54, 2, 27991, 1, (NULL), 'Progression: Auchindoun: Shadow Labyrinth (Normal)'),
(55, 2, 27991, 1, (NULL), 'Progression: Auchindoun: Shadow Labyrinth (Heroic)'),
(29, 2, 24490, 0, 'You must have the item The Master\'s Key to enter Karazhan.', 'Progression: Phase 1: Karazhan'),
(46, 1, 13431, 0, 'You must complete the quest "The Cudgel of Kar\'desh" starting at "Skar\'this the Heretic" before entering the Serpentshrine Cavern.', 'Progression: Phase 2: Serpentshrine Cavern'),
(47, 2, 31704, 0, 'You must have the item The Tempest Key to enter The Eye.', 'Progression: Phase 2: The Eye'),
(32, 1, 13432, 0, 'You must complete the quest "The Vials of Eternity" before entering the Hyjal Summit.', 'Progression: Phase 3: Battle for Mount Hyjal'),
(64, 1, 10985, 0, 'You must have the item Medallion of Karabor to enter the Black Temple.', 'Progression: Phase 3: The Black Temple');
