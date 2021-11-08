This is progression system module for AzerothCore!

It allows to load scripts and sql files automatically dependent on level brackets. It means that once you defined in config which level brackets should be present, all c++ scripts from these brackets are loaded and replaced with "normal" scripts in AzerothCore.

</br>
CONFIG

[Here](https://github.com/UltraNix/mod_progression-system/blob/master/conf/progression_system.conf.dist#L34) you can set which level brackets should be loaded. It'a bitmask, so you can set here multiple brackets to be loaded. [Allowed brackets masks](https://github.com/UltraNix/mod_progression-system/blob/master/src/ProgressionSystem.h#L11)

E.g. If you set 64, it means that scripts/sql files from level 50-59 - Tier B will be loaded. If you set 127, then all level brackets up to level 60 Tier 1. 0 means nothing - none of the scripts/sqls will be loaded.

</br>
SQL FILES

SQL files can be loaded to your databse once you have enabled auto DB updater in your worldserver config. All sql files should be put in proper folder in order to be loaded within specific level bracket. E.g. sqls related to bracket 40-49 should be put into https://github.com/UltraNix/mod_progression-system/tree/master/src/Bracket_40_49/sql/world
</br>
WARNING: SQL files once executed cannot be "unloaded". E.g. if you set in config 30-39 level bracket, then all sql files related to it will be loaded. But if you change your mind and set that config to 20-29 bracket, then the sql files from bracket 30-39 are still in your database and works. If you want to undo the changes done in these sql files, just make a new one sql file and restore the previous state.

</br>
C++ SCRIPTS

C++ scripts can also be automatically loaded dependent on bracket level. All you need to do, is to copy and paste C++ script you want to modify to proper folder, change whatever you want within and just create a new script loaer function. <b>You don't need to change your script's name in database nor your C++ script's name (only script object name)</b>.
[Here](https://github.com/UltraNix/mod_progression-system/commit/aad916bbe068f28ce769d028f138f434ba4655a8) is the example how to do it.
WARNING: If you are applying some changes to main script (in AzerothCore) and they are independent from the level bracket, you should apply these changes to your progressive script as well.
