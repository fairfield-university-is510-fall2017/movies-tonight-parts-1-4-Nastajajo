CREATE DATABASE `movies_tonight`;

USE `movies_tonight`;

CREATE TABLE THEATER (
	TheaterID int(11) NOT NULL auto_increment,
    TheaterName varchar(100) default NULL,
    Location varchar(100) DEFAULT NULL,
    Phone char(20) DEFAULT NULL,
    PRIMARY KEY (TheaterId)
) ;

CREATE TABLE MOVIES (
	MovieID int(11) NOT NULL auto_increment,
    MovieTitle varchar(100) default NULL,
    MovieRating varchar(5) DEFAULT NULL,
    PRIMARY KEY (MovieID)
) ;
    
CREATE TABLE ARTISTS (
	ArtistID int(11) NOT NULL auto_increment,
    ArtistName varchar(100) default NULL,
    PRIMARY KEY (ArtistID)
) ;

CREATE TABLE CREDITS (
	CreditID int(11) NOT NULL auto_increment,
    CCode int(11) default NULL,
    PRIMARY KEY (CreditID)
) ;

CREATE TABLE SHOWS (
	ShowID int(11) NOT NULL auto_increment,
    ShowTime time default NULL,
    PRIMARY KEY (ShowID)
) ;

ALTER TABLE `SHOWS`  
  ADD `MovieID`INT(11);
   
ALTER TABLE `SHOWS`  
  ADD `TheaterID` INT(11);

ALTER TABLE `CREDITS`  
  ADD `ArtistID` INT(11);

ALTER TABLE `CREDITS`  
  ADD `MovieID`INT(11); 


ALTER TABLE `SHOWS`  
  ADD FOREIGN KEY (`MovieID`)
    REFERENCES `MOVIES` (`MovieID`);
    
ALTER TABLE `SHOWS`  
  ADD FOREIGN KEY (`TheaterID`)
    REFERENCES `THEATER` (`TheaterID`);
    
ALTER TABLE `CREDITS`  
  ADD FOREIGN KEY (`ArtistID`)
    REFERENCES `ARTISTS` (`ArtistID`);

ALTER TABLE `CREDITS`  
  ADD FOREIGN KEY (`MovieID`)
    REFERENCES `Movies` (`MovieID`);
    
