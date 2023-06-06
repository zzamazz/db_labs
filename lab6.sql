SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `metro_lines`;
CREATE TABLE `metro_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `metro_lines` (`id`, `color`) VALUES
(1,	'Червона'),
(2,	'Синя'),
(3,	'Зелена');

DROP TABLE IF EXISTS `metro_stations`;
CREATE TABLE `metro_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_in_line` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `line_id` (`line_id`),
  CONSTRAINT `metro_stations_ibfk_1` FOREIGN KEY (`line_id`) REFERENCES `metro_lines` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `metro_stations` (`id`, `line_id`, `name`, `number_in_line`) VALUES
(1,	2,	'Університет',	7),
(2,	3,	'Держпром',	6),
(11,	1,	'Пушкінська',	6);

DROP TABLE IF EXISTS `metro_transfer`;
CREATE TABLE `metro_transfer` (
  `from_station` int(11) NOT NULL,
  `to_station` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `from_station` (`from_station`),
  KEY `to_station` (`to_station`),
  CONSTRAINT `metro_transfer_ibfk_1` FOREIGN KEY (`from_station`) REFERENCES `metro_stations` (`id`),
  CONSTRAINT `metro_transfer_ibfk_2` FOREIGN KEY (`to_station`) REFERENCES `metro_stations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `metro_transfer` (`from_station`, `to_station`, `name`) VALUES
(1,	2,	'Перехід зі станції Університет на станцію Держпром'),
(2,	1,	'Перехід зі станції Держпром на станцію Університет');

-- 2023-05-28 11:05:46