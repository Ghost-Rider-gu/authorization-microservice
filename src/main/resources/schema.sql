SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema auth_service
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `auth_service` DEFAULT CHARACTER SET utf8 ;
USE `auth_service` ;

-- -----------------------------------------------------
-- Table `auth_service`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auth_service`.`user` (
  `id` BIGINT(9) NOT NULL,
  `user_uuid` VARCHAR(50) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `created_at` DATE NOT NULL,
  `update_at` DATE NOT NULL,
  `deleted_at` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `auth_service`.`project_module`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auth_service`.`project_module` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `module_name` VARCHAR(20) NOT NULL,
  `module_description` VARCHAR(50) NULL,
  `module_state` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `auth_service`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auth_service`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(20) NOT NULL,
  `role_description` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `auth_service`.`user_assigment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auth_service`.`user_assigment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(9) NOT NULL,
  `role_id` INT NOT NULL,
  `project_module_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC),
  INDEX `role_id_idx` (`role_id` ASC),
  INDEX `project_module_id_idx` (`project_module_id` ASC),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `auth_service`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `role_id`
    FOREIGN KEY (`role_id`)
    REFERENCES `auth_service`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `project_module_id`
    FOREIGN KEY (`project_module_id`)
    REFERENCES `auth_service`.`project_module` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;