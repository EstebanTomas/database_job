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
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopping` text,
  `medicine` text,
  `events_to_attend` text,
  `bill_payment` text,
  `hobbies` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (1,'compra de comestibles para el hogar',NULL,NULL,NULL,NULL),(3,NULL,'Medicamentos para tener en casa',NULL,NULL,NULL),(4,NULL,NULL,'fiesta de mi amigo lucas',NULL,NULL),(5,NULL,NULL,'casamiento de Camila Parissoti',NULL,NULL),(6,NULL,NULL,'¡mi graduación!',NULL,NULL),(7,'lista para la cena con amigos',NULL,NULL,NULL,NULL),(8,'Juguetes para el día del niño',NULL,NULL,NULL,NULL),(9,NULL,'Insulina de la abuela',NULL,NULL,NULL),(10,NULL,NULL,'Evento de eskeibor',NULL,NULL),(11,NULL,NULL,NULL,'facturas de la luz y el gas',NULL),(12,NULL,NULL,NULL,'pagar el seguro del auto',NULL),(13,NULL,NULL,NULL,NULL,'tocar bateria'),(14,NULL,NULL,NULL,NULL,'salir a correr(RUNNING)');
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_notes`
--

DROP TABLE IF EXISTS `features_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `features_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_feature` int(11) NOT NULL,
  `id_note` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_feature_idx` (`id_feature`),
  KEY `id_note_idx` (`id_note`),
  CONSTRAINT `id_feature` FOREIGN KEY (`id_feature`) REFERENCES `feature` (`id`),
  CONSTRAINT `id_note` FOREIGN KEY (`id_note`) REFERENCES `note` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_notes`
--

LOCK TABLES `features_notes` WRITE;
/*!40000 ALTER TABLE `features_notes` DISABLE KEYS */;
INSERT INTO `features_notes` VALUES (2,1,1),(3,3,2),(4,4,4),(5,5,9),(6,6,11),(7,7,8),(8,8,10),(9,9,14),(10,10,5),(11,12,8),(12,11,12),(13,13,6),(14,14,7);
/*!40000 ALTER TABLE `features_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `description` text,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `can_be_removed` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_users_idx` (`id_users`),
  CONSTRAINT `id_users` FOREIGN KEY (`id_users`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'comestibles','2kl de carne, galletitas de agua, sal, 1kl de duraznos, 1kl de cebolla, un pollo, arroz, 2 paquetes de fideos, un vino','2021-08-09',NULL,2,0),(2,'lista para la farmacia','una tableta de buscapina, una de aspirinas y dos de ibuprofeno','2021-10-09',NULL,12,1),(3,'lista para supermercado','papas, cebollas, morron, un pollo, pack de birra y una picada','2021-10-09',NULL,12,1),(4,'joda de lucas','asistir a la 00:00 y llevar para tomar u compartir','2021-10-20',NULL,9,1),(5,'ir a patinar','Debo asistir a la 17:00 en la plaza sarmiento','2021-10-03',NULL,5,0),(6,'mi hobbies','los martes de 15:00pm hasta 20:00pm toco la bateria','2018-05-19','2021-10-09',6,0),(7,'mi hobbie','los sabado me gusta ir a trotar a un lugar diferente,  durante la semana hago el mismo recorrido de siempre','2021-03-08',NULL,8,1),(8,'facturas','2000 pesos de luz el lunes 11, 1500 de gas','2021-10-09',NULL,3,0),(9,'casamiento de Camila p','asistir el sabado 9 de octubre a la 16:00pm en el hotel howard johnson, ir de traje y llevar un regalo','2021-02-21',NULL,8,0),(10,'regalo para el dia del niño','una play portatil para ana, dos balones de futbol y botines','2021-07-01',NULL,3,1),(11,'graduación de secundaria','debo asistir a la 19:00pm en la escuela, ir con uniformer formal','2021-10-01',NULL,8,1),(12,'pagar el seguro del auto','ir antes de la 09:00am, debo abonar 1.500 pesos','2020-01-12',NULL,7,1),(13,'rapa para mi','comprar dos remeras, un jean y un jogging, tres pares medias y dos boxers','2021-09-03',NULL,14,0),(14,'remedios de la abu','pasar a retirar la insulina para abu','2021-05-18',NULL,15,1);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'juan','Avellaneda','juvellaneda@gmail.com'),(2,'Fernando','Garcia','fergarcia078@gmail.com'),(3,'Sebastian','Del Valle','sabastiandv18@gmail.com'),(5,'Gustavo','Sanchez','sanchezgus@gmail.com'),(6,'Christian','Rodrigues','rodrigueschris@gmail.com'),(7,'Santiago','Rodrigues','santiago726@gmail.com'),(8,'Niculas','Scoll','scolnico76@gmail.com'),(9,'Maitena','Andrade','maiandrade@gmail.com'),(11,'Milagros','Oneto','miluoneto8@gmail.com'),(12,'judith','Vargas','judithv15@gmail.com'),(13,'Romina','Parissoti','roparissoti00@gmail.com'),(14,'Matias','Mendoza','mendozamarias0@gmail.com'),(15,'Florencia','Torres','torresflor18@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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

-- Dump completed on 2021-10-11  2:04:56
