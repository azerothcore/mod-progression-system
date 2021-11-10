#Reset Drakkisath encounter:
UPDATE `creature_template` SET `minlevel`=59, `maxlevel`=60, `HealthModifier`=8 WHERE `entry`=10814; #Adds
UPDATE `creature_template` SET `speed_run`=0.99206, `HealthModifier`=25 WHERE `entry`=10363; #Drakkisath


#Tune Drakkisath encounter for 59b bracket:
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `HealthModifier`=16 WHERE `entry`=10814; #Adds
UPDATE `creature_template` SET `speed_run`=1.07, `HealthModifier`=50 WHERE `entry`=10363; #Drakkisath


