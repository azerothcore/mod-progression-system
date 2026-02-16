/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"
#include "DisableMgr.h"
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
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, MAP_SHADOWFANG_KEEP, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 36, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 43, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 48, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 389, 1, "", "");

        // 20-29 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 34, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 47, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 90, 1, "", "");

        // 30-39 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 70, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 129, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 189, 1, "", "");

        // 40-49 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 109, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 209, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 349, 1, "", "");

        // 50-59 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 230, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 429, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 229, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 289, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 329, 1, "", "");

        // 60 level range - Tier 1
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 409, 1, "", "");

        // 60 level range - Tier 2
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 469, 1, "", "");

        // 60 level range - Zul'Gurub
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 309, 1, "", "");

        // 60 level range - Ahn'Qiraj
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 509, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 531, 1, "", "");

        // 61-64 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 542, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 543, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 546, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 547, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 557, 3, "", "");

        // 65-69 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 269, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 556, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 558, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 560, 3, "", "");

        // 70 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 532, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 534, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 540, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 544, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 545, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 548, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 550, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 552, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 553, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 554, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 555, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 564, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 565, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 568, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 580, 1, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 585, 3, "", "");

        // 71-74 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 574, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 576, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 600, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 601, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 619, 3, "", "");

        // 75-79 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 575, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 578, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 595, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 599, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 602, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 604, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 608, 3, "", "");

        // 80 level range
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 249, 3, "", "");
        WorldDatabase.Execute("DELETE FROM `disables` WHERE `sourceType` = 4 AND `entry` = 13276");
        WorldDatabase.Execute("INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES "
            "(4, 13276, 0, '', '', 'Onyxia Lair LK Statistic')");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 533, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 603, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 615, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 616, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 624, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 631, 15, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 632, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 649, 15, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 650, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 658, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 668, 3, "", "");
        sDisableMgr->AddDisable(DISABLE_TYPE_MAP, 724, 15, "", "");
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
