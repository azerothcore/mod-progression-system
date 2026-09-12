UPDATE `item_template` SET `ItemLevel` = 226 WHERE `entry` IN (51804, 51805, 51806, 51807, 51808);

-- Winking Eye of Love
UPDATE `item_template` SET `stat_value2` = 63 WHERE `entry` = 51804; -- Stamina,                49 to 63
UPDATE `item_template` SET `stat_value3` = 43 WHERE `entry` = 51804; -- Intellect,              33 to 43
UPDATE `item_template` SET `stat_value1` = 74 WHERE `entry` = 51804; -- Spell power,            59 to 74
UPDATE `item_template` SET `stat_value4` = 41 WHERE `entry` = 51804; -- Critical strike rating, 32 to 41
UPDATE `item_template` SET `stat_value5` = 21 WHERE `entry` = 51804; -- Mana per 5,             16 to 21

-- Heartbreak Charm
UPDATE `item_template` SET `stat_value2` = 63 WHERE `entry` = 51805; -- Stamina,      49 to 63
UPDATE `item_template` SET `stat_value3` = 43 WHERE `entry` = 51805; -- Intellect,    33 to 43
UPDATE `item_template` SET `stat_value4` = 41 WHERE `entry` = 51805; -- Spirit,       32 to 41
UPDATE `item_template` SET `stat_value1` = 74 WHERE `entry` = 51805; -- Spell power,  59 to 74
UPDATE `item_template` SET `stat_value5` = 42 WHERE `entry` = 51805; -- Haste rating, 33 to 42

-- Shard of Pirouetting Happiness
UPDATE `item_template` SET `stat_value1` = 42 WHERE `entry` = 51806; -- Strength,       32 to 42
UPDATE `item_template` SET `stat_value2` = 94 WHERE `entry` = 51806; -- Stamina,        73 to 94
UPDATE `item_template` SET `stat_value3` = 41 WHERE `entry` = 51806; -- Defense rating, 32 to 41
UPDATE `item_template` SET `stat_value4` = 43 WHERE `entry` = 51806; -- Dodge rating,   34 to 43
UPDATE `item_template` SET `stat_value5` = 42 WHERE `entry` = 51806; -- Hit rating,     33 to 42

-- Sweet Perfume Broach
UPDATE `item_template` SET `stat_value2` = 63 WHERE `entry` = 51807; -- Agility,                  49 to 63
UPDATE `item_template` SET `stat_value3` = 69 WHERE `entry` = 51807; -- Stamina,                  53 to 69
UPDATE `item_template` SET `stat_value1` = 84 WHERE `entry` = 51807; -- Attack power,             67 to 84
UPDATE `item_template` SET `stat_value4` = 36 WHERE `entry` = 51807; -- Critical strike rating,   28 to 36
UPDATE `item_template` SET `stat_value5` = 46 WHERE `entry` = 51807; -- Armor penetration rating, 36 to 46

-- Choker of the Pure Heart
UPDATE `item_template` SET `stat_value1` = 65 WHERE `entry` = 51808; -- Strength,               50 to 65
UPDATE `item_template` SET `stat_value2` = 93 WHERE `entry` = 51808; -- Stamina,                72 to 93
UPDATE `item_template` SET `stat_value3` = 36 WHERE `entry` = 51808; -- Critical strike rating, 28 to 36
UPDATE `item_template` SET `stat_value4` = 45 WHERE `entry` = 51808; -- Hit rating,             36 to 45
