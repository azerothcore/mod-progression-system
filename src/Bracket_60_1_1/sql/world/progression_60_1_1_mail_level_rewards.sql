-- Disable flight trainer mails
DELETE FROM `mail_level_reward` WHERE `level` = 60 AND `senderEntry` IN (35093, 35100);
