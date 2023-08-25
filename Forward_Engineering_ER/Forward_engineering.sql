-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemondb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemondb` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemondb` ;

-- -----------------------------------------------------
-- Table `LittleLemondb`.`CustomerDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`CustomerDetails` (
  `CustomerID` INT NOT NULL,
  `CustomerName` VARCHAR(255) NOT NULL,
  `ContactNumber` INT NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemondb`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`Bookings` (
  `BookingID` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  `BookingDate` DATETIME NOT NULL,
  `BookingSlot` DATETIME NOT NULL,
  `TableNo` INT NOT NULL,
  `NumberofGuests` INT NOT NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `CustomerID_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `CustomerID`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemondb`.`CustomerDetails` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemondb`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`Staff` (
  `EmployeeID` INT NOT NULL,
  `EmployeeName` VARCHAR(255) NOT NULL,
  `Role` VARCHAR(100) NOT NULL,
  `Salary` DECIMAL(10,2) NOT NULL,
  `ContactNumber` INT NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`EmployeeID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemondb`.`OrderStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`OrderStatus` (
  `DeliveryID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  `DeliveryStatus` VARCHAR(100) NOT NULL,
  `DeliveryDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`DeliveryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemondb`.`ItemType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`ItemType` (
  `TypeID` INT NOT NULL,
  `Type` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`TypeID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemondb`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`Menu` (
  `ItemID` INT NOT NULL,
  `TypeID` INT NOT NULL,
  `ItemName` VARCHAR(100) NOT NULL,
  `Price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ItemID`),
  INDEX `TypeID_idx` (`TypeID` ASC) VISIBLE,
  CONSTRAINT `TypeID`
    FOREIGN KEY (`TypeID`)
    REFERENCES `LittleLemondb`.`ItemType` (`TypeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemondb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemondb`.`Orders` (
  `OrderID` INT NOT NULL,
  `TableNO` INT NOT NULL,
  `ItemID` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `OrderDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Quantity` INT NOT NULL,
  `TotalCost` DECIMAL(10,2) NOT NULL,
  `EmployeeID` INT NOT NULL,
  `DeliveryID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `BookingID_idx` (`BookingID` ASC) VISIBLE,
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  INDEX `DeliveryID_idx` (`DeliveryID` ASC) VISIBLE,
  INDEX `ItemID_idx` (`ItemID` ASC) VISIBLE,
  CONSTRAINT `BookingID`
    FOREIGN KEY (`BookingID`)
    REFERENCES `LittleLemondb`.`Bookings` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `LittleLemondb`.`Staff` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `DeliveryID`
    FOREIGN KEY (`DeliveryID`)
    REFERENCES `LittleLemondb`.`OrderStatus` (`DeliveryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ItemID`
    FOREIGN KEY (`ItemID`)
    REFERENCES `LittleLemondb`.`Menu` (`ItemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
