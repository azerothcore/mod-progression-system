-- Make the quest Assault on the Sanctum available again.
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` = 26013;
