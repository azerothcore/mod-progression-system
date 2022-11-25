-- Remove Unique-Equipped from TBC PvP gems and remove BoP from Honor gems
UPDATE `item_template` SET `Flags`=`Flags`&~524288, `bonding`=0 WHERE `entry` IN (
-- Honor Gems
28118, -- Runed Ornate Ruby
28119, -- Smooth Ornate Dawnstone
28120, -- Gleaming Ornate Dawnstone
28123, -- Potent Ornate Topaz
28362, -- Bold Ornate Ruby
28363  -- Inscribed Ornate Topaz
);

UPDATE `item_template` SET `Flags`=`Flags`&~524288 WHERE `entry` IN (
-- Arena Gems
38545, -- Bold Ornate Ruby
38546, -- Gleaming Ornate Dawnstone
38547, -- Inscribed Ornate Topaz
38548, -- Potent Ornate Topaz
38549, -- Runed Ornate Ruby
38550  -- Smooth Ornate Dawnstone
);
