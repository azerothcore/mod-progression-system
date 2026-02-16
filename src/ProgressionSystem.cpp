/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "ProgressionSystem.h"
#include "DBUpdater.h"
#include "DisableMgr.h"
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
        _dungeonDisables[{2, 33}]  = {1, "", ""};  // Shadowfang Keep
        _dungeonDisables[{2, 36}]  = {1, "", ""};  // Deadmines
        _dungeonDisables[{2, 43}]  = {1, "", ""};  // Wailing Caverns
        _dungeonDisables[{2, 48}]  = {1, "", ""};  // Blackfathom Deeps
        _dungeonDisables[{2, 389}] = {1, "", ""};  // Ragefire Chasm

        // 20-29 level range
        _dungeonDisables[{2, 34}] = {1, "", ""};  // Stormwind Stockades
        _dungeonDisables[{2, 47}] = {1, "", ""};  // Razorfen Kraul
        _dungeonDisables[{2, 90}] = {1, "", ""};  // Gnomeregan

        // 30-39 level range
        _dungeonDisables[{2, 70}]  = {1, "", ""};  // Uldaman
        _dungeonDisables[{2, 129}] = {1, "", ""};  // Razorfen Downs
        _dungeonDisables[{2, 189}] = {1, "", ""};  // Scarlet Monastery - All wings

        // 40-49 level range
        _dungeonDisables[{2, 109}] = {1, "", ""};  // Sunken Temple Dungeon
        _dungeonDisables[{2, 209}] = {1, "", ""};  // Zul'Farrak (ZF)
        _dungeonDisables[{2, 349}] = {1, "", ""};  // Maraudon - All wings

        // 50-59 level range
        _dungeonDisables[{2, 230}] = {1, "", ""};  // Blackrock Depths (BRD)
        _dungeonDisables[{2, 429}] = {1, "", ""};  // Dire Maul - All wings
        _dungeonDisables[{2, 229}] = {1, "", ""};  // Blackrock Spire - Both Lower (LBRS) & Upper (UBRS)
        _dungeonDisables[{2, 289}] = {1, "", ""};  // Scholomance
        _dungeonDisables[{2, 329}] = {1, "", ""};  // Stratholme

        // 60 level range - Tier 1
        _dungeonDisables[{2, 409}] = {1, "", ""};  // Molten Core

        // 60 level range - Tier 2
        _dungeonDisables[{2, 469}] = {1, "", ""};  // Blackwing Lair

        // 60 level range - Zul'Gurub
        _dungeonDisables[{2, 309}] = {1, "", ""};  // Zul'Gurub

        // 60 level range - Ahn'Qiraj
        _dungeonDisables[{2, 509}] = {1, "", ""};  // Ahn'Qiraj Ruins
        _dungeonDisables[{2, 531}] = {1, "", ""};  // Ahn'Qiraj Temple

        // 61-64 level range
        _dungeonDisables[{2, 542}] = {3, "", ""};  // The Blood Furnace
        _dungeonDisables[{2, 543}] = {3, "", ""};  // Hellfire Ramparts
        _dungeonDisables[{2, 546}] = {3, "", ""};  // The Underbog
        _dungeonDisables[{2, 547}] = {3, "", ""};  // The Slave Pens
        _dungeonDisables[{2, 557}] = {3, "", ""};  // Mana Tombs

        // 65-69 level range
        _dungeonDisables[{2, 269}] = {3, "", ""};  // The Black Morass
        _dungeonDisables[{2, 556}] = {3, "", ""};  // Sethekk Halls
        _dungeonDisables[{2, 558}] = {3, "", ""};  // Auchenai Crypts
        _dungeonDisables[{2, 560}] = {3, "", ""};  // The Escape from Durnholde

        // 70 level range
        _dungeonDisables[{2, 532}] = {1, "", ""};  // Karazhan
        _dungeonDisables[{2, 534}] = {1, "", ""};  // Hyjal Summit
        _dungeonDisables[{2, 540}] = {3, "", ""};  // The Shattered Halls
        _dungeonDisables[{2, 544}] = {1, "", ""};  // Magtheridon's Lair
        _dungeonDisables[{2, 545}] = {3, "", ""};  // The Steamvault
        _dungeonDisables[{2, 548}] = {1, "", ""};  // Serpentshrine Cavern
        _dungeonDisables[{2, 550}] = {1, "", ""};  // The Eye
        _dungeonDisables[{2, 552}] = {3, "", ""};  // The Arcatraz
        _dungeonDisables[{2, 553}] = {3, "", ""};  // The Botanica
        _dungeonDisables[{2, 554}] = {3, "", ""};  // The Mechanar
        _dungeonDisables[{2, 555}] = {3, "", ""};  // Shadow Labyrinth
        _dungeonDisables[{2, 564}] = {1, "", ""};  // Black Temple
        _dungeonDisables[{2, 565}] = {1, "", ""};  // Gruul's Lair
        _dungeonDisables[{2, 568}] = {1, "", ""};  // Zul'Aman
        _dungeonDisables[{2, 580}] = {1, "", ""};  // Sunwell Plateau
        _dungeonDisables[{2, 585}] = {3, "", ""};  // Magisters' Terrace

        // 71-74 level range
        _dungeonDisables[{2, 574}] = {3, "", ""};  // Utgarde Keep
        _dungeonDisables[{2, 576}] = {3, "", ""};  // The Nexus
        _dungeonDisables[{2, 600}] = {3, "", ""};  // Drak'Tharon Keep
        _dungeonDisables[{2, 601}] = {3, "", ""};  // Azjol-Nerub
        _dungeonDisables[{2, 619}] = {3, "", ""};  // Ahn'kahet: The Old Kingdom

        // 75-79 level range
        _dungeonDisables[{2, 575}] = {3, "", ""};  // Utgarde Pinnacle
        _dungeonDisables[{2, 578}] = {3, "", ""};  // The Oculus
        _dungeonDisables[{2, 595}] = {3, "", ""};  // The Culling of Stratholme
        _dungeonDisables[{2, 599}] = {3, "", ""};  // Halls of Stone
        _dungeonDisables[{2, 602}] = {3, "", ""};  // Halls of Lightning
        _dungeonDisables[{2, 604}] = {3, "", ""};  // Gundrak
        _dungeonDisables[{2, 608}] = {3, "", ""};  // Violet Hold

        // 80 level range
        _dungeonDisables[{2, 249}]  = {3, "", ""};   // Onyxia Lair
        _dungeonDisables[{4, 13276}] = {0, "", ""};  // Onyxia Lair LK Statistic
        _dungeonDisables[{2, 533}]  = {3, "", ""};   // Naxxramas
        _dungeonDisables[{2, 603}]  = {3, "", ""};   // Ulduar
        _dungeonDisables[{2, 615}]  = {3, "", ""};   // The Obsidian Sanctum
        _dungeonDisables[{2, 616}]  = {3, "", ""};   // The Eye of Eternity
        _dungeonDisables[{2, 624}]  = {3, "", ""};   // Vault of Archavon
        _dungeonDisables[{2, 631}]  = {15, "", ""};  // Icecrown Citadel
        _dungeonDisables[{2, 632}]  = {3, "", ""};   // The Forge of Souls
        _dungeonDisables[{2, 649}]  = {15, "", ""};  // Trial of The Crusader
        _dungeonDisables[{2, 650}]  = {3, "", ""};   // Trial of the Champion
        _dungeonDisables[{2, 658}]  = {3, "", ""};   // Pit of Saron
        _dungeonDisables[{2, 668}]  = {3, "", ""};   // Halls of Reflection
        _dungeonDisables[{2, 724}]  = {15, "", ""};  // The Ruby Sanctum
    }
    else if (bracket == "1_19")
    {
        for (uint32 entry : {33u, 36u, 43u, 48u, 389u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "20_29")
    {
        for (uint32 entry : {34u, 47u, 90u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "30_39")
    {
        for (uint32 entry : {70u, 129u, 189u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "40_49")
    {
        for (uint32 entry : {109u, 209u, 349u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "50_59_1")
    {
        for (uint32 entry : {230u, 429u, 289u, 329u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "50_59_2")
    {
        _dungeonDisables.erase({2, 229});
    }
    else if (bracket == "60_1_1")
    {
        _dungeonDisables.erase({2, 229});
    }
    else if (bracket == "60_1_2")
    {
        _dungeonDisables.erase({2, 409});
    }
    else if (bracket == "60_2_1")
    {
        _dungeonDisables.erase({2, 249});
    }
    else if (bracket == "60_2_2")
    {
        _dungeonDisables.erase({2, 469});
    }
    else if (bracket == "60_3_1")
    {
        _dungeonDisables.erase({2, 309});
    }
    else if (bracket == "60_3_2")
    {
        _dungeonDisables.erase({2, 509});
    }
    else if (bracket == "60_3_3")
    {
        _dungeonDisables.erase({2, 531});
    }
    else if (bracket == "61_64")
    {
        for (uint32 entry : {542u, 543u, 546u, 547u, 557u})
        {
            auto it = _dungeonDisables.find({2, entry});
            if (it != _dungeonDisables.end())
                it->second.flags &= ~1;
        }
    }
    else if (bracket == "65_69")
    {
        for (uint32 entry : {556u, 558u, 560u})
        {
            auto it = _dungeonDisables.find({2, entry});
            if (it != _dungeonDisables.end())
                it->second.flags &= ~1;
        }
    }
    else if (bracket == "70_1_1")
    {
        for (uint32 entry : {269u, 540u, 545u, 552u, 553u, 554u, 555u})
        {
            auto it = _dungeonDisables.find({2, entry});
            if (it != _dungeonDisables.end())
                it->second.flags &= ~1;
        }
    }
    else if (bracket == "70_1_2")
    {
        for (uint32 entry : {542u, 543u, 546u, 547u, 557u, 540u, 545u, 552u, 553u, 554u, 555u, 269u, 556u, 558u, 560u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "70_2_1")
    {
        for (uint32 entry : {544u, 565u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "70_2_2")
    {
        _dungeonDisables.erase({2, 532});
    }
    else if (bracket == "70_3_1")
    {
        _dungeonDisables.erase({2, 548});
    }
    else if (bracket == "70_3_2")
    {
        _dungeonDisables.erase({2, 550});
    }
    else if (bracket == "70_4_1")
    {
        _dungeonDisables.erase({2, 534});
    }
    else if (bracket == "70_4_2")
    {
        _dungeonDisables.erase({2, 564});
    }
    else if (bracket == "70_5")
    {
        _dungeonDisables.erase({2, 568});
    }
    else if (bracket == "70_6_1")
    {
        _dungeonDisables.erase({2, 585});
    }
    else if (bracket == "70_6_2")
    {
        _dungeonDisables.erase({2, 580});
    }
    else if (bracket == "71_74")
    {
        for (uint32 entry : {574u, 576u, 600u, 601u, 619u})
        {
            auto it = _dungeonDisables.find({2, entry});
            if (it != _dungeonDisables.end())
                it->second.flags &= ~1;
        }
    }
    else if (bracket == "75_79")
    {
        for (uint32 entry : {575u, 578u, 595u, 599u, 602u, 604u, 608u})
        {
            auto it = _dungeonDisables.find({2, entry});
            if (it != _dungeonDisables.end())
                it->second.flags &= ~1;
        }
    }
    else if (bracket == "80_1_1")
    {
        for (uint32 entry : {574u, 575u, 576u, 578u, 595u, 599u, 600u, 601u, 602u, 604u, 608u, 619u})
        {
            auto it = _dungeonDisables.find({2, entry});
            if (it != _dungeonDisables.end())
                it->second.flags &= ~1;
        }
    }
    else if (bracket == "80_1_2")
    {
        for (uint32 entry : {574u, 575u, 576u, 578u, 595u, 599u, 600u, 601u, 602u, 604u, 608u, 619u})
            _dungeonDisables.erase({2, entry});
    }
    else if (bracket == "80_1_3")
    {
        for (uint32 entry : {533u, 615u, 616u, 624u})
        {
            _dungeonDisables.erase({2, entry});
            _dungeonDisables.erase({8, entry});
        }
    }
    else if (bracket == "80_2")
    {
        _dungeonDisables.erase({2, 603});
        _dungeonDisables.erase({8, 603});
    }
    else if (bracket == "80_3")
    {
        for (uint32 entry : {249u, 649u, 650u})
        {
            _dungeonDisables.erase({2, entry});
            _dungeonDisables.erase({8, entry});
        }
    }
    else if (bracket == "80_4_1")
    {
        for (uint32 entry : {631u, 632u, 658u, 668u})
        {
            _dungeonDisables.erase({2, entry});
            _dungeonDisables.erase({8, entry});
        }
    }
    else if (bracket == "80_4_2")
    {
        _dungeonDisables.erase({2, 724});
        _dungeonDisables.erase({8, 724});
    }
}

void ProgressionMgr::ApplyDungeonDisables()
{
    for (auto const& [key, data] : _dungeonDisables)
    {
        sDisableMgr->AddDisable(static_cast<DisableType>(key.first), key.second, data.flags, data.params_0, data.params_1);
    }
    _dungeonDisables.clear();
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

class ProgressionSystemWorldScript : public WorldScript
{
public:
    ProgressionSystemWorldScript() : WorldScript("ProgressionSystemWorldScript", {WORLDHOOK_ON_BEFORE_WORLD_INITIALIZED}) {}

    void OnBeforeWorldInitialized() override
    {
        sProgressionMgr->ApplyDungeonDisables();
    }
};

void AddProgressionSystemScripts()
{
    if (sConfigMgr->GetOption<bool>("ProgressionSystem.LoadDatabase", true))
    {
        new ProgressionSystemLoadingDBUpdates();
        new ProgressionSystemWorldScript();
    }
}
