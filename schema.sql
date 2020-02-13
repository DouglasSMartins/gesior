-- --------------------------------------------------------
--
-- OTServBR - Global - Database schema
--

-- --------------------------------------------------------

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure `server_config`
--

CREATE TABLE IF NOT EXISTS `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT '',
  CONSTRAINT `server_config_pk` PRIMARY KEY (`config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `server_config` (`config`, `value`) VALUES ('db_version', '0'), ('motd_hash', ''), ('motd_num', '0'), ('players_record', '0');

-- --------------------------------------------------------

--
-- Table structure `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `premdays` int(11) NOT NULL DEFAULT '0',
  `coins` int(12) NOT NULL DEFAULT '0',
  `lastday` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `creation` int(11) NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL,
  `key` varchar(20) NOT NULL DEFAULT '0',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int(11) NOT NULL DEFAULT '0',
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `page_access` int(11) NOT NULL DEFAULT '0',
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `next_email` int(11) NOT NULL DEFAULT '0',
  `premium_points` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',								   
  `flag` varchar(80) NOT NULL DEFAULT '',
  `vip_time` int(11) NOT NULL,
  `guild_points` int(11) NOT NULL DEFAULT '0',
  `guild_points_stats` int(11) NOT NULL DEFAULT '0',
  `passed` int(11) NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `refresh` int(11) NOT NULL DEFAULT '0',
  `birth_date` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(20) NOT NULL,
  `loyalty_points` bigint(20) NOT NULL DEFAULT '0',
  `authToken` varchar(100) NOT NULL DEFAULT '',
  CONSTRAINT `accounts_pk` PRIMARY KEY (`id`),
  CONSTRAINT `accounts_unique` UNIQUE (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Extraindo dados da tabela `accounts`
--
-- --------------------------------------------------------

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premdays`, `coins`, `lastday`, `email`, `creation`, `vote`, `key`, `email_new`, `email_new_time`, `rlname`, `location`, `page_access`, `email_code`, `next_email`, `create_date`, `create_ip`, `last_post`, `flag`, `vip_time`, `guild_points`, `guild_points_stats`, `passed`, `block`, `refresh`, `birth_date`, `gender`, `loyalty_points`, `authToken`) VALUES
(1, '1', '356a192b7913b04c54574d18c28d46e6395428ab', NULL, 1, 0, 0, 0, '', 0, 0, '0', '', 0, '', '', 0, '', 0, 0, 0, 0, 'unknown', 0, 0, 0, 0, 0, 0, '', '', 0, '');

--
-- Create Account GOD/god
--

INSERT INTO `accounts` (`id`, `name`, `password`, `type`) VALUES
(2, 'GOD', '21298df8a3277357ee55b01df9530b535cf08ec1', 5);

