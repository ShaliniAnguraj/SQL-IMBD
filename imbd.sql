CREATE TABLE MOVIE
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	movieName VARCHAR(255) UNIQUE,
    movieRating FLOAT NOT NULL,
    movieReleaseDate DATE
);

-- INSERTING DATA INTO MOVIES TABLE
INSERT INTO MOVIE( movieName, movieRating, movieReleaseDate)
VALUES
("Sita Raman", 8.6, "2022-05-08"),
("Love Today", 8.2, "2022-11-04"),
("DADA      ", 8.6, "2023-02-10"),
("Thunivu   ", 6.4, "2023-01-11"),
("Varisu    ", 6.6, "2023-01-11");

SELECT * FROM MOVIE;

-- CREATING A TABLE FOR MEDIA
CREATE TABLE MEDIA
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    mediaFileName VARCHAR(1024) NOT NULL,
	mediaType VARCHAR(8) NOT NULL,
    movieID INT,
	CONSTRAINT fk_mveid FOREIGN KEY(movieID) REFERENCES MOVIE(ID)
);

-- INSERTING DATA INTO MEDIA TABLE
INSERT INTO MEDIA( mediaFileName, mediaType, movieID)
VALUES
('lovetoday','jpeg',2),
('TheeThalapathy','mp4',5),
('Gangstaa','mp3',4),
('Dadaposter','mp3',3),
('HeySitaHeyRama','mp4',1),
('Ranjithamey','mp4',5),
('EnnaiVittu uyir','mp3',2);

SELECT * FROM MEDIA;

-- CREATING A TABLE FOR GENRES
CREATE TABLE GENRES
(
	genre VARCHAR(64) NOT NULL,
    movieID INT,
    CONSTRAINT fk_mveid_genre FOREIGN KEY(movieID) REFERENCES MOVIE(ID)
);

-- INSERTING DATA INTO GENRES TABLE

INSERT INTO GENRES(genre,movieID)
VALUES
('Thriller',4),
('Comedy',  2),
('Action',  5),
('Action',  4),
('Romantic',3),
('Romantic',1);

SELECT * FROM GENRES;

-- CREATING A TABLE FOR USERS
CREATE TABLE USERS
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(64),
    userAge TINYINT,
    userGender VARCHAR(64)
);

-- INSERTING DATA INTO USERS TABLE
INSERT INTO USERS(userName,userAge,userGender)
VALUES
('Priya', 22, 'Female'),
('Dhanish',26, 'Male'),
('harini',32, 'Female'),
('Suresh',23, 'Male');

SELECT * FROM USERS;

-- CREATING A TABLE FOR REVIEWS
CREATE TABLE REVIEWS
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    review VARCHAR(64) NOT NULL,
    movieID	INT,
    CONSTRAINT fk_mveid_review FOREIGN KEY(movieID) REFERENCES MOVIE(ID),
    userID INT,
    CONSTRAINT fk_usrid_review FOREIGN KEY(userID) REFERENCES USERS(ID)
);

-- INSERTING DATA INTO REVIEWS TABLE
INSERT INTO REVIEWS(review,movieID,userID)
VALUES 

('good',4,1),
('average',3,3),
('super',5,1),
('awesome',2,2),
('good',2,3),
('super',2,4);

SELECT * FROM REVIEWS;

-- CREATING A TABLE FOR ARTIST
CREATE TABLE ARTISTS
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    artistName VARCHAR(64) NOT NULL,
    artistAge TINYINT,
    artistGender VARCHAR(64)
);

-- INSERTING DATA INTO ARTISTS TABLE
INSERT INTO ARTISTS(artistName,artistAge,artistGender)
VALUES
('Dulquer Salmaan',36,'Male'),
('Pradeep',29,'Male'),
('Kavin',32,'Male'),
('Ajith kumar',51,'Male'),
('Vijay',48,'Male');

SELECT * FROM ARTISTS;

-- CREATING A TABLE FOR roles
CREATE TABLE ROLES
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    role VARCHAR(64) NOT NULL,
    movieID	INT,
    CONSTRAINT fk_mveid_roles FOREIGN KEY(movieID) REFERENCES MOVIE(ID),
    artistID INT,
    CONSTRAINT fk_artstid_review FOREIGN KEY(artistID) REFERENCES ARTISTS(ID)
);

-- INSERTING DATA INTO ROLES TABLE

INSERT INTO ROLES(role,movieID,artistID)
VALUES
('IT Employee',2,2),
('Army',1,1),
('Dark Devil',4,4),
('Single Dad',3,3),
('ApplicationDeveloper',5,5),
('Bank robber',4,4),
(' lover',2,2);

SELECT * FROM ROLES


--online compiler linke ("https://onecompiler.com/mysql/3yxy9zbcd")