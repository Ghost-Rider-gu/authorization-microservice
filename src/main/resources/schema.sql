SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema auth_service
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `auth_service` DEFAULT CHARACTER SET utf8;
USE `auth_service`;

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

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;