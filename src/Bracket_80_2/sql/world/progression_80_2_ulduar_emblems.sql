-- Ulduar at patch 3.1: 10-man drops Emblem of Valor, 25-man drops Emblem of
-- Conquest. The rows hold Heroism after the Bracket_80_1_2 blanket conversion,
-- or Triumph on a stock 3.3.5 database, so both are matched.

-- 10-man bosses: Valor
-- Brundir, Steelbreaker, Molgeim, Ignis, Razorscale, Vezax, Yogg-Saron, XT-002, Auriaya
UPDATE `creature_loot_template`
SET `Item` = 40753, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` IN (32857, 32867, 32927, 33118, 33186, 33271, 33288, 33293, 33515)
AND `Item` IN (40752, 47241);

-- 25-man bosses: Conquest
UPDATE `creature_loot_template`
SET `Item` = 45624, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest')
WHERE `Entry` IN (33694, 33693, 33692, 33190, 33724, 33449, 33955, 33885, 34175)
AND `Item` IN (40752, 47241);

-- 10-man caches: Valor
-- Kologarn 27061, Hodir 27068, Thorim 27073/27074, Mimiron 27085/27086,
-- Algalon 27030, Freya's Gift 26959/26961/27078/27080
UPDATE `gameobject_loot_template`
SET `Item` = 40753, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` IN (27061, 27068, 27073, 27074, 27085, 27086, 27030, 26959, 26961, 27078, 27080)
AND `Item` IN (40752, 47241);

-- 25-man caches: Conquest
-- Kologarn 26929, Hodir 26946, Thorim 26955/26956, Mimiron 26963/26967,
-- Algalon 26974, Freya's Gift 26960/26962/27079/27081
UPDATE `gameobject_loot_template`
SET `Item` = 45624, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest')
WHERE `Entry` IN (26929, 26946, 26955, 26956, 26963, 26967, 26974, 26960, 26962, 27079, 27081)
AND `Item` IN (40752, 47241);

-- Flame Leviathan, Yogg-Saron (keeper hard modes) and Freya's Gift (elder hard
-- modes) take their emblems from reference 34349, which is shared with
-- Sartharion 25 and follows the Obsidian Sanctum brackets. Give Ulduar its own
-- per-difficulty references so the two raids can be tuned independently.
SET @REF_ULDUAR_10 = 80200,
@REF_ULDUAR_25 = 80201;

DELETE FROM `reference_loot_template` WHERE `Entry` IN (@REF_ULDUAR_10, @REF_ULDUAR_25);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@REF_ULDUAR_10, 40753, 0, 100, 0, 1, 0, 1, 1, 'Ulduar 10 - Emblem of Valor'),
(@REF_ULDUAR_25, 45624, 0, 100, 0, 1, 0, 1, 1, 'Ulduar 25 - Emblem of Conquest');

-- Flame Leviathan 33113 / 34003, Yogg-Saron 33288 / 33955
UPDATE `creature_loot_template` SET `Reference` = @REF_ULDUAR_10 WHERE `Entry` IN (33113, 33288) AND `Reference` = 34349;
UPDATE `creature_loot_template` SET `Reference` = @REF_ULDUAR_25 WHERE `Entry` IN (34003, 33955) AND `Reference` = 34349;

-- Freya's Gift with elders alive
UPDATE `gameobject_loot_template` SET `Reference` = @REF_ULDUAR_10 WHERE `Entry` IN (26959, 27078, 27080) AND `Reference` = 34349;
UPDATE `gameobject_loot_template` SET `Reference` = @REF_ULDUAR_25 WHERE `Entry` IN (26960, 27081) AND `Reference` = 34349;
