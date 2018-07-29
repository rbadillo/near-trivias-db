USE trivias_near;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `trivias_near`.`users` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `last_name` VARCHAR(255) NOT NULL COMMENT '',
  `age` INT NOT NULL COMMENT '',
  `email` VARCHAR(255) NOT NULL COMMENT '',
  `password` VARCHAR(255) NOT NULL COMMENT '',
  `is_enabled` TINYINT NOT NULL DEFAULT 0,
  `country` VARCHAR(128) NOT NULL COMMENT '',
  `state` VARCHAR(128) NOT NULL COMMENT '',
  `city` VARCHAR(128) NOT NULL COMMENT '',
  `register_uuid` VARCHAR(128) NULL DEFAULT NULL COMMENT '',
  `when_created` DATETIME NOT NULL ,
  `when_updated` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `user_index` (`email` ASC, `password` ASC)  COMMENT '');

DROP TRIGGER IF EXISTS `trivias_near`.`users_datetime_created`;

CREATE TRIGGER `trivias_near`.`users_datetime_created` BEFORE INSERT ON `trivias_near`.`users` 
FOR EACH ROW
SET NEW.when_created = NOW();
