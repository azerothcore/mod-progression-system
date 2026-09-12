DELETE v
FROM npc_vendor v
JOIN item_template t ON t.entry = v.item
WHERE t.name LIKE 'Hateful %'
  AND v.entry IN (31581, 31579);
