-- Update cost for normal flying
UPDATE `npc_trainer` SET `MoneyCost`=8000000, `ReqLevel`=70 WHERE `ID`=202011 AND `SpellID`=34090;

-- Remove Epic Flight Form from trainers
DELETE FROM `npc_trainer` WHERE `ID`=200006 AND `SpellID`=40120;
