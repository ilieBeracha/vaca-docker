-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: vacations
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `userId` int DEFAULT NULL,
  `vacationId` int DEFAULT NULL,
  KEY `user_id_idx` (`userId`),
  KEY `vacation_id_idx` (`vacationId`),
  CONSTRAINT `user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vacation_id` FOREIGN KEY (`vacationId`) REFERENCES `vacations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (46,52),(46,48),(46,50),(42,53),(42,44),(42,49),(42,55),(42,43),(42,45),(42,56),(42,51),(42,70),(42,75),(42,71),(46,73),(46,71),(46,76),(46,72),(46,70),(42,50),(42,72),(42,47),(42,52);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT 'USER',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (42,'ilie','beracha','ilieberacha123@gmail.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','USER'),(45,'admin','admin','admin@admin.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','ADMIN'),(46,'sapir','moskovich','sapirmo2000@gmail.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `startingDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `price` int DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (43,'Tel Aviv','Discover the beauty and history of Tel Aviv with a trip package that includes everything you need for an unforgettable vacation. This bustling city, located on the Mediterranean coast of Israel.','2023-02-11','2023-02-11',2000,'5bho91754ldsocmqr.jpg'),(44,'Berlin','Discover the history and creativity of Berlin with a holiday package that includes everything you need for a memorable trip. This vibrant city, located in the heart of Germany.','2023-02-15','2023-02-23',3400,'5bho91754ldsodtuj.jpg'),(45,'Val Thorens','Escape to the snow-capped peaks of Val Thorens with a holiday package that includes all the essentials for a dream ski vacation. This popular ski resort, located in the French Alps, is known for its world-class slopes.','2023-02-23','2023-02-28',1200,'5bho91754ldsoed77.jpg'),(46,'Barcelona','Discover the art, architecture, and culture of Barcelona with a travel package that includes all you need for an unforgettable vacation. This vibrant city, located on the Mediterranean coast of Spain.','2023-02-09','2023-02-17',2400,'5bho91754ldsof3e4.jpg'),(47,'Milano','Uncover the fashion, food, and design of Milan with a holiday package that includes all the must-haves for a memorable trip. This stylish city, located in the Lombardy region of Italy, is a hub of culture and sophistication.','2023-02-08','2023-02-11',1400,'1pibclkcle4705qu.png'),(48,'Dubai','Experience the luxury and wonder of Dubai with a vacation package that includes everything for a once-in-a-lifetime trip. This futuristic city, located in the United Arab Emirates, is a blend of modern marvels and rich tradition.','2023-02-08','2023-02-11',1400,'5bho91754ldsog8c6.jpg'),(49,'Phuket','Discover the beauty and relaxation of Phuket with a holiday package that includes all the must-haves for a memorable trip. This tropical island, located off the coast of Thailand, is known for its stunning beaches, lush jungles, and vibrant culture. ','2023-02-10','2023-02-11',1450,'5bho9ls0ldxgtwfj.jpg'),(50,'Moscow','Discover the history and grandeur of Moscow with a travel package that includes everything for an unforgettable vacation. This majestic city, located in the heart of Russia, is a testament to the country\'s rich cultural heritage and political power.','2023-02-08','2023-02-11',1450,'1pibclkcle472mxq.jpg'),(51,'Maldives','Escape to the tropical paradise of the Maldives with a holiday package that includes all the essentials for a dream vacation. This breathtaking chain of islands, located in the Indian Ocean.','2023-02-08','2023-02-11',1400,'1pibckksle5neb99.jpg'),(52,'NYC','Experience the energy and diversity of New York City with a travel package that includes everything you need for an unforgettable vacation. This bustling metropolis, located in the heart of the United States.','2023-02-08','2023-02-11',1400,'5bho91754ldsohdt0.jpeg'),(53,'Los Angeles','Explore the glamour and diversity of Los Angeles with a holiday package that includes all the essentials for a dream getaway. This city, located in sunny California, is a hub of entertainment and culture.','2023-02-08','2023-02-11',2300,'5bho9wtoldsos4ze.jpg'),(54,'Singapore','Explore the modern marvels and cultural diversity of Singapore with a travel package that includes all the essentials for an unforgettable vacation. This island city-state, located in Southeast Asia.','2023-02-14','2023-02-18',1300,'5bho9sfgldsq2zb4.jpg'),(55,'Madrid','Discover the art, culture, and flavor of Madrid with a travel package that includes everything you need for an unforgettable vacation. This vibrant capital city, located in the heart of Spain.','2023-03-02','2023-03-14',4500,'5bho9sfgldsq49wv.jpg'),(56,'Venice','Explore the romance and beauty of Venice with a holiday package that includes all the essentials for a dream vacation. This iconic city, located in northeastern Italy, is known for its winding canals and stunning architecture.','2023-03-14','2023-03-18',800,'5bho9sfgldsq4s5n.jpg'),(70,'Rome','Discover the history and beauty of Rome with a travel package that includes everything you need for an unforgettable vacation. This iconic city, located in the heart of Italy, is a treasure trove of ancient ruins.','2023-02-13','2023-02-24',3400,'5bho91vm0le0h3eyz.jpg'),(71,'Bali','Escape to the tropical paradise of Bali with a holiday package that includes all the must-haves for a memorable trip. This Indonesian island, located in the westernmost end of the Lesser Sunda Islands.','2023-02-17','2023-02-22',2800,'5bho91vm0le0h517o.jpg'),(72,'Sydney','Explore the beauty and excitement of Sydney with a holiday package that includes everything you need for a dream vacation. This iconic city, located on the southeast coast of Australia, is known for its stunning harbor, iconic.','2023-02-24','2023-03-02',5000,'5bho91vm0le0h74uc.jpg'),(73,'Rio de janeiro','Discover the beauty and energy of Rio de Janeiro with a travel package that includes all the essentials for an unforgettable vacation. This vibrant city, located on the coast of Brazil.','2023-02-11','2023-03-11',9000,'5bho91vm0le0h8x55.jpg'),(74,'Cape town','Explore the beauty and diversity of Cape Town with a travel package that includes everything you need for an unforgettable vacation. This stunning city, located on the southwestern coast of South Africa.','2023-03-03','2023-03-20',4500,'5bho91vm0le0hbelu.jpg'),(75,'Tokyo',' Discover the energy and culture of Tokyo with a holiday package that includes all the essentials for a dream vacation. This bustling city, located on the eastern coast of Japan.','2023-02-13','2023-02-20',6000,'5bho91vm0le0hcq8i.jpg'),(76,'Amsterdam','Explore the history and charm of Amsterdam with a travel package that includes everything you need for an unforgettable vacation. This iconic city, located in the heart of the Netherlands.','2023-02-19','2023-02-26',5700,'5bho91vm0le0he21d.jpg');
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15 16:44:30
