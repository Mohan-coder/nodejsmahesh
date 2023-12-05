-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: employeeadmin
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `postal_code` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `state` varchar(50) NOT NULL,
  `date_of_joining` varchar(45) NOT NULL,
  `pan_number` varchar(45) NOT NULL,
  `adhar_number` varchar(45) NOT NULL,
  `marital_status` varchar(45) NOT NULL,
  `spouse_name` varchar(45) DEFAULT NULL,
  `marriage_date` varchar(45) DEFAULT NULL,
  `gender_status` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `bank_holder_name` varchar(45) NOT NULL,
  `bank_account_number` varchar(45) NOT NULL,
  `IFSC_code` varchar(45) NOT NULL,
  `education_docs` varchar(500) DEFAULT NULL,
  `adhar_Link` varchar(500) DEFAULT NULL,
  `pan_Link` varchar(500) DEFAULT NULL,
  `profile_img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `last_name_UNIQUE` (`last_name`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `pan_number_UNIQUE` (`pan_number`),
  UNIQUE KEY `adhar_number_UNIQUE` (`adhar_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'mahesh','mallareddy ','abc@gmailo.com','012355684','sadfcsdc','sadfc','sadfc','sadfcsc','sadfc','sadfcsx','sadfc','sadfc','sadfc','','','sadfc','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','https://unsplash.com/photos/shallow-focus-photography-of-leopard-xtFRl1ZjKto','https://unsplash.com/photos/shallow-focus-photography-of-leopard-xtFRl1ZjKto','https://unsplash.com/photos/shallow-focus-photography-of-leopard-xtFRl1ZjKto','https://unsplash.com/photos/shallow-focus-photography-of-leopard-xtFRl1ZjKto'),(3,'mahesh','mallareddy m','abcd@gmailo.com','012355684','sadfcsdc','sadfc','sadfc','sadfcsc','sadfc','sadfcsx','sadfc g','sadfc next=>','sadfc','','','sadfc','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','sadfcdsfgvsd fd','abcd@gmail.com','asdasd','mahesh','mallareddy'),(4,'mahesh','mallareddy','asdcfdasfc@gmail.com','9874563210','H-no:- 10-e20 ,street 10, distct','hyderabad','500055','india','Andhra Pradesh','2023-12-08','PPPMM9423L','541451874541','single','','','male','2023-11-30','23','BANK NAME','BANK HOLDER NAME','1236547890','ICIC0006650','abcd@gmail.com','https://unsplash','https://unsplash.c','mallareddy');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05  7:54:29
