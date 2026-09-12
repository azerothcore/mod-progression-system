-- Ulduar and Emalon at patch 3.1: 10-man drops Emblem of Valor, 25-man drops
-- Emblem of Conquest. Ulduar 10-man hard modes drop Conquest in place of Valor:
-- Iron Council past the easy order, the hard-mode caches, Algalon, and (handled
-- in ulduar_hard_mode_emblems.cpp because their default loot mode stays active)
-- Flame Leviathan, XT-002, Vezax and Yogg-Saron.
-- Rows hold Heroism after the Bracket_80_1_2 blanket conversion, or Triumph on
-- a stock 3.3.5 database. Conquest updates also match Valor so realms that ran
-- an earlier version of this file are corrected when it is re-applied.

SET @VALOR = 40753,
@CONQUEST = 45624;

-- 10-man bosses: Valor
-- Brundir, Ignis, Razorscale, Vezax, Yogg-Saron, XT-002, Auriaya
UPDATE `creature_loot_template`
SET `Item` = @VALOR, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` IN (32857, 33118, 33186, 33271, 33288, 33293, 33515)
AND `Item` IN (40752, 47241);

-- 10-man Iron Council with Steelbreaker or Molgeim last: Conquest
UPDATE `creature_loot_template`
SET `Item` = @CONQUEST, `Comment` = REPLACE(REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest'), 'Emblem of Valor', 'Emblem of Conquest')
WHERE `Entry` IN (32867, 32927)
AND `Item` IN (40752, 47241, 40753);

-- 25-man bosses: Conquest
UPDATE `creature_loot_template`
SET `Item` = @CONQUEST, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest')
WHERE `Entry` IN (33694, 33693, 33692, 33190, 33724, 33449, 33955, 33885, 34175)
AND `Item` IN (40752, 47241);

-- 10-man normal-mode caches: Valor
-- Kologarn 27061, Hodir 27068, Thorim 27073, Mimiron 27085, Freya's Gift without elders 26961
UPDATE `gameobject_loot_template`
SET `Item` = @VALOR, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` IN (27061, 27068, 27073, 27085, 26961)
AND `Item` IN (40752, 47241);

-- 10-man hard-mode caches: Conquest
-- Thorim 27074, Mimiron 27086, Algalon 27030
UPDATE `gameobject_loot_template`
SET `Item` = @CONQUEST, `Comment` = REPLACE(REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest'), 'Emblem of Valor', 'Emblem of Conquest')
WHERE `Entry` IN (27074, 27086, 27030)
AND `Item` IN (40752, 47241, 40753);

-- Hodir's 10-man Rare Cache of Winter 27069 has no emblem row at all
DELETE FROM `gameobject_loot_template` WHERE `Entry` = 27069 AND `Item` IN (40752, 40753, 45624, 47241);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27069, @CONQUEST, 0, 100, 0, 1, 0, 1, 1, 'Rare Cache of Winter - Emblem of Conquest');

-- 25-man caches: Conquest
-- Kologarn 26929, Hodir 26946, Thorim 26955/26956, Mimiron 26963/26967,
-- Algalon 26974, Freya's Gift 26960/26962/27079/27081
UPDATE `gameobject_loot_template`
SET `Item` = @CONQUEST, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest')
WHERE `Entry` IN (26929, 26946, 26955, 26956, 26963, 26967, 26974, 26960, 26962, 27079, 27081)
AND `Item` IN (40752, 47241);

-- Flame Leviathan, Yogg-Saron (keeper hard modes) and Freya's Gift (elder hard
-- modes) take their emblems from reference 34349, which is shared with
-- Sartharion 25 and follows the Obsidian Sanctum brackets. Give Ulduar its own
-- references so the two raids can be tuned independently.
SET @REF_VALOR = 80200,
@REF_CONQUEST = 80201;

DELETE FROM `reference_loot_template` WHERE `Entry` IN (@REF_VALOR, @REF_CONQUEST);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@REF_VALOR, @VALOR, 0, 100, 0, 1, 0, 1, 1, 'Ulduar - Emblem of Valor'),
(@REF_CONQUEST, @CONQUEST, 0, 100, 0, 1, 0, 1, 1, 'Ulduar - Emblem of Conquest');

-- Flame Leviathan 33113 / 34003, Yogg-Saron 33288 / 33955
UPDATE `creature_loot_template` SET `Reference` = @REF_VALOR WHERE `Entry` IN (33113, 33288) AND `Reference` = 34349;
UPDATE `creature_loot_template` SET `Reference` = @REF_CONQUEST WHERE `Entry` IN (34003, 33955) AND `Reference` = 34349;

-- Freya's Gift with elders alive. 10-man: one Conquest plus one Valor per
-- elder on top of the normal Valor (1 elder 26959, 2 elders 27080, 3 elders 27078).
UPDATE `gameobject_loot_template`
SET `Reference` = @REF_CONQUEST, `MinCount` = 1, `MaxCount` = 1
WHERE `Entry` IN (26959, 27078, 27080) AND `Reference` IN (34349, @REF_VALOR, @REF_CONQUEST);

UPDATE `gameobject_loot_template`
SET `Item` = @VALOR, `MinCount` = 2, `MaxCount` = 2, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` = 26959 AND `Item` IN (40752, 47241, 40753);

UPDATE `gameobject_loot_template`
SET `Item` = @VALOR, `MinCount` = 3, `MaxCount` = 3, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` = 27080 AND `Item` IN (40752, 47241, 40753);

UPDATE `gameobject_loot_template`
SET `Item` = @VALOR, `MinCount` = 4, `MaxCount` = 4, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` = 27078 AND `Item` IN (40752, 47241, 40753);

-- 25-man Freya's Gift keeps the stock counts, all Conquest
UPDATE `gameobject_loot_template` SET `Reference` = @REF_CONQUEST WHERE `Entry` IN (26960, 27081) AND `Reference` = 34349;

-- Emalon the Storm Watcher: 10-man 33993 Valor, 25-man 33994 Conquest
UPDATE `creature_loot_template`
SET `Item` = @VALOR, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Valor')
WHERE `Entry` = 33993
AND `Item` IN (40752, 47241);

UPDATE `creature_loot_template`
SET `Item` = @CONQUEST, `Comment` = REPLACE(`Comment`, 'Emblem of Triumph', 'Emblem of Conquest')
WHERE `Entry` = 33994
AND `Item` IN (40752, 47241);

-- Sack of Ulduar Spoils 45875 (10-man) and Large Sack of Ulduar Spoils 45878
-- (25-man) are the rewards of the Algalon weekly quests 13614 and 13818.
UPDATE `item_loot_template`
SET `Item` = @VALOR, `Comment` = 'Sack of Ulduar Spoils - Emblem of Valor'
WHERE `Entry` = 45875
AND `Item` IN (40752, 47241);

UPDATE `item_loot_template`
SET `Item` = @CONQUEST, `Comment` = 'Large Sack of Ulduar Spoils - Emblem of Conquest'
WHERE `Entry` = 45878
AND `Item` IN (40752, 47241, 40753);
