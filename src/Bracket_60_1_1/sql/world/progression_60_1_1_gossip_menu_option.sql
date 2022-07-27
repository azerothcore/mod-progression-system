/*
Dual spec progression prices
40-49     500G
50-59     600G
60-69     800G
71-80     1000G
*/

-- 60-69 Dual Spec price
UPDATE gossip_menu_option SET BoxMoney = 8000000 WHERE OptionType = 18;
