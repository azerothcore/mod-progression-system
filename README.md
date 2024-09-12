# Progression System Module for AzerothCore

The Progression System Module allows for the automatic loading of scripts and SQL files based on level brackets. By defining which level brackets should be active in the configuration, C++ scripts from these brackets are loaded and replace the default "normal" scripts in AzerothCore.

## CONFIG

In the [configuration file](https://github.com/azerothcore/mod-progression-system/blob/main/conf/progression_system.conf.dist#L40-L68), you can set which level brackets should be loaded. This is a boolean configuration where `0` deactivates and `1` activates the brackets. You can add custom files to the `Bracket_Custom` section, which will be executed last, meaning all previous brackets will be loaded before the custom one. Custom SQL files should follow the naming convention `progression_custom_%%%%` to ensure the correct apply order.

## SQL FILES

SQL files can be loaded into your database once you have enabled the auto DB updater in your worldserver config. Place SQL files in the appropriate folder to be loaded for a specific level bracket. For example, SQLs related to the 40-49 bracket should be placed in [this folder](https://github.com/UltraNix/mod_progression-system/tree/master/src/Bracket_40_49/sql/world).

**WARNING:** SQL files cannot be "unloaded" once executed. If you configure the system to use the 30-39 level bracket and later change it to the 20-29 bracket, the SQL files from the 30-39 bracket will still be in your database. To undo changes made by these SQL files, create a new SQL file to restore the previous state in another bracket.

**WARNING:** If you enable bracket 20-29 but DO NOT enable the bracket that reverts the SQL applied at 20-29, the changes will remain in your database leading to POLLUTION! Easiest way to revert all changes is to uninstall the module and reset your world database. 

**DO NOT ENABLE BRACKETS IF YOU ARE NOT SURE YOU WANT TO USE THEM. IT WILL LEAD TO DATABASE POLLUTION IF NOT REVERTED PROPERLY. IF YOU DO NOT KNOW HOW TO REVERT CHANGES, RESET YOUR WORLD DATABASE**

## C++ SCRIPTS

C++ scripts can also be automatically loaded based on the bracket level. To do this, copy and paste the C++ script you want to modify into the appropriate folder, make your changes, and create a new script loader function. You do not need to change the script's name in the database or the C++ script's name (only the script object name).

[Here](https://github.com/UltraNix/mod_progression-system/commit/aad916bbe068f28ce769d028f138f434ba4655a8) is an example of how to do it.

### Notes:
1. Rename your custom script to something slightly different to avoid conflicts with the old script. For example, rename `boss_drakkisath` to `boss_drakkisath_50_59_b`. Also, rename the script loader function from `AddSC_boss_drakkisath` to `AddSC_boss_drakkisath_50_59_b`.
2. Include the renamed script loader function in the bracket loader. For instance, `AddSC_boss_drakkisath_50_59_b` should be declared and defined in `Bracket_50_59_B_loader.cpp` ([example](https://github.com/azerothcore/mod-progression-system/blob/NewModule/src/Bracket_50_59_B/Bracket_50_59_B_loader.cpp)).

**WARNING:** If you make changes to a main script in AzerothCore that are independent of the level bracket, ensure these changes are also applied to your progressive script.

## DISCLAIMER

This module is used by Chromiecraft, and the progression order often reflects Chromiecraft's progression. If you prefer a different progression, you are free to change the order of the files (file locations) and scripts as needed.
