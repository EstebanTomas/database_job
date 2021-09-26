-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `editorial` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'el misterio de las cuatro cartas','S.L.U. ESPASA LIBROS','2021-09-24','2021-09-24 21:02:46'),(2,'el misterio de las cuatro cartas','S.L.U. ESPASA LIBROS','2019-01-01','2021-09-24 21:03:40'),(3,'el dia que se perdio la coordura','SUMA','2017-01-01','2021-09-24 21:10:06'),(4,'el dia que se perdio el amor','SUMA','2018-01-01','2021-09-24 21:11:10'),(5,'El juego del alma','SUMA','2021-01-01','2021-09-24 21:12:39'),(6,'La vida que no elegi','SUMA','2016-04-16','2021-09-24 21:14:34'),(7,'La vida que no elegi','SUMA','2016-04-16','2021-09-24 21:14:34'),(8,'El psicoanalista','B DE BOLSILLO','2001-01-29','2021-09-24 21:17:07'),(9,'Misery','Viking Press','1987-06-08','2021-09-24 21:19:00'),(10,'La pareja de al lado','Viking Press','2016-07-14','2021-09-24 21:21:42'),(11,'La Vida Secreta De La Mente','DEBOLS!LLO CLAVE','2015-10-01','2021-09-24 21:26:47'),(12,'el diario de ana frank','Garbo','1947-06-25','2021-09-25 11:22:10'),(13,'Despues','B DE BOLSILLO','2021-06-10','2021-09-25 11:29:04');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `ranking` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Ciencia ficcion','1926-01-01','2021-09-25 12:07:00',8),(2,'Comedia','2000-01-01','2021-09-25 12:15:54',9),(3,'Terror','1930-01-01','2021-09-25 12:16:27',7),(4,'Drama','1900-01-01','2021-09-25 12:17:33',8),(5,'Fantastico','1900-01-01','2021-09-25 12:19:06',5),(6,'Narrativo','1000-01-01','2021-09-25 12:20:09',4),(7,'Aventuras','1900-01-01','2021-09-25 12:24:21',6),(8,'Investigación','1900-01-01','2021-09-25 12:24:44',3),(9,'Misterio','1900-01-01','2021-09-25 12:31:44',6),(10,'Suspenso','1900-01-01','2021-09-25 12:38:57',6),(11,'Novela psicológica','1900-01-01','2021-09-25 12:39:39',10),(12,'Biografia','1900-01-01','2021-09-25 12:43:06',9),(13,'Autobiografia','1900-01-01','2021-09-25 12:43:19',9);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_book`
--

DROP TABLE IF EXISTS `genre_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genre_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_id` int(100) NOT NULL,
  `books_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `genre_id_idx` (`genre_id`),
  KEY `books_id_idx` (`books_id`),
  CONSTRAINT `books_id` FOREIGN KEY (`books_id`) REFERENCES `book` (`id`),
  CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_book`
--

LOCK TABLES `genre_book` WRITE;
/*!40000 ALTER TABLE `genre_book` DISABLE KEYS */;
INSERT INTO `genre_book` VALUES (1,9,1),(2,4,3),(3,4,4),(4,3,8),(5,3,10),(6,8,11),(7,5,6),(8,1,5),(9,13,12),(10,10,13),(11,2,2),(12,10,7),(13,4,9);
/*!40000 ALTER TABLE `genre_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_book` int(100) NOT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment_method` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  CONSTRAINT `id_book` FOREIGN KEY (`id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,1,'2.000','Efectivo'),(2,2,'2.000','Efectivo'),(3,3,'4.000','targeta de debito'),(4,4,'3.700','targeta de credito'),(5,5,'3.200','targeta prepaga'),(6,6,'1.999','targeta prepaga'),(7,7,'1.999','Efectivo'),(8,8,'4.399','Efectivo'),(9,9,'6.000','Efectivo'),(10,10,'2.500','Targeta de debito'),(11,11,'5.500','Targeta de debito'),(12,12,'4.500','efectivo'),(13,13,'3.500','efectivo');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writer`
--

DROP TABLE IF EXISTS `writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `writer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `country` varchar(45) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`) /*!80000 INVISIBLE */,
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writer`
--

LOCK TABLES `writer` WRITE;
/*!40000 ALTER TABLE `writer` DISABLE KEYS */;
INSERT INTO `writer` VALUES (2,'Sophie','hannah','sophiehannah@gmail.com','Reino Unido',1),(3,'Javier','Castillo','javicastillo@gmail.com','España',3),(4,'Javier','Castillo','javicastillo@gmail.com','España',5),(5,'Javier','Castillo','javicastillo@gmail.com','España',4),(6,'John','Katzenbach','johnkatzenbach@gmail.com','Estados Unidos',8),(7,'Lorena','Franco','lorefranco@gmail.com','España',7),(8,'Stephen','King','stephen@gmail.com','Estados Unidos',9),(9,'Ana','Frank','frank@gmail.com','Alemania',12),(10,'Shari','Lapeña','lapeñashari@gmail.com','Estados Unidos',10),(11,'Mariano','Sigman','mariano@gmail.com','Argentina',11);
/*!40000 ALTER TABLE `writer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-25 21:28:55
