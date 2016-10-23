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
-- Table `id80102_homeaze`.`NewClient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`NewClient` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`NewClient` (
  `UUID` INT NOT NULL,
  `First_Name` VARCHAR(45) NULL,
  `Middle_Name` VARCHAR(45) NULL,
  `Last_Name` VARCHAR(45) NULL,
  `Name_Data_Quality` VARCHAR(45) NULL,
  `SSN` VARCHAR(45) NULL,
  `SSN_Data_Quality` INT NULL,
  `DOB` DATE NULL,
  `DOB_Data_Quality` INT NULL,
  `Am_Ind_AK_Native` INT NULL,
  `Asian` INT NULL,
  `Black` INT NULL,
  `Native_HI_Other_Pacific` INT NULL,
  `White` INT NULL,
  `Race_None` INT NULL,
  `GenderID` INT NULL,
  `Date_Created` DATE NULL,
  `Date_Updated` DATE NULL,
  `UserID` VARCHAR(45) NULL,
  PRIMARY KEY (`UUID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`NewDisabilities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`NewDisabilities` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`NewDisabilities` (
  `Disabilities_ID` INT NOT NULL,
  `Project_Entry_ID` INT NULL,
  `Personal_ID` INT NULL,
  `Information_Date` DATE NULL,
  `Disability_Type` INT NULL,
  `Disabilitiescol` VARCHAR(45) NULL,
  `Client_UUID` INT NOT NULL,
  PRIMARY KEY (`Disabilities_ID`),
  INDEX `fk_Disabilities_Client1_idx` (`Client_UUID` ASC),
  CONSTRAINT `fk_Disabilities_Client1`
    FOREIGN KEY (`Client_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`NewEmploymentEducation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`NewEmploymentEducation` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`NewEmploymentEducation` (
  `NewEmploymentEducationID` INT NOT NULL,
  `Project_ProjectEntryID` INT NOT NULL,
  `NewClient_UUID` INT NOT NULL,
  `InformationDate` DATE NULL,
  `LastGradeCompleted` VARCHAR(45) NULL,
  `SchoolStatus` VARCHAR(45) NULL,
  `Employed` INT NULL,
  `EmploymentType` VARCHAR(45) NULL,
  `NotEmployedReason` VARCHAR(45) NULL,
  `DataCollectionStage` INT NULL,
  `DateCreated` DATE NULL,
  `DateUpdated` DATE NULL,
  `NewEmploymentEducationcol` VARCHAR(45) NULL,
  PRIMARY KEY (`NewEmploymentEducationID`),
  INDEX `fk_NewEmploymentEducation_NewClient1_idx` (`NewClient_UUID` ASC),
  CONSTRAINT `fk_NewEmploymentEducation_NewClient1`
    FOREIGN KEY (`NewClient_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`NewHealthAndDV`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`NewHealthAndDV` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`NewHealthAndDV` (
  `HealthAndDVID` INT NOT NULL,
  `NewClient_UUID` INT NOT NULL,
  `InformationDate` DATE NULL,
  `DomesticViolenceVictim` INT NULL,
  `WhenOccurred` INT NULL,
  `CurrentlyFleeing` INT NULL,
  `GeneralHealthStatus` INT NULL,
  `DentalHealthStatus` VARCHAR(45) NULL,
  `MentalHealthStatus` VARCHAR(45) NULL,
  `PregnancyStatus` VARCHAR(45) NULL,
  `DueDate` DATE NULL,
  `DataCollectionStage` INT NULL,
  `DateCreated` DATE NULL,
  `DateUpdated` DATE NULL,
  `NewHealthAndDVcol` VARCHAR(45) NULL,
  PRIMARY KEY (`HealthAndDVID`),
  INDEX `fk_NewHealthAndDV_NewClient1_idx` (`NewClient_UUID` ASC),
  CONSTRAINT `fk_NewHealthAndDV_NewClient1`
    FOREIGN KEY (`NewClient_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`NewIncomeBenefits`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`NewIncomeBenefits` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`NewIncomeBenefits` (
  `IncomeBenefitsID` INT NOT NULL,
  `Project_ProjectEntryID` INT NOT NULL,
  `NewClient_UUID` INT NOT NULL,
  PRIMARY KEY (`IncomeBenefitsID`),
  INDEX `fk_NewIncomeBenefits_NewClient1_idx` (`NewClient_UUID` ASC),
  CONSTRAINT `fk_NewIncomeBenefits_NewClient1`
    FOREIGN KEY (`NewClient_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Organization`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Organization` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Organization` (
  `Org_ID` INT NOT NULL,
  `Org_Type` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  PRIMARY KEY (`Org_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Shelter`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Shelter` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Shelter` (
  `Shelter_ID` INT NOT NULL,
  `Shelter_Profile` VARCHAR(45) NULL,
  `Shelter_Capacity` INT NULL,
  `Org_ID` INT NOT NULL,
  `Contact_Email` VARCHAR(45) NULL,
  `Contact` VARCHAR(45) NULL,
  `Contact_Phone` VARCHAR(45) NULL,
  `HIV_Only` INT NULL,
  `Single_Men` INT NULL,
  `Single_Women` INT NULL,
  `Families` INT NULL,
  `AcceptsSexOffender` INT NULL,
  `AcceptsExCons` INT NULL,
  `AdultsOnly` INT NULL,
  `ReferralRequired` INT NULL,
  `SobrietyRequired` INT NULL,
  PRIMARY KEY (`Shelter_ID`, `Org_ID`),
  INDEX `fk_Shelter_Organization1_idx` (`Org_ID` ASC),
  CONSTRAINT `fk_Shelter_Organization1`
    FOREIGN KEY (`Org_ID`)
    REFERENCES `id80102_homeaze`.`Organization` (`Org_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Reservation` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Reservation` (
  `UUID` INT NOT NULL,
  `Date_Reserved` DATE NULL,
  `Shelter_Shelter_ID` INT NOT NULL,
  `Shelter_Organization_Org_ID` INT NOT NULL,
  PRIMARY KEY (`UUID`, `Shelter_Shelter_ID`, `Shelter_Organization_Org_ID`),
  INDEX `fk_Reservation_Shelter1_idx` (`Shelter_Shelter_ID` ASC, `Shelter_Organization_Org_ID` ASC),
  CONSTRAINT `UUID`
    FOREIGN KEY (`UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Shelter1`
    FOREIGN KEY (`Shelter_Shelter_ID` , `Shelter_Organization_Org_ID`)
    REFERENCES `id80102_homeaze`.`Shelter` (`Shelter_ID` , `Org_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`User` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`User` (
  `Org_ID` INT NOT NULL,
  `UserID` VARCHAR(45) NULL,
  `UserPassword` VARCHAR(45) NULL,
  `Priviledges` INT NULL,
  PRIMARY KEY (`Org_ID`),
  CONSTRAINT `fk_User_Organization1`
    FOREIGN KEY (`Org_ID`)
    REFERENCES `id80102_homeaze`.`Organization` (`Org_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Veteran`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Veteran` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Veteran` (
  `UUID` INT NOT NULL,
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
  CONSTRAINT `UUID`
    FOREIGN KEY (`UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Referral`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Referral` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Referral` (
  `Client_UUID` INT NOT NULL,
  `Organization_Org_ID` INT NOT NULL,
  PRIMARY KEY (`Client_UUID`, `Organization_Org_ID`),
  INDEX `fk_Referral_Organization1_idx` (`Organization_Org_ID` ASC),
  CONSTRAINT `fk_Referral_Client1`
    FOREIGN KEY (`Client_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Referral_Organization1`
    FOREIGN KEY (`Organization_Org_ID`)
    REFERENCES `id80102_homeaze`.`Organization` (`Org_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`Housing`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`Housing` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`Housing` (
  `Organization_Org_ID` INT NOT NULL,
  PRIMARY KEY (`Organization_Org_ID`),
  CONSTRAINT `fk_Housing_Organization1`
    FOREIGN KEY (`Organization_Org_ID`)
    REFERENCES `id80102_homeaze`.`Organization` (`Org_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id80102_homeaze`.`NewServices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `id80102_homeaze`.`NewServices` ;

CREATE TABLE IF NOT EXISTS `id80102_homeaze`.`NewServices` (
  `Services_ID` INT NOT NULL,
  `Project_Entry_ID` INT NULL,
  `Personal_ID` INT NULL,
  `Date_Provided` DATE NULL,
  `Record_Type` INT NULL,
  `Type_Provided` INT NULL,
  `Other_Type_Provided` INT NULL,
  `Subtype_Provided` INT NULL,
  `FAA_Amount` DECIMAL NULL,
  `Referral_Outcome` VARCHAR(45) NULL,
  `Date_Created` DATE NULL,
  `Date_Updated` DATE NULL,
  `User_ID` INT NULL,
  `Date_Deleted` DATE NULL,
  `Export_ID` INT NULL,
  `NewClient_UUID` INT NOT NULL,
  `Project_ProjectEntryID` INT NOT NULL,
  PRIMARY KEY (`Services_ID`),
  INDEX `fk_NewServices_NewClient1_idx` (`NewClient_UUID` ASC),
  CONSTRAINT `fk_NewServices_NewClient1`
    FOREIGN KEY (`NewClient_UUID`)
    REFERENCES `id80102_homeaze`.`NewClient` (`UUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
