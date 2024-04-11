-- Remove attunement requirements for dungeons and Karazhan
DELETE FROM `dungeon_access_requirements` WHERE `comment` LIKE 'Progression:%' AND `dungeon_access_id` IN (33,34,48,49,54,55,29);
