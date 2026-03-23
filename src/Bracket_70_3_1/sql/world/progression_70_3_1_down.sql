-- Reveal Tier 5 token vendors
UPDATE `creature` SET `phasemask` = 1 WHERE `id1` IN (
-- Tier 5
21906, -- Kelara (Aldor)
21905  -- Veynna Dawnstar (Scryer)
);

-- Enable BT attunement quest chain
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (10944);

-- Remove attunement requirements for dungeons and Karazhan
DELETE FROM `dungeon_access_requirements` WHERE `comment` LIKE 'Progression:%' AND `dungeon_access_id` IN (33,34,48,49,54,55,29);

-- Restore Dungeon Heroic Keys to require Honored with their respective factions
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` IN (
30622, -- Hellfire Citadel (Alliance)
30623, -- Coilfang Resevoir
30633, -- Auchindoun
30634, -- Tempest Key
30635, -- Caverns of Time
30637  -- Hellfire Citadel (Horde)
);

-- Restore following TBC items from trainers (re-added in Black Temple)
-- DELETE FROM `npc_trainer` WHERE `SpellID` IN (
-- 36257, -- Bulwark of the Ancient Kings
-- 40274, -- Furious Gizmatic Goggles
-- 41311, -- Justicebringer 2000 Specs
-- 41312, -- Tankatronic Goggles
-- 41314, -- Surestrike Goggles v2.0
-- 41315, -- Gadgetstorm Goggles
-- 41316, -- Living Replicator Specs
-- 41317, -- Deathblow X11 Goggles
-- 41318, -- Wonderheal XT40 Shades
-- 41319, -- Magnified Moon Specs
-- 41320, -- Destruction Holo-gogs
-- 41321  -- Powerheal 4000 Lens
-- );
-- INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
-- (29506, 36257, 500000, 164, 375, 0, 0),
-- (201007, 36257, 500000, 164, 375, 0, 0),
-- (201013, 40274, 50000, 202, 350, 0, 0),
-- (201013, 41311, 50000, 202, 350, 0, 0),
-- (201013, 41312, 50000, 202, 350, 0, 0),
-- (201013, 41314, 50000, 202, 350, 0, 0),
-- (201013, 41315, 50000, 202, 350, 0, 0),
-- (201013, 41316, 50000, 202, 350, 0, 0),
-- (201013, 41317, 50000, 202, 350, 0, 0),
-- (201013, 41318, 50000, 202, 350, 0, 0),
-- (201013, 41319, 50000, 202, 350, 0, 0),
-- (201013, 41320, 50000, 202, 350, 0, 0),
-- (201013, 41321, 50000, 202, 350, 0, 0);
