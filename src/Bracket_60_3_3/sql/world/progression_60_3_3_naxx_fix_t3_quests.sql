-- warrior
SET @NPC:= 16112;
SET @CLASS:= 1;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9034, 9036, 9037, 9038, 9039, 9040, 9041, 9042)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9034), (@NPC, 9036), (@NPC, 9037), (@NPC, 9038), (@NPC, 9039), (@NPC, 9040), (@NPC, 9041), (@NPC, 9042);
DELETE FROM `creature_questender` WHERE (`quest` IN (9034, 9036, 9037, 9038, 9039, 9040, 9041, 9042)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9034), (@NPC, 9036), (@NPC, 9037), (@NPC, 9038), (@NPC, 9039), (@NPC, 9040), (@NPC, 9041), (@NPC, 9042);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9034, 9036, 9037, 9038, 9039, 9040, 9041, 9042));

-- paladin
SET @NPC:= 16115;
SET @CLASS:= 2;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9043), (@NPC, 9044), (@NPC, 9045), (@NPC, 9046), (@NPC, 9047), (@NPC, 9048), (@NPC, 9049), (@NPC, 9050);
DELETE FROM `creature_questender` WHERE (`quest` IN (9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9043), (@NPC, 9044), (@NPC, 9045), (@NPC, 9046), (@NPC, 9047), (@NPC, 9048), (@NPC, 9049), (@NPC, 9050);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050));

-- hunter
SET @NPC:= 16132;
SET @CLASS:= 4;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9054, 9055, 9056, 9057, 9058, 9059, 9060, 9061)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9054), (@NPC, 9055), (@NPC, 9056), (@NPC, 9057), (@NPC, 9058), (@NPC, 9059), (@NPC, 9060), (@NPC, 9061);
DELETE FROM `creature_questender` WHERE (`quest` IN (9054, 9055, 9056, 9057, 9058, 9059, 9060, 9061)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9054), (@NPC, 9055), (@NPC, 9056), (@NPC, 9057), (@NPC, 9058), (@NPC, 9059), (@NPC, 9060), (@NPC, 9061);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9054, 9055, 9056, 9057, 9058, 9059, 9060, 9061));

-- shaman
SET @NPC:= 16134;
SET @CLASS:= 64;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9068, 9069, 9070, 9071, 9072, 9073, 9074, 9075)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9068), (@NPC, 9069), (@NPC, 9070), (@NPC, 9071), (@NPC, 9072), (@NPC, 9073), (@NPC, 9074), (@NPC, 9075);
DELETE FROM `creature_questender` WHERE (`quest` IN (9068, 9069, 9070, 9071, 9072, 9073, 9074, 9075)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9068), (@NPC, 9069), (@NPC, 9070), (@NPC, 9071), (@NPC, 9072), (@NPC, 9073), (@NPC, 9074), (@NPC, 9075);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9068, 9069, 9070, 9071, 9072, 9073, 9074, 9075));

-- rogue
SET @NPC:= 16134;
SET @CLASS:= 8;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9077), (@NPC, 9078), (@NPC, 9079), (@NPC, 9080), (@NPC, 9081), (@NPC, 9082), (@NPC, 9083), (@NPC, 9084);
DELETE FROM `creature_questender` WHERE (`quest` IN (9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9077), (@NPC, 9078), (@NPC, 9079), (@NPC, 9080), (@NPC, 9081), (@NPC, 9082), (@NPC, 9083), (@NPC, 9084);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084));

-- druid
SET @NPC:= 16135;
SET @CLASS:= 1024;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9086, 9087, 9088, 9089, 9090, 9091, 9092, 9093)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9086), (@NPC, 9087), (@NPC, 9088), (@NPC, 9089), (@NPC, 9090), (@NPC, 9091), (@NPC, 9092), (@NPC, 9093);
DELETE FROM `creature_questender` WHERE (`quest` IN (9086, 9087, 9088, 9089, 9090, 9091, 9092, 9093)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9086), (@NPC, 9087), (@NPC, 9088), (@NPC, 9089), (@NPC, 9090), (@NPC, 9091), (@NPC, 9092), (@NPC, 9093);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9086, 9087, 9088, 9089, 9090, 9091, 9092, 9093));

-- mage
SET @NPC:= 16116;
SET @CLASS:= 128;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9095), (@NPC, 9096), (@NPC, 9097), (@NPC, 9098), (@NPC, 9099), (@NPC, 9100), (@NPC, 9101), (@NPC, 9102);
DELETE FROM `creature_questender` WHERE (`quest` IN (9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9095), (@NPC, 9096), (@NPC, 9097), (@NPC, 9098), (@NPC, 9099), (@NPC, 9100), (@NPC, 9101), (@NPC, 9102);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102));

-- warlock
SET @NPC:= 16133;
SET @CLASS:= 256;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9103), (@NPC, 9104), (@NPC, 9105), (@NPC, 9106), (@NPC, 9107), (@NPC, 9108), (@NPC, 9109), (@NPC, 9110);
DELETE FROM `creature_questender` WHERE (`quest` IN (9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9103), (@NPC, 9104), (@NPC, 9105), (@NPC, 9106), (@NPC, 9107), (@NPC, 9108), (@NPC, 9109), (@NPC, 9110);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110));

-- priest
SET @NPC:= 16113;
SET @CLASS:= 16;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9111), (@NPC, 9112), (@NPC, 9113), (@NPC, 9114), (@NPC, 9115), (@NPC, 9116), (@NPC, 9117), (@NPC, 9118);
DELETE FROM `creature_questender` WHERE (`quest` IN (9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9111), (@NPC, 9112), (@NPC, 9113), (@NPC, 9114), (@NPC, 9115), (@NPC, 9116), (@NPC, 9117), (@NPC, 9118);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118));
