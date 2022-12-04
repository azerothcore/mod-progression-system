-- Update cost for normal flying back to original value
UPDATE `npc_trainer` SET `MoneyCost`=2500000, `ReqLevel`=60 WHERE `ID`=202011 AND `SpellID`=34090;

-- Restore Epic Flight Form from trainers
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (200006, 40120, 200000, 762, 300, 71, 0);
