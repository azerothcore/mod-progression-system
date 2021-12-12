-- despawn world bosses
DELETE FROM `creature` WHERE `id` IN (6109, 12397, 14890, 14889, 14888, 14887);

-- despawn karazhan npcs
DELETE FROM `creature` where `guid` IN (3961, 3965, 3966, 3967, 3968, 3976, 3977, 3978, 3979, 3986, 3987, 3988, 3989, 4000, 4001, 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4049, 4050, 4051, 4052, 4053, 4054, 4055, 4056, 4057, 4058, 4059, 4060);

-- despawn gangrenus which is accesible from exploits
DELETE FROM `creature` WHERE `guid` = 125760;

-- Remove the 11 cultists from Un'Goro
DELETE FROM `waypoint_data` WHERE `id` in (286020,286040);
DELETE FROM `creature_addon` WHERE `guid` in (209102,209107,209111,209108,209110,209103,209109,209106,209104,209105,209112);
DELETE FROM `creature` WHERE `guid` in (209102,209107,209111,209108,209110,209103,209109,209106,209104,209105,209112);

-- Hide Emalon, Koralon and Toravon at Vaulth of Archavon
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (
33993, -- Emalon
35013, -- Koralon
38433); -- Toravon
