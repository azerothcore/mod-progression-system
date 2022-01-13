-- 1-19 level range: Remove WoTLK & TBC potions from Professor Thaddeus Paleo
DELETE FROM `npc_vendor` WHERE (`entry` = 14847) AND `item` IN
(
    33457, 33458, 33459, 33460, 33461, 33462, 37091, 37093, 37097, 43463, 43465, 43467, 33447,
    22829, 22832, 27498, 27499, 27500, 27501, 27502, 27503
);
