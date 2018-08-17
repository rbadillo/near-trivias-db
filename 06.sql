USE trivias_near;

DROP TABLE IF EXISTS `trivias_prizes`;
CREATE TABLE `trivias_near`.`trivias_prizes` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '',
  `prize_date` VARCHAR(255) NOT NULL COMMENT '',
  `prize_description` VARCHAR(255) NOT NULL COMMENT '',
  `streaming_id` VARCHAR(128) NULL COMMENT '',
  `player_winner` VARCHAR(255) NULL COMMENT '',
  `when_created` DATETIME NOT NULL ,
  `when_updated` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)  COMMENT '');

DROP TRIGGER IF EXISTS `trivias_near`.`prize_datetime_created`;

CREATE TRIGGER `trivias_near`.`prize_datetime_created` BEFORE INSERT ON `trivias_near`.`trivias_prizes` 
FOR EACH ROW
SET NEW.when_created = NOW();
