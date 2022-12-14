UPDATE `creature` SET `phasemask` = 16384 WHERE `id1` IN (
22309, -- Crashing Wave-Spirit
22310, -- Stormwind Wind-Ripper
22311, -- Raging Fire-Soul
22313 -- Rumbling Earth-Heart
);

-- Pure Water
UPDATE `gameobject` SET `phasemask` = 16384 WHERE `guid` IN (
104324,
104325,
104326,
104327,
104328,
104329
) AND `id`=182951;
