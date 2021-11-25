-- Reenable flight trainer mails
DELETE FROM `mail_level_reward` WHERE `level` = 60 AND `senderEntry` IN (35093, 35100);
INSERT INTO `mail_level_reward` (`level`, `raceMask`, `mailTemplateId`, `senderEntry`) VALUES
(60,690,282,35093),
(60,1101,283,35100);
