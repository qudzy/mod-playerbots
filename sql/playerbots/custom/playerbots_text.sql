DELETE FROM `playerbots_text`;
INSERT INTO `playerbots_text` VALUES

-- = Dungeon =
-- %lookingfor - Bot intention incl. role (e.g. [Tank] LFG or LFM)
-- %dungeon - Dungeon name or abbrevation incl. difficulty (Normal or Heroic)

(NULL, 'suggest_dungeon', 'LFG %dungeon'),
(NULL, 'suggest_dungeon_role', '%role LFG %dungeon'),

-- == Quest ==
-- %quest - random player's quest

(NULL, 'suggest_quest', 'Need help with %quest?'),
(NULL, 'suggest_quest', 'Could anyone share %quest?'),
(NULL, 'suggest_quest', 'Anyone doing %quest?'),
(NULL, 'suggest_quest', 'wanna do %quest?'),
(NULL, 'suggest_quest', 'does anyone know where to do %quest?'),
(NULL, 'suggest_quest', 'where is %quest?'),

-- == Trade materials (AH) ==
-- %category - AH category to grind

(NULL, 'suggest_trade', 'WTB %category'),
(NULL, 'suggest_trade', 'Buying %category'),
(NULL, 'suggest_trade', 'Selling %category, cheaper than AH!'),
(NULL, 'suggest_trade', 'WTS %category'),
(NULL, 'suggest_trade', 'Where is the best place to farm for %category?'),
(NULL, 'suggest_trade', 'LFG %category farming'),

-- == Reputation ==
-- %faction - random faction name

(NULL, 'suggest_faction', 'Anyone farming %faction rep?'),
(NULL, 'suggest_faction', 'Someone missing %faction rep?'),
(NULL, 'suggest_faction', 'Could help farming %faction rep.'),
(NULL, 'suggest_faction', 'Any groups for %faction rep?'),
(NULL, 'suggest_faction', 'LFG %faction rep grind?'),
(NULL, 'suggest_faction', 'Can anybody suggest a good spot for %faction rep grind?'),
(NULL, 'suggest_faction', 'Is there any point to improve my rep with %faction?'),
(NULL, 'suggest_faction', 'What is better for %faction? Quests or mob grinding?'),

-- == Anything ==
-- %role - Healer, Tank, Frost Mage, Elemental Shaman etc
-- %zone - Name of the bot zone

(NULL, 'suggest_something', '%role LF guild'),
(NULL, 'suggest_something', '%role looking for guild'),
(NULL, 'suggest_something', 'Is it worth questing in %zone?'),
(NULL, 'suggest_something', 'Anyone wanna quest in %zone?'),
(NULL, 'suggest_something', 'LFG %zone quests'),
(NULL, 'suggest_something', '%playerfaction in %zone'),
(NULL, 'suggest_something', '%playerfaction ganking in %zone'),
(NULL, 'suggest_something', 'help %playerfaction ganking in %zone'),

-- == Trade ==
-- %item - [item]xN
(NULL, 'suggest_sell', 'WTS %item %gold'),
(NULL, 'suggest_sell', 'Selling %item for %gold'),
(NULL, 'suggest_sell', 'WTS %item (%gold). Less than AH!'),
(NULL, 'suggest_sell', '%item on AH');
