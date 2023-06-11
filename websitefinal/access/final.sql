CREATE DATABASE  IF NOT EXISTS `final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `messagesID` int unsigned NOT NULL AUTO_INCREMENT,
  `msg_name` varchar(45) NOT NULL,
  `msg_score` varchar(45) NOT NULL,
  `msg_content` text NOT NULL,
  `prID` varchar(45) NOT NULL,
  PRIMARY KEY (`messagesID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'王曉明','★★★★','好好看!!','手做拼接洋裝'),(2,'郭老師','★★★★★','我喜歡這個項鍊~','字母項鍊'),(3,'花花','★★★★★','123','vintage 相機');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table 'messages_to_us'
--

DROP TABLE IF EXISTS `messages_to_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages_to_us` (
  `messagesID` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `contents` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`messagesID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_to_us`
--

LOCK TABLES `messages_to_us` WRITE;
/*!40000 ALTER TABLE `messages_to_us` DISABLE KEYS */;
INSERT INTO `messages_to_us` VALUES (1,'789','789','789','789','78978978978798','2023-01-03'),(2,'789','789','789','789','777','2023-01-05'),(5,'5825','47','258','789','2425835824','2023-01-05'),(6,'79','7','8','789','446456546','2023-01-05'),(8,'78','7','9','789','4564456456546456564456','2023-01-06'),(9,'林小花','080','080','789','123456','2023-01-06');
/*!40000 ALTER TABLE `messages_to_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int unsigned NOT NULL AUTO_INCREMENT,
  `memberID` varchar(45) NOT NULL,
  `products` varchar(45) NOT NULL,
  `products_amount` varchar(45) NOT NULL,
  `pay_way` varchar(45) NOT NULL,
  `receiver_name` varchar(45) NOT NULL,
  `receiver_address` varchar(45) NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (17,'17','13','1','LINE PAY','456','7894465456'),(18,'17','10','67','LINE PAY','789','7894465456'),(19,'17','13','1','LINE PAY','789','7894465456'),(20,'17','10','67','LINE PAY','789','7894465456'),(21,'17','7','1','LINE PAY','97','97'),(22,'17','2','1','信用卡','林小花','789'),(23,'17','7','1','信用卡','林小花','789'),(24,'17','8','2','信用卡','林小花','789'),(25,'17','9','1','信用卡','林小花','789'),(26,'25','15','7','信用卡','林小花','空'),(27,'17','14','19','信用卡','陳大樹','465'),(28,'17','10','49','信用卡','陳大樹','465'),(29,'17','7','3','信用卡','陳大樹','465'),(30,'17','2','9','LINE PAY','阿狗','宅配'),(31,'17','2','9','LINE PAY','阿狗','宅配'),(32,'17','9','1','信用卡','456','789');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `prID` int unsigned NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(45) NOT NULL,
  `pr_path` varchar(45) NOT NULL,
  `pr_file` varchar(45) NOT NULL,
  `pr_type` varchar(45) NOT NULL,
  `pr_price` varchar(45) NOT NULL,
  `pr_storage` varchar(45) NOT NULL,
  `pr_sold` varchar(45) NOT NULL,
  PRIMARY KEY (`prID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'碎花上衣','image','image/top.jpg','服飾','150','10','1000'),(2,'手做拼接洋裝','image','image/dress.jpg','服飾','350','10','0'),(3,'燈心絨外套','image','image/coat.jpg','服飾','500','10','0'),(4,'字母項鍊','image','image/necklace.jpg','配飾','500','10','0'),(5,'鴨舌帽','image','image/cap.jpg','配飾','700','10','0'),(6,'衝浪手環','image','image/wristband.jpg','配飾','100','10','0'),(7,'經典背包粉紅色','image','image/bag.jpg','配飾','289','10','10'),(8,'時尚太陽鏡','image','image/sunglass.jpg','配飾','198','10','0'),(9,'vintage 相機','image','image/camera.jpg','3C','499','10','1');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_history`
--

DROP TABLE IF EXISTS `purchase_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_history` (
  `purchase_historyID` int unsigned NOT NULL AUTO_INCREMENT,
  `memberID` varchar(45) NOT NULL,
  `productID` varchar(45) NOT NULL,
  `product_amount` varchar(45) NOT NULL,
  `pay_way` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`purchase_historyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_history`
--

LOCK TABLES `purchase_history` WRITE;
/*!40000 ALTER TABLE `purchase_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_idnumber` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `cellphone_number` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`user_idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

#購物車資料表
DROP TABLE IF EXISTS CART;
CREATE TABLE CART(
	ClientID int(11) NOT NULL ,
    ProductID int(11) NOT NULL ,
    Quantity VARCHAR(10) NOT NULL
);
INSERT INTO CART VALUE(1,1,"2");
INSERT INTO CART VALUE(1,2,"1");
INSERT INTO CART VALUE(1,3,"2");
INSERT INTO CART VALUE(2,4,"3");
--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','admin','admin@gmail.com','admin','admin'),(17,'787','789','789','789@gmail.com','789','user'),(19,'456','456','456','456456@gmail.com','456','user'),(20,'789789','789789','789789','789789@gmail.com','789789','user'),(21,'7897897789789','7897897789789','7897897789789','7897897789789@gmail.com','7897897789789','user'),(22,'123123','123123','123123','123123@gmail.com','123123','user'),(23,'456456','456456','456456','456456@gmail.com','456456','user'),(24,'77','77','77','77@gmail.com','77','user'),(25,'test','0901300702','test','test@gmail.com','test','user');
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

-- Dump completed on 2023-06-07 23:43:24
