DELETE FROM `playerbots_speech`;
INSERT INTO `playerbots_speech` VALUES
(NULL, 'taunt', 'Oh <target>! Thou infectious ill-nurtured flax-wench!', 'say'),
(NULL, 'taunt', 'The <randomfaction>''s final conquest has begun! Once again the subjugation of this world is within our grasp. Let none survive! ', 'say'),
(NULL, 'taunt', 'The <subzone> is for guests only...', 'say'),
(NULL, 'critical health', 'HEAL', 'yell'),
(NULL, 'critical health', 'heal', 'say'),
(NULL, 'critical health', 'omg', 'say'),
(NULL, 'low health', 'heal', 'say'),
(NULL, 'low health', 'heal', 'party'),
(NULL, 'low health', 'tank', 'party'),
(NULL, 'low health', 'tank', 'say'),
(NULL, 'low mana', 'oom', 'say'),
(NULL, 'low mana', 'oom', 'party'),
(NULL, 'aoe', 'Oh no. I can''t see at this slaugther', 'say'),
(NULL, 'loot', 'nice', 'party'),
(NULL, 'loot', 'nice', 'say'),
(NULL, 'loot', 'gj', 'party'),
(NULL, 'loot', 'sweet', 'party'),
-- (NULL, 'low ammo', '100 <ammo> left!', 'say'),
(NULL, 'no ammo', 'no ammo', 'party'),
(NULL, 'no ammo', 'no ammo', 'say');

