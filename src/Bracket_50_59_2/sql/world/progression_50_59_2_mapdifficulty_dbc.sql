DELETE FROM `mapdifficulty_dbc` WHERE `ID` IN (24,34,39,44);
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`) VALUES
(24, 229, 0, 0, 10, ''), #UBRS
(34, 409, 0, 604800, 20, 'RAID_DIFFICULTY_40PLAYER'), #MC
(39, 469, 0, 604800, 25, 'RAID_DIFFICULTY_40PLAYER'), #BWL
(44, 531, 0, 604800, 25, 'RAID_DIFFICULTY_40PLAYER'), #AQ40

