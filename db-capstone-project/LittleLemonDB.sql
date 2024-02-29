CREATE DATABASE  IF NOT EXISTS `littlelemondb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `littlelemondb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `Booking_ID` int NOT NULL AUTO_INCREMENT,
  `Booking_Date` date NOT NULL,
  `Booking_Slot` time NOT NULL,
  `Table_Number` int NOT NULL,
  `Customer_ID` int NOT NULL,
  PRIMARY KEY (`Booking_ID`),
  KEY `Customer_ID_idx` (`Customer_ID`),
  CONSTRAINT `Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2024-02-28','18:00:00',1,1),(2,'2024-02-28','18:00:00',2,2),(3,'2024-02-28','19:00:00',1,3),(4,'2024-02-28','19:00:00',2,4),(5,'2024-02-28','19:00:00',3,5),(6,'2024-02-29','18:00:00',1,6),(7,'2024-02-29','18:00:00',2,7),(8,'2024-02-29','18:00:00',3,8),(9,'2024-02-29','19:00:00',1,9),(10,'2024-02-29','19:00:00',2,10);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(255) NOT NULL,
  `Contact_Number` varchar(45) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Doe','555-555-1234','JohnDoe@email.com'),(2,'John Smith','555-555-5678','JohnSmith@email.com'),(3,'Jane Doe','555-555-4321','JaneDoe@email.com'),(4,'Jane Smith','555-555-8765','JaneSmith@email.com'),(5,'Brian Kennedy','555-555-9876','BKennedy@email.com'),(6,'Stacy Fox','555-555-0123','Sfox@email.com'),(7,'Adam Goldberg','555-555-0987','AdamGold@email.com'),(8,'Shannon Reid','555-555-0561','ShannonReid@email.com'),(9,'Doug Wight','555-555-0111','DougWight@email.com'),(10,'Nala Albertson','555-555-0222','NAlbertson@email.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `Menu_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Cuisine` varchar(45) NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`Menu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Olives','Starters','Italian',2.50),(2,'Flatbread','Starters','Turkish',3.50),(3,'Minestrone','Starters','Italian',4.00),(4,'Tomato Bread','Starters','Greek',3.00),(5,'Falafel','Starters','Greek',3.50),(6,'Hummus','Starters','Turkish',5.00),(7,'Greek Salad','Main Courses','Greek',10.00),(8,'Bean soup','Main Courses','Turkish',12.00),(9,'Pizza','Main Courses','Italian',15.00),(10,'Greek Yogurt','Desserts','Greek',7.00),(11,'Ice Cream','Desserts','Italian',6.00),(12,'Cheesecake','Desserts','Turkish',4.00),(13,'Athens White Wine','Drinks','Greek',8.00),(14,'Corfu Red Wine','Drinks','Italian',10.00),(15,'Turkish Coffee','Drinks','Turkish',5.00),(16,'Kabasa','Main Courses','Turkish',13.00);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery_status`
--

