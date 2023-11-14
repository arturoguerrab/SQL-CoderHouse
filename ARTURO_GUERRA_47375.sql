DROP SCHEMA IF EXISTS CODER_SPOTIFY;
CREATE SCHEMA IF NOT EXISTS  CODER_SPOTIFY ;
USE CODER_SPOTIFY ;


-- ///////////////////////////INICIO CREACION DE TABLAS///////////////////////////////////// --
-- CREACION TABLA USUARIOS --
DROP TABLE IF EXISTS USERS;
CREATE TABLE IF NOT EXISTS `USERS` (
  `user_ID` int NOT NULL COMMENT 'PRIMARY KEY',
  `first_name` varchar(50) NOT NULL COMMENT 'USER FIRST_NAME',
  `last_Name` varchar(50) NOT NULL COMMENT 'USER LAST_NAME ',
  `telephone` varchar(25) NOT NULL COMMENT 'USER TELEPHONE NUMBER',
  `country` varchar(50) NOT NULL COMMENT 'USER COUNTRY ',
  `age` int(3) NOT NULL COMMENT 'USER AGE',
  `gender` varchar(50) NOT NULL COMMENT 'USER GENDER ',
  `register_date` timestamp NOT NULL COMMENT 'USER REGISTER DATE',
  PRIMARY KEY (`user_ID`)
)COMMENT='USERS TABLE';


-- CREACION TABLA ARTISTAS --
DROP TABLE IF EXISTS ARTISTS;
CREATE TABLE IF NOT EXISTS `ARTISTS` (
  `artist_ID` int NOT NULL COMMENT 'PRIMARY KEY',
  `nickname` varchar(50) NOT NULL COMMENT 'ARTIST NICKNAME',
  `first_name` varchar(50) NOT NULL COMMENT 'ARTIST FIRST_NAME',
  `last_Name` varchar(50) NOT NULL COMMENT 'ARTIST LAST_NAME',
  `country` varchar(50) NOT NULL COMMENT 'ARTIST COUNTRY',
  `age` int(3) NOT NULL COMMENT 'ARTIST AGE',
  `gender` varchar(50) NOT NULL COMMENT 'ARTIST GENDER',
  `register_date` timestamp NOT NULL COMMENT 'ARTIST REGISTER DATE',
  PRIMARY KEY (`artist_ID`)
)COMMENT='ARTISTS TABLE';



-- CREACION TABLA ALBUMES --
DROP TABLE IF EXISTS ALBUMS;
CREATE TABLE IF NOT EXISTS `ALBUMS` (
  `album_ID` int NOT NULL COMMENT 'PRIMARY KEY',
  `name` varchar(50) NOT NULL COMMENT 'ALBUM NAME',
  `label` varchar(50) NOT NULL COMMENT 'LABEL NAME',
  `genre` varchar(30) NOT NULL COMMENT 'ALBUM GENRE',
  `artist_ID` int NOT NULL COMMENT 'ARTIST OWNER/FOREIGN KEY',
  `release_date` year NOT NULL COMMENT 'ALBUM RELEASE DATE',
  PRIMARY KEY (`album_ID`),
  CONSTRAINT `FK_ALBUMS_ARTISTS` FOREIGN KEY(`artist_ID`)
  REFERENCES ARTISTS(`artist_ID`)
)COMMENT='ALBUMS TABLE';



-- CREACION TABLA CANCIONES --
DROP TABLE IF EXISTS SONGS;
CREATE TABLE IF NOT EXISTS `SONGS` (
  `song_ID` int NOT NULL COMMENT 'PRIMARY KEY',
  `name` varchar(50) NOT NULL COMMENT 'SONG NAME',
  `genre` varchar(30) NOT NULL COMMENT 'SONG GENRE',
  `label` varchar(50) NOT NULL COMMENT 'SONG LABEL ',
  `album_ID` int NOT NULL COMMENT 'ALBUM/FOREIGN KEY ',
  `artist_ID` int NOT NULL COMMENT 'ARTIST/FOREIGN KEY',
  `release_date` year NOT NULL COMMENT 'SONG RELEASE DATE',
  PRIMARY KEY (`song_ID`),
  CONSTRAINT `FK_SONGS_ALBUMS` FOREIGN KEY(`album_ID`)
  REFERENCES ALBUMS(`album_ID`),
  CONSTRAINT `FK_SONGS_ARTISTS` FOREIGN KEY(`artist_ID`)
  REFERENCES ARTISTS(`artist_ID`)
)COMMENT='SONGS TABLE';



