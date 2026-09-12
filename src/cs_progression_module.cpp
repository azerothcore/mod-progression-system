/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Chat.h"
#include "ProgressionSystem.h"

using namespace Acore::ChatCommands;

class progression_module_commandscript : public CommandScript
{
public:
    progression_module_commandscript() : CommandScript("progression_module_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable progressionTable =
        {
            { "info", HandleProgModuleInfoCommand, SEC_MODERATOR, Console::Yes }
        };

        static ChatCommandTable commandTable =
        {
            { "progression", progressionTable },
        };

        return commandTable;
    }

    static bool HandleProgModuleInfoCommand(ChatHandler* handler)
    {
        handler->SendSysMessage("Progression Module Settings");

        for (std::string const& bracketName : ProgressionBracketsNames)
            handler->PSendSysMessage("Bracket: {} (Enabled: {})", bracketName, (sConfigMgr->GetOption<bool>("ProgressionSystem.Bracket_" + bracketName, false)));

        handler->PSendSysMessage("ReapplyUpdates: {}", sConfigMgr->GetOption<bool>("ProgressionSystem.ReapplyUpdates", false));

        return true;
    }
};

void AddSC_progression_module_commandscript()
{
    new progression_module_commandscript();
}
