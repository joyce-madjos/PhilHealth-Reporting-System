-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: philhealth
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
-- Table structure for table `acknowledgement_receipt`
--

DROP TABLE IF EXISTS `acknowledgement_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acknowledgement_receipt` (
  `PEN` varchar(15) NOT NULL,
  `Application_Period` varchar(15) NOT NULL,
  `Remitted_Amount` int NOT NULL,
  `Transaction_Date` varchar(25) NOT NULL,
  `No_of_Employee` int NOT NULL,
  PRIMARY KEY (`PEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acknowledgement_receipt`
--

LOCK TABLES `acknowledgement_receipt` WRITE;
/*!40000 ALTER TABLE `acknowledgement_receipt` DISABLE KEYS */;
INSERT INTO `acknowledgement_receipt` VALUES ('140000038093','July 2019',376,'July 10, 2019',1),('345503897461','July 2019',385,'July 10, 2019',1),('512090565132','July 2019',550,'July 10, 2019',1);
/*!40000 ALTER TABLE `acknowledgement_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `member_category` varchar(25) DEFAULT NULL,
  `sub_category` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_record`
--

DROP TABLE IF EXISTS `data_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_record` (
  `PIN` varchar(15) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `TIN` int NOT NULL,
  PRIMARY KEY (`PIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_record`
--

LOCK TABLES `data_record` WRITE;
/*!40000 ALTER TABLE `data_record` DISABLE KEYS */;
INSERT INTO `data_record` VALUES ('10253851460','Marcelo, Patric John Castillo',388771123),('103928238900','Velasco, Melchor',292810021),('105065262272','Roully, Jullian Arcenal',238189201),('205090565134','Punan, Azucena Millado',290881000),('402503897463','Buscano, Arnold Martin',212066610);
/*!40000 ALTER TABLE `data_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `PEN` varchar(12) NOT NULL,
  `Empy_Name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`PEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES ('140000038093','Philippine Health Insurance Corporation-CALABARZON'),('345503897461','Philippine Health Insurance Corporation-NCR'),('512090565132','Philippine Health Insurance Corporation-CAR');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer_category`
--

DROP TABLE IF EXISTS `employer_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer_category` (
  `Employer_Type` varchar(45) DEFAULT NULL,
  `Employer_Sub_Type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer_category`
--

LOCK TABLES `employer_category` WRITE;
/*!40000 ALTER TABLE `employer_category` DISABLE KEYS */;
INSERT INTO `employer_category` VALUES ('GOVERNMENT','GOVERNMENT CORPORATION'),('GOVERNMENT','GOVERNMENT CORPORATION'),('GOVERNMENT','GOVERNMENT CORPORATION');
/*!40000 ALTER TABLE `employer_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer_employees`
--

DROP TABLE IF EXISTS `employer_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer_employees` (
  `PEN` varchar(12) DEFAULT NULL,
  `Empe_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer_employees`
--

LOCK TABLES `employer_employees` WRITE;
/*!40000 ALTER TABLE `employer_employees` DISABLE KEYS */;
INSERT INTO `employer_employees` VALUES ('512090565132','Punan, Azucena Millado'),('512090565132','Buenaventura, Valerie Ruam'),('345503897461','Campos, Lorraine Bungay'),('345503897461','Buscano, Arnold Martin'),('140000038093','Roully, Jullian Arcenal');
/*!40000 ALTER TABLE `employer_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer_information`
--

DROP TABLE IF EXISTS `employer_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer_information` (
  `Empy_Name` varchar(45) DEFAULT NULL,
  `Name_of_Head` varchar(45) DEFAULT NULL,
  `business_address` varchar(100) DEFAULT NULL,
  `contact_number` int DEFAULT NULL,
  `Empy_Email_Address` varchar(45) DEFAULT NULL,
  `Employer_Type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer_information`
--

LOCK TABLES `employer_information` WRITE;
/*!40000 ALTER TABLE `employer_information` DISABLE KEYS */;
INSERT INTO `employer_information` VALUES ('Philippine Health Insurance-CAR','Abad, Guia Pamela Valdez','5F-SSS BLDG HARRISON-CLAUDIO CARANTERS BAGUIO CITY BENGUET',4448361,'philhealthCAR@gmail.com','GOVERNMENT'),('Philippine Health Insurance-NCR','Roman, Anita Marie','4F-SSS BLDG HARRISON-CLAUDIO CARANTERS QUEZON CITY METRO MANILA',4448361,'philhealthNCR@gmail.com','GOVERNMENT'),('Philippine Health Insurance-CALABARZON','Ramon, Leo Douglas Jr.','3F-SSS BLDG HARRISON-CLAUDIO CARANTERS SAN MATEO RIZAL',4448361,'philhealthCALABARZON@gmail.com','GOVERNMENT');
/*!40000 ALTER TABLE `employer_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_information`
--

DROP TABLE IF EXISTS `member_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_information` (
  `Name` varchar(30) NOT NULL,
  `Foreign_Address` varchar(100) DEFAULT NULL,
  `Sex` varchar(25) NOT NULL,
  `Date_of_Birth` varchar(12) NOT NULL,
  `Place_of_Birth` varchar(25) NOT NULL,
  `Civil_Status` varchar(12) NOT NULL,
  `Member_Category` varchar(25) NOT NULL,
  `nhts_period` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_information`
--

LOCK TABLES `member_information` WRITE;
/*!40000 ALTER TABLE `member_information` DISABLE KEYS */;
INSERT INTO `member_information` VALUES ('Buscano, Arnold Martin','N/A','Male','01/16/1990','Quezon CIty','Married','Sponsored','1/1/2019 - 12/31/2019'),('Marcelo, Patric John Castillo','N/A','Male','01/16/1990','Las Pinas City','Single','Sponsored','1/1/2019 - 12/31/2019'),('Punan, Azucena Millado','N/A','Female','01/16/1990','Camarines Sur','Single','Sponsored','1/1/2019 - 12/31/2019'),('Roully, Jullian Arcenal','N/A','Female','01/16/1990','Caloocan City','Single','Sponsored','1/1/2019 - 12/31/2019'),('Velasco, Melchor','N/A','Male','01/16/1990','Cagayan De Oro City','Single','Sponsored','1/1/2019 - 12/31/2019');
/*!40000 ALTER TABLE `member_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remittance_report`
--

DROP TABLE IF EXISTS `remittance_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remittance_report` (
  `PIN` varchar(15) NOT NULL,
  `personal_share` int NOT NULL,
  `employer_share` int NOT NULL,
  `grand_total_contribution` int NOT NULL,
  `PEN` varchar(15) NOT NULL,
  PRIMARY KEY (`PIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remittance_report`
--

LOCK TABLES `remittance_report` WRITE;
/*!40000 ALTER TABLE `remittance_report` DISABLE KEYS */;
INSERT INTO `remittance_report` VALUES ('105065262272',188,188,376,'140000038093'),('205090565134',275,275,550,'512090565132'),('402503897463',193,193,385,'345503897461');
/*!40000 ALTER TABLE `remittance_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-11 22:00:02
