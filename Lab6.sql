-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `connections`;
CREATE TABLE `connections` (
  `station_id_1` int(10) unsigned NOT NULL,
  `station_id_2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`station_id_1`,`station_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `line_id` int(10) unsigned NOT NULL,
  `previous_station` int(10) unsigned DEFAULT NULL,
  `next_station` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `line_id` (`line_id`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2023-11-25 07:12:30
