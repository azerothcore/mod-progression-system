DELETE FROM `creature_queststarter` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824, 7486) AND `id` = 13278;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(13278, 6804), -- Poisoned Water
(13278, 6821), -- Eye of the Emberseer
(13278, 6822), -- The Molten Core
(13278, 6823), -- Agent of Hydraxis
(13278, 6824), -- Hands of the Enemy
(13278, 7486); -- A Hero's Reward

DELETE FROM `creature_questender` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824) AND `id` = 13278;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(13278, 6804), -- Poisoned Water
(13278, 6821), -- Eye of the Emberseer
(13278, 6822), -- The Molten Core
(13278, 6823), -- Agent of Hydraxis
(13278, 6824); -- Hands of the Enemy

DELETE FROM `quest_template_addon` WHERE `ID` IN (6821, 6822, 6823, 6824, 7486);
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `NextQuestID`) VALUES
(6821, 6805, 6822),
(6822, 6021, 6823),
(6823, 6022, 6824),
(6824, 6823, 7486),
(7486, 6824, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` = 6821;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 6821, 0, 0, 47, 0, 6804, 64, 0, 0, 0, 0, '', 'Quest Eyes of the Emberseer available if quest Poisoned Water has been rewarded.'),
(19, 0, 6821, 0, 0, 47, 0, 6805, 64, 0, 0, 0, 0, '', 'Quest Eyes of the Emberseer available if quest Stormers and Rumblers has been rewarded.');

