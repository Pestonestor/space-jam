-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spacejam
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `origen` varchar(30) DEFAULT NULL,
  `imagen` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'adfhg',34,'sdgh','img/5 eyes red Cartoon cute monsters set on white.jpg'),(2,'srj',3526,'dsgh','img/5 eyes. Cartoon cute monsters set on white.jpg'),(3,'srj',587,'fgrsj','img/angry green Cartoon cute monsters set on white.jpg'),(4,'srj',679,'gjkl','img/pensive-blonde-woman-with-beautiful-eyes-posing-on-dark-wall.jpg'),(5,'utkrs',546,'gkj','img/blue bat. Cartoon cute monsters set on white.jpg'),(6,'fdhj',853,'fsgj','img/blue hands up. Cartoon cute monsters set on white.jpg'),(7,'sfh',9,'hda','img/crazy red Cartoon cute monsters set on white.jpg'),(8,'stkhy',69,'kh','img/egg like pink. Cartoon cute monsters set on white.jpg'),(9,',k',537,'ad','img/close-up-portrait-of-young-man-isolated-on-black-studio-background-photoshot-of-real-emotions-of-male-model-dreaming-and-smiling-hopeful-and-happy-facial-expression-human-emotions-concept.jpg'),(10,'sr',3589,'gjfrs','img/shirtless-handsome-male-with-perfect-muscular-body-leaning-on-wall-in-the-studio-looking-at-camera.jpg'),(11,',mtu',3597,'gdh','img/fire hair violet Cartoon cute monsters set on white.jpg'),(12,'fgj',653,'sf','img/green furry Cartoon cute monsters set on white.jpg'),(13,'dsaf',54,'qwe','img/holiday-concept-young-beard-man-in-sweater-giving-thumb-up-to-camera.jpg'),(14,'uktgj',563,'tw','img/indofeb133 pink 3 leg.jpg'),(15,'dgtjnfxgy',365,'ery','img/indofeb133 pink stumpy.jpg'),(16,'kujdj',356,'tey','img/indofeb133 sad bluey.jpg'),(17,'hda',365,'yit','img/thoughtful-bearded-hipster-male-in-violet-jacket-on-grey-vignette-background.jpg'),(18,'gds',536,'kghd','img/indofeb133 shorty violet.jpg'),(19,'WGR',365,'ghk','img/indofeb133 smiley grey.jpg'),(20,'HFG',365,'hrtg','img/indofeb133 yellowie.jpg'),(21,'HA',536,'lk','img/blue lady.jpg'),(22,'WRG',356,'lk','img/jolly giant Cartoon cute monsters set on white.jpg'),(23,'WRG',356,'luoj','img/multiple Cartoon cute monsters set on white.jpg'),(24,'jn',67,'hda','img/orange bear Cartoon cute monsters set on white.jpg'),(25,'h',547,'gdfh','img/orange dog Cartoon cute monsters set on white.jpg'),(26,'hb',74,'gsvfd','img/martian 2109.w023.n001.1030B.p1.1030.jpg'),(27,'gn',457754,'bn','img/pleasant-looking-young-cheerful-dark-haired-curly-lady-throwing-back-her-head-while-laughing-happily-with-closed-eyes-standing-over-blue-wall-with-hands-down.jpg'),(28,'ry',457,'fg','img/tall violet Cartoon cute monsters set on white.jpg'),(29,'jryy',45,'fs','img/space kiddo 2109.w023.n001.1030B.p1.1030.jpg'),(30,'ytsjb',5,'j','img/tongue eye blue Cartoon cute monsters set on white.jpg'),(31,'b',34,'j','img/two face violet. Cartoon cute monsters set on white.jpg');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (2,'Costillitas de Cerdo a la Saturniana',80,45),(4,'Asado de Tirakkk II',130,4),(5,'Fondue de Que Se Yo',60,50),(6,'Fideos Verde Marciano',45,100),(7,'Milanesa Naplutoniana',55,85);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12 21:05:31