-- --------------------------------------------------------
--
-- Table structure `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `vocation` int(11) NOT NULL DEFAULT '0',
  `health` int(11) NOT NULL DEFAULT '150',
  `healthmax` int(11) NOT NULL DEFAULT '150',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `lookbody` int(11) NOT NULL DEFAULT '0',
  `lookfeet` int(11) NOT NULL DEFAULT '0',
  `lookhead` int(11) NOT NULL DEFAULT '0',
  `looklegs` int(11) NOT NULL DEFAULT '0',
  `looktype` int(11) NOT NULL DEFAULT '136',
  `lookaddons` int(11) NOT NULL DEFAULT '0',
  `maglevel` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `manamax` int(11) NOT NULL DEFAULT '0',
  `manaspent` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `soul` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '1',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `lastlogin` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `skull` tinyint(1) NOT NULL DEFAULT '0',
  `skulltime` bigint(20) NOT NULL DEFAULT '0',
  `lastlogout` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `blessings` tinyint(2) NOT NULL DEFAULT '0',
  `blessings1` tinyint(4) NOT NULL DEFAULT '0',
  `blessings2` tinyint(4) NOT NULL DEFAULT '0',
  `blessings3` tinyint(4) NOT NULL DEFAULT '0',
  `blessings4` tinyint(4) NOT NULL DEFAULT '0',
  `blessings5` tinyint(4) NOT NULL DEFAULT '0',
  `blessings6` tinyint(4) NOT NULL DEFAULT '0',
  `blessings7` tinyint(4) NOT NULL DEFAULT '0',
  `blessings8` tinyint(4) NOT NULL DEFAULT '0',
  `onlinetime` int(11) NOT NULL DEFAULT '0',
  `deletion` bigint(15) NOT NULL DEFAULT '0',
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `offlinetraining_time` smallint(5) UNSIGNED NOT NULL DEFAULT '43200',
  `offlinetraining_skill` int(11) NOT NULL DEFAULT '-1',
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT '2520',
  `skill_fist` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_fist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_club` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_club_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_sword` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_sword_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_axe` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_axe_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_dist` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_dist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_shielding` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_shielding_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_fishing` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `skill_fishing_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `hide_char` int(11) NOT NULL DEFAULT '0',
  `cast` tinyint(1) NOT NULL DEFAULT '0',
  `skill_critical_hit_chance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `skill_critical_hit_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_critical_hit_damage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `skill_critical_hit_damage_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_chance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_amount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_amount_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_chance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_amount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_amount_tries` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_criticalhit_chance` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_criticalhit_damage` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_lifeleech_chance` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_lifeleech_amount` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_manaleech_chance` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `skill_manaleech_amount` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `prey_stamina_1` int(11) DEFAULT NULL,
  `prey_stamina_2` int(11) DEFAULT NULL,
  `prey_stamina_3` int(11) DEFAULT NULL,
  `prey_column` smallint(6) NOT NULL DEFAULT '1',
  `bonus_reroll` int(11) NOT NULL DEFAULT '0',
  `xpboost_stamina` smallint(5) DEFAULT NULL,
  `xpboost_value` tinyint(4) DEFAULT NULL,
  `marriage_status` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `hide_skills` int(11) DEFAULT NULL,
  `hide_set` int(11) DEFAULT NULL,
  `former` varchar(255) NOT NULL DEFAULT '-',
  `signature` varchar(255) NOT NULL,
  `marriage_spouse` int(11) NOT NULL DEFAULT '-1',
  `loyalty_ranking` tinyint(1) NOT NULL DEFAULT '0',
  `bonus_rerolls` bigint(21) NOT NULL DEFAULT '0',
  INDEX `account_id` (`account_id`),
  INDEX `vocation` (`vocation`),
  CONSTRAINT `players_pk` PRIMARY KEY (`id`),
  CONSTRAINT `players_unique` UNIQUE (`name`),
  CONSTRAINT `players_account_fk`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Extraindo dados da tabela `players`
--

INSERT INTO `players`
(`id`, `name`,           `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `mana`, `manamax`, `town_id`, `conditions`, `cap`, `sex`) VALUES
(6,    'Admin',             6,          2,            1,       0,          150,      150,         0,            106,        95,         78,         116,        128,        5,      5,         2,         '',           400,   1 );

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `blessings1`, `blessings2`, `blessings3`, `blessings4`, `blessings5`, `blessings6`, `blessings7`, `blessings8`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `deleted`, `description`, `comment`, `create_ip`, `create_date`, `hide_char`, `cast`, `skill_critical_hit_chance`, `skill_critical_hit_chance_tries`, `skill_critical_hit_damage`, `skill_critical_hit_damage_tries`, `skill_life_leech_chance`, `skill_life_leech_chance_tries`, `skill_life_leech_amount`, `skill_life_leech_amount_tries`, `skill_mana_leech_chance`, `skill_mana_leech_chance_tries`, `skill_mana_leech_amount`, `skill_mana_leech_amount_tries`, `skill_criticalhit_chance`, `skill_criticalhit_damage`, `skill_lifeleech_chance`, `skill_lifeleech_amount`, `skill_manaleech_chance`, `skill_manaleech_amount`, `prey_stamina_1`, `prey_stamina_2`, `prey_stamina_3`, `prey_column`, `bonus_reroll`, `xpboost_stamina`, `xpboost_value`, `marriage_status`, `hide_skills`, `hide_set`, `former`, `signature`, `marriage_spouse`, `loyalty_ranking`) VALUES
(1, 'Rook Sample', 1, 1, 1, 0, 150, 150, 0, 106, 95, 78, 116, 128, 0, 0, 5, 5, 0, 0, 6, 0, 0, 0, '', 400, 0, 1407021967, 1793873073, 1, 0, 0, 1407021968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(2, 'Sorcerer Sample', 1, 1, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(3, 'Druid Sample', 1, 1, 8, 2, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(4, 'Paladin Sample', 1, 1, 8, 3, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(5, 'Knight Sample', 1, 1, 8, 4, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0);

-- --------------------------------------------------------
--
-- Table structure `account_bans`
--

CREATE TABLE IF NOT EXISTS `account_bans` (
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  INDEX `banned_by` (`banned_by`),
  CONSTRAINT `account_bans_pk` PRIMARY KEY (`account_id`),
  CONSTRAINT `account_bans_account_fk`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `account_bans_player_fk`
    FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `account_ban_history`
--

CREATE TABLE IF NOT EXISTS `account_ban_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  INDEX `account_id` (`account_id`),
  INDEX `banned_by` (`banned_by`),
  CONSTRAINT `account_bans_history_account_fk`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `account_bans_history_player_fk`
    FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `account_ban_history_pk` PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `account_viplist`
--

CREATE TABLE IF NOT EXISTS `account_viplist` (
  `account_id` int(11) NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  INDEX `account_id` (`account_id`),
  INDEX `player_id` (`player_id`),
  CONSTRAINT `account_viplist_unique` UNIQUE (`account_id`, `player_id`),
  CONSTRAINT `account_viplist_account_fk`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `account_viplist_player_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blessings_history`
--

CREATE TABLE `blessings_history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `blessing` tinyint(4) NOT NULL,
  `loss` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabble Structure `daily_reward_history`
--

CREATE TABLE IF NOT EXISTS `daily_reward_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daystreak` smallint(2) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  INDEX `player_id` (`player_id`),
  CONSTRAINT `daily_reward_history_pk` PRIMARY KEY (`id`),
  CONSTRAINT `daily_reward_history_player_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `global_storage`
--

CREATE TABLE IF NOT EXISTS `global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  CONSTRAINT `global_storage_unique` UNIQUE (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `residence` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `guild_logo` mediumblob,
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_execute_points` int(11) NOT NULL DEFAULT '0',
  `logo_gfx_name` varchar(255) NOT NULL DEFAULT '',
  CONSTRAINT `guilds_pk` PRIMARY KEY (`id`),
  CONSTRAINT `guilds_name_unique` UNIQUE (`name`),
  CONSTRAINT `guilds_owner_unique` UNIQUE (`ownerid`),
  CONSTRAINT `guilds_ownerid_fk`
    FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `guild_wars`
--

CREATE TABLE IF NOT EXISTS `guild_wars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild1` int(11) NOT NULL DEFAULT '0',
  `guild2` int(11) NOT NULL DEFAULT '0',
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `started` bigint(15) NOT NULL DEFAULT '0',
  `ended` bigint(15) NOT NULL DEFAULT '0',
  INDEX `guild1` (`guild1`),
  INDEX `guild2` (`guild2`),
  CONSTRAINT `guild_wars_pk` PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `guildwar_kills`
--

CREATE TABLE IF NOT EXISTS `guildwar_kills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT '0',
  `targetguild` int(11) NOT NULL DEFAULT '0',
  `warid` int(11) NOT NULL DEFAULT '0',
  `time` bigint(15) NOT NULL,
  INDEX `warid` (`warid`),
  CONSTRAINT `guildwar_kills_pk` PRIMARY KEY (`id`),
  CONSTRAINT `guildwar_kills_unique` UNIQUE (`warid`),
  CONSTRAINT `guildwar_kills_warid_fk`
    FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `guild_invites`
--

CREATE TABLE IF NOT EXISTS `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL,
  INDEX `guild_id` (`guild_id`),
  CONSTRAINT `guild_invites_pk` PRIMARY KEY (`player_id`, `guild_id`),
  CONSTRAINT `guild_invites_player_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `guild_invites_guild_fk`
    FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `guild_ranks`
--

CREATE TABLE IF NOT EXISTS `guild_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else',
  INDEX `guild_id` (`guild_id`),
  CONSTRAINT `guild_ranks_pk` PRIMARY KEY (`id`),
  CONSTRAINT `guild_ranks_fk`
    FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Trigger
--
DELIMITER //
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('The Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure `guild_membership`
--

CREATE TABLE IF NOT EXISTS `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT '',
  INDEX `guild_id` (`guild_id`),
  INDEX `rank_id` (`rank_id`),
  CONSTRAINT `guild_membership_pk` PRIMARY KEY (`player_id`),
  CONSTRAINT `guild_membership_player_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `guild_membership_guild_fk`
    FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `guild_membership_rank_fk`
    FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `bid` int(11) NOT NULL DEFAULT '0',
  `bid_end` int(11) NOT NULL DEFAULT '0',
  `last_bid` int(11) NOT NULL DEFAULT '0',
  `highest_bidder` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `guildid` int(11),
  `beds` int(11) NOT NULL DEFAULT '0',
  INDEX `owner` (`owner`),
  INDEX `town_id` (`town_id`),
  CONSTRAINT `houses_pk` PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- trigger
--
DELIMITER //
CREATE TRIGGER `ondelete_players` BEFORE DELETE ON `players`
 FOR EACH ROW BEGIN
    UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure `house_lists`
--

CREATE TABLE IF NOT EXISTS `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  INDEX `house_id` (`house_id`),
  CONSTRAINT `houses_list_house_fk`
    FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `ip_bans`
--

CREATE TABLE IF NOT EXISTS `ip_bans` (
  `ip` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  INDEX `banned_by` (`banned_by`),
  CONSTRAINT `ip_bans_pk` PRIMARY KEY (`ip`),
  CONSTRAINT `ip_bans_players_fk`
    FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `live_casts`
--

CREATE TABLE `live_casts` (
  `player_id` int(11) NOT NULL,
  `cast_name` varchar(255) NOT NULL,
  `password` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `spectators` smallint(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `market_history`
--

CREATE TABLE IF NOT EXISTS `market_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires_at` bigint(20) UNSIGNED NOT NULL,
  `inserted` bigint(20) UNSIGNED NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL,
  INDEX `player_id` (`player_id`,`sale`),
  CONSTRAINT `market_history_pk` PRIMARY KEY (`id`),
  CONSTRAINT `market_history_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `market_offers`
--

CREATE TABLE IF NOT EXISTS `market_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `created` bigint(20) UNSIGNED NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `price` int(10) UNSIGNED NOT NULL DEFAULT '0',
  INDEX `sale` (`sale`,`itemtype`),
  INDEX `created` (`created`),
  INDEX `player_id` (`player_id`),
  CONSTRAINT `market_offers_pk` PRIMARY KEY (`id`),
  CONSTRAINT `market_offers_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsticker`
--

CREATE TABLE `newsticker` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagseguro`
--

CREATE TABLE `pagseguro` (
  `date` datetime NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lastEventDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagseguro_transactions`
--

CREATE TABLE `pagseguro_transactions` (
  `transaction_code` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `item_count` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `payment_amount` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `players_online`
--

CREATE TABLE IF NOT EXISTS `players_online` (
  `player_id` int(11) NOT NULL,
  CONSTRAINT `players_online_pk` PRIMARY KEY (`player_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_deaths`
--

CREATE TABLE IF NOT EXISTS `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT '1',
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT '0',
  `unjustified` tinyint(1) NOT NULL DEFAULT '0',
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT '0',
  INDEX `player_id` (`player_id`),
  INDEX `killed_by` (`killed_by`),
  INDEX `mostdamage_by` (`mostdamage_by`),
  CONSTRAINT `player_deaths_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_depotitems`
--

CREATE TABLE IF NOT EXISTS `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  CONSTRAINT `player_depotitems_unique` UNIQUE (`player_id`, `sid`),
  CONSTRAINT `player_depotitems_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_former_names`
--

CREATE TABLE `player_former_names` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `former_name` varchar(35) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_inboxitems`
--

CREATE TABLE IF NOT EXISTS `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  CONSTRAINT `player_inboxitems_unique` UNIQUE (`player_id`, `sid`),
  CONSTRAINT `player_inboxitems_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  INDEX `player_id` (`player_id`),
  INDEX `sid` (`sid`),
  CONSTRAINT `player_items_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_kills`
--

CREATE TABLE IF NOT EXISTS `player_kills` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL,
  `unavenged` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_misc`
--

CREATE TABLE IF NOT EXISTS `player_misc` (
  `player_id` int(11) NOT NULL,
  `info` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_namelocks`
--

CREATE TABLE IF NOT EXISTS `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL,
  INDEX `namelocked_by` (`namelocked_by`),
  CONSTRAINT `player_namelocks_unique` UNIQUE (`player_id`),
  CONSTRAINT `player_namelocks_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `player_namelocks_players2_fk`
    FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_prey`
--

CREATE TABLE IF NOT EXISTS `player_prey` (
  `player_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mindex` smallint(6) NOT NULL,
  `mcolumn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_preytimes`
--

CREATE TABLE IF NOT EXISTS `player_preytimes` (
  `player_id` int(11) NOT NULL,
  `bonus_type1` int(11) NOT NULL,
  `bonus_value1` int(11) NOT NULL,
  `bonus_name1` varchar(50) NOT NULL,
  `bonus_type2` int(11) NOT NULL,
  `bonus_value2` int(11) NOT NULL,
  `bonus_name2` varchar(50) NOT NULL,
  `bonus_type3` int(11) NOT NULL,
  `bonus_value3` int(11) NOT NULL,
  `bonus_name3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_rewards`
--

CREATE TABLE IF NOT EXISTS `player_rewards` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  CONSTRAINT `player_rewards_unique` UNIQUE (`player_id`, `sid`),
  CONSTRAINT `player_rewards_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_spells`
--

CREATE TABLE IF NOT EXISTS `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  INDEX `player_id` (`player_id`),
  CONSTRAINT `player_spells_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `player_storage`
--

CREATE TABLE IF NOT EXISTS `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `key` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  CONSTRAINT `player_storage_pk` PRIMARY KEY (`player_id`, `key`),
  CONSTRAINT `player_storage_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `store_history`
--

CREATE TABLE IF NOT EXISTS `store_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `mode` smallint(2) NOT NULL DEFAULT '0',
  `description` varchar(3500) NOT NULL,
  `coin_amount` int(12) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  INDEX `account_id` (`account_id`),
  CONSTRAINT `store_history_pk` PRIMARY KEY (`id`),
  CONSTRAINT `store_history_account_fk`
    FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `ticket_subject` varchar(45) NOT NULL,
  `ticket_author` varchar(255) NOT NULL,
  `ticket_author_acc_id` int(11) NOT NULL,
  `ticket_last_reply` varchar(45) NOT NULL,
  `ticket_admin_reply` int(11) NOT NULL,
  `ticket_date` datetime NOT NULL,
  `ticket_ended` varchar(45) NOT NULL,
  `ticket_status` varchar(45) NOT NULL,
  `ticket_category` varchar(45) NOT NULL,
  `ticket_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tickets_reply`
--

CREATE TABLE `tickets_reply` (
  `ticket_replyid` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `reply_author` varchar(255) DEFAULT NULL,
  `reply_message` text,
  `reply_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `tile_store`
--

CREATE TABLE IF NOT EXISTS `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL,
  INDEX `house_id` (`house_id`),
  CONSTRAINT `tile_store_account_fk`
    FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure `prey_slots`
--

CREATE TABLE IF NOT EXISTS `prey_slots` (
  `player_id` int(11) NOT NULL,
  `num` smallint(2) NOT NULL,
  `state` smallint(2) NOT NULL DEFAULT '1',
  `unlocked` tinyint(1) NOT NULL DEFAULT '0',
  `current` varchar(40) NOT NULL DEFAULT '',
  `monster_list` varchar(360) NOT NULL,
  `free_reroll_in` int(11) NOT NULL DEFAULT '0',
  `time_left` smallint(5) NOT NULL DEFAULT '0',
  `next_use` int(11) NOT NULL DEFAULT '0',
  `bonus_type` smallint(3) NOT NULL,
  `bonus_value` smallint(3) NOT NULL DEFAULT '0',
  `bonus_grade` smallint(3) NOT NULL DEFAULT '0',
  INDEX `player_id` (`player_id`),
  CONSTRAINT `prey_slots_players_fk`
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Table structure `player_charms`
--

CREATE TABLE `player_charms` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `charm` VARCHAR(20),
  `monster` VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_forum`
--

CREATE TABLE `z_forum` (
  `id` int(11) NOT NULL,
  `first_post` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `section` int(3) NOT NULL DEFAULT '0',
  `replies` int(20) NOT NULL DEFAULT '0',
  `views` int(20) NOT NULL DEFAULT '0',
  `author_aid` int(20) NOT NULL DEFAULT '0',
  `author_guid` int(20) NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL,
  `post_smile` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` int(20) NOT NULL DEFAULT '0',
  `last_edit_aid` int(20) NOT NULL DEFAULT '0',
  `edit_date` int(20) NOT NULL DEFAULT '0',
  `post_ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `icon_id` int(11) NOT NULL,
  `news_icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_network_box`
--

CREATE TABLE `z_network_box` (
  `id` int(11) NOT NULL,
  `network_name` varchar(10) NOT NULL,
  `network_link` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_news_tickers`
--

CREATE TABLE `z_news_tickers` (
  `date` int(11) NOT NULL DEFAULT '1',
  `author` int(11) NOT NULL,
  `image_id` int(3) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hide_ticker` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_ots_comunication`
--

CREATE TABLE `z_ots_comunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_ots_guildcomunication`
--

CREATE TABLE `z_ots_guildcomunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_polls`
--

CREATE TABLE `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `votes_all` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_polls_answers`
--

CREATE TABLE `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_shop_category`
--

CREATE TABLE `z_shop_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `button` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `z_shop_category`
--

INSERT INTO `z_shop_category` (`id`, `name`, `desc`, `button`, `hide`) VALUES
(2, 'Extra Services', 'Buy an extra service to transfer a character to another game world, to change your character name or sex, to change your account name, or to get a new recovery key.', '_sbutton_getextraservice.gif', 0),
(3, 'Mounts', 'Buy your characters one or more of the fabulous mounts offered here.', '_sbutton_getmount.gif', 1),
(4, 'Outfits', 'Buy your characters one or more of the fancy outfits offered here.', '_sbutton_getoutfit.gif', 1),
(5, 'Items', 'Buy items for your character be more stronger in the game.', '_sbutton_getextraservice.gif', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_shop_donates`
--

CREATE TABLE `z_shop_donates` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `coins` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_shop_donate_confirm`
--

CREATE TABLE `z_shop_donate_confirm` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `msg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_shop_history_item`
--

CREATE TABLE `z_shop_history_item` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `offer_id` varchar(255) NOT NULL DEFAULT '',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT '0',
  `trans_real` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_shop_offer`
--

CREATE TABLE `z_shop_offer` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  `price` varchar(50) NOT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `mount_id` varchar(100) NOT NULL,
  `addon_name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_date` int(11) NOT NULL,
  `default_image` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `z_shop_offer`
--

INSERT INTO `z_shop_offer` (`id`, `category`, `coins`, `price`, `itemid`, `mount_id`, `addon_name`, `count`, `offer_type`, `offer_description`, `offer_name`, `offer_date`, `default_image`, `hide`) VALUES
(5, 2, 250, '', 0, '', '', 1, 'changename', 'Buy a character name change to rename one of your characters.', 'Character Change Name', 1416865577, 'changename.png', 0),
(6, 2, 10, '', 0, '', '', 1, 'changesex', 'Buy a character sex change to turn your male character into a female one, or your female character into a male one.', 'Character Change Sex', 1416874417, 'changesex.png', 1),
(7, 2, 250, '', 0, '', '', 1, 'changeaccountname', 'Buy an account name change to select a different name for your account.', 'Account Name Change', 1416874601, 'changeaccountname.png', 0),
(8, 2, 300, '', 0, '', '', 1, 'newrk', 'If you need a new recovery key, you can order it here. Note that the letter for the new recovery key can only be sent to the address in the account registration.', 'Recovery Key', 1416874816, 'newrk.png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `z_shop_payment`
--

CREATE TABLE `z_shop_payment` (
  `id` int(11) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_category_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `coins` int(11) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting',
  `date` int(11) NOT NULL,
  `gift` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `live_casts`
--
ALTER TABLE `live_casts`
  ADD UNIQUE KEY `player_id_2` (`player_id`);


--
-- Indexes for table `newsticker`
--
ALTER TABLE `newsticker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagseguro_transactions`
--
ALTER TABLE `pagseguro_transactions`
  ADD UNIQUE KEY `transaction_code` (`transaction_code`,`status`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);


--
-- Indexes for table `player_former_names`
--
ALTER TABLE `player_former_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `account_id` (`ticket_author_acc_id`),
  ADD KEY `player_name` (`ticket_author`);

--
-- Indexes for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD PRIMARY KEY (`ticket_replyid`) USING BTREE,
  ADD KEY `ticket_id_idx` (`ticket_id`) USING BTREE;

--
-- Indexes for table `z_forum`
--
ALTER TABLE `z_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indexes for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_ots_guildcomunication`
--
ALTER TABLE `z_ots_guildcomunication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newsticker`
--
ALTER TABLE `newsticker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `player_former_names`
--
ALTER TABLE `player_former_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  MODIFY `ticket_replyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_forum`
--
ALTER TABLE `z_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_ots_guildcomunication`
--
ALTER TABLE `z_ots_guildcomunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13382;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `live_casts`
--
ALTER TABLE `live_casts`
  ADD CONSTRAINT `live_casts_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`ticket_author_acc_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD CONSTRAINT `ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`) ON DELETE CASCADE ON UPDATE NO ACTION;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
