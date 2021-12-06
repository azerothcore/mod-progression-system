--
--
-- Created by IntelliJ IDEA.
-- User: Silvia
-- Date: 22/11/2021
-- Time: 08:50
-- To change this template use File | Settings | File Templates.
-- Originally created by Honey for Azerothcore
-- requires ElunaLua module


-- This script spawns a NPC which allows for custom item exchanges.
------------------------------------------------------------------------------------------------
-- ADMIN GUIDE:  -  compile the core with ElunaLua module
--               -  adjust config in this file
--               -  add this script to ../lua_scripts/
--               -  adjust the Config.NpcEntry in case of conflicts and run the associated SQL to add the required NPC
------------------------------------------------------------------------------------------------
-- GM GUIDE:     -  nothing to do
------------------------------------------------------------------------------------------------
local Config = {}                       --general config flags

Config.TurnInItemEntry = {}
Config.TurnInItemAmount = {}
Config.GainItemEntry = {}
Config.GainItemAmount = {}
Config.GossipOptionText = {}

local GOSSIP_EVENT_ON_HELLO = 1             -- (event, player, object) - Object is the Creature/GameObject/Item. Can return false to do default action. For item gossip can return false to stop spell casting.
local GOSSIP_EVENT_ON_SELECT = 2            -- (event, player, object, sender, intid, code, menu_id)
local OPTION_ICON_CHAT = 0

local ELUNA_EVENT_ON_LUA_STATE_CLOSE = 16

local eventIdCloseEluna
local eventIdHello
local eventIdStart
local npcObject
local npcObjectGuid

------------------------------------------------------------------------------------------------

Config.NpcEntry = 1116001   -- DB entry. Must match this script's SQL for the world DB
Config.InstanceId = 0
Config.MapId = 1            -- Map where to spawn the exchange NPC
Config.NpcX = -7153         -- x Pos where to spawn the exchange NPC
Config.NpcY = -3740         -- y Pos where to spawn the exchange NPC
Config.NpcZ = 8.4           -- z Pos where to spawn the exchange NPC
Config.NpcO = 5.06          -- orientation to spawn the exchange NPC

Config.GossipText = 92101
Config.GossipConfirmationText = 92102
Config.NotEnoughItemsMessage = 'You do not have the required items at hand.'
Config.ExchangeSuccessfulMessage = 'Thank you! The exchange will be sent to you in a mail by my assistants as soon as possible.'
Config.mailSubject = 'Item Exchange'
Config.mailMessage = 'Greetings, Time Traveler! Here you are the requested substitutes for the provided items.'

Config.TurnInItemEntry[1] = 20725 --Nexus Crystal
Config.TurnInItemAmount[1] = 1
Config.GainItemEntry[1] = 22448 --Small Prismatic Shard
Config.GainItemAmount[1] = 1
Config.GossipOptionText[1] = 'Take 1 of my Nexus Crystal and ask Chromie to send me 1 of her Small Prismatic Shard by mail.'

Config.TurnInItemEntry[2] = 14344 --Large Brilliant Shard
Config.TurnInItemAmount[2] = 1
Config.GainItemEntry[2] = 22447 --Lesser Planar Essence
Config.GainItemAmount[2] = 1
Config.GossipOptionText[2] = 'Take 1 of my Large Brilliant Shards and ask Chromie to send me 1 of her Greater Planar Essence by mail.'

Config.TurnInItemEntry[3] = 12809 --Guardian Stone
Config.TurnInItemAmount[3] = 1
Config.GainItemEntry[3] = 22452 --Primal Earth
Config.GainItemAmount[3] = 1
Config.GossipOptionText[3] = 'Take 1 of my Guardian Stone and ask Chromie to send me 1 of her Primal Earth by mail.'

Config.TurnInItemEntry[4] = 13468 --Black Lotus
Config.TurnInItemAmount[4] = 1
Config.GainItemEntry[4] = 22794 --Fel Lotus
Config.GainItemAmount[4] = 1
Config.GossipOptionText[4] = 'Take 1 of my Black Lotus and ask Chromie to send me 1 of her Fel Lotus by mail.'

