-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: fooddelivery
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `catering`
--

DROP TABLE IF EXISTS `catering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catering` (
  `cateringID` varchar(10) NOT NULL,
  `cateringName` varchar(20) DEFAULT NULL,
  `details` varchar(15) DEFAULT NULL,
  `quantity` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cateringID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catering`
--

LOCK TABLES `catering` WRITE;
/*!40000 ALTER TABLE `catering` DISABLE KEYS */;
INSERT INTO `catering` VALUES ('C3002','noodles','veg','300 '),('C3003','Rolls','Chicken','200'),('C3004','noodles','veg','300 '),('C3005','noodles','veg','300 ');
/*!40000 ALTER TABLE `catering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fastfood`
--

DROP TABLE IF EXISTS `fastfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fastfood` (
  `fastfoodID` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `price` varchar(12) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fastfoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fastfood`
--

LOCK TABLES `fastfood` WRITE;
/*!40000 ALTER TABLE `fastfood` DISABLE KEYS */;
INSERT INTO `fastfood` VALUES ('FF001','Chicken Pizza','','Rs.200.00','Non-Veg'),('FF002','dfv','','','Veg'),('FF003','Chicken Pizza','img/Cheese Burger.jpg','Rs.200.00','Non-Veg'),('FF004','Chicken Pizza','img/Cheese Burger.jpg','Rs.200.00','Non-Veg');
/*!40000 ALTER TABLE `fastfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodcart`
--

DROP TABLE IF EXISTS `foodcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodcart` (
  `fastfoodID` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `price` varchar(12) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`fastfoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodcart`
--

LOCK TABLES `foodcart` WRITE;
/*!40000 ALTER TABLE `foodcart` DISABLE KEYS */;
INSERT INTO `foodcart` VALUES ('FF001','Chicken Pizza','D:/SLIIT/Y2S2/ITP/fastfood/FastFood/WebContent/img/ffwallpaper.jpg','Rs.200.00',1);
/*!40000 ALTER TABLE `foodcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodorder`
--

DROP TABLE IF EXISTS `foodorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodorder` (
  `orderId` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contactNo` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodorder`
--

LOCK TABLES `foodorder` WRITE;
/*!40000 ALTER TABLE `foodorder` DISABLE KEYS */;
INSERT INTO `foodorder` VALUES ('O01','','','');
/*!40000 ALTER TABLE `foodorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture`
--

DROP TABLE IF EXISTS `furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture` (
  `furnitureID` varchar(10) NOT NULL,
  `furnitureName` varchar(20) DEFAULT NULL,
  `details` varchar(15) DEFAULT NULL,
  `quantity` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`furnitureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture`
--

LOCK TABLES `furniture` WRITE;
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` VALUES ('F3003','Table','Red','300'),('F3004','Bed','Double','200'),('F3005','chair','white','300'),('F3006','chair','white','300');
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ingredientID` varchar(10) NOT NULL,
  `ingredientName` varchar(20) DEFAULT NULL,
  `quantity` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ingredientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES ('I3003','suger','300 Kg'),('I3004','Solt','20 pack'),('I3005','Ice creem','20 L'),('I3006','suger','300 Kg');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poolbooking`
--

DROP TABLE IF EXISTS `poolbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poolbooking` (
  `poolBookingId` varchar(10) NOT NULL,
  `cusname` varchar(15) DEFAULT NULL,
  `contactNumber` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`poolBookingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poolbooking`
--

LOCK TABLES `poolbooking` WRITE;
/*!40000 ALTER TABLE `poolbooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `poolbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicebooking`
--

DROP TABLE IF EXISTS `servicebooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicebooking` (
  `serviceBookingID` varchar(10) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `contactNumber` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`serviceBookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicebooking`
--

LOCK TABLES `servicebooking` WRITE;
/*!40000 ALTER TABLE `servicebooking` DISABLE KEYS */;
INSERT INTO `servicebooking` VALUES ('SB3006','Jayamini ','0812415021','2020-10-24','2.00pm'),('SB3007','Sachintha','0812415921','2020.08.02','1.00pm');
/*!40000 ALTER TABLE `servicebooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spa`
--

DROP TABLE IF EXISTS `spa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spa` (
  `serviceID` varchar(10) NOT NULL,
  `serviceName` varchar(20) DEFAULT NULL,
  `discription` varchar(15) DEFAULT NULL,
  `servicePrice` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spa`
--

LOCK TABLES `spa` WRITE;
/*!40000 ALTER TABLE `spa` DISABLE KEYS */;
INSERT INTO `spa` VALUES ('S3004','Head Massage','Relaxing','Rs.200.00'),('S3005','Head Massage','Relaxing','Rs.200.00'),('S3006','Full Massage','Relaxing','Rs.800.00'),('S3007','Head Massage','Relaxing','Rs.200.00');
/*!40000 ALTER TABLE `spa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-23 22:55:18
