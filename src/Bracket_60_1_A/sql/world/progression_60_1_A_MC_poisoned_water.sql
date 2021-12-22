DELETE FROM `creature_queststarter` WHERE `quest` IN (6821, 6822, 6823, 6824, 7486) AND `id` = 13278;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(13278, 6821), -- Eye of the Emberseer
(13278, 6822), -- The Molten Core
(13278, 6823), -- Agent of Hydraxis
(13278, 6824), -- Hands of the Enemy
(13278, 7486); -- A Hero's Reward

DELETE FROM `creature_questender` WHERE `quest` IN (6821, 6822, 6823, 6824) AND `id` = 13278;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
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
