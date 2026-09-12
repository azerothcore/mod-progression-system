-- Phase out various NPCs
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (40160, 32294, 32296, 39173, 39172);

-- Phase out Frozo the Renowned
UPDATE `creature` SET `phaseMask` = 2 WHERE `guid`=202846 AND `id` = 40160;
