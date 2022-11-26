-- Disable Arena Vendors from Netherstorm
UPDATE `creature_template` SET `npcflag`=`npcflag`&~128 WHERE `entry` IN (
26352, -- Big Zokk Torquewrench
32355, -- Big Zokk Torquewrench
33916, -- Big Zokk Torquewrench
33932, -- Big Zokk Torquewrench
33933, -- Big Zokk Torquewrench
40206, -- Big Zokk Torquewrench
34089, -- Grex Brainboiler
34091, -- Grex Brainboiler
34094, -- Grex Brainboiler
40209, -- Grex Brainboiler
32356, -- Kezzik the Striker
32405, -- Kezzik the Striker
33918, -- Kezzik the Striker
33931, -- Kezzik the Striker
33940, -- Kezzik the Striker
40207, -- Kezzik the Striker
24392, -- Leeni Smiley Smalls
32354, -- Leeni Smiley Smalls
33919, -- Leeni Smiley Smalls
33930, -- Leeni Smiley Smalls
33941, -- Leeni Smiley Smalls
40208  -- Leeni Smiley Smalls
);
