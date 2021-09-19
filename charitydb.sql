-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: charitydb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (2,'test','2021-09-11 20:01:41',3,2);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`like_id`),
  KEY `FKowd6f4s7x9f3w50pvlo6x3b41` (`post_id`),
  KEY `FKi2wo4dyk4rok7v4kak8sgkwx0` (`user_id`),
  CONSTRAINT `FKi2wo4dyk4rok7v4kak8sgkwx0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKowd6f4s7x9f3w50pvlo6x3b41` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `type` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `FKn1l10g2mvj4r1qs93k952fshe` (`post_id`),
  KEY `FKb0yvoep4h4k92ipon31wmdf7e` (`user_id`),
  CONSTRAINT `FKb0yvoep4h4k92ipon31wmdf7e` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKn1l10g2mvj4r1qs93k952fshe` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (6,_binary '',1,3,1),(7,_binary '',2,3,1),(8,_binary '',2,3,1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FK72mt33dhhs48hf9gcqrq4fxte` (`user_id`),
  CONSTRAINT `FK72mt33dhhs48hf9gcqrq4fxte` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'test create post ','2021-09-11 08:04:19','https://res.cloudinary.com/diacstfxz/image/upload/v1631322262/ln3jxiknh5uk1vsb4dlr.jpg',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_auction`
--

DROP TABLE IF EXISTS `post_auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_auction` (
  `post_id` int NOT NULL,
  `active` bit(1) NOT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `winner` int DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  CONSTRAINT `FK3k0922vuixj2cq1rieyc7gqt5` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_auction`
--

LOCK TABLES `post_auction` WRITE;
/*!40000 ALTER TABLE `post_auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_hash_tag`
--

DROP TABLE IF EXISTS `post_hash_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_hash_tag` (
  `post_id` int NOT NULL,
  `hash_tag` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  KEY `FKnpt668kudcsr12uasqrpqxo10` (`post_id`),
  CONSTRAINT `FKnpt668kudcsr12uasqrpqxo10` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_hash_tag`
--

LOCK TABLES `post_hash_tag` WRITE;
/*!40000 ALTER TABLE `post_hash_tag` DISABLE KEYS */;
INSERT INTO `post_hash_tag` VALUES (3,'nghethuat'),(3,'vanhoc');
/*!40000 ALTER TABLE `post_hash_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `reported_user_id` int DEFAULT NULL,
  `reporter_id` int DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `FKgv5el6pnw9fbo9shq49ww3m4e` (`reported_user_id`),
  KEY `FKndpjl61ubcm2tkf7ml1ynq13t` (`reporter_id`),
  CONSTRAINT `FKgv5el6pnw9fbo9shq49ww3m4e` FOREIGN KEY (`reported_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKndpjl61ubcm2tkf7ml1ynq13t` FOREIGN KEY (`reporter_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (13,'tungukhongdung',1,2),(14,'tungukhongdung',1,2);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_vi_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'https://res.cloudinary.com/diacstfxz/image/upload/v1630852811/wvzatu3l0cw1xyqvopnp.jpg','nhom9athttt@gmail.com',_binary '','$2a$10$3UWcr6ymYY.hEB3YJUKmVub3p/lAs6RkFRxYJvJBtyb9JIgDdx3Ue','ROLE_ADMIN','test'),(2,'https://res.cloudinary.com/diacstfxz/image/upload/v1631000781/sillorxpslmz9let8oex.jpg','nhom9athttt@gmail.com',_binary '','$2a$10$n5cPdhcqDbe0dMMHXEhkHulGGGpc7v9EG1iLX9FIT9vtAzrfofWTS','ROLE_USER','test1'),(3,NULL,'test1@gmail.com',_binary '','$2a$10$Y4Hr4UvozbgJ/C/CFEdJqOpxwpkEaAyYmaZJM6RmVEkaYwoFeTLt.','ROLE_USER','test2'),(5,NULL,'test1@gmail.com',_binary '','$2a$10$yz3Yuv/WUAcWZTt7lOXgbewpxbM6rV9syiIV8tGC/JW2ctftO632q','ROLE_USER','testnullavatar'),(6,'https://res.cloudinary.com/diacstfxz/image/upload/v1631764864/pb5jnakdgdcpqn7blvoe.ico','vunguyenphuong2010@gmail.com',_binary '','$2a$10$JLIXfb7iAR5x9qH.hnmPoOukZxAa6wcn700ktFds0iM9F0/x89ala','ROLE_USER','tuyet'),(7,NULL,'vunguyenphuong2010@gmail.com',_binary '','$2a$10$yduWoH9Uz59OBadV43cXve/2Hk9C3JvKzEVHzrl/I7R/qhXV8vsYa','ROLE_USER','tuyet1'),(8,'https://res.cloudinary.com/diacstfxz/image/upload/v1631767649/qvvng1he2iag9ujvun7l.ico','vunguyenphuong2010@gmail.com',_binary '','$2a$10$Zm2iYuoZEWi3h4/cnV1bHuH.MUMvCiwIEwznK9.KPyiBv36m8JFRO','ROLE_USER','12'),(9,'https://res.cloudinary.com/diacstfxz/image/upload/v1631769982/smt8hglysxoifksmyjrp.ico','1851050173tuyet@ou.edu.vn',_binary '','$2a$10$8vwAXpIRQ7oKfCBPcFDjse38WnAkp8AfyQ3R5P3lGJFykvxVhXdpK','ROLE_USER','Vutuyet2000 '),(10,NULL,'test1@gmail.com',_binary '','$2a$10$3RWqvgjU6HLWLuOBWnYbV.5.QvRUH6uar3v.6YdKZNWqL/Z7m.bTG','ROLE_USER','testnullavatar1'),(11,'https://res.cloudinary.com/diacstfxz/image/upload/v1631771651/x87q4cwvoblgeuc5pbou.ico','1851050173tuyet@ou.edu.vn',_binary '','$2a$10$GpqQ8.k6D8i08jtlNyxA2um5G0WtuuabEUgi/Pxl5zY0UVhgUNbNi','ROLE_USER','1sdf');
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

-- Dump completed on 2021-09-19 16:29:22
