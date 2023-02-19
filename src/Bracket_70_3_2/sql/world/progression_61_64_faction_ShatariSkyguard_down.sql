-- Restore onkill reputation gain
DELETE FROM `creature_onkill_reputation` WHERE `RewOnKillRepFaction1`=1031 AND `creature_id` IN (21644, 21649, 21650, 21651, 21652, 21728, 21763, 21787, 21804, 21838, 21911, 21912, 21985, 23029, 23051, 23066, 23067, 23068, 23161, 23162, 23163, 23165);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(21644, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21649, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21650, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21651, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21652, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21728, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21763, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21787, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21804, 1031, 0, 6, 0, 5, 0, 0, 0, 0),
(21838, 1031, 0, 7, 0, 500, 0, 0, 0, 0),
(21911, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21912, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(21985, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(23029, 1031, 0, 7, 0, 30, 0, 0, 0, 0),
(23051, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(23066, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(23067, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(23068, 1031, 0, 7, 0, 10, 0, 0, 0, 0),
(23161, 1031, 0, 7, 0, 100, 0, 0, 0, 0),
(23162, 1031, 0, 7, 0, 100, 0, 0, 0, 0),
(23163, 1031, 0, 7, 0, 100, 0, 0, 0, 0),
(23165, 1031, 0, 7, 0, 100, 0, 0, 0, 0);

-- Restore Yuula (23449) and her pet ray (22987)
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN (22987, 23449) AND `guid` IN (79011, 79033);

-- Restore Sha'tari Skyguard quests
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (11004,11005,11006,11008,11010,11021,11023,11024,11028,11029,11056,11062,11065,11066,11072,11073,11074,11078,11085,11093,11096,11098,11102,11119,11885);

-- Restore Shadow Dust drops
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 1) AND (`SourceEntry` = 32388) AND (`ConditionTypeOrReference` = 4) AND (`ConditionValue1` = 876);
