DROP SCHEMA IF EXISTS CODER_SPOTIFY;
CREATE SCHEMA IF NOT EXISTS  CODER_SPOTIFY ; 
USE CODER_SPOTIFY ;


-- CREACION TABLA USUARIOS --
DROP TABLE IF EXISTS USERS;
CREATE TABLE IF NOT EXISTS `USERS` (
  `user_ID` int NOT NULL COMMENT 'PRIMARY KEY',
  `first_name` varchar(50) NOT NULL COMMENT 'USER FIRST_NAME',
  `last_Name` varchar(50) NOT NULL COMMENT 'USER LAST_NAME ',
  `telephone` int(14) NOT NULL COMMENT 'USER TELEPHONE NUMBER',
  `country` varchar(50) NOT NULL COMMENT 'USER COUNTRY ',
  `age` int(3) NOT NULL COMMENT 'USER AGE',
  `gender` varchar(10) NOT NULL COMMENT 'USER GENDER ',
  `register_date` date NOT NULL COMMENT 'USER REGISTER DATE',
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
  `gender` varchar(10) NOT NULL COMMENT 'ARTIST GENDER',
  `register_date` date NOT NULL COMMENT 'ARTIST REGISTER DATE',
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
  `release_date` date NOT NULL COMMENT 'ALBUM RELEASE DATE',
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
  `release_date` date NOT NULL COMMENT 'SONG RELEASE DATE',
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
  `creation_date` date NOT NULL COMMENT 'PLAYLIST CREATION DATE',
  PRIMARY KEY (`playlist_ID`),
  CONSTRAINT `FK_PLAYLISTS_USERS` FOREIGN KEY(`user_ID`) 
  REFERENCES USERS(`user_ID`),
  CONSTRAINT `FK_PLAYLISTS_SONGS` FOREIGN KEY(`song_ID`) 
  REFERENCES SONGS(`song_ID`)
)COMMENT='PLAYLISTS TABLE';







