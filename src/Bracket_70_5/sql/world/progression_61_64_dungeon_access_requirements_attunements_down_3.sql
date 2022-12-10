-- Remove all attunement requirements
DELETE FROM `dungeon_access_requirements` WHERE `comment` LIKE 'Progression:%' AND `dungeon_access_id` IN (33,34,48,49,54,55,29,46,47,32,64,64);