-- CREACION TABLA PLAYLIST --
DROP TABLE IF EXISTS PLAYLISTS;
CREATE TABLE IF NOT EXISTS `PLAYLISTS` (
  `playlist_ID` int NOT NULL COMMENT 'PRIMARY KEY',
  `name` varchar(50) NOT NULL COMMENT 'PLAYLIST NAME',
  `user_ID` int NOT NULL COMMENT 'OWNER/FOREIGN KEY',
  `song_ID` int NOT NULL COMMENT 'SONGS/FOREIGN KEY',
  `creation_date` timestamp NOT NULL COMMENT 'PLAYLIST CREATION DATE',
  PRIMARY KEY (`playlist_ID`),
  CONSTRAINT `FK_PLAYLISTS_USERS` FOREIGN KEY(`user_ID`)
  REFERENCES USERS(`user_ID`),
  CONSTRAINT `FK_PLAYLISTS_SONGS` FOREIGN KEY(`song_ID`)
  REFERENCES SONGS(`song_ID`)
)COMMENT='PLAYLISTS TABLE';
-- ///////////////////////////FIN CREACION DE TABLAS///////////////////////////////////// --



-- ///////////////////////////INICIO INSERCION DE DATOS///////////////////////////////////// --
INSERT INTO USERS (`user_ID`,`first_name`,`last_Name`,`telephone`,`country`,`age`,`gender`,`register_date`)
VALUES (0,'Dorotea','Vergara','+54 (911) 4534-4853','Montenegro',34,'Female', now()),
(1,'Jerónimo','Serrato','+54 (911) 4539-0093','Estados Unidos de América',95,'Male', now()),
(2,'Hernán','Delagarza','+54 (911) 6139-3824','Ghana',24,'Male', now()),
(3,'Ana María','Escobedo','+54 (911) 5020-4062','Irlanda',54,'Female', now()),
(4,'María Teresa','Rojas','+54 (911) 1051-8280','Bélgica',68,'Transgender', now()),
(5,'Esperanza','Maestas','+54 (911) 6881-0586','Barein',33,'Female', now()),
(6,'Magdalena','Duarte','+54 (911) 8080-7203','Eslovenia',15,'No Binary', now()),
(7,'Luz','Lomeli','+54 (911) 4805-3816','Puerto Rico',19,'Female', now()),
(8,'Daniel','Pacheco','+54 (911) 9873-272','Andorra',13,'Male', now()),
(9,'Marcela','Anaya','+54 (911) 1140-1611','Uganda',35,'Female', now()),
(10,'Dorotea','Avilés','+54 (911) 3423-3912','Grecia',65,'Transgender', now()),
(11,'Blanca','Gil','+54 (911) 3609-4352','China',93,'Female', now()),
(12,'Armando','Rivero','+54 (911) 3971-5826','Uganda',35,'Male', now()),
(13,'Ignacio','Fernández','+54 (911) 3480-0349','Irak',78,'No Binary', now()),
(14,'Ariadna','Nájera','+54 (911) 5122-7831','Tailandia',23,'Female', now()),
(15,'Eduardo','Hidalgo','+54 (911) 8687-0882','Barbados',24,'Male', now());


INSERT INTO ARTISTS (`artist_ID`,`nickname`,`first_name`,`last_Name`,`country`,`age`,`gender`,`register_date`)
VALUES  (0,'Michael Jackson','Samuel','Alarcón Morales','Zambia',80,'male', now()),
(1,'Rosalia','Rosalia','Vila','España',31,'female', now()),
(2,'Britney Spears','Britney','Spears','Estados Unidos',41,'female', now()),
(3,'Thalia','Ariadna','Sodi','Mexico',52,'female', now()),
(4,'George Michael','Georgios','Kyriacos','Reino Unido',53,'male', now()),
(5,'Selena','Selena','Quintanilla','Estados Unidos',23,'female', now()),
(6,'Willie Colon','William','Colón','Estados Unidos',73,'male', now()),
(7,'Madonna','Madonna','Ciccone','Estados Unidos',65,'female', now()),
(8,'The Weeknd','Abel','Testaye','Canada',33,'male', now()),
(9,'Taylor Swift','Taylor','Swift','Estados Unidos',33,'female', now()),
(10,'Dua Lipa','Dua','Lipa','Reino Unido',28,'female', now()),
(11,'Adele','Adele','Blue','Reino Unido',35,'female', now()),
(12,'Freddie Mercury','Farrokh','Bulsara','Zanzíbar',45,'male', now()),
(13,'Beyonce','Beyonce','Knowles','Estados Unidos',42,'female', now()),
(14,'Rihanna','Robyn','Fenty','Barbados',35,'female', now()),
(15,'Lil Wayne','Dwayne','Carter','Estados Unidos',41,'male', now());
       
INSERT INTO ALBUMS (`album_ID`,`name`,`label`,`genre`,`artist_ID`,`release_date`)
VALUES  (0,'Thriller','Epic Records','Pop',0, 1982),
(1,'Circus','Jive Records','Pop',2, 2008),
(2,'Top Secrets','Fania Records','Salsa',6, 1989),
(3,'Bad','Epic Records','R&B',0, 1987),
(4,'After Hours','XO Records','R&B',8, 2020),
(5,'21','Xl Recordings','Pop',11, 2011),
(6,'Mr Bad Guy','Columbia Records','Rock',12, 1985),
(7,'Future Nostalgia','Warner Records','Funk',10, 2020),
(8,'Faith','Columbia Records','Pop',4, 1987),
(9,'Starboy','XO Records','R&B',8, 2016),
(10,'Lemonade','Parkwood Entertainment','Pop',13, 2016),
(11,'Tha Carter','Universal Records','Rap',15, 2004),
(12,'Motomami','Columbia Records','Pop',1, 2022),
(13,'Like a Virgin','Warner Bros','Pop',7, 1984),
(14,'Madonna','Warner Bros','Pop',7, 1983),
(15,'Anti','Roc Nation','Pop',14, 2016);

