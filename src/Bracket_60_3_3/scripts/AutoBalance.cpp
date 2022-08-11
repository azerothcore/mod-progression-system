/*
* Copyright (C) 2018 AzerothCore <http://www.azerothcore.org>
* Copyright (C) 2012 CVMagic <http://www.trinitycore.org/f/topic/6551-vas-autobalance/>
* Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
* Copyright (C) 1985-2010 KalCorp  <http://vasserver.dyndns.org/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

/*
* Script Name: AutoBalance
* Original Authors: KalCorp and Vaughner
* Maintainer(s): AzerothCore
* Original Script Name: AutoBalance
* Description: This script is intended to scale based on number of players,
* instance mobs & world bosses' level, health, mana, and damage.
*/

#include "Unit.h"
#include "Creature.h"
#include "Player.h"
#include "World.h"
#include "Map.h"
#include "ScriptMgr.h"
#include "ScriptMgrMacros.h"

#include "ProgressionSystem.h"

#if AC_COMPILER == AC_COMPILER_GNU
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

class AutoBalanceCreatureInfo : public DataMap::Base
{
public:
    AutoBalanceCreatureInfo() {}
    AutoBalanceCreatureInfo(uint32 count, float dmg, float hpRate, float manaRate, float armorRate, uint8 selLevel) :
    instancePlayerCount(count),selectedLevel(selLevel), DamageMultiplier(dmg),HealthMultiplier(hpRate),ManaMultiplier(manaRate),ArmorMultiplier(armorRate) {}
    uint32 instancePlayerCount = 0;
    uint8 selectedLevel = 0;
    // this is used to detect creatures that update their entry
    uint32 entry = 0;
    float DamageMultiplier = 1;
    float HealthMultiplier = 1;
    float ManaMultiplier = 1;
    float ArmorMultiplier = 1;
};

class AutoBalanceMapInfo : public DataMap::Base
{
public:
    AutoBalanceMapInfo() {}
    AutoBalanceMapInfo(uint32 count, uint8 selLevel) : playerCount(count),mapLevel(selLevel) {}
    uint32 playerCount = 10;
    uint8 mapLevel = 60;
};

// cheaphack for difficulty server-wide.
static float globalRate, healthMultiplier, manaMultiplier, armorMultiplier, damageMultiplier, MinHPModifier, MinManaModifier, MinDamageModifier;

class AutoBalance_WorldScript : public WorldScript
{
    public:
    AutoBalance_WorldScript()
        : WorldScript("AutoBalance_WorldScript")
    {
    }

    void OnBeforeConfigLoad(bool /*reload*/) override
    {
        SetInitialWorldSettings();
    }

    void SetInitialWorldSettings()
    {
        globalRate = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.rate.global", 1.0f);
        healthMultiplier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.rate.health", 1.0f);
        manaMultiplier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.rate.mana", 1.0f);
        armorMultiplier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.rate.armor", 1.0f);
        damageMultiplier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.rate.damage", 1.0f);
        MinHPModifier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.MinHPModifier", 0.1f);
        MinManaModifier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.MinManaModifier", 0.1f);
        MinDamageModifier = sConfigMgr->GetOption<float>("ProgressionSystem.60.Naxxramas.MinDamageModifier", 0.1f);
    }
};

class AutoBalance_UnitScript : public UnitScript
{
    public:
    AutoBalance_UnitScript()
        : UnitScript("AutoBalance_UnitScript", true)
    {
    }

    uint32 DealDamage(Unit* AttackerUnit, Unit *playerVictim, uint32 damage, DamageEffectType /*damagetype*/) override
    {
        return _Modifer_DealDamage(playerVictim, AttackerUnit, damage);
    }

    void ModifyPeriodicDamageAurasTick(Unit* target, Unit* attacker, uint32& damage) override
    {
        damage = _Modifer_DealDamage(target, attacker, damage);
    }

    void ModifySpellDamageTaken(Unit* target, Unit* attacker, int32& damage) override
    {
        damage = _Modifer_DealDamage(target, attacker, damage);
    }

    void ModifyMeleeDamage(Unit* target, Unit* attacker, uint32& damage) override
    {
        damage = _Modifer_DealDamage(target, attacker, damage);
    }

    void ModifyHealRecieved(Unit* target, Unit* attacker, uint32& damage) override {
        damage = _Modifer_DealDamage(target, attacker, damage);
    }


