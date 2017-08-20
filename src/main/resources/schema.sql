-- -----------------------------------------------------
-- Schema auth_service
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `auth_service` DEFAULT CHARACTER SET utf8 ;
USE `auth_service` ;

-- -----------------------------------------------------
-- Table `auth_service`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `auth_service`.`user` ;

CREATE TABLE IF NOT EXISTS `auth_service`.`user` (
  `id` INT NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(25) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;
