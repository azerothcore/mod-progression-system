-- Remove Nightmare Seed from Nightmare Vine loot table (removed in Patch 3.0.2)
DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 18118) AND (`Item` IN (22797));
