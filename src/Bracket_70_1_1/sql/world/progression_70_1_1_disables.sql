-- 70 level range - Level 70 Normals - Opening the Dark Portal, The Shattered Halls, The Steamvault, The Arcatraz, The Botanica, The Mechanar, Shadow Labyrinth
UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (269, 540, 545, 552, 553, 554, 555);
