UPDATE `dungeon_access_template` SET `min_avg_item_level` = 150 WHERE `id` IN (68, 70, 72, 79, 81, 83, 87, 91, 93, 99) AND `difficulty` = 1;
-- AN and Oculus intentionally left at 180 for now
UPDATE `dungeon_access_template` SET `min_avg_item_level` = 180 WHERE `id` = 74 AND `difficulty` = 1;