    uint32 _Modifer_DealDamage(Unit* /* target */, Unit* attacker, uint32 damage)
    {
        if (!attacker || attacker->GetTypeId() == TYPEID_PLAYER || !attacker->IsInWorld())
            return damage;

        float damageMultiplier = attacker->CustomData.GetDefault<AutoBalanceCreatureInfo>("AutoBalanceCreatureInfo")->DamageMultiplier;

        if (damageMultiplier == 1)
            return damage;

        if ((attacker->IsHunterPet() || attacker->IsPet() || attacker->IsSummon()) && attacker->IsControlledByPlayer())
            return damage;

        return damage * damageMultiplier;
    }
};

class AutoBalance_AllCreatureScript : public AllCreatureScript
{
public:
    AutoBalance_AllCreatureScript()
        : AllCreatureScript("AutoBalance_AllCreatureScript")
    {
    }

    void Creature_SelectLevel(const CreatureTemplate* /*creatureTemplate*/, Creature* creature) override
    {
        ModifyCreatureAttributes(creature, true);
    }

    void OnAllCreatureUpdate(Creature* creature, uint32 /*diff*/) override
    {
        ModifyCreatureAttributes(creature);
    }

    void ModifyCreatureAttributes(Creature* creature, bool resetSelLevel = false)
    {
        if (!creature || !creature->GetMap())
            return;

        // Check if mapId equals to Naxxramas (mapId: 533)
        if (creature->GetMapId() != 533)
            return;

        if (((creature->IsHunterPet() || creature->IsPet() || creature->IsSummon()) && creature->IsControlledByPlayer()))
        {
            return;
        }

        AutoBalanceMapInfo *mapABInfo=creature->GetMap()->CustomData.GetDefault<AutoBalanceMapInfo>("AutoBalanceMapInfo");
        if (!mapABInfo->mapLevel)
            return;

        CreatureTemplate const *creatureTemplate = creature->GetCreatureTemplate();

        AutoBalanceCreatureInfo *creatureABInfo=creature->CustomData.GetDefault<AutoBalanceCreatureInfo>("AutoBalanceCreatureInfo");

        // force resetting selected level.
        // this is also a "workaround" to fix bug of not recalculated
        // attributes when UpdateEntry has been used.
        // TODO: It's better and faster to implement a core hook
        // in that position and force a recalculation then
        if ((creatureABInfo->entry != 0 && creatureABInfo->entry != creature->GetEntry()) || resetSelLevel) {
            creatureABInfo->selectedLevel = 0; // force a recalculation
        }

        if (!creature->IsAlive())
            return;

        // already scaled
        if (creatureABInfo->selectedLevel > 0) {
            return;
        }

        uint8 originalLevel = creatureTemplate->maxlevel;

        uint8 level = mapABInfo->mapLevel;

        bool skipLevel=false;
        // No creature under 80 exists that should be scaled down 
        if (originalLevel < 80)
            skipLevel = true;

        if (!skipLevel) { 
            // scale level by subtracting 20 (80, 81, 82, 83) to (60, 61, 62, 63)
            creatureABInfo->selectedLevel = originalLevel - 20;
            creature->SetLevel(creatureABInfo->selectedLevel);
        } else {
            creatureABInfo->selectedLevel = creature->getLevel();
        }

        creatureABInfo->entry = creature->GetEntry();

        bool useDefStats = false;

        CreatureBaseStats const* origCreatureStats = sObjectMgr->GetCreatureBaseStats(originalLevel, creatureTemplate->unit_class);
        CreatureBaseStats const* creatureStats = sObjectMgr->GetCreatureBaseStats(creatureABInfo->selectedLevel, creatureTemplate->unit_class);

        uint32 baseHealth = origCreatureStats->GenerateHealth(creatureTemplate);
        uint32 baseMana = origCreatureStats->GenerateMana(creatureTemplate);
        uint32 scaledHealth = 0;
        uint32 scaledMana = 0;

        float defaultMultiplier = 1.0f;

        creatureABInfo->HealthMultiplier =   healthMultiplier * defaultMultiplier * globalRate;

        if (creatureABInfo->HealthMultiplier <= MinHPModifier)
        {
            creatureABInfo->HealthMultiplier = MinHPModifier;
        }

        float hpStatsRate  = 1.0f;
        if (!useDefStats && !skipLevel) {
            float newBaseHealth = 0;
            if (level <= 60)
            {
                newBaseHealth = creatureStats->BaseHealth[0];
            }
            else
            {
                newBaseHealth = creatureStats->BaseHealth[1];
            }

            float newHealth =  newBaseHealth * creatureTemplate->ModHealth;

            hpStatsRate = newHealth / float(baseHealth);
        }

        creatureABInfo->HealthMultiplier *= hpStatsRate;

        scaledHealth = round(((float) baseHealth * creatureABInfo->HealthMultiplier) + 1.0f);

        float manaStatsRate  = 1.0f;
        if (!useDefStats && !skipLevel) {
            float newMana =  creatureStats->GenerateMana(creatureTemplate);
            manaStatsRate = newMana/float(baseMana);
        }

        creatureABInfo->ManaMultiplier =  manaStatsRate * manaMultiplier * defaultMultiplier * globalRate;

        if (creatureABInfo->ManaMultiplier <= MinManaModifier)
        {
            creatureABInfo->ManaMultiplier = MinManaModifier;
        }

        scaledMana = round(baseMana * creatureABInfo->ManaMultiplier);

        float damageMul = defaultMultiplier * globalRate * damageMultiplier;

        // Can not be less then Min_D_Mod
        if (damageMul <= MinDamageModifier)
        {
            damageMul = MinDamageModifier;
        }

        if (!useDefStats && !skipLevel) {
            float origDmgBase = origCreatureStats->GenerateBaseDamage(creatureTemplate);
            float newDmgBase = 0;
            if (level <= 60)
                newDmgBase=creatureStats->BaseDamage[0];
            else if(level <= 70)
                newDmgBase=creatureStats->BaseDamage[1];
            else {
                newDmgBase=creatureStats->BaseDamage[2];
                // special increasing for end-game contents
                if (!creature->GetMap()->IsRaid()) {
                    newDmgBase *= creatureABInfo->selectedLevel >= 75 && originalLevel < 75 ? float(creatureABInfo->selectedLevel-70) * 0.3f : 1;
                }
            }

            damageMul *= newDmgBase/origDmgBase;
        }

        creatureABInfo->ArmorMultiplier = defaultMultiplier * globalRate * armorMultiplier;
        uint32 newBaseArmor= round(creatureABInfo->ArmorMultiplier * (useDefStats || skipLevel ? origCreatureStats->GenerateArmor(creatureTemplate) : creatureStats->GenerateArmor(creatureTemplate)));

        uint32 prevMaxHealth = creature->GetMaxHealth();
        uint32 prevMaxPower = creature->GetMaxPower(POWER_MANA);
        uint32 prevHealth = creature->GetHealth();
        uint32 prevPower = creature->GetPower(POWER_MANA);

        Powers pType= creature->getPowerType();

        creature->SetArmor(newBaseArmor);
        creature->SetModifierValue(UNIT_MOD_ARMOR, BASE_VALUE, (float)newBaseArmor);
        creature->SetCreateHealth(scaledHealth);
        creature->SetMaxHealth(scaledHealth);
        creature->ResetPlayerDamageReq();
        creature->SetCreateMana(scaledMana);
        creature->SetMaxPower(POWER_MANA, scaledMana);
        creature->SetModifierValue(UNIT_MOD_ENERGY, BASE_VALUE, (float)100.0f);
        creature->SetModifierValue(UNIT_MOD_RAGE, BASE_VALUE, (float)100.0f);
        creature->SetModifierValue(UNIT_MOD_HEALTH, BASE_VALUE, (float)scaledHealth);
        creature->SetModifierValue(UNIT_MOD_MANA, BASE_VALUE, (float)scaledMana);
        creatureABInfo->DamageMultiplier = damageMul;

        uint32 scaledCurHealth=prevHealth && prevMaxHealth ? float(scaledHealth)/float(prevMaxHealth)*float(prevHealth) : 0;
        uint32 scaledCurPower=prevPower && prevMaxPower  ? float(scaledMana)/float(prevMaxPower)*float(prevPower) : 0;

        creature->SetHealth(scaledCurHealth);
        if (pType == POWER_MANA)
            creature->SetPower(POWER_MANA, scaledCurPower);
        else
            creature->setPowerType(pType); // fix creatures with different power types

        creature->UpdateAllStats();
    }
};


void AddSC_auto_balance_60_3_C()
{
    new AutoBalance_WorldScript();
    new AutoBalance_UnitScript();
    new AutoBalance_AllCreatureScript();
}
