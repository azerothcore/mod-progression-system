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

#include "GameObject.h"
#include "GameObjectAI.h"
#include "InstanceScript.h"
#include "Map.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "blackwing_lair.h"

enum Emotes
{
    EMOTE_FRENZY                                           = 0,
    EMOTE_SHIMMER                                          = 1,
};

enum Spells
{
    // Other spells
    SPELL_INCINERATE                                       = 23308,   //Incinerate 23308, 23309
    SPELL_TIMELAPSE                                        = 23310,   //Time lapse 23310, 23311(old threat mod that was removed in 2.01)
    SPELL_CORROSIVEACID                                    = 23313,   //Corrosive Acid 23313, 23314
    SPELL_IGNITEFLESH                                      = 23315,   //Ignite Flesh 23315, 23316
    SPELL_FROSTBURN                                        = 23187,   //Frost burn 23187, 23189
    // Brood Affliction 23173 - Scripted Spell that cycles through all targets within 100 yards and has a chance to cast one of the afflictions on them
    // Since Scripted spells arn't coded I'll just write a function that does the same thing
    SPELL_BROODAF_BLUE                                     = 23153,   //Blue affliction 23153
    SPELL_BROODAF_BLACK                                    = 23154,   //Black affliction 23154
    SPELL_BROODAF_RED                                      = 23155,   //Red affliction 23155 (23168 on death)
    SPELL_BROODAF_BRONZE                                   = 23170,   //Bronze Affliction  23170
    SPELL_BROODAF_GREEN                                    = 23169,   //Brood Affliction Green 23169
    SPELL_CHROMATIC_MUT_1                                  = 23174,   //Spell cast on player if they get all 5 debuffs

    SPELL_ELEMENTAL_SHIELD                                 = 22276,
    SPELL_FRENZY                                           = 23128,
    SPELL_ENRAGE                                           = 23537
};

enum Events
{
    EVENT_SHIMMER                   = 1,
    EVENT_BREATH_1                  = 2,
    EVENT_BREATH_2                  = 3,
    EVENT_AFFLICTION                = 4,
    EVENT_FRENZY                    = 5,
    EVENT_CHECK_TIME_LAPSE_TARGET   = 6
};

enum Misc
{
    DATA_LEVER_USED = 0
};

// not sniffed yet.
Position const homePos = { -7487.577148f, -1074.366943f, 476.555023f, 5.325001f };

class boss_chromaggus_60_2_A : public CreatureScript
{
public:
    boss_chromaggus_60_2_A() : CreatureScript("boss_chromaggus") { }

    struct boss_chromaggusAI_60_2_A : public BossAI
    {
        boss_chromaggusAI_60_2_A(Creature* creature) : BossAI(creature, DATA_CHROMAGGUS)
        {
            Initialize();

            Breath1_Spell = 0;
            Breath2_Spell = 0;

            // Select the 2 breaths that we are going to use until despawned
            // 5 possiblities for the first breath, 4 for the second, 20 total possiblites
            // This way we don't end up casting 2 of the same breath
            // TL TL would be stupid
            switch (urand(0, 19))
            {
                // B1 - Incin
                case 0:
                    Breath1_Spell = SPELL_INCINERATE;
                    Breath2_Spell = SPELL_TIMELAPSE;
                    break;
                case 1:
                    Breath1_Spell = SPELL_INCINERATE;
                    Breath2_Spell = SPELL_CORROSIVEACID;
                    break;
                case 2:
                    Breath1_Spell = SPELL_INCINERATE;
                    Breath2_Spell = SPELL_IGNITEFLESH;
                    break;
                case 3:
                    Breath1_Spell = SPELL_INCINERATE;
                    Breath2_Spell = SPELL_FROSTBURN;
                    break;

                    // B1 - TL
                case 4:
                    Breath1_Spell = SPELL_TIMELAPSE;
                    Breath2_Spell = SPELL_INCINERATE;
                    break;
                case 5:
                    Breath1_Spell = SPELL_TIMELAPSE;
                    Breath2_Spell = SPELL_CORROSIVEACID;
                    break;
                case 6:
                    Breath1_Spell = SPELL_TIMELAPSE;
                    Breath2_Spell = SPELL_IGNITEFLESH;
                    break;
                case 7:
                    Breath1_Spell = SPELL_TIMELAPSE;
                    Breath2_Spell = SPELL_FROSTBURN;
                    break;

                    //B1 - Acid
                case 8:
                    Breath1_Spell = SPELL_CORROSIVEACID;
                    Breath2_Spell = SPELL_INCINERATE;
                    break;
                case 9:
                    Breath1_Spell = SPELL_CORROSIVEACID;
                    Breath2_Spell = SPELL_TIMELAPSE;
                    break;
                case 10:
                    Breath1_Spell = SPELL_CORROSIVEACID;
                    Breath2_Spell = SPELL_IGNITEFLESH;
                    break;
                case 11:
                    Breath1_Spell = SPELL_CORROSIVEACID;
                    Breath2_Spell = SPELL_FROSTBURN;
                    break;

                    //B1 - Ignite
                case 12:
                    Breath1_Spell = SPELL_IGNITEFLESH;
                    Breath2_Spell = SPELL_INCINERATE;
                    break;
                case 13:
                    Breath1_Spell = SPELL_IGNITEFLESH;
                    Breath2_Spell = SPELL_CORROSIVEACID;
                    break;
                case 14:
                    Breath1_Spell = SPELL_IGNITEFLESH;
                    Breath2_Spell = SPELL_TIMELAPSE;
                    break;
                case 15:
                    Breath1_Spell = SPELL_IGNITEFLESH;
                    Breath2_Spell = SPELL_FROSTBURN;
                    break;

                    //B1 - Frost
                case 16:
                    Breath1_Spell = SPELL_FROSTBURN;
                    Breath2_Spell = SPELL_INCINERATE;
                    break;
                case 17:
                    Breath1_Spell = SPELL_FROSTBURN;
                    Breath2_Spell = SPELL_TIMELAPSE;
                    break;
                case 18:
                    Breath1_Spell = SPELL_FROSTBURN;
                    Breath2_Spell = SPELL_CORROSIVEACID;
                    break;
                case 19:
                    Breath1_Spell = SPELL_FROSTBURN;
                    Breath2_Spell = SPELL_IGNITEFLESH;
                    break;
            };

            EnterEvadeMode();
        }

