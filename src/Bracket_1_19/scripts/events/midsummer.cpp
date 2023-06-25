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

#include "Group.h"
#include "LFGMgr.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"

#include "ProgressionSystem.h"

#define GOSSIP_TEXT_ID          15864
#define QUEST_SUMMON_AHUNE      11691
#define ITEM_MAGMA_TOTEM        34953
#define AHUNE_DEFAULT_MODEL     23344

const Position AhuneSummonPos = { -97.3473f, -233.139f, -1.27587f, M_PI / 2 };

enum Misc
{
    NPC_AHUNE                  = 25740,
    NPC_AHUNE_SUMMON_LOC_BUNNY = 25745,

    SPELL_STARTING_BEAM        = 46593,
    SPELL_CHILLING_AURA        = 46542,

    SET_GUID_INVOKER           = 1
};

class go_ahune_ice_stone_1_19 : public GameObjectScript
{
public:
    go_ahune_ice_stone_1_19() : GameObjectScript("go_ahune_ice_stone") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        if (!player || !go)
            return true;

        // Not allowed in RDF/LFG
        if (player->GetGroup() && player->GetGroup()->isLFGGroup())
        {
            return true;
        }

        // Only allow summoning him in heroic
        if (!go->GetMap()->IsHeroic())
        {
            return true;
        }

        if (go->FindNearestCreature(NPC_AHUNE, 200.0f, true))
            return true;

        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Disturb the stone and summon Lord Ahune.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1337);
        SendGossipMenuFor(player, GOSSIP_TEXT_ID, go->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, GameObject* go, uint32 /*sender*/, uint32 action) override
    {
        if (!player || !go)
            return true;

        if (action != GOSSIP_ACTION_INFO_DEF + 1337)
            return true;

        // Not allowed in RDF/LFG
        if (player->GetGroup() && player->GetGroup()->isLFGGroup())
        {
            return true;
        }

        if (go->FindNearestCreature(NPC_AHUNE, 200.0f, true))
            return true;

        if (Creature* c = go->SummonCreature(NPC_AHUNE, AhuneSummonPos, TEMPSUMMON_MANUAL_DESPAWN))
        {
            player->DestroyItemCount(ITEM_MAGMA_TOTEM, 1, true, false);
            player->AreaExploredOrEventHappens(QUEST_SUMMON_AHUNE); // auto rewarded

            c->SetVisible(false);
            c->SetDisplayId(AHUNE_DEFAULT_MODEL);
            c->SetFloatValue(UNIT_FIELD_COMBATREACH, 18.0f);
            if (c->AI())
            {
                c->AI()->SetGUID(player->GetGUID(), SET_GUID_INVOKER);
            }
            if (Creature* bunny = go->SummonCreature(NPC_AHUNE_SUMMON_LOC_BUNNY, AhuneSummonPos, TEMPSUMMON_TIMED_DESPAWN, 12000))
                if (Creature* crystal_trigger = go->SummonCreature(WORLD_TRIGGER, go->GetPositionX(), go->GetPositionY(), 5.0f, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 12000))
                    crystal_trigger->CastSpell(bunny, SPELL_STARTING_BEAM, false);
        }

        CloseGossipMenuFor(player);
        return true;
    }
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
    new go_ahune_ice_stone_1_19();
    new global_midsummer_tuning_script();
}
