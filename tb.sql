-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema travelbuddy
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema travelbuddy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `travelbuddy` DEFAULT CHARACTER SET cp1250 ;
USE `travelbuddy` ;

-- -----------------------------------------------------
-- Table `travelbuddy`.`points`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`points` (
  `redemmable points` INT(11) NOT NULL,
  `Points Collect` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`redemmable points`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`driver`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`driver` (
  `idDriver` INT(11) NOT NULL,
  `Driver Name` VARCHAR(45) NULL DEFAULT NULL,
  `Car Model` VARCHAR(45) NULL DEFAULT NULL,
  `License` VARCHAR(45) NULL DEFAULT NULL,
  `points_redemmable points` INT(11) NOT NULL,
  PRIMARY KEY (`idDriver`, `points_redemmable points`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`signup_passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`signup_passenger` (
  `idsignup passenger` INT(11) NOT NULL,
  `Full Name` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Password` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idsignup passenger`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`signup_driver`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`signup_driver` (
  `idsignup driver` INT(11) NOT NULL AUTO_INCREMENT,
  `Fulll_Name` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Password` VARCHAR(45) NULL DEFAULT NULL,
  `Insurance_no` INT(11) NULL DEFAULT NULL,
  `Driver_license` VARCHAR(45) NULL DEFAULT NULL,
  `Car_Number_Plate` VARCHAR(45) NULL DEFAULT NULL,
  `age` INT(3) NULL,
  `gender` VARCHAR(20) NULL,
  `pnumber` INT(10) NULL,
  PRIMARY KEY (`idsignup driver`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`login` (
  `Login email` VARCHAR(45) NULL DEFAULT NULL,
  `Login Password` VARCHAR(45) NULL DEFAULT NULL,
  `driver_idDriver` INT(11) NOT NULL,
  `signup passenger_idsignup passenger` INT(11) NOT NULL,
  `signup driver_idsignup driver` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`passenger` (
  `idpassenger` INT(11) NOT NULL,
  `Passenger Name` VARCHAR(45) NULL DEFAULT NULL,
  `Passenger phone Number` DOUBLE NULL DEFAULT NULL,
  `Passenger email` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idpassenger`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`payment` (
  `idridefees` INT(11) NOT NULL,
  `Transaction` VARCHAR(45) NULL DEFAULT NULL,
  `passenger_idpassenger` INT(11) NOT NULL,
  PRIMARY KEY (`idridefees`, `passenger_idpassenger`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`rides`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`rides` (
  `idrides` INT(11) NOT NULL,
  `Past rides` VARCHAR(45) NULL DEFAULT NULL,
  `Seat Available` VARCHAR(45) NULL DEFAULT NULL,
  `Route Origin` VARCHAR(45) NULL DEFAULT NULL,
  `Route destination` VARCHAR(45) NULL DEFAULT NULL,
  `Time` DATETIME NOT NULL,
  `driver_idDriver` INT(11) NOT NULL,
  `driver_points_redemmable points` INT(11) NOT NULL,
  PRIMARY KEY (`idrides`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


-- -----------------------------------------------------
-- Table `travelbuddy`.`passenger_has_rides`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travelbuddy`.`passenger_has_rides` (
  `passenger_idpassenger` INT(11) NOT NULL,
  `rides_idrides` INT(11) NOT NULL,
  PRIMARY KEY (`passenger_idpassenger`, `rides_idrides`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1250;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
