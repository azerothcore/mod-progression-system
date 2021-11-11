This is progression system module for AzerothCore!

It allows to load scripts and sql files automatically dependent on level brackets. It means that once you defined in config which level brackets should be present, all c++ scripts from these brackets are loaded and replaced with "normal" scripts in AzerothCore.

</br>
</br>
CONFIG

[Here](https://github.com/UltraNix/mod_progression-system/blob/master/conf/progression_system.conf.dist#L34) you can set which level brackets should be loaded. It'a bitmask, so you can set here multiple brackets to be loaded. [Allowed brackets masks](https://github.com/UltraNix/mod_progression-system/blob/master/src/ProgressionSystem.h#L11)

E.g. If you set 64, it means that scripts/sql files from level 50-59 - Tier B will be loaded. If you set 127, then all level brackets up to level 60 Tier 1. 0 means nothing - none of the scripts/sqls will be loaded.

</br>
</br>
<b>SQL FILES</b>
</br>
SQL files can be loaded to your databse once you have enabled auto DB updater in your worldserver config. All sql files should be put in proper folder in order to be loaded within specific level bracket. E.g. sqls related to bracket 40-49 should be put into https://github.com/UltraNix/mod_progression-system/tree/master/src/Bracket_40_49/sql/world
</br>
WARNING: SQL files once executed cannot be "unloaded". E.g. if you set in config 30-39 level bracket, then all sql files related to it will be loaded. But if you change your mind and set that config to 20-29 bracket, then the sql files from bracket 30-39 are still in your database and works. If you want to undo the changes done in these sql files, just make a new one sql file and restore the previous state.

</br>
</br>
</br>
<b>C++ SCRIPTS</b>
</br>
C++ scripts can also be automatically loaded dependent on bracket level. All you need to do, is to copy and paste C++ script you want to modify to proper folder, change whatever you want within and just create a new script loader function. <b>You don't need to change your script's name in database nor your C++ script's name (only script object name)</b>.
[Here](https://github.com/UltraNix/mod_progression-system/commit/aad916bbe068f28ce769d028f138f434ba4655a8) is the example how to do it.

</br>
</br>
2 notes:
</br>
1. Your custom script must renamed to something slightly different, otherwise core will still load old script. Preferable: `xxx_yy`, where `xxx` is the name ofold script and `yy` is the name of bracket, e.g. `boss_drakkisath` renamed to `boss_drakkisath_50_59_b`. Also, scripts loader function (`AddSC_xxx`) must be renamed accordingly, e.g. `AddSC_boss_drakkisath` renamed to `AddSC_boss_drakkisath_50_59_b`.
</br>
2. Don't forget to include that scripts loader function (`AddSC_xxx`) in bracket loader. E.g. `AddSC_boss_drakkisath_50_59_b` holds scripts related to bracket 50-59, it should be declared and defined in `Bracket_50_59_B_loader.cpp` (https://github.com/azerothcore/mod-progression-system/blob/NewModule/src/Bracket_50_59_B/Bracket_50_59_B_loader.cpp)

</br>
</br>
WARNING: If you are applying some changes to main script (in AzerothCore) and they are independent from the level bracket, you should apply these changes to your progressive script as well.
