USE acore_playerbots;

DROP TABLE IF EXISTS `playerbots_dungeon_suggestion_strategy`;
CREATE TABLE `playerbots_dungeon_suggestion_strategy` (
    `id`              TINYINT(3)   NOT NULL AUTO_INCREMENT UNIQUE,
    `definition_slug` VARCHAR(255) NOT NULL,
    `strategy`        VARCHAR(255) NOT NULL,
    `difficulty`      TINYINT(1)   NOT NULL,

    PRIMARY KEY (`id`),
    KEY `definition_slug` (`definition_slug`)
)
ENGINE=MyISAM
DEFAULT CHARSET=utf8
ROW_FORMAT=FIXED
COMMENT='Playerbot dungeon suggestion strategies';

INSERT INTO `playerbots_dungeon_suggestion_strategy` VALUES

-- == Classic ==

(NULL, 'ulda'         , 'Full run',       0),
(NULL, 'mara-scepter' , 'Scepter run',    0),
(NULL, 'mara-princess', 'Princess run',   0),
(NULL, 'zf'           , 'Mallet run',     0),
(NULL, 'brd'          , 'Arena run',      0),
(NULL, 'brd'          , 'Attunement run', 0),
(NULL, 'brd'          , 'Lava run',       0),
(NULL, 'brd'          , 'Full run',       0),
(NULL, 'dm-n'         , 'Tribute run',    0),
(NULL, 'strat'        , 'Undead',         0),
(NULL, 'strat'        , 'UD',             0),
(NULL, 'strat'        , 'Living',         0),
(NULL, 'strat'        , 'Live',           0),
(NULL, 'strat'        , 'Baron farm',     0),

-- == The Burning Crusade (Heroic) ==

(NULL, 'seth', 'Anzu run', 1),

-- == Wrath of the Lich King (Heroic) ==

(NULL, 'cos', 'Timed run', 1);
