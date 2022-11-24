-- Set TBC gems to Unique-Equipped and BoP until last bracket for Heroic gems and 75-79 for PvP gems
UPDATE `item_template` SET `Flags`=`Flags`|524288, `bonding`=1 WHERE `entry` IN (
-- Honor Gems
28118, -- Runed Ornate Ruby
28119, -- Smooth Ornate Dawnstone
28120, -- Gleaming Ornate Dawnstone
28123, -- Potent Ornate Topaz
28362, -- Bold Ornate Ruby
28363, -- Inscribed Ornate Topaz

-- Arena Gems
38545, -- Bold Ornate Ruby
38546, -- Gleaming Ornate Dawnstone
38547, -- Inscribed Ornate Topaz
38548, -- Potent Ornate Topaz
38549, -- Runed Ornate Ruby
38550, -- Smooth Ornate Dawnstone

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
