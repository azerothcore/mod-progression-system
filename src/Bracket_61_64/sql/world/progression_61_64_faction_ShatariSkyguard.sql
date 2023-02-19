-- Remove onkill reputation gain
DELETE FROM `creature_onkill_reputation` WHERE `RewOnKillRepFaction1`=1031 AND `creature_id` IN (21644, 21649, 21650, 21651, 21652, 21728, 21763, 21787, 21804, 21838, 21911, 21912, 21985, 23029, 23051, 23066, 23067, 23068, 23161, 23162, 23163, 23165);

-- Hide Yuula (23449) and her pet ray (22987)
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (22987, 23449) AND `guid` IN (79011, 79033);

-- Disable Sha'tari Skyguard quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11004,11005,11006,11008,11010,11021,11023,11024,11028,11029,11056,11062,11065,11066,11072,11073,11074,11078,11085,11093,11096,11098,11102,11119,11885);
INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES
(1, 11004, 'World of Shadows'),
(1, 11005, 'Secrets of the Talonpriests'),
(1, 11006, 'More Shadow Dust'),
(1, 11008, 'Fires Over Skettis'),
(1, 11010, 'Bombing Run'),
(1, 11021, 'Ishaal\'s Almanac'),
(1, 11023, 'Bomb Them Again!'),
(1, 11024, 'An Ally in Lower City'),
(1, 11028, 'Countdown to Doom'),
(1, 11029, 'A Shabby Disguise'),
(1, 11056, 'Hazzik\'s Bargain'),
(1, 11062, 'The Skyguard Outpost'),
(1, 11065, 'Wrangle Some Aether Rays!'),
(1, 11066, 'Wrangle More Aether Rays!'),
(1, 11072, 'Adversarial Blood'),
(1, 11073, 'Terokk\'s Downfall'),
(1, 11074, 'Tokens of the Descendants'),
(1, 11078, 'To Rule The Skies'),
(1, 11085, 'Escape from Skettis'),
(1, 11093, 'Hungry Nether Rays'),
(1, 11096, 'Threat from Above'),
(1, 11098, 'To Skettis!'),
(1, 11102, 'Bombing Run'),
(1, 11119, 'Assault on Bash\'ir Landing!'),
(1, 11885, 'Adversarial Blood');

-- Disable Shadow Dust drops
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 1) AND (`SourceEntry` = 32388) AND (`ConditionTypeOrReference` = 4) AND (`ConditionValue1` = 876);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(1, 21644, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388'),
(1, 21649, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388'),
(1, 21650, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388'),
(1, 21911, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388'),
(1, 23066, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388'),
(1, 23067, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388'),
(1, 23068, 32388, 0, 0, 4, 0, 876, 0, 0, 0, 0, 0, '', 'Disable Item Drop 32388');
