-- Disable War Effort and AQ Quests (Bracket 60_3_2)
DELETE FROM `creature_queststarter` WHERE `quest` IN (
8286, -- What Tomorrow Brings
8288, -- Only One May Rise
8301, -- The Path of the Righteous
8302, -- The Hand of the Righteous
8303, -- Anachronos
8316, -- Armaments of War
8376, -- Armaments of War
8377, -- Armaments of War
8378, -- Armaments of War
8379, -- Armaments of War
8380, -- Armaments of War
8381, -- Armaments of War
8382, -- Armaments of War
8507, -- Field Duty
8557, -- Drape of Unyielding Strength
8689, -- Shroud of Infinite Wisdom
8690, -- Cloak of the Gathering Storm
8691, -- Drape of Vaulted Secrets
8692, -- Cloak of Unending Life
8693, -- Cloak of Veiled Shadows
8694, -- Shroud of Unspoken Names
8695, -- Cape of Eternal Justice
8696, -- Cloak of the Unseen Path
8719, -- Bladesing the Elder
8731, -- Field Duty
8732, -- Field Duty Papers
8800, -- Cenarion Battlegear
9023, -- The Perfect Poison
9338, -- Allegiance to Cenarion Circle
8275, -- Taking Back Silithus
8276, -- Taking Back Silithus
8496, -- Bandages for the Field
8498, -- Twilight Battle Orders
8501, -- Target: Hive'Ashi Stingers
8502, -- Target: Hive'Ashi Workers
8534, -- Hive'Zora Scout Report
8535, -- Hoary Templar
8536, -- Earthen Templar
8537, -- Crimson Templar
8538, -- The Four Dukes
8539, -- Target: Hive'Zora Hive Sisters
8540, -- Boots for the Guard
8541, -- Grinding Stones for the Guard
8687, -- Target: Hive'Zora Tunnelers
8737, -- Azure Templar
8738, -- Hive'Regal Scout Report
8739, -- Hive'Ashi Scout Report
8770, -- Target: Hive'Ashi Defenders
8771, -- Target: Hive'Ashi Sandstalkers
8772, -- Target: Hive'Zora Waywatchers
8773, -- Target: Hive'Zora Reavers
8774, -- Target: Hive'Regal Ambushers
8775, -- Target: Hive'Regal Spitfires
8776, -- Target: Hive'Regal Slavemakers
8777, -- Target: Hive'Regal Burrowers
8779, -- Scrying Materials
8782, -- Uniform Supplies
8786, -- Arms for the Field
8787, -- Armor Kits for the Field
8791, -- The Fall of Ossirian
8805, -- Boots for the Guard
8806, -- Grinding Stones for the Guard
8807, -- Scrying Materials
8808, -- Uniform Supplies
8810  -- Bandages for the Field
);

DELETE FROM `creature_questender` WHERE `quest` IN (8286,8288,8301,8302,8303,8316,8376,8377,8378,8379,8380,8381,8382,8507,8557,8689,8690,8691,8692,8693,8694,8695,8696,8719,8731,8732,8800,9023,9338,8275,8276,8496,8498,8501,8502,8534,8535,8536,8537,8538,8539,8540,8541,8687,8737,8738,8739,8770,8771,8772,8773,8774,8775,8776,8777,8779,8782,8786,8787,8791,8805,8806,8807,8808,8810);
