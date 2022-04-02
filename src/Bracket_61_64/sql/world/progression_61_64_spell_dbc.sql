#Revoke change Baron Geddon explosion base damage from 3200 to 2100
DELETE FROM `spell_dbc` WHERE `ID` = 20476;
#Revoke changes in BWL
DELETE FROM `spell_dbc` WHERE `ID` IN (23331, 24573, 22539, 22667);
