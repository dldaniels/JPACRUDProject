-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dinosaurdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dinosaurdb` ;

-- -----------------------------------------------------
-- Schema dinosaurdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dinosaurdb` DEFAULT CHARACTER SET utf8 ;
USE `dinosaurdb` ;

-- -----------------------------------------------------
-- Table `dinosaur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dinosaur` ;

CREATE TABLE IF NOT EXISTS `dinosaur` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS dinosauruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dinosauruser'@'localhost' IDENTIFIED BY 'dinosauruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dinosauruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dinosaur`
-- -----------------------------------------------------
START TRANSACTION;
USE `dinosaurdb`;
INSERT INTO `dinosaur` (`id`, `name`) VALUES (1, 'Allosaurus');

COMMIT;

