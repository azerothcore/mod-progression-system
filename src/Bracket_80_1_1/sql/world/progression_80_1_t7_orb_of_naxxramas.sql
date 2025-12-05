-- Hide gameobjects
UPDATE `gameobject` SET `phasemask` = 16384 WHERE `id` IN (
202277, -- Orb of Naxxramas - Teleport to Sapphiron
202278 -- Orb of Naxxramas - Teleport from Sapphiron
);
