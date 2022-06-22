/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"
#include "DBUpdater.h"

inline std::vector<std::string> GetDatabaseDirectories(std::string const& folderName)
{
    std::vector<std::string> directories;

    std::string const path = "/modules/mod-progression-system/src/Bracket_";
    for (uint8 i = 0; i < PROGRESSION_BRACKET_MAX; ++i)
    {
        uint32 bracketsMask = 1 << i;
        if (!(sConfigMgr->GetOption<int>("ProgressionSystem.Brackets", 0) & bracketsMask))
        {
            continue;
        }

        std::string bracketPath = path + ProgressionBracketsNames[i] + "/sql/" + folderName;
        directories.push_back(std::move(bracketPath));
    }

    return directories;
}

class ProgressionSystemLoadingDBUpdates : public DatabaseScript
{
public:
    ProgressionSystemLoadingDBUpdates() : DatabaseScript("ProgressionSystemLoadingDBUpdates") {}

    void OnAfterDatabasesLoaded(uint32 updateFlags) override
    {
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
    }
};

void AddProgressionSystemScripts()
{
    if (sConfigMgr->GetOption<bool>("ProgressionSystem.LoadDatabase", true))
    {
        new ProgressionSystemLoadingDBUpdates();
    }
}
