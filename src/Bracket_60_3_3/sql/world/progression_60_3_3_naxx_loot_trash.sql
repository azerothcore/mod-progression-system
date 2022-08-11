-- Disable loot for non-bosses
UPDATE `creature_template` SET `lootid` = 0, `skinloot` = 0 WHERE `Entry` IN
(29356, 29824, 29823, 29831, 29833, 29842, 29825, 29828, 29835, 29576, 30097,
29837, 29898, 29899, 29900, 29242, 29241, 29243, 29229, 30389, 29286, 29247,
29613, 29248, 29575, 29574, 30075, 30087, 29347, 29353, 29362, 29359, 29363,
29355, 29371, 29609, 29608, 29603, 29601, 29612, 31542, 29852, 30424);
-- Skip Disable loot for non-bosses that are spawned as they don't drop loot