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

#include "GameObjectAI.h"
#include "Group.h"
#include "LFGMgr.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"

#include "ProgressionSystem.h"

enum Misc
{

    SPELL_SUMMONING_RHYME_AURA = 45926,
    ACTION_START_EVENT         = -2574500,
    QUEST_SUMMON_AHUNE         = 11691,
    ITEM_MAGMA_TOTEM           = 34953,
    DATA_AHUNE_BUNNY           = 5,
    DATA_LUMA_SKYMOTHER        = 16,
    SPELL_CHILLING_AURA        = 46542
};

class go_ahune_ice_stone_1_19 : public GameObjectAI
{
public:
    go_ahune_ice_stone_1_19(GameObject* go) : GameObjectAI(go), _instance(go->GetInstanceScript()) { }
 
    bool GossipSelect(Player* player, uint32 /*sender*/, uint32 /*action*/) override
    {
        if (!player)
            return true;

        // Not allowed in RDF/LFG
        if (player->GetGroup() && player->GetGroup()->isLFGGroup())
        {
            return true;
        }

        // Only allow summoning him in heroic
        if (!me->GetMap()->IsHeroic())
        {
            return true;
        }

        player->DestroyItemCount(ITEM_MAGMA_TOTEM, 1, true, false);
        player->AreaExploredOrEventHappens(QUEST_SUMMON_AHUNE); //auto rewarded

        if (Creature* ahuneBunny = _instance->GetCreature(DATA_AHUNE_BUNNY))
            ahuneBunny->AI()->DoAction(ACTION_START_EVENT);

        if (Creature* luma = _instance->GetCreature(DATA_LUMA_SKYMOTHER))
            luma->CastSpell(player, SPELL_SUMMONING_RHYME_AURA, true);
        CloseGossipMenuFor(player);
        me->Delete();
        return true;
    }

private:
    InstanceScript* _instance;
};

class global_midsummer_tuning_script : public GlobalScript
{
public:
    global_midsummer_tuning_script() : GlobalScript("global_midsummer_tuning_script") { }

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        if (spellInfo->Id == SPELL_CHILLING_AURA) // Chilling Aura
        {
            spellInfo->Effects[EFFECT_0].BasePoints = 1000;
        }
    }
};

void AddSC_event_midsummer_1_19()
{
    RegisterGameObjectAI(go_ahune_ice_stone_1_19);
    new global_midsummer_tuning_script();
}
