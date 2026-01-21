CREATE TABLE `ubereats`.`inventory` (
  `itemId` INT NOT NULL,
  `locationId` INT NULL,
  `quantityOnHand` INT NULL,
  PRIMARY KEY (`itemId`));
  
  CREATE TABLE `ubereats`.`orders` (
  `orderId` INT NOT NULL,
  `customerId` INT NULL,
  `locationId` INT NULL,
  `status` VARCHAR(50) NULL,
  `createdAt` DATETIME NULL,
  PRIMARY KEY (`orderId`));
  
  
  CREATE TABLE `ubereats`.`customers` (
  `customerId` INT NOT NULL,
  `firstName` VARCHAR(50) NULL,
  `lastName` VARCHAR(50) NULL,
  `email` VARCHAR(75) UNIQUE,
  PRIMARY KEY (`customerId`));
  
  CREATE TABLE `ubereats`.`menuItems` (
  `itemId` INT NOT NULL,
  `itemName` VARCHAR(50) NULL,
  `itemCategory` VARCHAR(50) NULL,
  `price` DECIMAL NOT NULL,
  `isAvailable` BOOLEAN NULL,
  PRIMARY KEY (`itemId`));
  
 CREATE TABLE `ubereats`.`location` (
  `locationId` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `state` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(12) NULL,
  PRIMARY KEY (`locationId`));  
  
  CREATE TABLE `ubereats`.`locationName` (
  `locationId` INT NOT NULL,
  `itemId` INT NOT NULL,
  `isAvailable` BOOLEAN NULL,
  `priceOverride` DECIMAL NULL,
  PRIMARY KEY (`locationId`, `itemId`),
  FOREIGN KEY (`itemId`) REFERENCES menuItems(`itemId`),
  FOREIGN KEY (`locationId`) REFERENCES location(`locationId`));