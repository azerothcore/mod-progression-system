-- Prevents reputation gained from Sethekk Halls to go beyond Honored
UPDATE `creature_onkill_reputation` SET `MaxStanding1`=5 WHERE `creature_id` IN (18318,18319,18320,18321,18322,18323,18325,18326,18327,18328,18472,18473,19428,19429,21891,21904,21931);
