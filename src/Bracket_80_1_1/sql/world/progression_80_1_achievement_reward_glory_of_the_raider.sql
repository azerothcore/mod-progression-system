-- Restore Glory of the Raider (10/25) mount rewards removed in Patch 3.1.
-- Achievement 2137 -> Reins of the Plagued Proto-Drake (item 44175)
-- Achievement 2138 -> Reins of the Black Proto-Drake  (item 44164)
-- Sender 26917 = Alexstrasza the Life-Binder.
DELETE FROM `achievement_reward` WHERE `ID` IN (2137, 2138);
INSERT INTO `achievement_reward` (`ID`, `TitleA`, `TitleH`, `ItemID`, `Sender`, `Subject`, `Body`, `MailTemplateID`) VALUES
(2137, 0, 0, 44175, 26917, 'Glory of the Raider', 'Champion,$B$BWord has traveled to Wyrmrest Temple of the great deeds you have accomplished since arriving in Northrend.$B$BYour bravery should not go unrecognized. Please accept this gift on behalf of the Aspects. Together we shall rid Azeroth of evil, once and for eternity.$B$BAlexstrasza the Life-Binder', 0),
(2138, 0, 0, 44164, 26917, 'Glory of the Raider', 'Champion,$B$BWord has traveled to Wyrmrest Temple of the great deeds you have accomplished since arriving in Northrend.$B$BYour bravery should not go unrecognized. Please accept this gift on behalf of the Aspects. Together we shall rid Azeroth of evil, once and for eternity.$B$BAlexstrasza the Life-Binder', 0);
