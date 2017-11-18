#Data Modeling Notes

## Normalization Analysis

### 1NF Conversion
  This format is not in 1NF proper format as there are 13 duplicate rows in the data and there is not a primary key. We will need to add a primary key and remove rows that are not distinct.

  DATASHEET(ID, <u>TName</u>, Location, Phone, <U>MTitle</u>, Showtime, Rating, <u>Ccode</u>, <u>Cname</u>)

### 2NF Conversion
Dependencies based on the PK are as follows:
  TName --> Location, Phone
  Mtitle --> Rating
  Mtitle -->--> Ccode, Cname
  Tname, Showtime --> Mtitle

 Table Structures
Theaters(TheaterID,Location, Phone)
Movies(MovieId, Mtitle,Rating)
Shows(ShowtimeID, TheaterID, Showtime, MovieID)


### 3NF Conversion
Theaters(TheaterID,Location, Phone)
Movies(MovieId, Mtitle,Rating)
Shows(ShowtimeID, TheaterID, Showtime, MovieID)
Credits(CreditId, MovieID, Cname, Ccode)

### BCNF Conversion
Theaters(TheaterID,Location, Phone)
Movies(MovieId, Mtitle,Rating)
Shows(ShowtimeID, TheaterID, Showtime, MovieID)
Credits(CreditId, MovieID, AID, Ccode)
Artists(AID, Name, Bio)

## Entity Relationship Modeling

**ERD LicidChart**
![ERD File](img/MoviesTonightERD.png)
