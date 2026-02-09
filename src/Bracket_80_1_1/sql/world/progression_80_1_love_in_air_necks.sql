UPDATE `item_template` SET `ItemLevel` = 200 WHERE `entry` IN (51804, 51805, 51806, 51807, 51808);

-- Winking Eye of Love
UPDATE `item_template` SET `stat_value2` = 49 WHERE `entry` = 51804; -- Stamina,                63 to 49
UPDATE `item_template` SET `stat_value3` = 33 WHERE `entry` = 51804; -- Intellect,              43 to 33
UPDATE `item_template` SET `stat_value1` = 59 WHERE `entry` = 51804; -- Spell power,            74 to 59
UPDATE `item_template` SET `stat_value4` = 32 WHERE `entry` = 51804; -- Critical strike rating, 41 to 32
UPDATE `item_template` SET `stat_value5` = 16 WHERE `entry` = 51804; -- Mana per 5,             21 to 16

-- Heartbreak Charm
UPDATE `item_template` SET `stat_value2` = 49 WHERE `entry` = 51805; -- Stamina,      63 to 49
UPDATE `item_template` SET `stat_value3` = 33 WHERE `entry` = 51805; -- Intellect,    43 to 33
UPDATE `item_template` SET `stat_value4` = 32 WHERE `entry` = 51805; -- Spirit,       41 to 32
UPDATE `item_template` SET `stat_value1` = 59 WHERE `entry` = 51805; -- Spell power,  74 to 59
UPDATE `item_template` SET `stat_value5` = 33 WHERE `entry` = 51805; -- Haste rating, 42 to 33

-- Shard of Pirouetting Happiness
UPDATE `item_template` SET `stat_value1` = 32 WHERE `entry` = 51806; -- Strength,       42 to 32
UPDATE `item_template` SET `stat_value2` = 73 WHERE `entry` = 51806; -- Stamina,        94 to 73
UPDATE `item_template` SET `stat_value3` = 32 WHERE `entry` = 51806; -- Defense rating, 41 to 32
UPDATE `item_template` SET `stat_value4` = 34 WHERE `entry` = 51806; -- Dodge rating,   43 to 34
UPDATE `item_template` SET `stat_value5` = 33 WHERE `entry` = 51806; -- Hit rating,     42 to 33

-- Sweet Perfume Broach
UPDATE `item_template` SET `stat_value2` = 49 WHERE `entry` = 51807; -- Agility,                  63 to 49
UPDATE `item_template` SET `stat_value3` = 53 WHERE `entry` = 51807; -- Stamina,                  69 to 53
UPDATE `item_template` SET `stat_value1` = 67 WHERE `entry` = 51807; -- Attack power,             84 to 67
UPDATE `item_template` SET `stat_value4` = 28 WHERE `entry` = 51807; -- Critical strike rating,   36 to 28
UPDATE `item_template` SET `stat_value5` = 36 WHERE `entry` = 51807; -- Armor penetration rating, 46 to 36

-- Choker of the Pure Heart
UPDATE `item_template` SET `stat_value1` = 50 WHERE `entry` = 51808; -- Strength,               65 to 50
UPDATE `item_template` SET `stat_value2` = 72 WHERE `entry` = 51808; -- Stamina,                93 to 72
UPDATE `item_template` SET `stat_value3` = 28 WHERE `entry` = 51808; -- Critical strike rating, 36 to 28
UPDATE `item_template` SET `stat_value4` = 36 WHERE `entry` = 51808; -- Hit rating,             45 to 36