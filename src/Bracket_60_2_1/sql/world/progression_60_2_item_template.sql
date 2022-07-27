/*
  Arathi Horde vendor entry: (15126)
  items: (20068, 20158, 20175, 20176, 20184, 20194, 20203, 20212, 20220, 20214)
*/

SET @FACTION_ID = 510; -- The Defilers
SET @REPUTATION = 7; -- Exalted
UPDATE `item_template` SET `RequiredReputationFaction` = @FACTION_ID, `RequiredReputationRank` = @REPUTATION WHERE `entry` IN (20068, 20158, 20175, 20176, 20184, 20194, 20203, 20212, 20214, 20220);

/*
  Arathi Alliance vendor entry: (15127)
  items: (20055, 20056, 20057, 20058, 20059, 20060, 20061, 20070, 20073, 20069)
  req level 60
*/

SET @FACTION_ID = 509; -- The League of Arathor
SET @REPUTATION = 7; -- Exalted
UPDATE `item_template` SET `RequiredReputationFaction` = @FACTION_ID, `RequiredReputationRank` = @REPUTATION WHERE `entry` IN (20055, 20056, 20057, 20058, 20059, 20060, 20061, 20070, 20073, 20069);
