/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"
#include "DBUpdater.h"

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

class ProgressionSystemLoadingDBUpdates : public DatabaseScript
{
public:
    ProgressionSystemLoadingDBUpdates() : DatabaseScript("ProgressionSystemLoadingDBUpdates") {}

    void OnAfterDatabasesLoaded(uint32 updateFlags) override
    {
        LOG_INFO("server.server", "Loading mod-progression-system updates...");

        if (DBUpdater::IsEnabled(LoginDatabase, updateFlags))
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false))
            {
                LoginDatabase.Query("DELETE FROM updates WHERE name LIKE '%progression%'");
            }

            std::vector<std::string> loginDatabaseDirectories = GetDatabaseDirectories("auth");
            if (!loginDatabaseDirectories.empty())
            {
                DBUpdater::Update(LoginDatabase, &loginDatabaseDirectories);
            }
        }

        if (DBUpdater::IsEnabled(CharacterDatabase, updateFlags))
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false))
            {
                CharacterDatabase.Query("DELETE FROM updates WHERE name LIKE '%progression%'");
            }

            std::vector<std::string> charactersDatabaseDirectories = GetDatabaseDirectories("characters");
            if (!charactersDatabaseDirectories.empty())
            {
                DBUpdater::Update(CharacterDatabase, &charactersDatabaseDirectories);
            }
        }

        if (DBUpdater::IsEnabled(WorldDatabase, updateFlags))
        {
            if (sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false))
            {
                WorldDatabase.Query("DELETE FROM updates WHERE name LIKE '%progression%'");
            }

            std::vector<std::string> worldDatabaseDirectories = GetDatabaseDirectories("world");
            if (!worldDatabaseDirectories.empty())
            {
                DBUpdater::Update(WorldDatabase, &worldDatabaseDirectories);
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
