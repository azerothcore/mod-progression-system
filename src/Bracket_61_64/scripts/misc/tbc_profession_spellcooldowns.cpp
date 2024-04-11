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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"

class tbc_profession_spellcooldowns : public GlobalScript
{
public:
    tbc_profession_spellcooldowns() : GlobalScript("tbc_profession_spellcooldowns") { }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        switch (spellInfo->Id)
        {
            // Some TBC craftables
            case 31373: // Spellcloth
            case 26751: // Mooncloth
            case 36686: // Shadowcloth
            case 32766: // Transmute: Skyfire Diamond
            case 32765: // Transmute: Earthstorm Diamond
            case 29688: // Primal Might
                spellInfo->RecoveryTime = 72000000;
                break;
        }
    }
};

void AddSC_tbc_profession_spellcooldowns()
{
    new tbc_profession_spellcooldowns();
}
