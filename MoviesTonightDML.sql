#create a select query for each table from the datasheet
INSERT INTO MOVIES(MovieTitle, MovieRating)
SELECT DISTINCT Mtitle, Rating
FROM DATASHEET; 


INSERT INTO THEATER(TheaterName, Location, Phone)
SELECT DISTINCT TName, Location, Phone
FROM DATASHEET;


INSERT INTO ARTISTS(ArtistName)
SELECT DISTINCT CName
FROM DATASHEET; 

INSERT INTO CREDITS(Ccode, ArtistID, MovieID)
SELECT DISTINCT CCode, ARTISTS.ArtistID, MOVIES.MovieID
FROM ARTISTS Join DATASHEET ON (DATASHEET.CName = ARTISTS.ArtistName)
			JOIN MOVIES ON (MOVIES.MovieTitle = DATASHEET.MTitle);

INSERT INTO SHOWS(Showtime, MovieID, TheaterID)
SELECT DISTINCT Showtime, MOVIES.MovieID, THEATER.TheaterID
FROM MOVIES Join DATASHEET on (DATASHEET.Mtitle = MOVIES.MovieTitle)
			Join Theater on (DATASHEET.TName = THEATER.TheaterName);
            
DROP TABLE DATASHEET;