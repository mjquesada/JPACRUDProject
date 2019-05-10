-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema superdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `superdb` ;

-- -----------------------------------------------------
-- Schema superdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `superdb` DEFAULT CHARACTER SET utf8 ;
USE `superdb` ;

-- -----------------------------------------------------
-- Table `junk`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `junk` ;

CREATE TABLE IF NOT EXISTS `junk` (
  `id` INT NOT NULL,
  `Random` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS super@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'super'@'localhost' IDENTIFIED BY 'super';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'super'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
