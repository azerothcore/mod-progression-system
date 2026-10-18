-- Emblem exchange vendors in Dalaran trade a higher emblem for a lower one. Two of those trades hand out
-- emblems from later patches: Frost -> Triumph (3.3) and Triumph -> Conquest (3.2). Remove them until their
-- brackets; the Conquest -> Valor and Valor -> Heroism trades stay.
DELETE FROM `npc_vendor` WHERE (`entry` IN (37941, 37942) AND `item` = 47241) OR (`entry` IN (35494, 35495) AND `item` = 45624);
