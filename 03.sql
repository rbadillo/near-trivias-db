USE trivias_near;

DROP TABLE IF EXISTS `global_countries`;
CREATE TABLE `global_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `global_countries` (`id`, `country_name`) VALUES
(1, 'México'),
(2, 'USA');
