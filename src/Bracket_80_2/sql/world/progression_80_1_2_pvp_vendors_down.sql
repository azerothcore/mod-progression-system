DELETE FROM `game_event_creature` WHERE `guid` IN (152028, 152031) AND `eventEntry` = 57;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(57,152028),
(57,152031);
