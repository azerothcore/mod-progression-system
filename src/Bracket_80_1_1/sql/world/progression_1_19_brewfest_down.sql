UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (40437, 40441);

DELETE FROM `creature` WHERE `id` IN (40437, 40441) AND `guid` IN (3200500, 3200501);

DELETE FROM `game_event_creature` WHERE `eventEntry` = 24 AND `guid` IN (3200500, 3200501);
