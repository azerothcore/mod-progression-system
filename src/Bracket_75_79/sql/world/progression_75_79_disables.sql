-- 75-79 level range - Utgarde Pinnacle, The Oculus, The Culling of Stratholme, Halls of Stone, Halls of Lightning, Gundrak, Violet Hold
UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (575, 578, 595, 599, 602, 604, 608);
