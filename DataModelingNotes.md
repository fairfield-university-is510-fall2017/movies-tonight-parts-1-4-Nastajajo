#Data Modeling Notes

## Normalization Analysis

### 1NF Conversion
  This format is not in 1NF proper format as there are 13 duplicate rows in the data and there is not a primary key. We will need to add a primary key and remove rows that are not distinct.

  DATASHEET(<u>TName</u>, Location, Phone, <U>MTitle</u>, Showtime, Rating, <u>Ccode</u>, <u>Cname</u>)

### 2NF Conversion
Dependencies based on the PK are as follows:
  TName --> Location, Phone
  Mtitle --> Rating, Ccode
  Cname --> CCode

 Table Structures
TName(Location, Phone)
Mtitle(Rating)
Theaters(TheaterID,Location, Phone)
Movies(MovieId, Rating)
Credits(ArtistID, MovieID, Ccode)
Shows(TheaterID, MovieID, Showtime)
Artists(MovieID)

### 3NF Conversion
TName(Location, Phone)
Mtitle(Rating)
Theaters(TheaterID,Location, Phone)
Movies(MovieId, Rating)
Credits(ArtistID, MovieID, Ccode)
Shows(TheaterID, MovieID, Showtime)
Artists(MovieID)

### BCNF Conversion

## Entity Relationship Modeling

**ERD LicidChart**
![ERD File](img/MoviesTonightERD)
