-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema id80102_homeaze
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema id80102_homeaze
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `id80102_homeaze` DEFAULT CHARACTER SET utf8 ;
USE `id80102_homeaze` ;

-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Veteran`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Veteran` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Veteran` (
  `Year_Entered_Service` YEAR NULL,
  `Year_Exited_Service` YEAR NULL,
  `WWII` INT NULL,
  `Korean_War` INT NULL,
  `Vietnam_War` INT NULL,
  `Desert_Storm` INT NULL,
  `Afghanistan_OEF` INT NULL,
  `Iraq_OIF` INT NULL,
  `Iraq_OND` INT NULL,
  `Other_Theatre` INT NULL,
  `Military_Branch_ID` INT NULL,
  `Discharge_Status` INT NULL,
  `NewClient_UUID` INT NOT NULL,
  INDEX `fk_Veteran_NewClient1_idx` (`NewClient_UUID` ASC),
  CONSTRAINT `fk_Veteran_NewClient1`
    FOREIGN KEY (`NewClient_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
