DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 15;

-- Bolvar visibility
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `SourceEntry` = 1748;
