-- Philanthropist should drop gold
UPDATE `creature_template` SET `mingold` = 110000, `maxgold` = 130000 WHERE (`entry` = 16470);
