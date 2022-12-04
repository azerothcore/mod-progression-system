-- Add attunement requirements for TBC
DELETE FROM `dungeon_access_requirements` WHERE `comment` LIKE 'Progression:%' AND `dungeon_access_id` IN (33,34,48,49,54,55,29,46,47,32,64,64);
INSERT INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `priority`, `requirement_note`, `comment`) VALUES
(33, 2, 28395, (NULL), (NULL), 'Progression: Hellfire Citadel: The Shattered Halls (Normal)'),
(34, 2, 28395, (NULL), (NULL), 'Progression: Hellfire Citadel: The Shattered Halls (Heroic)'),
(48, 2, 31084, (NULL), (NULL), 'Progression: Tempest Keep: The Arcatraz (Normal)'),
(49, 2, 31084, (NULL), (NULL), 'Progression: Tempest Keep: The Arcatraz (Heroic)'),
(54, 2, 27991, (NULL), (NULL), 'Progression: Auchindoun: Shadow Labyrinth (Normal)'),
(55, 2, 27991, (NULL), (NULL), 'Progression: Auchindoun: Shadow Labyrinth (Heroic)'),
(29, 2, 24490, (NULL), (NULL), 'Progression: Phase 1: Karazhan'),
(46, 1, 10901, (NULL), 'You must complete the quest "The Cudgel of Kar\'desh" starting at "Skar\'this the Heretic" before entering the Serpentshrine Cavern.', 'Progression: Phase 2: Serpentshrine Cavern'),
(47, 2, 31704, (NULL), (NULL), 'Progression: Phase 2: The Eye'),
(32, 1, 13432, (NULL), 'You must complete the quest "The Vials of Eternity" before entering the Hyjal Summit.', 'Progression: Phase 3: Battle for Mount Hyjal'),
(64, 2, 32649, 0, (NULL), 'Progression: Phase 3: The Black Temple'),
(64, 2, 32757, 1, (NULL), 'Progression: Phase 3: The Black Temple');
