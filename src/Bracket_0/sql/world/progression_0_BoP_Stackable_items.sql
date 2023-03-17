-- Seems to be a classic change. As we can't confirm it, we transfert the fix to Mod progress instead AC Core;
-- Feat: BoP stackable items can be trade among raid members
UPDATE `item_template` SET `stackable`=1 WHERE `entry` IN (19716,19717,19718,19719,19720,19721,19722,19723,19724,20888,20884,20889,20885,20890,20886,20926,20927,20928,20929,20930,20931,20932,20933);