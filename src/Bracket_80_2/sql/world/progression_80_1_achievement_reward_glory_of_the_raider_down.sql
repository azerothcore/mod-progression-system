-- Revert Glory of the Raider (10/25) mount rewards at Patch 3.1 (Ulduar).
-- Matches retail: the Plagued and Black Proto-Drake rewards were removed
-- when Ulduar went live.
DELETE FROM `achievement_reward` WHERE `ID` IN (2137, 2138);
