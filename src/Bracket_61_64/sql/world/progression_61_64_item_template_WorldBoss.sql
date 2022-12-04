-- Set World Boss loot to BoP until Sunwell
UPDATE `item_template` SET `bonding`=1 WHERE `entry` IN (
30732, -- Exodar Life-Staff
30733, -- Hope Ender
30734, -- Leggings of the Seventh Circle
30735, -- Ancient Spellcloak of the Highborne
30736, -- Ring of Flowing Light
30737, -- Gold-Leaf Wildboots
30738, -- Ring of Reciprocity
30739, -- Scaled Greaves of the Marksman
30740, -- Ripfiend Shoulderplates
30741, -- Topaz-Studded Battlegrips

30722, -- Ethereum Nexus-Reaver
30723, -- Talon of the Tempest
30724, -- Barrel-Blade Longrifle
30725, -- Anger-Spark Gloves
30726, -- Archaic Charm of Presence
30727, -- Gilded Trousers of Benediction
30728, -- Fathom-Helm of the Deeps
30729, -- Black-Iron Battlecloak
30730, -- Terrorweave Tunic
30731  -- Faceguard of the Endless Watch
);
