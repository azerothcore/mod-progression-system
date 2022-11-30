-- Hide Gangrenus which is accesible from exploits
UPDATE `creature` SET `phasemask` = 16384 WHERE `id1`=29207 AND `guid`=125760;