Config.TurnInItemEntry[5] = 7972 --Ichor of Undeath
Config.TurnInItemAmount[5] = 1
Config.GainItemEntry[5] = 22577 --Mote of Shadow
Config.GainItemAmount[5] = 1
Config.GossipOptionText[5] = 'Take 1 of my Ichor of Undeath and ask Chromie to send me 1 of her Mote of Shadow by mail.'

Config.TurnInItemEntry[6] = 7069 --Elemental Air
Config.TurnInItemAmount[6] = 1
Config.GainItemEntry[6] = 22572 --Mote of Air
Config.GainItemAmount[6] = 1
Config.GossipOptionText[6] = 'Take 1 of my Elemental Air and ask Chromie to send me 1 of her Mote of Air by mail.'

Config.TurnInItemEntry[7] = 18512 --Larval Acid
Config.TurnInItemAmount[7] = 1
Config.GainItemEntry[7] = 21886 --Primal Life
Config.GainItemAmount[7] = 1
Config.GossipOptionText[7] = 'Take 1 of my Larval Acid and ask Chromie to send me 1 of her Primal Life by mail.'




------------------------------------------
-- NO ADJUSTMENTS REQUIRED BELOW THIS LINE
------------------------------------------

local function eI_onHello(event, player, creature)
    if player == nil then return end

    local n
    for n = 1,#Config.TurnInItemEntry do
        player:GossipMenuAddItem(OPTION_ICON_CHAT, Config.GossipOptionText[n], Config.NpcEntry, n-1)
    end

    player:GossipSendMenu(Config.GossipText, creature, 0)
end

local function eI_onGossipSelect(event, player, object, sender, intid, code, menu_id)

    if player == nil then return end

    if intid < 1000 then
        player:GossipComplete()
        local exchangeId = intid + 1
        local newintid = intid + 1000
        player:GossipMenuAddItem(OPTION_ICON_CHAT, 'Yes! '..Config.GossipOptionText[exchangeId], Config.NpcEntry, newintid)
        player:GossipSendMenu(Config.GossipConfirmationText, object, 0)
    else
        local playerGuid = tonumber(tostring(player:GetGUID()))
        local exchangeId = intid - 999
        if player:HasItem(Config.TurnInItemEntry[exchangeId], Config.TurnInItemAmount[exchangeId], false) then
            player:RemoveItem(Config.TurnInItemEntry[exchangeId], Config.TurnInItemAmount[exchangeId])
            SendMail(Config.mailSubject, Config.mailMessage, playerGuid, 0, 61, 5, 0, 0, Config.GainItemEntry[exchangeId], Config.GainItemAmount[exchangeId])
            player:SendBroadcastMessage(Config.ExchangeSuccessfulMessage)
        else
            player:SendBroadcastMessage(Config.NotEnoughItemsMessage)
        end
        player:GossipComplete()
    end
end

local function eI_CloseLua(eI_CloseLua)
    if npcObjectGuid ~= nil then
        local map
        map = GetMapById(Config.MapId)
        npcObject = map:GetWorldObject(npcObjectGuid):ToCreature()
        npcObject:DespawnOrUnsummon(0)
    end
end

--Startup:
npcObject = PerformIngameSpawn(1, Config.NpcEntry, Config.MapId, Config.InstanceId, Config.NpcX, Config.NpcY, Config.NpcZ, Config.NpcO)
npcObjectGuid = npcObject:GetGUID()

eventIdCloseEluna = RegisterServerEvent(ELUNA_EVENT_ON_LUA_STATE_CLOSE, eI_CloseLua, 0)
eventIdHello = RegisterCreatureGossipEvent(Config.NpcEntry, GOSSIP_EVENT_ON_HELLO, eI_onHello)
eventIdStart = RegisterCreatureGossipEvent(Config.NpcEntry, GOSSIP_EVENT_ON_SELECT, eI_onGossipSelect)
