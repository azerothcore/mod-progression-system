# Scaling lvl80 Naxx25 to lvl60 Naxx25

Also see AutoBalance fork https://github.com/SoglaHash/mod-autobalance-naxx25-60/tree/naxx

A video (WIP). See more details below


https://user-images.githubusercontent.com/74299960/183513127-17bd96f6-fac9-44a2-be0c-d2eacf6ec15e.mp4

Progress:
- [x] Allow lvl 60 to enter
- [x] Add floating and pathing Naxxramas in Plaguewood
- [x] Exit portals TP to EPL
- [x] Scale instance with autobalancer (can be tuned easily)
- [x] Naxx25 mechanics
- [x] Change graveyard to EPL
- [x] Add summoning stone to EPL
- [x] Add Teleport gameobject in EPL
- [x] Integrate scaling script in this repo (v1.2.2-clean-up-old-code from [mod-autobalance-naxx25-60](https://github.com/SoglaHash/mod-autobalance-naxx25-60/tree/naxx)
- [x] Add enter spell (ID: 29296) when entering Naxx (improve: need to overwrite instance OnPlayerEntered)
- [x] Add Attunement quest requirement (only to TP orb and boss->start tp)
- [x] Add quests to turn in T3 tokens
- [x] Update Echoes of War (adjust kill count)
- [x] Update Boss Loot to lvl60 (+verify with CMangos)
- [x] Make Phylactery quest completable
- [x] Add frost resistance quests from Crafsman Wilhelm
- [x] Update Trash Loot to lvl60
- [x] Update Trash gold drops to lvl60
- [x] Add Omarion (frost resistance trainer) script
- [ ] Add Frozen Rune game objects
- [ ] Add frost resistance anvil (gobject)
Skipping (for now):
- [ ] Scourge event
- [ ] Accurate Naxx40 mechanics

floating naxx 25 pathing plaguewood



https://user-images.githubusercontent.com/74299960/184688910-a65da21f-cd03-4e46-b22e-7021fc1deb48.mp4



https://user-images.githubusercontent.com/74299960/184688921-0f3c694e-2826-48ce-9e57-9519405a0ad2.mp4


25man mechanics (using 25man map)
![raz](razuvious_25man_mechanics.png)
Exit portal to EPl
![exit](exit.png)
transporter naxx object
![outside](transporter.png)
transporter naxx object2
![outside](transporter2.png)
Chest loot
![loot_4h](loot_4h.png)
Thaddius loot
![loot_thaddius](loot_thaddius.png)

## Naxx Fixes
I put fixes in fixes-*.sql

Portal/instance/tp fixes in azerothcore/azerothcore-wotlk PR #12696

Fixes for t3 quests and phylacter, no PR yet.


```
-- .go xyz 3668 -1262 310 (with .gm fly on)
-- 4 orbs naxx25, naxx orb visible 11:03, tp location to sapphiron 31:40
-- https://www.youtube.com/watch?v=jIwKLtcbdq0
--
-- https://www.youtube.com/watch?v=1Th3zKT4Tas
-- each wing casts (spellID: 28444) Portal Effect: Deathknight Wing
-- Portal after each boss portals  should to blue zone and then auto portal to sapphiron
```


```
-- Current: TPs next to portals
-- Expected: TPs to blue circle
SET @DEATH_KNIGHT_PORTAL_EFFECT:= 28444;
-- Current: TPs to blue circle
-- Expected: TPs next to portals
SET @SAPPHIRON_EXIT_SPELL:= 72613;
-- Current: TPs next to portals
-- Expected: TPs to Sapphiron
SET @SAPPHIRON_ENTRY_SPELL:= 72617;
```

This fixes overlapping portals inside and outside Naxxramas. Their              
rotation is also corrected (from CCW to CW). The post-boss                      
Naxxramas portals now teleport to the blue hub portal and activate only         
when all wings are cleared. This requirement can be bypassed with the           
orbs, which are now correctly                                                   
casting their respective sapphiron entry/exit spells in addition to having the  
correct position.   

Summary of multiple approaches
## 1 Select and Update ❌
Scale level and hp to appropriate level with SELECT
and UPDATE statements

PROS: EZ

CONS: Data value of spells is not changed

## 2 Autobalancer  ✅ 
Set scaling with autobalancer script.
Only autobalance creatures in Naxxramas (mapID: 533)

PROS:

Scales all damage and can be tuned with global modifiers

EZ to tune with config
```
AutoBalance.rate.global = 1.0
AutoBalance.rate.health = 1.0
AutoBalance.rate.mana   = 1.0
AutoBalance.rate.armor  = 1.0
AutoBalance.rate.damage = 1.0
```

CONS:

 Hooks apply to all maps and creatures.
Applies scaling of 1.0f to 99.99% of all combat interactions.
Not 100% blizzlike, No updated EPL map to allow teleporting and ghost running. No naxx40 mechanics

## 3 Dump and Scale  ❔

Use data from autobalancer to scale only Naxx25 mobs.

1. dump out all the stats set by autobalancer
2. apply scaling script only to creatures in Naxx.

PROS: Low overhead scaling, Allows blizzlike lvl 60 Naxx mechanics, NPCs and maps (Naxx+EPL)

# Data
some data of Naxx25

## Select non-bosses 
select spawned on map 533
```
SELECT DISTINCT creature_template.entry, creature_template.difficulty_entry_1, creature_template.name FROM creature_template, creature WHERE creature_template.rank != 3 AND creature.map = 533 AND creature_template.entry = acore_world.creature.id1 AND creature_template.minlevel > 21;
```


ID1 of non-bosses
```
15974, 15975, 15976, 15977, 15978, 15979, 15980, 15981, 16017, 16018, 16020, 16021, 16022, 16024, 16025, 16029, 16034, 16036, 16037, 16056, 16057, 16067, 16082, 16145, 16146, 16154, 16156, 16163, 16164, 16165, 16167, 16168, 16193, 16194, 16215, 16216, 16236, 16243, 16244, 16297, 16400, 16447, 16980, 29912, 30071, 30083, 30085,

16027, 16573, 16698, 16505, 16506, 17055, 16290, 16984, 16983, 16981, 16982, 16803, 16125, 16126, 16124, 16150, 16149, 16148, 23561, 23563, 23562, 16441, 16286, 16127, 16360
```

|entry|difficulty_entry_1|name|
|-----|------------------|----|
|15974|29242|Dread Creeper|
|15975|29241|Carrion Spinner|
|15976|29243|Venom Stalker|
|15977|29229|Poisonous Skitterer|
|15978|30389|Crypt Reaver|
|15979|29286|Tomb Horror|
|15980|29247|Naxxramas Cultist|
|15981|29248|Naxxramas Acolyte|
|16017|29347|Patchwork Golem|
|16018|29353|Bile Retcher|
|16020|29362|Mad Scientist|
|16021|29359|Living Monstrosity|
|16022|29363|Surgical Assistant|
|16024|29355|Embalming Slime|
|16025|29371|Stitched Giant|
|16029|29356|Sludge Belcher|
|16034|29609|Plague Beast|
|16036|29608|Frenzied Bat|
|16037|29603|Plagued Bat|
|16056|29612|Diseased Maggot|
|16057|31542|Rotting Maggot|
|16067|29852|Deathcharger Steed|
|16082|0|Naxxramas Trigger|
|16145|29824|Death Knight Captain|
|16146|29823|Death Knight|
|16154|29831|Risen Squire|
|16156|29833|Dark Touched Warrior|
|16163|29842|Death Knight Cavalier|
|16164|29825|Shade of Naxxramas|
|16165|29828|Necro Knight|
|16167|29835|Bony Construct|
|16168|29576|Stoneskin Gargoyle|
|16193|29837|Skeletal Smith|
|16194|29898|Unholy Axe|
|16215|29899|Unholy Staff|
|16216|29900|Unholy Swords|
|16236|29613|Eye Stalk|
|16243|29575|Plague Slime|
|16244|29574|Infectious Ghoul|
|16297|29601|Mutated Grub|
|16400|0|Toxic Tunnel|
|16447|30097|Plagued Ghoul|
|16980|0|The Lich King|
|29912|0|Obedience Crystal|
|30071|30075|Stitched Colossus|
|30083|30424|Marauding Geist|
|30085|30087|Vigilant Shade|


select present but not set in map 533
```
SELECT DISTINCT creature_template.entry, creature_template.difficulty_entry_1, creature_template.name FROM creature_template, creature WHERE creature_template.entry IN (16803, 16505, 16506, 17055, 16027, 16290, 16360, 16981, 16982, 16983, 16984, 16286, 23561, 23562, 23563, 16441, 16124, 16125, 16126, 16127, 16148, 16149, 16150, 16573, 16698);
```
|entry|difficulty_entry_1|name|
|-----|------------------|----|
|16027|0|Living Poison|
|16573|29256|Crypt Guard|
|16698|29267|Corpse Scarab|
|16505|29273|Naxxramas Follower|
|16506|29274|Naxxramas Worshipper|
|17055|29279|Maexxna Spiderling|
|16290|29388|Fallout Slime|
|16984|29632|Plagued Warrior|
|16983|29633|Plagued Champion|
|16981|29634|Plagued Guardian|
|16982|29635|Plagued Construct|
|16803|29941|Death Knight Understudy|
|16125|29985|Unrelenting Death Knight|
|16126|29986|Unrelenting Rider|
|16124|29987|Unrelenting Trainee|
|16150|29988|Spectral Rider|
|16149|29989|Spectral Horse|
|16148|29990|Spectral Death Knight|
|23561|30016|Soldier of the Frozen Wastes|
|23563|30047|Soul Weaver|
|23562|30049|Unstoppable Abomination|
|16441|30057|Guardian of Icecrown|
|16286|30068|Spore|
|16127|30264|Spectral Trainee|
|16360|30303|Zombie Chow|


`difficulty_entry_1` of non-bosses
```
(29356, 29824, 29823, 29831, 29833, 29842, 29825, 29828, 29835, 29576, 30097, 29837, 29898, 29899, 29900, 29242, 29241, 29243, 29229, 30389, 29286, 29247, 29613, 29248, 29575, 29574, 30075, 30087, 29347, 29353, 29362, 29359, 29363, 29355, 29371, 29609, 29608, 29603, 29601, 29612, 31542, 29852, 30424)
```

`difficulty_entry_1` of non-bosses that are spawned
```
(30047, 30049, 30016, 29279, 29632, 29633, 29635, 29634, 29941, 29267, 29256, 29274, 29273, 30057, 30303, 29388, 30068, 29988, 29989, 29990, 30264, 29986, 29985, 29987)
```

NPC Missing 16381
Archmage Tarsis Kir-Moldir
dialogue
sitting position

## Omarion

NPC Missing 16365
Master Craftsman Omarion <Brotherhood of the Light>
Inside cage in DK wing
level 300 BS and revered AD
levle 300 Tailor
levle 300 leatherworking
```
Omarion will teach players crafting recipes, depending on their crafting profession and reputation with Argent Down:
Tailoring Revered:
- Glacial Wrists
- Glacial Gloves
Tailoring Exalted:
- Glacial Vest
- Glacial Cloak
Leatherworking Revered
- Polar Bracers
- Polar Gloves
- Icy Scale Bracers
- Icy Scale Gauntlets
Leatherworking Exalted
- Polar Tunic
- Icy Scale Breastplate
Blacksmithing Revered
- Icebane Bracers
- Icebane Gauntlets
Blacksmithing Exalted
- Icebane Breastplate
```
Omarion's Handbook, Craftsman Wilhelm craft
quest 9233
craft items + 200-300g

Frost Resistance quests depend on: reputation with AD, class and completion 9033 echoes of war

See VMangos implementation of Gossip Omarion script
https://github.com/vmangos/core/blob/792c3733c1d1a1766fddbf4b654f0de4cac4325d/src/scripts/eastern_kingdoms/eastern_plaguelands/naxxramas/instance_naxxramas.cpp

ingame (private server footage)
https://www.youtube.com/watch?v=YgI2AMHMYe8

can implement based on 14338

lvl 60 char 
```
.tele lightshope
.mod reputation 529 10000
```
CMangos
16365
gossip id
24404

horde tailor
.go c 26623
.setskill 197 225 225
blacksmith
.setskill 164 225 225
.go c 26618
Leatherwork
.go c 26626
.setskill 165 225 225

.mod reputation 529 10000


Omarion
.go c 88811


implementing menu with DB, gossip menu and SmartAI 
- [x] giving book to non crafters
- [x] show master crafter option to master crafters
- [x] show recipes based on reputation
- [ ] teaching recipe
- [ ] /spit and close menu when not high enough skill or rep
Need to use a cpp script instead as the gossip is too complicated

## Trash Loot
Grab list of IDs wowhead -> check if drop loot
split in loot, noloot, spiderloot, scraps
verify with Brotalnia and CMangos DB

Mobs found in Naxx40 by ID according to classic.wowhead
--loot
16025
16451
16021
16452
16368
16018
16167
16156
16158
16145
16163
16157
16244
16020
15981
16506
16165
16448
16446
16447
16154
16164
16193
16067
16449
16168
16194
16215
16216
15980
16505
16017
16022
16803

--loot and spider
15974
16453
15979
15976
15975
15978

--loot only scraps
16243
16034

--noloot
16982
14881
16030
16068
16998
16486
16124
16286
17055
16698
16360
16428
16429
16427
16375
16057
16441
16037
16036
16290
16024
16056
15977
16125
16390
16981
16984
16983
16297
16236
16146
16861
16573
16148
16149
16150
16127
16029
16126
16142


Mobs that should not drop loot
```
(16982, 14881, 16030, 16068, 16998, 16486, 16124, 16286, 17055, 16698, 16360, 16428, 16429, 16427, 16375, 16057, 16441, 16037, 16036, 16290, 16024, 16056, 15977, 16125, 16390, 16981, 16984, 16983, 16297, 16236, 16146, 16861, 16573, 16148, 16149, 16150, 16127, 16029, 16126, 16142)
```

CMangos verify: 16029 sludge belcher has only 1% loot, everything else no loot

Check ACore 25man mobs
Select non-bosses that are not in the list non-loot and that are not in the drop loot list
```
SELECT DISTINCT creature_template.entry, creature_template.difficulty_entry_1, creature_template.name FROM creature_template, creature WHERE creature_template.rank != 3 AND creature.map = 533 AND creature_template.entry = acore_world.creature.id1 AND creature_template.minlevel > 21
AND creature_template.entry NOT IN (16982, 14881, 16030, 16068, 16998, 16486, 16124, 16286, 17055, 16698, 16360, 16428, 16429, 16427, 16375, 16057, 16441, 16037, 16036, 16290, 16024, 16056, 15977, 16125, 16390, 16981, 16984, 16983, 16297, 16236, 16146, 16861, 16573, 16148, 16149, 16150, 16127, 16029, 16126, 16142)
AND creature_template.entry NOT IN
(16025, 16451, 16021, 16452, 16368, 16018, 16167, 16156, 16158, 16145, 16163, 16157, 16244, 16020, 15981, 16506, 16165, 16448, 16446, 16447, 16154, 16164, 16193, 16067, 16449, 16168, 16194, 16215, 16216, 15980, 16505, 16017, 16022, 16803);
 ```

 ```
 16400	0	Toxic Tunnel
15974	29242	Dread Creeper lootspider
15975	29241	Carrion Spinner  lootspider
15976	29243	Venom Stalker lootspider
15978	30389	Crypt Reaver lootspider
15979	29286	Tomb Horror loot
16243	29575	Plague Slime loot
30071	30075	Stitched Colossus noloot
30085	30087	Vigilant Shade noloot
16034	29609	Plague Beast noloot
29912	0	Obedience Crystal
16980	0	The Lich King
16082	0	Naxxramas Trigger
30083	30424	Marauding Geist loot
 ```
 Manually judge new NPCs:
lootspider
 ```
(15974, 15975, 15976, 15978)
 ```
 loot
 ```
(15979, 16243, 30083)
 ```
 noloot
 ```
 (30085, 30071)
 ```

### Create Markdown tables of ACore DB
 ```
 select entry, difficulty_entry_1, name, lootid, skinloot, pickpocketloot  from creature_template where 
entry  IN (...)
```

Mobs that drop loot
```
(16025, 16451, 16021, 16452, 16368, 16018, 16167, 16156, 16158, 16145, 16163,
16157, 16244, 16020, 15981, 16506, 16165, 16448, 16446, 16447, 16154, 16164,
16193, 16067, 16449, 16168, 16194, 16215, 16216, 15980, 16505, 16017, 16022,
16803, 30083, 30085, 30071)
```

Mobs that DROP LOOT

|entry|difficulty_entry_1|name|lootid|skinloot|pickpocketloot|
|-----|------------------|----|------|--------|--------------|
|15980|29247|Naxxramas Cultist|100003|0|0|
|15981|29248|Naxxramas Acolyte|100003|0|0|
|16017|29347|Patchwork Golem|100003|0|0|
|16018|29353|Bile Retcher|100003|0|0|
|16020|29362|Mad Scientist|100003|0|0|
|16021|29359|Living Monstrosity|100003|0|0|
|16022|29363|Surgical Assistant|100003|0|0|
|16025|29371|Stitched Giant|100003|0|0|
|16067|29852|Deathcharger Steed|100003|0|0|
|16145|29824|Death Knight Captain|100003|0|0|
|16154|29831|Risen Squire|100003|0|0|
|16156|29833|Dark Touched Warrior|0|0|0|
|16157|0|Doom Touched Warrior|0|0|0|
|16158|0|Death Touched Warrior|0|0|0|
|16163|29842|Death Knight Cavalier|100003|0|0|
|16164|29825|Shade of Naxxramas|100003|0|0|
|16165|29828|Necro Knight|100003|0|0|
|16167|29835|Bony Construct|100003|0|0|
|16168|29576|Stoneskin Gargoyle|100003|0|0|
|16193|29837|Skeletal Smith|100003|0|0|
|16194|29898|Unholy Axe|100003|0|0|
|16215|29899|Unholy Staff|100003|0|0|
|16216|29900|Unholy Swords|100003|0|0|
|16244|29574|Infectious Ghoul|100003|0|0|
|16368|0|Necropolis Acolyte|0|0|0|
|16446|0|Plagued Gargoyle|0|0|0|
|16447|30097|Plagued Ghoul|100003|0|0|
|16448|0|Plagued Deathhound|0|0|0|
|16449|0|Spirit of Naxxramas|0|0|0|
|16451|0|[UNUSED] Death Knight Vindicator|0|0|0|
|16452|0|Necro Knight Guardian|0|0|0|
|30071|30075|Stitched Colossus|100003|0|0|
|30083|30424|Marauding Geist|100003|0|0|
|30085|30087|Vigilant Shade|0|0|0|

These should not have loot according to CMangos
16505
16506
16803

|16505|29273|Naxxramas Follower|0|0|0|
|16506|29274|Naxxramas Worshipper|16506|0|0|
|16803|29941|Death Knight Understudy|0|0|0|

Mobs should not drop loot
```
(16982, 14881, 16030, 16068, 16998, 16486, 16124, 16286, 17055, 16698, 16360,
16428, 16429, 16427, 16375, 16057, 16441, 16037, 16036, 16290, 16024, 16056,
15977, 16125, 16390, 16981, 16984, 16983, 16297, 16236, 16146, 16861, 16573,
16148, 16149, 16150, 16127, 16029, 16126, 16142) 
```


Mobs that should NOT drop loot

|entry|difficulty_entry_1|name|lootid|skinloot|pickpocketloot|
|-----|------------------|----|------|--------|--------------|
|14881|0|Spider|0|0|0|
|15977|29229|Poisonous Skitterer|0|0|0|
|16024|29355|Embalming Slime|0|0|0|
|16029|29356|Sludge Belcher|100003|0|0|
|16030|0|Maggot|0|0|0|
|16036|29608|Frenzied Bat|100003|0|0|
|16037|29603|Plagued Bat|100003|0|0|
|16056|29612|Diseased Maggot|0|0|0|
|16057|31542|Rotting Maggot|0|0|0|
|16068|0|Larva|0|0|0|
|16124|29987|Unrelenting Trainee|0|0|0|
|16125|29985|Unrelenting Death Knight|0|0|0|
|16126|29986|Unrelenting Rider|0|0|0|
|16127|30264|Spectral Trainee|0|0|0|
|16142|29357|Bile Sludge|0|0|0|
|16146|29823|Death Knight|100003|0|0|
|16148|29990|Spectral Death Knight|0|0|0|
|16149|29989|Spectral Horse|0|0|0|
|16150|29988|Spectral Rider|0|0|0|
|16236|29613|Eye Stalk|0|0|0|
|16286|30068|Spore|0|0|0|
|16290|29388|Fallout Slime|0|0|0|
|16297|29601|Mutated Grub|100003|0|0|
|16360|30303|Zombie Chow|0|0|0|
|16375|29354|Sewage Slime|0|0|0|
|16390|29901|Deathchill Servant|0|0|0|
|16427|30015|Soldier of the Frozen Wastes|0|0|0|
|16428|30048|Unstoppable Abomination|0|0|0|
|16429|30018|Soul Weaver|0|0|0|
|16441|30057|Guardian of Icecrown|0|0|0|
|16486|30183|Web Wrap|0|0|0|
|16573|29256|Crypt Guard|0|0|0|
|16698|29267|Corpse Scarab|0|0|0|
|16861|0|[UNUSED] Death Lord|0|0|0|
|16981|29634|Plagued Guardian|0|0|0|
|16982|29635|Plagued Construct|0|0|0|
|16983|29633|Plagued Champion|0|0|0|
|16984|29632|Plagued Warrior|0|0|0|
|16998|0|Mr. Bigglesworth|0|0|0|
|17055|29279|Maexxna Spiderling|0|0|0|

CMangos: OK

Mobs drop loot and spider loot
```
(15974, 15979, 15976, 15975, 15978)
```
|entry|difficulty_entry_1|name|lootid|skinloot|pickpocketloot|
|-----|------------------|----|------|--------|--------------|
|15974|29242|Dread Creeper|100004|0|0|
|15975|29241|Carrion Spinner|100004|0|0|
|15976|29243|Venom Stalker|100004|0|0|
|15978|30389|Crypt Reaver|100004|0|0|
|15979|29286|Tomb Horror|100004|0|0|

drop scraps
```
(16243, 16034)
```

|entry|difficulty_entry_1|name|lootid|skinloot|pickpocketloot|
|-----|------------------|----|------|--------|--------------|
|16034|29609|Plague Beast|100003|0|0|
|16243|29575|Plague Slime|100003|0|0|

### 25 man IDs trash loot
no loot

```
(14881, 16030, 16068, 16453, 16861, 16998, 29229, 29355, 29356, 29608, 29603,
29612, 31542, 29987, 29985, 29986, 30264, 29357, 29823, 29990, 29989, 29988,
29613, 30068, 29388, 29601, 30303, 29354, 29901, 30015, 30048, 30018, 30057)
```

drop scraps
```
(29609, 29575)
```

spiderloot
```
(29242, 29241, 29243, 30389, 29286)
```

loot
```
(16157, 16158, 16368, 16446, 16448, 16449, 16451, 16452, 29247, 29248, 29347,
29353, 29362, 29359, 29363, 29371, 29852, 29824, 29831, 29833, 29842, 29825,
29828, 29835, 29576, 29837, 29898, 29899, 29900, 29574, 30097, 29273, 29274,
30075, 30424, 30087)
```

lootids used 100003 and 100004

### CMangos
check if loot tables are present in CMangos
looks OK
no pickpocket, no skinning loot IDs
not bothered with minlootgold, maxlootgold values atm


### Loot Tables
Each category update CMangos -> ACore query


## Select bosses
```
SELECT DISTINCT creature_template.entry, creature_template.difficulty_entry_1, creature_template.name FROM creature_template, creature WHERE creature_template.rank = 3 AND creature.map = 533 AND creature_template.entry = acore_world.creature.id1 AND creature_template.minlevel > 21;
```
|entry|difficulty_entry_1|name|
|-----|------------------|----|
|15931|29373|Grobbulus|
|15932|29417|Gluth|
|15936|29701|Heigan the Unclean|
|15953|29268|Grand Widow Faerlina|
|15954|29615|Noth the Plaguebringer|
|15956|29249|Anub'Rekhan|
|16011|29718|Loatheb|
|16028|29324|Patchwerk|
|16060|29955|Gothik the Harvester|
|16061|29940|Instructor Razuvious|
|15928|29448|Thaddius|
|15952|29278|Maexxna|
|16064|30603|Thane Korth'azz|
|16065|30601|Lady Blaumeux|
|30549|30600|Baron Rivendare|
|16063|30602|Sir Zeliek|
|15989|29991|Sapphiron|
|15990|30061|Kel'Thuzad|

`difficulty_entry_1` of bosses
```
(29373, 29417, 29701, 29268, 29615, 29249, 29718, 29324, 29955, 29940, 29448, 29278, 30603, 30601, 30600, 30602, 29991, 30061)
```

## Comparing mobs acore vs brotalnia db
Select mobs from acore
```
SELECT DISTINCT creature_template.* FROM creature_template, creature WHERE creature.map = 533 AND creature_template.entry = acore_world.creature.id1 AND creature_template.minlevel > 21 AND creature_temp    late.entry != 16980;
 ```

Select mobs  from brotalnia
```
SELECT DISTINCT creature_template.entry FROM creature_template, creature WHERE creature.map = 533 AND creature_template.entry = creature.id
```

Select health from acore
```
SELECT DISTINCT creature_template.entry,creature_template.name, creature_template.entry, creature_template.HealthModifier FROM creature_template, creature WHERE creature.map = 533 AND creature_template.entry = acore_world.creature.id1 AND creature_template.minlevel > 21;
 ```
(4075, 14881, 15928, 15931, 15932, 15936, 15952, 15953, 15954, 15956, 15974, 15975, 15976, 15977, 15978, 15979, 15980, 15981, 15989, 15990, 16011, 16017, 16018, 16020, 16021, 16022, 16024, 16025, 16028, 16029, 16030, 16034, 16036, 16037, 16056, 16057, 16060, 16061, 16062, 16063, 16064, 16065, 16067, 16068, 16082, 16137, 16145, 16146, 16154, 16156, 16157, 16158, 16163, 16164, 16165, 16167, 16168, 16193, 16194, 16211, 16215, 16216, 16243, 16244, 16297, 16365, 16368, 16381, 16400, 16446, 16447, 16448, 16449, 16451, 16452, 16453, 16861, 16998, 533004)

brotalnia 15974

Select health from brotalnia
```
SELECT DISTINCT creature_template.entry, creature_template.armor, creature_template.dmg_min, creature_template.dmg_max, creature_template.name, creature_template.health_min, creature_template.health_max FROM creature_template, creature WHERE creature.map = 533 AND creature_template.entry = creature.id
```

# Approach 1 details
## Scaling

 Scale trash level health modifier with 1.5
```
UPDATE creature_template SET HealthModifier = HealthModifier * 1.5   WHERE entry IN ();
```
 Scale level
```
UPDATE creature_template SET minlevel = (minlevel - 20)   WHERE entry IN ();
UPDATE creature_template SET maxlevel = (maxlevel - 20)   WHERE entry IN ();
```
Values observed of Naxx10
| Creature | Brotalnia (nax40) | AzerothCore Naxx10 (scaled to lvl60) | modifier| health (pre scaling)|
|--|--|--|--|--|
|Skitterer|15720|10316|2|
|Venom Stalker|94320|61896|12|
|Noth the Plaguebringer|1665500|884400|200|2789000
|Frenzied Bat|10682|7469|1.5|
|Patchwork Golem|88032|56738|11|143000
|Embalming Slime|12208|7967|1.6|20000
|Patchwork|3997200|1713370|310|432200

To set values to Naxx40 levels:
Bosses modifiers x2
Non-bosses modifers x1.5
To scale it to Naxx25 lvl60, scale by x0.5
Conclusion: No scaling needed for HP values after scaling to lvl60

Issue: Spells need scaling

## Approach 2 Details
Naxx25 scaling observed with linear scaling factor X

| Creature |	Naxx40 (Brotalnia) |	AutoBalance (X=1.0) |
|--|--|--|
|Skitterer	|15720|15721|
|Venom Stalker	|94320| 94321	|
|Noth the Plaguebringer|	1665500| 1612000	|
|Frenzied Bat|	10682| 9157	|
|Patchwork Golem|	88032| 94321	| 
|Embalming Slime|	12208| 12209	|
|Patchwork|	3997200| 3114000 	|

## Approach 3 Details
Armor, hp, mana can be set with select/update statements as in Approach 1

Mechanics stay the same

Spell damage values need to be changed
### Spells
Grab Wrath Spells
We have a list of creatures in Naxx
look up their smart ai scripts
lookup the spells, then open spellDBC 
https://github.com/wowgaming/node-dbc-reader

Grab Brotalnia 1.12 Spells
check IDs and damage

create update/select query to scale

Scale
Venom Stalker
15976 29243
Poison Charge

create custom patch

edit the map to spawn naxx in EPL incl portal

custom spells (copy of naxx25 values) and scale those to lvl60

custom map area

# Loot

## Gold value
bosses gold value
```
select entry, MinLootGold, MaxLootGold  from creature_template where entry in 
(15931, 15932, 15936, 15953, 15954, 15956, 16011, 16028, 16060, 16061, 15928, 15952, 16064, 16065, 30549, 16063, 15989, 15990);
```
## Trash loot
LootID in Creature_Template

100003

Select mobs with trash loot
```
SELECT DISTINCT creature_template.* FROM creature_template, creature WHERE creature_template.rank != 3 AND creature.map = 533 AND creature_template.entry = acore_world.creature.id1 AND lootid != 0 AND creature_template.minlevel > 21 AND creature_template.entry != 16980;
```
lootid
100,003 trash
100,004 spider trash

4H Chest

Deathknight Wing Eye Portal Boss

GUID 65854

ID 181230

Damnation 

40348

gameobject_loot_template 

Entry=25193

reference_loot_template

Reference 34382

Reference 34146


brotalnia chest gameobject_loot_template

entry=181366

reference 12002 for tokens

reference_loot_template

token 22349




## Boss loot
Adjust templates in Acore. Overwrite Naxx25 (if needed and Naxx10) GUIDs.

Thaddius loot example found in brotalnia

```
creature_template
    entry 15928
    loot_id 15928
creature_loot_template
    Entry loot_id 15928
    22726 (atiesh)
    30450 ref
       reference_loot_template 
       22353
       22361
       22367
    30451 ref
       22353
       22360
       22367
    30452 ref
       reference_loot_template 
       22801
       22808
       23000
       23001
       23070
```

Loot CMangos



## Brotalnia data
https://github.com/brotalnia/database
`world_full_14_june_2021.7z`

I setup a stack with Portainer and imported the data. 

Setup a `uploads.ini` (see below) to increase upload size. Go to localhost:8090 and upload SQL to import data.

docker-compose
```
# Use root/example as user/password credentials
version: '3.1'

services:
  db:
    image: mysql
    # NOTE: use of "mysql_native_password" is not recommended: https://dev.mysql.com/doc/refman/8.0/en/upgrading-from-previous-series.html#upgrade-caching-sha2-password
    # (this is just an example, not intended to be a production configuration)
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: password
    ports:
      - '3305:3306'

  adminer:
    image: adminer
    restart: always
    volumes:
       - /home/${USER}/scripts/uploads.ini:/usr/local/etc/php/conf.d/uploads.ini
    ports:
      - 8090:8080
```
```
$ cat uploads.ini
file_uploads = On
upload_max_filesize = 256M
post_max_size = 256M
```

## Entrance Difficulty
Adjust difficulty entry in DB for naxx25

By default it'll enter Naxx10 (difficulty: 0) which makes things complicated as we want 25man mechanics.

Need to run `/script SetRaidDifficulty(2)` ingame to set difficulty to 25m


## How to teleport to naxx?
No teleporter in EPL. So we must add something "custom". If we want blizzlike the teleporter is present under the map, requires map editing. Is the area trigger still there? If not, can use an invisibile trigger with smartAI to TP.

item in bags on use:
    https://github.com/azerothcore/mod-pocket-portal
    PROS: not blizzlike
    CONS: more difficult to implement
Set epic, itemlvl, turn off boa

portal NPC: 
    https://github.com/Zoidwaffle/sql-npc-teleporter
    PRO: easy
    CONS: boring, not blizzlike

Custom game portal object "attacks" nearby players with teleport spell:
PRO: blizzlike
CONS: where to put it to make it blizzlikes as the naxx portal is under the map

Object that teleports on click
PRO: easy, more lore-friendly
CONS: not blizzlike
```
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 9000;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 9000) AND (`source_type` = 1) AND (`id` IN (0));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9000, 1, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 0, 11, 28444, 0, 0, 0, 0, 0, 17, 0, 5, 99, 0, 0, 0, 0, 0, '');
```

Orb that teles from Sapphiron to Naxx
ID GUID
202278 268048

29295 Tele DND -> does nothing
72613 -> teles to Sapphiron (exit) 
72617 Spphiron Entry: Teles to naxxramas

just add the gameobject to EPL

Add transporter that you need to click like BWL orb

.gobject add 181599 blue rune // purple 181600
181476 Nox Portal Plaguewood
icy rune
186747
or frozen rune
181287 
blue rune 182591 (wall) or 182590 ground
necro rune stone
189314
rune
188695
Scourge transporter rune

Entrance flag
```
void OnPlayerEnter(Player* player) override
{
    player->CastSpell(player, 29296, true);
}
```

## Attunement 
Requires in acore is either quest completed, achievement or item in bags.

Blizzlike Naxx attunement is OR of 3 quests. Not possible to add Blizzlike by only updating dungeon_access_requirements

Can choose to add custom item that needs to be in bags, like "arcane cloak".. Not blizzlike. I added a condition requirement instead to the spell that TPs you to naxx. So you can be summoned into Naxx, however you still need to complete attunement to access echoes of war which needs to be completed to unlock the T3 loot quests.

dungeon ids
naxx25 ID 31
naxx10 ID 30
Attunement quests
9121
9122
9123
reward learn spell 
arcane cloaking
280006

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 30;
INSERT INTO `dungeon_access_requirements`
(`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`)
VALUES
(31, 1, 16309, 'Must have completed attunement', 2, NULL, 0, '');

requirement_type set to 2 for quest requirement is of AND type.

Known Issue:
Not possible to set requirement of any attument quest complete (19121 || 19122 || 19123)

Without dungeon_access_requirement, players can be summoned inside the instance without completeing the quest.

However! The quest must be completed to pickup Echoes of War. Which is a raid
kill quest where you must kill trash inside Naxx. It is requirement to enable
the turn in of tokens and scraps for T3 tokens.

The teleporter outside is disabled and teleporter (wing->start) inside do not work without attunement

arcane cloaking
28006

Either condition of either of 3 quests OR arcane cloaking learned


Test attunement
make fresh lvl 60 char 
try without attunement and try with attunement
attunement spells are `9121, 9122, 9123`
the attunement has an OR condition.

It is not possible to complete multiple attunements as a player so only test 1
quest for 1 character.
```
.tele lightshope
.quest add 9121
.quest complete 9121
.quest reward 9121
```

Test T3
lvl 60 char 
```
.tele lightshope
.mod reputation 529 10000
.quest complete 9121
```


```
-- Add condition Attunement to teleport spell
-- Shows when not attuned Error Message 107: That spell is not available to you
```


Check loot quests after echoes of war
```
.quest complete 9033
```
## T3 loot quests

loot quests wrong allowable classes
also 
missing quest starter and quest ender

hunter character
.quest add 9059
.quest complete 9059

Also T3 Paladin helm quest is not disable. The only one out of all the T3 quests.

Check AllowableClasses flag
```
SELECT * FROM `quest_template_addon` WHERE `ID` IN
(9034, 9036, 9037, 9038,
9039, 9040, 9041, 9042, 9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050, 9054,
9055, 9056, 9057, 9058, 9059, 9060, 9061, 9068, 9069, 9070, 9071, 9072, 9073,
9074, 9075, 9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084, 9086, 9087, 9088,
9089, 9090, 9091, 9092, 9093, 9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102,
9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110, 9111, 9112, 9113, 9114, 9115,
9116, 9117, 9118);
```
All T3 loot quests
```
(9034, 9036, 9037, 9038,
9039, 9040, 9041, 9042, 9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050, 9054,
9055, 9056, 9057, 9058, 9059, 9060, 9061, 9068, 9069, 9070, 9071, 9072, 9073,
9074, 9075, 9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084, 9086, 9087, 9088,
9089, 9090, 9091, 9092, 9093, 9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102,
9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110, 9111, 9112, 9113, 9114, 9115,
9116, 9117, 9118)
```

Quests do not have a correct start and end listed in their quest template. Needs fixing in Acore.

Also T3 paladin helm quest is the only one not disabled.


Echoes of war needs upading so it can be completed in 1 raid ID

## Some commands

set 25man difficulty
```
/script SetRaidDifficulty(2)
```

reset instance
```
.instance unbount all
```
go Thaddius
```
.go c 130957
```
4H door
```
.gobject activate 65753
.go c 130961
```
patchwerk
```
.go c 128135
```

Naxx cauldron
```
.go xyz 3124 -3732 134
```