        void Initialize()
        {
            Enraged = false;
        }

        void SetData(uint32 id, uint32 /*data*/) override
        {
            if (id == DATA_LEVER_USED)
            {
                me->SetHomePosition(homePos);
            }
        }

        void Reset() override
        {
            _Reset();

            Initialize();
        }

        void EnterCombat(Unit* victim) override
        {
            BossAI::EnterCombat(victim);

            events.ScheduleEvent(EVENT_SHIMMER, 1000);
            events.ScheduleEvent(EVENT_BREATH_1, 30000);
            events.ScheduleEvent(EVENT_BREATH_2, 60000);
            events.ScheduleEvent(EVENT_AFFLICTION, 10000);
            events.ScheduleEvent(EVENT_FRENZY, 15000);
        }

        bool CanAIAttack(Unit const* victim) const override
        {
            return !victim->HasAura(SPELL_TIMELAPSE);
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_SHIMMER:
                        // Cast new random vulnerabilty on self
                        DoCast(me, SPELL_ELEMENTAL_SHIELD);
                        Talk(EMOTE_SHIMMER);
                        events.ScheduleEvent(EVENT_SHIMMER, urand(17000, 25000));
                        break;
                    case EVENT_BREATH_1:
                        DoCastVictim(Breath1_Spell);
                        if (Breath1_Spell == SPELL_TIMELAPSE)
                        {
                            if (Unit* target = me->GetVictim())
                            {
                                _timeLapseTarget = me->GetVictim()->GetGUID();
                                _timeLapseThreat = me->getThreatMgr().getThreat(me->GetVictim());
                                me->getThreatMgr().modifyThreatPercent(target, -100);
                                events.ScheduleEvent(EVENT_CHECK_TIME_LAPSE_TARGET, 8000);
                            }
                        }
                        events.ScheduleEvent(EVENT_BREATH_1, 60000);
                        break;
                    case EVENT_BREATH_2:
                        DoCastVictim(Breath2_Spell);
                        if (Breath2_Spell == SPELL_TIMELAPSE)
                        {
                            if (Unit* target = me->GetVictim())
                            {
                                _timeLapseTarget = me->GetVictim()->GetGUID();
                                _timeLapseThreat = me->getThreatMgr().getThreat(me->GetVictim());
                                me->getThreatMgr().modifyThreatPercent(target, -100);
                                events.ScheduleEvent(EVENT_CHECK_TIME_LAPSE_TARGET, 8000);
                            }
                        }
                        events.ScheduleEvent(EVENT_BREATH_2, 60000);
                        break;
                    case EVENT_AFFLICTION:
                    {
                        uint32 afflictionSpellID = RAND(SPELL_BROODAF_BLUE, SPELL_BROODAF_BLACK, SPELL_BROODAF_RED, SPELL_BROODAF_BRONZE, SPELL_BROODAF_GREEN);
                        std::vector<Player*> playerTargets;
                        Map::PlayerList const& players = me->GetMap()->GetPlayers();
                        for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        {
                            if (Player* player = itr->GetSource())
                            {
                                if (!player->IsGameMaster() && !player->IsSpectator() && player->IsAlive())
                                {
                                    playerTargets.push_back(player);
                                }
                            }
                        }

                        if (playerTargets.size() > 12)
                        {
                            Acore::Containers::RandomResize(playerTargets, 12);
                        }

                        for (Player* player : playerTargets)
                        {
                            DoCast(player, afflictionSpellID, true);

                            if (player->HasAura(SPELL_BROODAF_BLUE) && player->HasAura(SPELL_BROODAF_BLACK) && player->HasAura(SPELL_BROODAF_RED) &&
                                player->HasAura(SPELL_BROODAF_BRONZE) && player->HasAura(SPELL_BROODAF_GREEN))
                            {
                                DoCast(player, SPELL_CHROMATIC_MUT_1);
                            }
                        }
                        events.ScheduleEvent(EVENT_AFFLICTION, 10000);
                        break;
                    }
                    case EVENT_FRENZY:
                        DoCast(me, SPELL_FRENZY);
                        events.ScheduleEvent(EVENT_FRENZY, 10000, 15000);
                        break;
                    case EVENT_CHECK_TIME_LAPSE_TARGET:
                        if (Unit* target = ObjectAccessor::GetUnit(*me, _timeLapseTarget))
                        {
                            me->getThreatMgr().addThreat(target, _timeLapseThreat);
                        }
                        break;
                }

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;
            }

            // Enrage if not already enraged and below 20%
            if (!Enraged && HealthBelowPct(20))
            {
                DoCast(me, SPELL_ENRAGE);
                Enraged = true;
            }

            DoMeleeAttackIfReady();
        }

    private:
        uint32 Breath1_Spell;
        uint32 Breath2_Spell;
        bool Enraged;
        float _timeLapseThreat;
        ObjectGuid _timeLapseTarget;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetBlackwingLairAI<boss_chromaggusAI_60_2_A>(creature);
    }
};

void AddSC_boss_chromaggus_60_2_A()
{
    new boss_chromaggus_60_2_A();
}
