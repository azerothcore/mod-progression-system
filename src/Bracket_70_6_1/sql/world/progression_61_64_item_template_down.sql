-- Remove Unique-Equipped from Epic gems acquired from Heroic Dungeons
UPDATE `item_template` SET `Flags`=`Flags`&~524288 WHERE `entry` IN (
-- Heroic Dungeon Epic Gems
30587, -- Champion's Fire Opal
30582, -- Deadly Fire Opal
30584, -- Inscribed Fire Opal
30591, -- Lucent Fire Opal
30585, -- Polished Fire Opal
30588, -- Potent Fire Opal (1)
30593, -- Potent Fire Opal (2)
30547, -- Reckless Fire Opal (1)
30551, -- Reckless Fire Opal (2)
30604, -- Resplendent Fire Opal
30607, -- Splendid Fire Opal
30554, -- Stalwart Fire Opal (1)
30558, -- Stalwart Fire Opal (2)
30581, -- Willful Fire Opal

30548, -- Jagged Chrysoprase (1)
30565, -- Jagged Chrysoprase (2)
30602, -- Jagged Chrysoprase (3)
30606, -- Lightning Chrysoprase
30550, -- Misty Chrysoprase (1)
30560, -- Misty Chrysoprase (2)
30575, -- Nimble Chrysoprase (1)
30605, -- Nimble Chrysoprase (2)
30608, -- Radiant Chrysoprase
30563, -- Regal Chrysoprase (1)
30590, -- Regal Chrysoprase (2)
30594, -- Regal Chrysoprase (3)
30592, -- Steady Chrysoprase (1)
30601, -- Steady Chrysoprase (2)

30566, -- Defender's Tanzanite
30559, -- Etched Tanzanite
30553, -- Glinting Tanzanite (1)
30556, -- Glinting Tanzanite (2)
30573, -- Mysterious Tanzanite
30572, -- Purified Tanzanite (1)
30586, -- Purified Tanzanite (2)
30589, -- Purified Tanzanite (3)
30600, -- Purified Tanzanite (4)
30603, -- Purified Tanzanite (5)
30549, -- Shifting Tanzanite
30546, -- Sovereign Tanzanite
30552, -- Timeless Tanzanite (1)
30555, -- Timeless Tanzanite (2)
30583, -- Timeless Tanzanite (3)
30564  -- Veiled Tanzanite
);

-- Remove BoP from Primal Nether and Nether Vortex
UPDATE `item_template` SET `bonding`=0 WHERE `entry` IN (
23572, -- Primal Nether
30183  -- Nether Vortex
);

-- Set World Boss loot to BoE
UPDATE `item_template` SET `bonding`=2 WHERE `entry` IN (
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
