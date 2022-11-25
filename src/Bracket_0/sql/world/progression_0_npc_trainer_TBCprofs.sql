-- Remove following TBC items from trainers (re-added in Black Temple)
DELETE FROM `npc_trainer` WHERE `SpellID` IN (
36257, -- Bulwark of the Ancient Kings
40274, -- Furious Gizmatic Goggles
41311, -- Justicebringer 2000 Specs
41312, -- Tankatronic Goggles
41314, -- Surestrike Goggles v2.0
41315, -- Gadgetstorm Goggles
41316, -- Living Replicator Specs
41317, -- Deathblow X11 Goggles
41318, -- Wonderheal XT40 Shades
41319, -- Magnified Moon Specs
41320, -- Destruction Holo-gogs
41321  -- Powerheal 4000 Lens
);

-- Remove Brilliant Glass until Sunwell
DELETE FROM `npc_trainer` WHERE `SpellID`=47280;
