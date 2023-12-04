DROP SCHEMA IF EXISTS CODER_SPOTIFY;
CREATE SCHEMA IF NOT EXISTS  CODER_SPOTIFY ;
USE CODER_SPOTIFY ;


-- ///////////////////////////INICIO CREACION DE TABLAS///////////////////////////////////// --
-- CREACION TABLA USUARIOS --
DROP TABLE IF EXISTS USERS;
CREATE TABLE IF NOT EXISTS `USERS` (
  `user_ID` int auto_increment NOT NULL COMMENT 'PRIMARY KEY',
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
  `artist_ID` int auto_increment NOT NULL COMMENT 'PRIMARY KEY',
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
  `album_ID` int auto_increment NOT NULL COMMENT 'PRIMARY KEY',
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
  `song_ID` int auto_increment NOT NULL COMMENT 'PRIMARY KEY',
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
  `playlist_ID` int auto_increment NOT NULL COMMENT 'PRIMARY KEY',
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
VALUES (1,'Dorotea','Vergara','+54 (911) 4534-4853','Montenegro',34,'Female', now()),
(2,'Jerónimo','Serrato','+54 (911) 4539-0093','Estados Unidos de América',95,'Male', now()),
(3,'Hernán','Delagarza','+54 (911) 6139-3824','Ghana',24,'Male', now()),
(4,'Ana María','Escobedo','+54 (911) 5020-4062','Irlanda',54,'Female', now()),
(5,'María Teresa','Rojas','+54 (911) 1051-8280','Bélgica',68,'Transgender', now()),
(6,'Esperanza','Maestas','+54 (911) 6881-0586','Barein',33,'Female', now()),
(7,'Magdalena','Duarte','+54 (911) 8080-7203','Eslovenia',15,'No Binary', now()),
(8,'Luz','Lomeli','+54 (911) 4805-3816','Puerto Rico',19,'Female', now()),
(9,'Daniel','Pacheco','+54 (911) 9873-272','Andorra',13,'Male', now()),
(10,'Marcela','Anaya','+54 (911) 1140-1611','Uganda',35,'Female', now()),
(11,'Dorotea','Avilés','+54 (911) 3423-3912','Grecia',65,'Transgender', now()),
(12,'Blanca','Gil','+54 (911) 3609-4352','China',93,'Female', now()),
(13,'Armando','Rivero','+54 (911) 3971-5826','Uganda',35,'Male', now()),
(14,'Ignacio','Fernández','+54 (911) 3480-0349','Irak',78,'No Binary', now()),
(15,'Ariadna','Nájera','+54 (911) 5122-7831','Tailandia',23,'Female', now()),
(16,'Eduardo','Hidalgo','+54 (911) 8687-0882','Barbados',24,'Male', now());


INSERT INTO ARTISTS (`artist_ID`,`nickname`,`first_name`,`last_Name`,`country`,`age`,`gender`,`register_date`)
VALUES  (1,'Michael Jackson','Samuel','Alarcón Morales','Zambia',80,'male', now()),
(2,'Rosalia','Rosalia','Vila','España',31,'female', now()),
(3,'Britney Spears','Britney','Spears','Estados Unidos',41,'female', now()),
(4,'Thalia','Ariadna','Sodi','Mexico',52,'female', now()),
(5,'George Michael','Georgios','Kyriacos','Reino Unido',53,'male', now()),
(6,'Selena','Selena','Quintanilla','Estados Unidos',23,'female', now()),
(7,'Willie Colon','William','Colón','Estados Unidos',73,'male', now()),
(8,'Madonna','Madonna','Ciccone','Estados Unidos',65,'female', now()),
(9,'The Weeknd','Abel','Testaye','Canada',33,'male', now()),
(10,'Taylor Swift','Taylor','Swift','Estados Unidos',33,'female', now()),
(11,'Dua Lipa','Dua','Lipa','Reino Unido',28,'female', now()),
(12,'Adele','Adele','Blue','Reino Unido',35,'female', now()),
(13,'Freddie Mercury','Farrokh','Bulsara','Zanzíbar',45,'male', now()),
(14,'Beyonce','Beyonce','Knowles','Estados Unidos',42,'female', now()),
(15,'Rihanna','Robyn','Fenty','Barbados',35,'female', now()),
(16,'Lil Wayne','Dwayne','Carter','Estados Unidos',41,'male', now());
       
INSERT INTO ALBUMS (`album_ID`,`name`,`label`,`genre`,`artist_ID`,`release_date`)
VALUES  (1,'Thriller','Epic Records','Pop',1, 1982),
(2,'Circus','Jive Records','Pop',3, 2008),
(3,'Top Secrets','Fania Records','Salsa',7, 1989),
(4,'Bad','Epic Records','R&B',1, 1987),
(5,'After Hours','XO Records','R&B',9, 2020),
(6,'21','Xl Recordings','Pop',10, 2011),
(7,'Mr Bad Guy','Columbia Records','Rock',13, 1985),
(8,'Future Nostalgia','Warner Records','Funk',11, 2020),
(9,'Faith','Columbia Records','Pop',5, 1987),
(10,'Starboy','XO Records','R&B',9, 2016),
(11,'Lemonade','Parkwood Entertainment','Pop',14, 2016),
(12,'Tha Carter','Universal Records','Rap',16, 2004),
(13,'Motomami','Columbia Records','Pop',2, 2022),
(14,'Like a Virgin','Warner Bros','Pop',8, 1984),
(15,'Madonna','Warner Bros','Pop',8, 1983),
(16,'Anti','Roc Nation','Pop',15, 2016);


INSERT INTO SONGS (`song_ID`,`name`,`genre`,`label`,`album_ID`,`artist_ID`,`release_date`)
VALUES(1,'Thriller','Pop','Epic Records',1,1, 1982),
(2,'Beat It','Rock','Epic Records',1,1, 1982),
(3,'Blinding Lights','Pop','XO Records',5,9, 2020),
(4,'Save Your Tears','Pop','XO Records',5,9, 2020),
(5,'Heartless','Trap','XO Records',5,9, 2020),
(6,'Rolling in the Deep','Soul','Xl Recordings',6,12, 2011),
(7,'Set Fire to the Rain','Soul','Xl Recordings',6,12, 2011),
(8,'Dont You Remember','Soul','Xl Recordings',6,12, 2011),
(9,'El gran varón','Salsa','Fania Records',3,7, 1989),
(10,'Future Nostalgia','Funk','Warner Records',8,11, 2020),
(11,'Levitating','Pop','Warner Records',8,11, 2020),
(12,'Break My Heart','Funk','Warner Records',8,11, 2020),
(13,'La fama','Bachata','Columbia Records',13,2, 2022),
(14,'Saoko','Pop','Columbia Records',13,2, 2022),
(15,'Motomami','Pop','Columbia Records',13,2, 2022),
(16,'Starboy','Pop','XO Records',10,9, 2016);



INSERT INTO PLAYLISTS (`playlist_ID`,`name`,`user_ID`,`song_ID`,`creation_date`)
VALUES(1,'Pop Lovers',6,16, now()),
(2,'Pop Lovers',6,4, now()),
(3,'Pop Lovers',6,14, now()),
(4,'Popsito',3,15, now()),
(5,'Popsito',3,3, now()),
(6,'Popsito',3,1, now()),
(7,'De todo un poco',9,12, now()),
(8,'De todo un poco',9,7, now()),
(9,'De todo un poco',9,9, now()),
(10,'Viva Latino',14,13, now()),
(11,'Viva Latino',14,9, now()),
(12,'Viva Latino',14,14, now()),
(13,'Inspiracion',2,6, now()),
(14,'Inspiracion',2,7, now()),
(15,'Inspiracion',2,8, now()),
(16,'Inspiracion',2,4, now());
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


-- ///////////////////////////INICIO CREACION DE FUNCIONES///////////////////////////////////// --

-- Funcion (1) que permite contar cuantos artistas hay depende del pais que pase como parametro 
DROP FUNCTION IF EXISTS fn_artists_country

DELIMITER //
CREATE FUNCTION fn_artists_country(p_country Varchar(50))
RETURNS int
DETERMINISTIC
BEGIN
	DECLARE v_result int;
    SET v_result=(
		SELECT COUNT(*)
		FROM ARTISTS
		WHERE country like p_country
	);
RETURN v_result;
END // 

-- Pruebas de la funcion (1)
SELECT fn_artists_country('España');
SELECT fn_artists_country('Estados Unidos');
SELECT fn_artists_country('Venezuela');


-- Funcion (2) que devuelve la fecha de lanzamiento del album que pase por parametro 
DROP FUNCTION IF EXISTS fn_album_date

DELIMITER //
CREATE FUNCTION fn_album_date(p_album Varchar(50))
RETURNS varchar(50)
DETERMINISTIC
BEGIN
	DECLARE v_result varchar(50);
    SET v_result=(
		SELECT release_date
		FROM ALBUMS
		WHERE name like p_album
	);
RETURN v_result;
END // 

-- Prueba de la funcion (2)
SELECT fn_album_date('Motomami');
SELECT fn_album_date('Starboy');

-- ///////////////////////////INICIO CREACION DE STORED PROCEDURES///////////////////////////////////// --

USE CODER_SPOTIFY ;

-- Procedure recibe el nombre o parte del nombre del pais y retorna todos los artistas de dicho pais
DROP PROCEDURE IF EXISTS SP_artist_country
DELIMITER //
CREATE PROCEDURE SP_artist_country(	IN p_country varchar (20),
									IN p_orderby varchar(50),
                                    IN p_asc_desc varchar(10)
                                    ) 
BEGIN
	IF p_asc_desc = 'asc' THEN
		SELECT artist_ID as 'artist_ID', nickname, country, gender
		-- INTO p_artist_nickname,p_artist_country
		FROM ARTISTS
		WHERE country like CONCAT('%',p_country,'%')
		ORDER BY p_orderby asc; 
	ELSE
		SELECT artist_ID, nickname, country, gender
		-- INTO p_artist_nickname,p_artist_country
		FROM ARTISTS
		WHERE country like CONCAT('%',p_country,'%')
		ORDER BY p_orderby desc; 
	END IF;
		

END // 

-- PRUEBAS:
CALL SP_artist_country('E','artist_ID','asc');
CALL SP_artist_country('Estados Unidos','artist_ID','desc');

-- Procedure que recibe el nombre de la playlist, el usuario y el nombre de la cancion que desea agregar
DROP PROCEDURE IF EXISTS SP_insert_songs_playlist
DELIMITER //
CREATE PROCEDURE SP_insert_songs_playlist(	IN p_name varchar(50),
											IN p_user_ID int,
											IN p_song_name varchar(50),
                                            OUT p_message varchar(100))
											
BEGIN
	DECLARE v_result varchar(50);
    SET v_result =(
		SELECT song_ID
		FROM SONGS
		WHERE name = p_song_name
	);
    
    IF v_result IS NULL THEN
		SET p_message = CONCAT('ERROR: LA CANCION -',p_song_name,'- NO EXISTE');
	ELSE
		INSERT INTO PLAYLISTS (`name`,`user_ID`,`song_ID`,`creation_date`)
		VALUES(p_name,p_user_ID,v_result, now());
        SET p_message = CONCAT('SUCCESS: LA CANCION -',p_song_name,'- FUE AGREGADA CON EXITO A LA LISTA -',p_name,'-');
	END IF;
    
END // 

-- PRUEBA: CANCION NO EXISTE
CALL SP_insert_songs_playlist('Playlist_Procedure',2,'star',@p_message);
SELECT @p_message;

-- PRUEBA: CANCION EXISTE
CALL SP_insert_songs_playlist('Playlist_Procedure',2,'beat it',@p_message);
SELECT @p_message;


-- ///////////////////////////INICIO CREACION DE TRIGGERS///////////////////////////////////// --

USE CODER_SPOTIFY ;

-- TABLA PARA UPDATES
drop table if  exists LOG_UPDATE;
CREATE TABLE IF NOT EXISTS LOG_UPDATE(
log_ID INT AUTO_INCREMENT ,
accion VARCHAR(10) ,-- irira si es insert , update ,delete
local_user VARCHAR(100) , -- quien ejecuta la sentencia DML
change_date timestamp , -- momento exacto en el que se genera DML
table_name VARCHAR(50),
type_change Varchar (100),
PRIMARY KEY (log_ID)
);

-- TRG QUE REGISTRA EL CAMBIO DE TELEFONO DE UN USUARIO
drop trigger if exists TRG_LOG_USER_TELEPHONE;  
DELIMITER //
CREATE TRIGGER TRG_LOG_USER_TELEPHONE BEFORE UPDATE ON USERS
FOR EACH ROW 
BEGIN

INSERT INTO LOG_UPDATE (accion , local_user , change_date,table_name,type_change)
VALUES ( 'UPDATE',CURRENT_USER() , NOW(),'USER',CONCAT('SE ACTUALIZO EL USER_ID ',old.user_ID,' :',old.telephone,'POR: ', new.telephone));

END//
DELIMITER ;

UPDATE USERS 
SET telephone = '+54 (911) 4534-4853' 
WHERE user_ID = 2;

-- TRG QUE REGISTRA EL DELETE DE UNA PLAYLIST ENTERA
SET SQL_SAFE_UPDATES = 0;
drop trigger if exists TRG_LOG_PLAYLIST;  
DELIMITER //
CREATE TRIGGER TRG_LOG_PLAYLIST BEFORE DELETE ON PLAYLISTS
FOR EACH ROW 
BEGIN

INSERT INTO LOG_UPDATE (accion , local_user , change_date,table_name,type_change)
VALUES ( 'DELETE',CURRENT_USER() , NOW(),'PLAYLISTS',CONCAT('SE ELIMINO LA PLAYLIST',old.playlist_id,' :','NOMBRE: ',old.name,'DUEÑO: USER ',old.user_ID));

END//
DELIMITER ;

DELETE FROM PLAYLISTS  
WHERE name = 'Playlist_Procedure';



-- TRG QUE REGISTRA EL INSERT DE UN NUEVO ARTISTA
drop table if  exists LOG_INSERTS;
CREATE TABLE IF NOT EXISTS LOG_INSERTS(
log_ID INT AUTO_INCREMENT ,
accion VARCHAR(10) ,-- irira si es insert , update ,delete
local_user VARCHAR(100) , -- quien ejecuta la sentencia DML
table_name VARCHAR(50),
message Varchar (100),
PRIMARY KEY (log_ID)
);

drop trigger if exists TRG_LOG_ARTIST;  
DELIMITER //
CREATE TRIGGER TRG_LOG_ARTIST AFTER INSERT ON ARTISTS
FOR EACH ROW 
BEGIN

INSERT INTO LOG_INSERTS (accion , local_user ,table_name,message)
VALUES ( 'INSERT',CURRENT_USER(),'ARTISTS',CONCAT('SE INSERTO UN NUEVO ARTISTA: ',new.nickname));

END//
DELIMITER ;

INSERT INTO ARTISTS (`nickname`,`first_name`,`last_Name`,`country`,`age`,`gender`,`register_date`)
VALUES  ('Hardwell','Robbert','Van der corput','Holanda',28,'male', now());



-- TRG QUE REGISTRA EL INSERT DE UNA NUEVA CANCION A UNA PLAYLIST
drop trigger if exists TRG_LOG_PLAYLIST;  
DELIMITER //
CREATE TRIGGER TRG_LOG_PLAYLIST AFTER INSERT ON PLAYLISTS
FOR EACH ROW 
BEGIN

INSERT INTO LOG_INSERTS (accion , local_user ,table_name,message)
VALUES ( 'INSERT',CURRENT_USER(),'PLAYLISTS',CONCAT('SE INSERTO UNA NUEVA CANCION AL PLAYLIST ',new.name,' : SONG_ID ',new.song_ID));

END//
DELIMITER ;


INSERT INTO PLAYLISTS (`name`,`user_ID`,`song_ID`,`creation_date`)
VALUES('Pop Lovers',6,14, now());


-- ///////////////////////////CREACION DE USUARIOS///////////////////////////////////// --

USE mysql;
SELECT * FROM USER;

CREATE USER IF NOT EXISTS 'andresgRead'@'localhost' IDENTIFIED BY 'coder';
CREATE USER IF NOT EXISTS 'arturoCRU'@'localhost' IDENTIFIED BY 'coder';
FLUSH PRIVILEGES;

-- //////////// PERMISOS DE SOLO LECTURA PARA EL USUARIO ANDRESGREAD
GRANT SELECT ON CODER_SPOTIFY.* TO 'andresgRead'@'localhost';

-- //////////// PERMISOS DE CREATE READ UPDATE PARA EL USUARIO ANDRESGREAD
GRANT SELECT, UPDATE, INSERT ON CODER_SPOTIFY.* TO 'arturoCRU'@'localhost';

