-- Philanthropist should drop gold
UPDATE `creature_template` SET `mingold` = 110000, `maxgold` = 130000 WHERE (`entry` = 16470);
-- No badge of justice from chess
DELETE FROM `gameobject_loot_template` WHERE `Item` = 29434 AND `Entry` = 20712;
