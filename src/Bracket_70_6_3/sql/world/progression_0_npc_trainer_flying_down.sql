-- Update cost for normal flying back to original value
UPDATE `npc_trainer` SET `MoneyCost`=2500000, `ReqLevel`=60 WHERE `ID`=202011 AND `SpellID`=34090;

-- Restore Epic Flight Form from trainers
DELETE FROM `npc_trainer` WHERE `ID`=200006 AND `SpellID`=40120;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (200006, 40120, 200000, 762, 300, 71, 0);

-- Restore Flight Form to 60
UPDATE `npc_trainer` SET `ReqLevel`=60 WHERE `ID`=200006 AND `SpellID`=33950;
