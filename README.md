This is progression system module for AzerothCore!

It allows to load scripts and sql files automatically dependent on level brackets. It means that once you defined in config which level brackets should be present, all c++ scripts from these brackets are loaded and replaced with "normal" scripts in AzerothCore.

</br>
</br>
CONFIG

[Here](https://github.com/azerothcore/mod-progression-system/blob/main/conf/progression_system.conf.dist#L40-L68) you can set which level brackets should be loaded. It's a bool configuration where 0 is deactivated and 1 is activated. You can add custom files to Bracket_Custom, they will be executed at the very last, meaning it will load all the previous brackets before loading the custom one. The naming convention for this sql file should be progression_custom_%%%% or it won't respect the apply order.

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
1. Your custom script must renamed to something slightly different, otherwise core will still load old script. Preferable: <code>xxx_yy</code>, where <code>xxx</code> is the name of old script and <code>yy</code> is the name of bracket, e.g. <code>boss_drakkisath</code> renamed to <code>boss_drakkisath_50_59_b</code>. Also, scripts loader function (<code>AddSC_xxx</code>) must be renamed accordingly, e.g. <code>AddSC_boss_drakkisath</code> renamed to <code>AddSC_boss_drakkisath_50_59_b</code>.
</br>
2. Don't forget to include that scripts loader function (<code>AddSC_xxx</code>) in bracket loader. E.g. <code>AddSC_boss_drakkisath_50_59_b</code> holds scripts related to bracket 50-59, it should be declared and defined in <code>Bracket_50_59_B_loader.cpp</code> (https://github.com/azerothcore/mod-progression-system/blob/NewModule/src/Bracket_50_59_B/Bracket_50_59_B_loader.cpp)

</br>
</br>
WARNING: If you are applying some changes to main script (in AzerothCore) and they are independent from the level bracket, you should apply these changes to your progressive script as well.

<b>DISCLAIMER<b>
This module is used by Chromiecraft and the progression order here presented will oftentimes reflect Chromiecraft's progression. If you would like a different progression you are free to change the order of the files (file locations) and scripts as you would like.