DROP TABLE IF EXISTS `order_delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_delivery_status` (
  `Delivery_ID` int NOT NULL AUTO_INCREMENT,
  `Delivery_Date` date NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Staff_ID` int NOT NULL,
  `Order_ID` int NOT NULL,
  PRIMARY KEY (`Delivery_ID`),
  KEY `Staff_ID_idx` (`Staff_ID`),
  KEY `Order_ID_idx` (`Order_ID`),
  CONSTRAINT `Order_ID` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Staff_ID` FOREIGN KEY (`Staff_ID`) REFERENCES `staff_information` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery_status`
--

LOCK TABLES `order_delivery_status` WRITE;
/*!40000 ALTER TABLE `order_delivery_status` DISABLE KEYS */;
INSERT INTO `order_delivery_status` VALUES (1,'2024-02-28','Delivered',2,1),(2,'2024-02-28','Delivered',2,3),(3,'2024-02-28','Delivered',2,9),(4,'2024-02-28','Delivered',2,11),(5,'2024-02-28','Delivered',2,13),(6,'2024-02-28','Delivered',2,2),(7,'2024-02-28','Delivered',2,4),(8,'2024-02-28','Preparing',5,10),(9,'2024-02-28','Preparing',5,12),(10,'2024-02-28','Preparing',5,14),(11,'2024-02-28','Delivered',2,5),(12,'2024-02-28','Delivered',2,6),(13,'2024-02-28','Delivered',2,7),(14,'2024-02-28','Preparing',4,15),(15,'2024-02-28','Waiting',4,16),(16,'2024-02-28','Waiting',4,17),(17,'2024-02-28','Preparing',4,18),(18,'2024-02-28','Preparing',4,19),(19,'2024-02-28','Preparing',4,20),(20,'2024-02-28','Delivered',1,8),(21,'2024-02-28','Waiting',5,21),(22,'2024-02-28','Waiting',5,22),(23,'2024-02-29','Delivered',3,23),(24,'2024-02-29','Delivered',3,26),(25,'2024-02-29','Delivered',3,27),(26,'2024-02-29','Delivered',3,29),(27,'2024-02-29','Delivered',3,40),(28,'2024-02-29','Delivered',3,42),(29,'2024-02-29','Delivered',3,24),(30,'2024-02-29','Delivered',5,25),(31,'2024-02-29','Preparing',5,28),(32,'2024-02-29','Preparing',5,30),(33,'2024-02-29','Delivered',3,41),(34,'2024-02-29','Preparing',5,43),(35,'2024-02-29','Preparing',5,44),(36,'2024-02-29','Delivered',3,31),(37,'2024-02-29','Delivered',3,32),(38,'2024-02-29','Delivered',3,33),(39,'2024-02-29','Preparing',4,34),(40,'2024-02-29','Preparing',4,35),(41,'2024-02-29','Waiting',4,36),(42,'2024-02-29','Delivered',3,45),(43,'2024-02-29','Preparing',4,46),(44,'2024-02-29','Preparing',4,47),(45,'2024-02-29','Delivered',1,37),(46,'2024-02-29','Delivered',1,38),(47,'2024-02-29','Waiting',5,39),(48,'2024-02-29','Delivered',1,48);
/*!40000 ALTER TABLE `order_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Date` date NOT NULL,
  `Menu_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Total_Cost` decimal(10,2) NOT NULL,
  `Booking_ID` int NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Menu_ID_idx` (`Menu_ID`),
  KEY `Booking_ID_idx` (`Booking_ID`),
  CONSTRAINT `Booking_ID` FOREIGN KEY (`Booking_ID`) REFERENCES `bookings` (`Booking_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Menu_ID` FOREIGN KEY (`Menu_ID`) REFERENCES `menu` (`Menu_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-02-28',13,4,32.00,1),(2,'2024-02-28',3,2,8.00,1),(3,'2024-02-28',14,2,20.00,2),(4,'2024-02-28',5,1,3.50,2),(5,'2024-02-28',7,2,20.00,1),(6,'2024-02-28',9,1,15.00,1),(7,'2024-02-28',16,2,26.00,2),(8,'2024-02-28',10,1,7.00,2),(9,'2024-02-28',15,2,10.00,3),(10,'2024-02-28',1,1,2.50,3),(11,'2024-02-28',13,4,32.00,4),(12,'2024-02-28',2,2,7.00,4),(13,'2024-02-28',14,3,30.00,5),(14,'2024-02-28',6,2,10.00,5),(15,'2024-02-28',9,1,15.00,3),(16,'2024-02-28',8,2,24.00,4),(17,'2024-02-28',16,2,26.00,4),(18,'2024-02-28',7,1,10.00,5),(19,'2024-02-28',8,1,12.00,5),(20,'2024-02-28',16,1,13.00,5),(21,'2024-02-28',11,1,6.00,3),(22,'2024-02-28',12,2,8.00,5),(23,'2024-02-29',13,6,48.00,6),(24,'2024-02-29',1,1,2.50,6),(25,'2024-02-29',4,2,6.00,6),(26,'2024-02-29',14,2,20.00,7),(27,'2024-02-29',15,1,5.00,7),(28,'2024-02-29',3,2,8.00,7),(29,'2024-02-29',13,2,16.00,8),(30,'2024-02-29',5,1,3.50,8),(31,'2024-02-29',9,1,15.00,6),(32,'2024-02-29',7,2,20.00,6),(33,'2024-02-29',16,2,26.00,6),(34,'2024-02-29',7,2,20.00,7),(35,'2024-02-29',8,1,12.00,7),(36,'2024-02-29',9,1,15.00,8),(37,'2024-02-29',11,2,12.00,6),(38,'2024-02-29',12,4,16.00,6),(39,'2024-02-29',12,1,4.00,8),(40,'2024-02-29',13,2,16.00,9),(41,'2024-02-29',1,1,2.50,9),(42,'2024-02-29',14,4,40.00,10),(43,'2024-02-29',2,2,7.00,10),(44,'2024-02-29',3,2,8.00,10),(45,'2024-02-29',16,2,26.00,9),(46,'2024-02-29',9,1,15.00,10),(47,'2024-02-29',7,2,20.00,10),(48,'2024-02-29',12,1,4.00,9);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_information`
--

DROP TABLE IF EXISTS `staff_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_information` (
  `Staff_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Salary` int NOT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_information`
--

LOCK TABLES `staff_information` WRITE;
/*!40000 ALTER TABLE `staff_information` DISABLE KEYS */;
INSERT INTO `staff_information` VALUES (1,'Cloud Strife','Manager',77777),(2,'Tifa Lockhart','Waitress',35000),(3,'Aerith Gainsburough','Waitress',35000),(4,'Barret Wallace','Head Chef',50000),(5,'Yuffie Kisaragi','Sous Chef',40000);
/*!40000 ALTER TABLE `staff_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 21:22:14
