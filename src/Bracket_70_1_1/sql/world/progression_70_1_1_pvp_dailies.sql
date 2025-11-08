DELETE FROM `disables` WHERE `sourceType` = 1 AND entry IN(
11335, 11339, -- Arathi Basin
11336, 11340, -- Alterac Valley
11337, 11341, -- Eye of the Storm
11338, 11342  -- Warsong Gulch
);
UPDATE `quest_template` SET
`MinLevel` = 70
WHERE ID IN(
11335, 11339, -- Arathi Basin
11336, 11340, -- Alterac Valley
11337, 11341, -- Eye of the Storm
11338, 11342  -- Warsong Gulch
);
