-- Reset Drakkisath encounter from 50-59b bracket in 61-64 bracket:
-- These values are supposed to be stock AC.
UPDATE `creature_template` SET `minlevel`=59, `maxlevel`=60, `HealthModifier`=8 WHERE `entry`=10814; #Adds
UPDATE `creature_template` SET `speed_run`=0.99206, `HealthModifier`=25 WHERE `entry`=10363; #Drakkisath
