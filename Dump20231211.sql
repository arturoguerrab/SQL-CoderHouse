-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: coder_spotify
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `ALBUMS`
--

LOCK TABLES `ALBUMS` WRITE;
/*!40000 ALTER TABLE `ALBUMS` DISABLE KEYS */;
INSERT INTO `ALBUMS` VALUES (1,'Thriller','Epic Records','Pop',1,1982),(2,'Circus','Jive Records','Pop',3,2008),(3,'Top Secrets','Fania Records','Salsa',7,1989),(4,'Bad','Epic Records','R&B',1,1987),(5,'After Hours','XO Records','R&B',9,2020),(6,'21','Xl Recordings','Pop',10,2011),(7,'Mr Bad Guy','Columbia Records','Rock',13,1985),(8,'Future Nostalgia','Warner Records','Funk',11,2020),(9,'Faith','Columbia Records','Pop',5,1987),(10,'Starboy','XO Records','R&B',9,2016),(11,'Lemonade','Parkwood Entertainment','Pop',14,2016),(12,'Tha Carter','Universal Records','Rap',16,2004),(13,'Motomami','Columbia Records','Pop',2,2022),(14,'Like a Virgin','Warner Bros','Pop',8,1984),(15,'Madonna','Warner Bros','Pop',8,1983),(16,'Anti','Roc Nation','Pop',15,2016);
/*!40000 ALTER TABLE `ALBUMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ARTISTS`
--

LOCK TABLES `ARTISTS` WRITE;
/*!40000 ALTER TABLE `ARTISTS` DISABLE KEYS */;
INSERT INTO `ARTISTS` VALUES (1,'Michael Jackson','Samuel','Alarcón Morales','Zambia',80,'male','2023-12-11 23:42:35'),(2,'Rosalia','Rosalia','Vila','España',31,'female','2023-12-11 23:42:35'),(3,'Britney Spears','Britney','Spears','Estados Unidos',41,'female','2023-12-11 23:42:35'),(4,'Thalia','Ariadna','Sodi','Mexico',52,'female','2023-12-11 23:42:35'),(5,'George Michael','Georgios','Kyriacos','Reino Unido',53,'male','2023-12-11 23:42:35'),(6,'Selena','Selena','Quintanilla','Estados Unidos',23,'female','2023-12-11 23:42:35'),(7,'Willie Colon','William','Colón','Estados Unidos',73,'male','2023-12-11 23:42:35'),(8,'Madonna','Madonna','Ciccone','Estados Unidos',65,'female','2023-12-11 23:42:35'),(9,'The Weeknd','Abel','Testaye','Canada',33,'male','2023-12-11 23:42:35'),(10,'Taylor Swift','Taylor','Swift','Estados Unidos',33,'female','2023-12-11 23:42:35'),(11,'Dua Lipa','Dua','Lipa','Reino Unido',28,'female','2023-12-11 23:42:35'),(12,'Adele','Adele','Blue','Reino Unido',35,'female','2023-12-11 23:42:35'),(13,'Freddie Mercury','Farrokh','Bulsara','Zanzíbar',45,'male','2023-12-11 23:42:35'),(14,'Beyonce','Beyonce','Knowles','Estados Unidos',42,'female','2023-12-11 23:42:35'),(15,'Rihanna','Robyn','Fenty','Barbados',35,'female','2023-12-11 23:42:35'),(16,'Lil Wayne','Dwayne','Carter','Estados Unidos',41,'male','2023-12-11 23:42:35');
/*!40000 ALTER TABLE `ARTISTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `LOG_INSERTS`
--

LOCK TABLES `LOG_INSERTS` WRITE;
/*!40000 ALTER TABLE `LOG_INSERTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOG_INSERTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `LOG_UPDATE`
--

LOCK TABLES `LOG_UPDATE` WRITE;
/*!40000 ALTER TABLE `LOG_UPDATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOG_UPDATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PLAYLISTS`
--

LOCK TABLES `PLAYLISTS` WRITE;
/*!40000 ALTER TABLE `PLAYLISTS` DISABLE KEYS */;
INSERT INTO `PLAYLISTS` VALUES (1,'Pop Lovers',6,16,'2023-12-11 23:42:49'),(2,'Pop Lovers',6,4,'2023-12-11 23:42:49'),(3,'Pop Lovers',6,14,'2023-12-11 23:42:49'),(4,'Popsito',3,15,'2023-12-11 23:42:49'),(5,'Popsito',3,3,'2023-12-11 23:42:49'),(6,'Popsito',3,1,'2023-12-11 23:42:49'),(7,'De todo un poco',9,12,'2023-12-11 23:42:49'),(8,'De todo un poco',9,7,'2023-12-11 23:42:49'),(9,'De todo un poco',9,9,'2023-12-11 23:42:49'),(10,'Viva Latino',14,13,'2023-12-11 23:42:49'),(11,'Viva Latino',14,9,'2023-12-11 23:42:49'),(12,'Viva Latino',14,14,'2023-12-11 23:42:49'),(13,'Inspiracion',2,6,'2023-12-11 23:42:49'),(14,'Inspiracion',2,7,'2023-12-11 23:42:49'),(15,'Inspiracion',2,8,'2023-12-11 23:42:49'),(16,'Inspiracion',2,4,'2023-12-11 23:42:49');
/*!40000 ALTER TABLE `PLAYLISTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SONGS`
--

LOCK TABLES `SONGS` WRITE;
/*!40000 ALTER TABLE `SONGS` DISABLE KEYS */;
INSERT INTO `SONGS` VALUES (1,'Thriller','Pop','Epic Records',1,1,1982),(2,'Beat It','Rock','Epic Records',1,1,1982),(3,'Blinding Lights','Pop','XO Records',5,9,2020),(4,'Save Your Tears','Pop','XO Records',5,9,2020),(5,'Heartless','Trap','XO Records',5,9,2020),(6,'Rolling in the Deep','Soul','Xl Recordings',6,12,2011),(7,'Set Fire to the Rain','Soul','Xl Recordings',6,12,2011),(8,'Dont You Remember','Soul','Xl Recordings',6,12,2011),(9,'El gran varón','Salsa','Fania Records',3,7,1989),(10,'Future Nostalgia','Funk','Warner Records',8,11,2020),(11,'Levitating','Pop','Warner Records',8,11,2020),(12,'Break My Heart','Funk','Warner Records',8,11,2020),(13,'La fama','Bachata','Columbia Records',13,2,2022),(14,'Saoko','Pop','Columbia Records',13,2,2022),(15,'Motomami','Pop','Columbia Records',13,2,2022),(16,'Starboy','Pop','XO Records',10,9,2016);
/*!40000 ALTER TABLE `SONGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (1,'Dorotea','Vergara','+54 (911) 4534-4853','Montenegro',34,'Female','2023-12-11 23:42:28'),(2,'Jerónimo','Serrato','+54 (911) 4539-0093','Estados Unidos de América',95,'Male','2023-12-11 23:42:28'),(3,'Hernán','Delagarza','+54 (911) 6139-3824','Ghana',24,'Male','2023-12-11 23:42:28'),(4,'Ana María','Escobedo','+54 (911) 5020-4062','Irlanda',54,'Female','2023-12-11 23:42:28'),(5,'María Teresa','Rojas','+54 (911) 1051-8280','Bélgica',68,'Transgender','2023-12-11 23:42:28'),(6,'Esperanza','Maestas','+54 (911) 6881-0586','Barein',33,'Female','2023-12-11 23:42:28'),(7,'Magdalena','Duarte','+54 (911) 8080-7203','Eslovenia',15,'No Binary','2023-12-11 23:42:28'),(8,'Luz','Lomeli','+54 (911) 4805-3816','Puerto Rico',19,'Female','2023-12-11 23:42:28'),(9,'Daniel','Pacheco','+54 (911) 9873-272','Andorra',13,'Male','2023-12-11 23:42:28'),(10,'Marcela','Anaya','+54 (911) 1140-1611','Uganda',35,'Female','2023-12-11 23:42:28'),(11,'Dorotea','Avilés','+54 (911) 3423-3912','Grecia',65,'Transgender','2023-12-11 23:42:28'),(12,'Blanca','Gil','+54 (911) 3609-4352','China',93,'Female','2023-12-11 23:42:28'),(13,'Armando','Rivero','+54 (911) 3971-5826','Uganda',35,'Male','2023-12-11 23:42:28'),(14,'Ignacio','Fernández','+54 (911) 3480-0349','Irak',78,'No Binary','2023-12-11 23:42:28'),(15,'Ariadna','Nájera','+54 (911) 5122-7831','Tailandia',23,'Female','2023-12-11 23:42:28'),(16,'Eduardo','Hidalgo','+54 (911) 8687-0882','Barbados',24,'Male','2023-12-11 23:42:28');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 20:49:11
