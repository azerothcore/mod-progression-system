DELETE FROM `creature_queststarter` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824, 7486) AND `id` = 13278;
DELETE FROM `creature_questender` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824) AND `id` = 13278;
DELETE FROM `quest_template_addon` WHERE `ID` IN (6821, 6822, 6823, 6824, 7486);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` = 6821;
