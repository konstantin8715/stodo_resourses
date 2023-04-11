-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: stodo
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg2ftokbkpjun9akobnkp1ll6a` (`user_id`),
  CONSTRAINT `FKg2ftokbkpjun9akobnkp1ll6a` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,'2023-04-07 23:35:57.159464','Semester 4',1),(2,'2023-04-07 23:50:24.699576','Semester 1',1),(4,'2023-04-07 23:52:57.072901','Semester 1',2),(5,'2023-04-07 23:53:03.983062','Semester 2',2),(6,'2023-04-07 23:53:08.113888','Semester 3',2),(7,'2023-04-07 23:54:16.860216','Semester 1',3),(9,'2023-04-07 23:54:25.494734','Semester 3',3);
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `semester_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmphheehxn35mmxxh67nnexukv` (`semester_id`),
  CONSTRAINT `FKmphheehxn35mmxxh67nnexukv` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'2023-04-09 02:25:52.623887','math',2),(2,'2023-04-09 02:26:37.403117','programming',2),(3,'2023-04-09 02:27:05.723069','math',1),(4,'2023-04-09 02:27:22.431063','toe',1),(5,'2023-04-09 02:28:22.413501','math',5),(6,'2023-04-09 02:28:48.681938','physics',5),(7,'2023-04-09 02:29:12.618483','physics',4),(8,'2023-04-09 02:29:23.372077','programming',4),(9,'2023-04-09 02:29:30.334300','programming',6),(10,'2023-04-09 02:29:38.689611','english',6),(11,'2023-04-09 02:34:31.263517','math',7),(12,'2023-04-09 02:34:42.976686','physics',7),(13,'2023-04-09 02:34:47.232440','physics',9),(14,'2023-04-09 02:35:01.524075','english',9),(18,'2023-04-09 02:49:39.478652','russian',6);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `deadline_date` date NOT NULL,
  `is_done` bit(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5k22wv8pvap89p7wpo0ghs95g` (`subject_id`),
  CONSTRAINT `FK5k22wv8pvap89p7wpo0ghs95g` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'2023-04-11 12:52:48.252650','2023-12-15',_binary '','lab 1',4),(2,'2023-04-11 12:54:14.682741','2023-12-15',_binary '','lab 2',4),(3,'2023-04-11 13:24:23.673247','2023-12-15',_binary '\0','kursach',3),(5,'2023-04-11 13:27:26.824298','2023-12-15',_binary '\0','lab 2',1),(6,'2023-04-11 13:27:31.266448','2023-12-15',_binary '\0','lab 1',1),(7,'2023-04-11 13:35:47.006912','2023-12-15',_binary '\0','lab 1',2),(8,'2023-04-11 13:35:51.564278','2023-12-15',_binary '\0','lab 2',2),(9,'2023-04-11 13:42:09.185527','2023-12-15',_binary '\0','lab 2',7),(10,'2023-04-11 13:42:24.984089','2023-12-15',_binary '\0','lab 1',7),(11,'2023-04-11 13:42:32.518206','2023-12-15',_binary '\0','lab 1',8),(12,'2023-04-11 13:42:38.053884','2023-12-15',_binary '\0','lab 2',8),(13,'2023-04-11 13:43:03.134573','2023-12-15',_binary '\0','lab 2',5),(14,'2023-04-11 13:43:16.594722','2023-12-15',_binary '\0','lab 1',5),(15,'2023-04-11 13:43:28.232642','2023-12-15',_binary '\0','lab 1',6),(16,'2023-04-11 13:43:43.810014','2023-12-15',_binary '\0','lab 2',6),(17,'2023-04-11 13:44:07.485688','2023-12-15',_binary '\0','lab 2',9),(18,'2023-04-11 13:44:20.430184','2023-12-15',_binary '\0','lab 1',9),(19,'2023-04-11 13:44:32.729812','2023-12-15',_binary '\0','lab 3',9),(20,'2023-04-11 13:44:40.998923','2023-12-15',_binary '\0','lab 3',10),(21,'2023-04-11 13:44:52.379649','2023-12-15',_binary '\0','lab 1',10),(22,'2023-04-11 13:45:02.321699','2023-12-15',_binary '\0','lab 1',18),(23,'2023-04-11 13:50:14.433323','2023-12-15',_binary '\0','lab 1',18),(24,'2023-04-11 13:51:03.786809','2023-12-15',_binary '\0','lab 1',11),(25,'2023-04-11 13:51:08.441598','2023-12-15',_binary '\0','lab 2',11),(26,'2023-04-11 13:51:26.706159','2023-12-15',_binary '\0','lab 2',12),(27,'2023-04-11 13:51:31.568914','2023-12-15',_binary '\0','lab 1',12),(34,'2023-04-11 13:53:45.709723','2023-12-15',_binary '\0','lab 2',13),(35,'2023-04-11 13:53:52.644392','2023-12-15',_binary '\0','lab 1',13),(36,'2023-04-11 13:54:05.929427','2023-12-15',_binary '\0','lab 3',13),(37,'2023-04-11 13:54:17.973093','2023-12-15',_binary '\0','lab 1',14),(38,'2023-04-11 13:54:33.732383','2023-12-15',_binary '\0','lab 2',14);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023-04-07 17:40:47.054918','user1@mail.com','$2a$10$KgP1xXvRSO.lsaX5oun8zOdkL4fLBy2uVJyCTd3KTq5FweR3D/.Ru'),(2,'2023-04-07 17:40:54.248490','user2@mail.com','$2a$10$wW9cl4l3MO57sis4iNHms.D2dOvAYl5V48upfCVeDtGgKmlsS8xrW'),(3,'2023-04-07 17:40:57.660504','user3@mail.com','$2a$10$hTObG4b3cVmReAUh3Qvcx.18bQD/tkH4yjWslNmpmGrTj0bWYV2Im');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 14:50:22
