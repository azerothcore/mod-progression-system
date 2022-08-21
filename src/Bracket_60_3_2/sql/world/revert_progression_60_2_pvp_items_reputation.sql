--
SET @FACTION_ID = 0; -- The League of Arathor
SET @REPUTATION = 0; -- Exalted
UPDATE `item_template` SET `RequiredReputationFaction` = @FACTION_ID, `RequiredReputationRank` = @REPUTATION WHERE `entry` IN (20055, 20056, 20057, 20058, 20059, 20060, 20061, 20070, 20073, 20069);

-- WSG factions requirements
SET @FACTION_ID_ALLIANCE = 890; -- Silverwing Sentinels
SET @FACTION_ID_HORDE = 889; -- Warsong Outriders

SET @NPC_ENTRY_ALLIANCE = 14753; -- Illiyana Moonblaze <Silverwing Supply Officer>
SET @NPC_ENTRY_HORDE = 14754; -- Kelm Hargunth <Warsong Supply Officer>

SET @FACTION_RANK_EXALTED_FLAG = 128;

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND `SourceGroup` IN (@NPC_ENTRY_ALLIANCE, @NPC_ENTRY_HORDE) AND `SourceEntry` 
IN (19578,19595,19587,19582,22752,22749,22750,22748,22672,22753,22747,22740,22741,22676,22673,22651, 30497, 30498) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 5) AND `ConditionTarget` = 0 AND `ConditionValue1` IN (@FACTION_ID_ALLIANCE, @FACTION_ID_HORDE) AND `ConditionValue2` = @FACTION_RANK_EXALTED_FLAG AND (`ConditionValue3` = 0);

SET @FACTION_ID_ALLIANCE = 730; -- Stormpike Guard
SET @FACTION_ID_HORDE = 729; -- Frostwolf Clan

-- both AV factions require Honored
SET @FACTION_RANK_HONORED_FLAG = 224; -- Honored Revered and Exalted
SET @NPC_ENTRY_ALLIANCE = 13217; -- Thanthaldis Snowgleam <Stormpike Supply Officer>
SET @NPC_ENTRY_ALLIANCE2 = 13216;
SET @NPC_ENTRY_HORDE = 13219; -- Jekyll Flandring <Frostwolf Supply Officer>
SET @NPC_ENTRY_HORDE2 = 13218; -- 

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23)
 AND `SourceGroup` IN (@NPC_ENTRY_ALLIANCE, @NPC_ENTRY_HORDE, @NPC_ENTRY_HORDE2, @NPC_ENTRY_ALLIANCE2)
 AND `SourceEntry` IN (19325,21563,19324,19323,19321,19311,19310,19309,19315,19312,19308)
 AND (`SourceId` = 0)
 AND (`ElseGroup` = 0)
 AND (`ConditionTypeOrReference` = 5)
 AND `ConditionTarget` = 0
 AND `ConditionValue1` IN (@FACTION_ID_ALLIANCE, @FACTION_ID_HORDE)
 AND (`ConditionValue3` = 0);
