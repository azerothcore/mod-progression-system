-- Makes instances Naxxramas, EoE, OS, VOA available
DELETE FROM `disables` WHERE `sourceType` = 2 AND `entry` IN (533, 616, 615, 624);
