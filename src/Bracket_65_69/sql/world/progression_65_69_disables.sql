-- 65-69 level range - The Black Morass, Sethekk Halls, Auchenai Crypts, The Escape from Durnholde
UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (269, 556, 558, 560);
