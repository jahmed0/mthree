CREATE DATABASE IF NOT EXISTS MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE IF NOT EXISTS Genre (
	`GenreID` INT PRIMARY KEY auto_increment,
    `GenreName` VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Director (
	`DirectorID` INT PRIMARY KEY auto_increment,
    `FirstName` VARCHAR(30) NOT NULL,
    `LastName` VARCHAR(30) NOT NULL,
    `BirthDate` DATE NULL
);

CREATE TABLE IF NOT EXISTS Rating (
	`RatingID` INT PRIMARY KEY auto_increment,
    `RatingName` CHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS Actor (
	`ActorID` INT PRIMARY KEY auto_increment,
    `FirstName` VARCHAR(30) NOT NULL,
    `LastName` VARCHAR(30) NOT NULL,
    `BirthDate` DATE NULL
);

CREATE TABLE IF NOT EXISTS Movie (
	`MovieID` INT PRIMARY KEY auto_increment,
    `GenreID` INT NOT NULL,
    `DirectorID` INT NULL,
    `RatingID` INT NULL,
    `Title` VARCHAR(128) NOT NULL,
    `ReleaseDate` DATE,
	FOREIGN KEY `fk_MovieGenre`(`GenreID`) REFERENCES `Genre`(`GenreID`),
	FOREIGN KEY `fk_MovieDirector`(`DirectorID`) REFERENCES `Director`(`DirectorID`),
	FOREIGN KEY `fk_MovieRating`(`RatingID`) REFERENCES `Rating`(`RatingID`)
);

CREATE TABLE IF NOT EXISTS CastMember (
	`CastMemberID` INT PRIMARY KEY auto_increment,
    `ActorID` INT NOT NULL,
    `MovieID` INT NOT NULL,
    `Role` VARCHAR(50) NOT NULL,
    FOREIGN KEY `fk_CastMembersActor` (`ActorID`) REFERENCES `Actor`(`ActorID`),
    FOREIGN KEY `fk_CastMembersMovie`(`MovieID`)	REFERENCES `Movie`(`MovieID`)
);

