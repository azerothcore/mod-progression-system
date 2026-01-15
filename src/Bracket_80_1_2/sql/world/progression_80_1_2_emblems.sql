UPDATE `creature_loot_template` SET `Item` = 40752 WHERE `Item` = 47241;
UPDATE `gameobject_loot_template` SET `Item` = 40752 WHERE `Item` = 47241;
UPDATE `reference_loot_template` SET `Item` = 40752 WHERE `Item` = 47241;

-- Naxxramas 25 Heroism -> Valour
UPDATE `creature_loot_template`
SET `Item` = 40753
WHERE `Entry` IN (
  29249,29268,29278,29324,29373,29417,29448,
  29615,29701,29718,29940,29955,29991,30061
)
AND `Item` = 40752;

UPDATE `gameobject_loot_template` SET `item` = 40753 WHERE `Entry` = 25193 AND `Item` = 40752; -- 4 Horsemen Chest
