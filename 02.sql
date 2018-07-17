CREATE TABLE `trivias_near`.`users` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `last_name` VARCHAR(255) NOT NULL COMMENT '',
  `age` INT NOT NULL COMMENT '',
  `email` VARCHAR(255) NOT NULL COMMENT '',
  `password` VARCHAR(255) NOT NULL COMMENT '',
  `country` VARCHAR(128) NOT NULL COMMENT '',
  `state` VARCHAR(128) NOT NULL COMMENT '',
  `city` VARCHAR(128) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `user_index` (`email` ASC, `password` ASC)  COMMENT '');
