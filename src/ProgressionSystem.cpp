/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"
#include "DBUpdater.h"
#include "Tokenize.h"
#include "StringConvert.h"

inline std::vector<std::string> GetDatabaseDirectories(std::string const& folderName)
{
    std::vector<std::string> directories;

    std::string const path = "/modules/mod-progression-system/src/Bracket_";
    for (std::string const& bracketName : ProgressionBracketsNames)
    {
        if (!(sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_" + bracketName, false)))
        {
            continue;
        }

        std::string bracketPath = path + bracketName + "/sql/" + folderName;
        directories.push_back(std::move(bracketPath));
    }

    return directories;
}

void ProgressionMgr::LoadBracketDisables(std::string const& bracket)
{
    if (bracket == "0")
    {
        // 1-19 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (33, 36, 43, 48, 389)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 33, 1, '', '', 'Shadowfang Keep'),"
            "(2, 36, 1, '', '', 'Deadmines'),"
            "(2, 43, 1, '', '', 'Wailing Caverns'),"
            "(2, 48, 1, '', '', 'Blackfathom Deeps'),"
            "(2, 389, 1, '', '', 'Ragefire Chasm')");

        // 20-29 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (34, 47, 90)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 34, 1, '', '', 'Stormwind Stockades'),"
            "(2, 47, 1, '', '', 'Razorfen Kraul'),"
            "(2, 90, 1, '', '', 'Gnomeregan')");

        // 30-39 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (70, 129, 189)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 70, 1, '', '', 'Uldaman'),"
            "(2, 129, 1, '', '', 'Razorfen Downs'),"
            "(2, 189, 1, '', '', 'Scarlet Monastery - All wings')");

        // 40-49 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (109, 209, 349)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 109, 1, '', '', 'Sunken Temple Dungeon'),"
            "(2, 209, 1, '', '', 'Zul''Farrak (ZF)'),"
            "(2, 349, 1, '', '', 'Maraudon - All wings')");

        // 50-59 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (230, 429, 229, 289, 329)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 230, 1, '', '', 'Blackrock Depths (BRD)'),"
            "(2, 429, 1, '', '', 'Dire Maul - All wings'),"
            "(2, 229, 1, '', '', 'Blackrock Spire - Both Lower (LBRS) & Upper (UBRS)'),"
            "(2, 289, 1, '', '', 'Scholomance'),"
            "(2, 329, 1, '', '', 'Stratholme')");

        // 60 level range - Tier 1
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 409");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 409, 1, '', '', 'Molten Core')");

        // 60 level range - Tier 2
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 469");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 469, 1, '', '', 'Blackwing Lair')");

        // 60 level range - Zul'Gurub
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 309");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 309, 1, '', '', 'Zul''Gurub')");

        // 60 level range - Ahn'Qiraj
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (509, 531)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 509, 1, '', '', 'Ahn''Qiraj Ruins'),"
            "(2, 531, 1, '', '', 'Ahn''Qiraj Temple')");

        // 61-64 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (542, 543, 546, 547, 557)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 542, 3, '', '', 'The Blood Furnace'),"
            "(2, 543, 3, '', '', 'Hellfire Ramparts'),"
            "(2, 546, 3, '', '', 'The Underbog'),"
            "(2, 547, 3, '', '', 'The Slave Pens'),"
            "(2, 557, 3, '', '', 'Mana Tombs')");

        // 65-69 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (269, 556, 558, 560)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 269, 3, '', '', 'The Black Morass'),"
            "(2, 556, 3, '', '', 'Sethekk Halls'),"
            "(2, 558, 3, '', '', 'Auchenai Crypts'),"
            "(2, 560, 3, '', '', 'The Escape from Durnholde')");

        // 70 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (532, 534, 540, 544, 545, 548, 550, 552, 553, 554, 555, 564, 565, 568, 580, 585)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 532, 1, '', '', 'Karazhan'),"
            "(2, 534, 1, '', '', 'Hyjal Summit'),"
            "(2, 540, 3, '', '', 'The Shattered Halls'),"
            "(2, 544, 1, '', '', 'Magtheridon''s Lair'),"
            "(2, 545, 3, '', '', 'The Steamvault'),"
            "(2, 548, 1, '', '', 'Serpentshrine Cavern'),"
            "(2, 550, 1, '', '', 'The Eye'),"
            "(2, 552, 3, '', '', 'The Arcatraz'),"
            "(2, 553, 3, '', '', 'The Botanica'),"
            "(2, 554, 3, '', '', 'The Mechanar'),"
            "(2, 555, 3, '', '', 'Shadow Labyrinth'),"
            "(2, 564, 1, '', '', 'Black Temple'),"
            "(2, 565, 1, '', '', 'Gruul''s Lair'),"
            "(2, 568, 1, '', '', 'Zul''Aman'),"
            "(2, 580, 1, '', '', 'Sunwell Plateau'),"
            "(2, 585, 3, '', '', 'Magisters'' Terrace')");

        // 71-74 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (574, 576, 600, 601, 619)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 574, 3, '', '', 'Utgarde Keep'),"
            "(2, 576, 3, '', '', 'The Nexus'),"
            "(2, 600, 3, '', '', 'Drak''Tharon Keep'),"
            "(2, 601, 3, '', '', 'Azjol-Nerub'),"
            "(2, 619, 3, '', '', 'Ahn''kahet: The Old Kingdom')");

        // 75-79 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (575, 578, 595, 599, 602, 604, 608)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 575, 3, '', '', 'Utgarde Pinnacle'),"
            "(2, 578, 3, '', '', 'The Oculus'),"
            "(2, 595, 3, '', '', 'The Culling of Stratholme'),"
            "(2, 599, 3, '', '', 'Halls of Stone'),"
            "(2, 602, 3, '', '', 'Halls of Lightning'),"
            "(2, 604, 3, '', '', 'Gundrak'),"
            "(2, 608, 3, '', '', 'Violet Hold')");

        // 80 level range
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (249, 533, 603, 615, 616, 624, 631, 632, 649, 650, 658, 668, 724, 13276)");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(2, 249, 3, '', '', 'Onyxia Lair'),"
            "(4, 13276, 0, '', '', 'Onyxia Lair LK Statistic'),"
            "(2, 533, 3, '', '', 'Naxxramas'),"
            "(2, 603, 3, '', '', 'Ulduar'),"
            "(2, 615, 3, '', '', 'The Obsidian Sanctum'),"
            "(2, 616, 3, '', '', 'The Eye of Eternity'),"
            "(2, 624, 3, '', '', 'Vault of Archavon'),"
            "(2, 631, 15, '', '', 'Icecrown Citadel'),"
            "(2, 632, 3, '', '', 'The Forge of Souls'),"
            "(2, 649, 15, '', '', 'Trial of The Crusader'),"
            "(2, 650, 3, '', '', 'Trial of the Champion'),"
            "(2, 658, 3, '', '', 'Pit of Saron'),"
            "(2, 668, 3, '', '', 'Halls of Reflection'),"
            "(2, 724, 15, '', '', 'The Ruby Sanctum')");
    }
    else if (bracket == "1_19")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (33, 36, 43, 48, 389)");
    }
    else if (bracket == "20_29")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (34, 47, 90)");
    }
    else if (bracket == "30_39")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (70, 129, 189)");
    }
    else if (bracket == "40_49")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (109, 209, 349)");
    }
    else if (bracket == "50_59_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (230, 429, 289, 329)");
    }
    else if (bracket == "50_59_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (229)");
    }
    else if (bracket == "60_1_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (229)");
    }
    else if (bracket == "60_1_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 409");
    }
    else if (bracket == "60_2_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 249 AND `sourceType` = 2");
    }
    else if (bracket == "60_2_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 469");
    }
    else if (bracket == "60_3_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` = 309");
    }
    else if (bracket == "60_3_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (509)");
    }
    else if (bracket == "60_3_3")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (531)");
    }
    else if (bracket == "61_64")
    {
        WorldDatabase.Execute("UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (542, 543, 546, 547, 557)");
    }
    else if (bracket == "65_69")
    {
        WorldDatabase.Execute("UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (556, 558, 560)");
    }
    else if (bracket == "70_1_1")
    {
        WorldDatabase.Execute("UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (269, 540, 545, 552, 553, 554, 555)");
    }
    else if (bracket == "70_1_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (542, 543, 546, 547, 557, 540, 545, 552, 553, 554, 555, 269, 556, 558, 560)");
    }
    else if (bracket == "70_2_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (544, 565)");
    }
    else if (bracket == "70_2_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (532)");
    }
    else if (bracket == "70_3_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (548)");
    }
    else if (bracket == "70_3_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (550)");
    }
    else if (bracket == "70_4_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (534)");
    }
    else if (bracket == "70_4_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (564)");
    }
    else if (bracket == "70_5")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (568)");
    }
    else if (bracket == "70_6_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (585)");
    }
    else if (bracket == "70_6_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (580)");
    }
    else if (bracket == "71_74")
    {
        WorldDatabase.Execute("UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (574, 576, 600, 601, 619)");
    }
    else if (bracket == "75_79")
    {
        WorldDatabase.Execute("UPDATE `disables` SET `flags`=`flags`&~1 WHERE `entry` IN (575, 578, 595, 599, 602, 604, 608)");
    }
    else if (bracket == "80_1_1")
    {
        WorldDatabase.Execute("UPDATE `disables` SET `flags` = `flags` &~1 WHERE `entry` IN (574, 575, 576, 578, 595, 599, 600, 601, 602, 604, 608, 619) AND `sourceType` = 2");
    }
    else if (bracket == "80_1_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `entry` IN (574, 575, 576, 578, 595, 599, 600, 601, 602, 604, 608, 619) AND `sourceType` = 2");
    }
    else if (bracket == "80_1_3")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (533, 615, 616, 624)");
    }
    else if (bracket == "80_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (603)");
    }
    else if (bracket == "80_3")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (249, 649, 650)");
    }
    else if (bracket == "80_4_1")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` IN (631, 632, 658, 668)");
    }
    else if (bracket == "80_4_2")
    {
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `sourceType` IN (2, 8) AND `entry` = 724");
    }
}

class ProgressionSystemLoadingDBUpdates : public DatabaseScript
{
public:
    ProgressionSystemLoadingDBUpdates() : DatabaseScript("ProgressionSystemLoadingDBUpdates") {}

    void OnAfterDatabasesLoaded(uint32 updateFlags) override
    {
        LOG_INFO("server.server", "Loading mod-progression-system updates...");

        if (DBUpdater<LoginDatabaseConnection>::IsEnabled(updateFlags))
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false))
            {
                LoginDatabase.Query("DELETE FROM updates WHERE name LIKE '%progression%'");
            }

            std::vector<std::string> loginDatabaseDirectories = GetDatabaseDirectories("auth");
            if (!loginDatabaseDirectories.empty())
            {
                DBUpdater<LoginDatabaseConnection>::Update(LoginDatabase, &loginDatabaseDirectories);
            }
        }

        if (DBUpdater<CharacterDatabaseConnection>::IsEnabled(updateFlags))
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false))
            {
                CharacterDatabase.Query("DELETE FROM updates WHERE name LIKE '%progression%'");
            }

            std::vector<std::string> charactersDatabaseDirectories = GetDatabaseDirectories("characters");
            if (!charactersDatabaseDirectories.empty())
            {
                DBUpdater<CharacterDatabaseConnection>::Update(CharacterDatabase, &charactersDatabaseDirectories);
            }
        }

        if (DBUpdater<WorldDatabaseConnection>::IsEnabled(updateFlags))
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false))
            {
                WorldDatabase.Query("DELETE FROM updates WHERE name LIKE '%progression%'");
            }

            std::vector<std::string> worldDatabaseDirectories = GetDatabaseDirectories("world");
            if (!worldDatabaseDirectories.empty())
            {
                DBUpdater<WorldDatabaseConnection>::Update(WorldDatabase, &worldDatabaseDirectories);
            }
        }

        // Load bracket dungeon disables
        for (std::string const& bracketName : ProgressionBracketsNames)
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_" + bracketName, false))
            {
                sProgressionMgr->LoadBracketDisables(bracketName);
            }
        }

        // Remove disabled attunements
        std::string disabledAttunements = sConfigMgr->GetOption<std::string>("ProgressionSystem.DisabledAttunements", "");
        for (auto& itr : Acore::Tokenize(disabledAttunements, ',', false))
            WorldDatabase.Query("DELETE FROM dungeon_access_requirements WHERE dungeon_access_id = {}", Acore::StringTo<uint32>(itr).value());
    }
};

void AddProgressionSystemScripts()
{
    if (sConfigMgr->GetOption<bool>("ProgressionSystem.LoadDatabase", true))
    {
        new ProgressionSystemLoadingDBUpdates();
    }
}