INSERT INTO SONGS (`song_ID`,`name`,`genre`,`label`,`album_ID`,`artist_ID`,`release_date`)
VALUES(0,'Thriller','Pop','Epic Records',0,0, 1982),
(1,'Beat It','Rock','Epic Records',0,0, 1982),
(2,'Blinding Lights','Pop','XO Records',4,8, 2020),
(3,'Save Your Tears','Pop','XO Records',4,8, 2020),
(4,'Heartless','Trap','XO Records',4,8, 2020),
(5,'Rolling in the Deep','Soul','Xl Recordings',5,11, 2011),
(6,'Set Fire to the Rain','Soul','Xl Recordings',5,11, 2011),
(7,'Dont You Remember','Soul','Xl Recordings',5,11, 2011),
(8,'El gran varón','Salsa','Fania Records',2,6, 1989),
(9,'Future Nostalgia','Funk','Warner Records',7,10, 2020),
(10,'Levitating','Pop','Warner Records',7,10, 2020),
(11,'Break My Heart','Funk','Warner Records',7,10, 2020),
(12,'La fama','Bachata','Columbia Records',12,1, 2022),
(13,'Saoko','Pop','Columbia Records',12,1, 2022),
(14,'Motomami','Pop','Columbia Records',12,1, 2022),
(15,'Starboy','Pop','XO Records',4,8, 2016);



INSERT INTO PLAYLISTS (`playlist_ID`,`name`,`user_ID`,`song_ID`,`creation_date`)
VALUES(0,'Pop Lovers',5,15, now()),
(1,'Pop Lovers',5,3, now()),
(2,'Pop Lovers',5,13, now()),
(3,'Popsito',2,14, now()),
(4,'Popsito',2,2, now()),
(5,'Popsito',2,0, now()),
(6,'De todo un poco',8,11, now()),
(7,'De todo un poco',8,6, now()),
(8,'De todo un poco',8,8, now()),
(9,'Viva Latino',13,12, now()),
(10,'Viva Latino',13,8, now()),
(11,'Viva Latino',13,13, now()),
(12,'Inspiracion',1,5, now()),
(13,'Inspiracion',1,6, now()),
(14,'Inspiracion',1,7, now()),
(15,'Inspiracion',1,3, now());
-- ///////////////////////////FIN INSERCION DE DATOS///////////////////////////////////// --

-- ///////////////////////////INICIO CREACION DE VISTAS///////////////////////////////////// --

-- Vista que permite ver solo a los artistas provenientes de Estados Unidos
CREATE OR REPLACE VIEW vw_artistas_americanos
AS(
SELECT *
FROM ARTISTS
WHERE country like 'Estados Unidos'
);

-- Vista que permite ver cada album (Que tenga al menos 1 cancion) y su cantidad de canciones 
CREATE OR REPLACE VIEW vw_albums_with_songs
AS(
SELECT A.album_id, A.name, COUNT(S.album_id) AS qty_of_songs
FROM ALBUMS as A LEFT JOIN SONGS as S
ON A.album_id = S.album_id
GROUP BY A.album_id, A.name
HAVING qty_of_songs>0
);

-- Vista que permite ver los albumes que pertenezcan a los años 2000's
CREATE OR REPLACE VIEW vw_2000_albums
AS(
SELECT *
FROM ALBUMS
WHERE release_date > 1999
AND release_date < 2010
);

-- Vista que permite ver a cada usuario que tenga una playlist, el nombre de la misma y su cantidad de canciones  
CREATE OR REPLACE VIEW vw_users_playlist
AS(
SELECT U.user_ID, U.first_name, P.name as playlist_name, COUNT(P.song_ID) as qty_of_songs
FROM USERS AS U LEFT JOIN PLAYLISTS AS P
ON U.user_ID = P.user_ID
GROUP BY 1,2,3
HAVING qty_of_songs >0
);

-- Vista que permite ver el top de artistas con mas canciones 
CREATE OR REPLACE VIEW vw_top_artist_mostSongs
AS(
SELECT A.artist_ID, A.nickname, COUNT(S.artist_ID) AS Qty_of_songs
FROM ARTISTS AS A LEFT JOIN SONGS AS S
ON A.artist_ID = S.artist_ID
GROUP BY 1,2
HAVING Qty_of_songs>0
ORDER BY Qty_of_songs DESC
)
-- ///////////////////////////FIN CREACION DE VISTAS///////////////////////////////////// --



