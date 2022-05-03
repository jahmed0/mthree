-- This script will destroy your Hotel database and start a new one!
DROP DATABASE IF EXISTS Hotel;

CREATE DATABASE Hotel;

USE Hotel;

CREATE TABLE IF NOT EXISTS Guest (
    `GuestID` INT NOT NULL AUTO_INCREMENT,
    `FirstName` VARCHAR(25) NOT NULL,
    `LastName` VARCHAR(25) NOT NULL,
    `Address` VARCHAR(100) NOT NULL,
    `City` VARCHAR(25) NOT NULL,
    `State` CHAR(2) NOT NULL,
    `ZipCode` CHAR(5) NOT NULL,
    `Phone` CHAR(10) NOT NULL,
    PRIMARY KEY (`GuestID`)
);

CREATE TABLE IF NOT EXISTS Reservation (
    `ReservationID` INT NOT NULL AUTO_INCREMENT,
    `Adults` INT NOT NULL,
    `Children` INT NOT NULL,
    `StartDate` DATE NOT NULL,
    `EndDate` DATE NOT NULL,
    `RoomTotal` DECIMAL(8 , 2 ),
    PRIMARY KEY (`ReservationID`)
);

CREATE TABLE IF NOT EXISTS Amenity (
    `AmenityID` INT NOT NULL AUTO_INCREMENT,
    `AmenityDesc` VARCHAR(25) NOT NULL,
    PRIMARY KEY (`AmenityID`)
);

CREATE TABLE IF NOT EXISTS RoomType (
    `RoomTypeID` INT NOT NULL AUTO_INCREMENT,
    `RoomTypeDesc` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`RoomTypeID`)
);

CREATE TABLE IF NOT EXISTS Room (
    `RoomID` INT NOT NULL,
    `RoomTypeID` INT NOT NULL,
    `ADAAcc` BOOLEAN NOT NULL,
    `StandOcc` INT NOT NULL,
    `MaxOcc` INT NOT NULL,
    `BasePrice` DECIMAL(5 , 2 ),
    `ExtraPerson` DECIMAL(2 , 0 ),
    PRIMARY KEY (`RoomID`),
    FOREIGN KEY (RoomTypeID)
        REFERENCES RoomType (RoomTypeID)
);

CREATE TABLE IF NOT EXISTS ResGuest (
    `ResGuestID` INT NOT NULL AUTO_INCREMENT,
    `ReservationID` INT NOT NULL,
    `GuestID` INT NOT NULL,
    PRIMARY KEY (`ResGuestID`),
    FOREIGN KEY (GuestID)
        REFERENCES Guest (GuestID),
    FOREIGN KEY (ReservationID)
        REFERENCES Reservation (ReservationID)
);

CREATE TABLE IF NOT EXISTS ResRoom (
    `ResRoomID` INT NOT NULL AUTO_INCREMENT,
    `ReservationID` INT NOT NULL,
    `RoomID` INT NOT NULL,
    PRIMARY KEY (`ResRoomID`),
    FOREIGN KEY (ReservationID)
        REFERENCES Reservation (ReservationID),
    FOREIGN KEY (RoomID)
        REFERENCES Room (RoomID)
);

CREATE TABLE IF NOT EXISTS RoomAmenity (
    `RoomAmenityID` INT NOT NULL AUTO_INCREMENT,
    `RoomID` INT NOT NULL,
    `AmenityID` INT NOT NULL,
    PRIMARY KEY (`RoomAmenityID`),
    FOREIGN KEY (RoomID)
        REFERENCES Room (RoomID),
    FOREIGN KEY (AmenityID)
        REFERENCES Amenity (AmenityID)
);
    
    
    