-- Remove Badge of Justice from Phase 1 Raids
DELETE FROM `creature_loot_template` WHERE `Entry` IN  (17225, 15690, 15688, 15689, 16524, 15691, 17533, 18168, 17521, 16457, 15687, 16152) AND (`Item` IN (29434));
