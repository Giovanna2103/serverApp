-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bancofinanca
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
-- Table structure for table `tbcarteira`
--

DROP TABLE IF EXISTS `tbcarteira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcarteira` (
  `idCarteira` int NOT NULL AUTO_INCREMENT,
  `SaldoFinal` decimal(10,2) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idSalario` int DEFAULT NULL,
  `idDespesas` int DEFAULT NULL,
  `dataHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCarteira`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcarteira`
--

LOCK TABLES `tbcarteira` WRITE;
/*!40000 ALTER TABLE `tbcarteira` DISABLE KEYS */;
INSERT INTO `tbcarteira` VALUES (3,1800.85,1,2,0,'2021-06-05 14:16:09'),(30,955.00,1,17,2,'2021-06-15 22:58:19'),(31,900.00,1,2,31,'2021-06-15 23:41:53'),(32,800.00,1,2,32,'2021-06-15 23:47:52'),(33,700.00,1,2,33,'2021-06-15 23:49:23'),(34,636.92,1,2,34,'2021-06-15 23:49:45');
/*!40000 ALTER TABLE `tbcarteira` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 21:09:51
