-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: shoppy_bug
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `products_name` varchar(45) NOT NULL,
  `products_price` varchar(45) NOT NULL,
  `products_type` varchar(45) NOT NULL,
  `products_availability` varchar(45) DEFAULT NULL,
  `products_satus` varchar(45) DEFAULT NULL,
  `products_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Redmi A3 4GB 128GB (8+7GB Ram/128GB Rom)','37,990.00','mobile','100','none','\"https://lk-live-21.slatic.net/kf/Sf4e22ce4475c4c329dbc9858a1b34672V.jpg_750x750.jpg_.webp\"'),(5,'Sony FX3 Full-Frame Cinema Camera','1150000.00','camera','50','new','\"https://s3-ap-southeast-1.amazonaws.com/media.cameralk.com/15019/conversions/fx3-thumb.jpg\"'),(6,'Nikon Z 7II Mirrorless Digital Camera','749000.00','camera','50','new','\"https://s3-ap-southeast-1.amazonaws.com/media.cameralk.com/10615/Z7II-Body-Only.jpg\"'),(7,'DOOGEE T10 (8+7GB Ram/128GB Rom)','64,990.00','mobile','100','new','\"https://starmobile.lk/wp-content/uploads/2023/02/12.jpg\"'),(8,'Samsung Galaxy Tab S6 Lite SM-P619 64GB Grey','150,000.00','tab','100','new','\"https://www.stockmustgo.co.uk/cdn/shop/products/None_1e1ae1a8-846c-425d-9231-da00855cc787.jpg?v=1698860592&width=1000\"'),(9,'CHUWI Gemibook Pro 14inch Intel N5100','150,000.00','tab','100','new','\"https://cdn11.bigcommerce.com/s-o9pppsyjzh/images/stencil/640w/products/450581/12166886/N5265727__1__99061.1690006358.jpg?c=1\"');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 19:16:54
