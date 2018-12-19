-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: librarydb
-- ------------------------------------------------------
-- Server version	5.5.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL,
  `Autorcol` varchar(256) NOT NULL,
  KEY `id_idx` (`idautor`),
  CONSTRAINT `id` FOREIGN KEY (`idautor`) REFERENCES `books` (`idBooks`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Autor1'),(2,'Autor2'),(3,'Autor3');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbk`
--

DROP TABLE IF EXISTS `bbk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbk` (
  `idbbk` int(11) NOT NULL AUTO_INCREMENT,
  `bbkcol` varchar(256) NOT NULL,
  PRIMARY KEY (`idbbk`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbk`
--

LOCK TABLES `bbk` WRITE;
/*!40000 ALTER TABLE `bbk` DISABLE KEYS */;
INSERT INTO `bbk` VALUES (1,'bbk1'),(2,'bbk2'),(3,'bbk3');
/*!40000 ALTER TABLE `bbk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `idBooks` int(11) NOT NULL AUTO_INCREMENT,
  `Autor` int(11) DEFAULT NULL,
  `Name_book` int(11) DEFAULT NULL,
  `Udc` int(11) DEFAULT NULL,
  `Bbk` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBooks`),
  KEY `index2` (`Autor`),
  KEY `index3` (`Name_book`),
  KEY `index4` (`Udc`),
  KEY `index5` (`Bbk`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `name_book`
--

DROP TABLE IF EXISTS `name_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name_book` (
  `idname_book` int(11) NOT NULL AUTO_INCREMENT,
  `name_bookcol` varchar(256) NOT NULL,
  PRIMARY KEY (`idname_book`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name_book`
--

LOCK TABLES `name_book` WRITE;
/*!40000 ALTER TABLE `name_book` DISABLE KEYS */;
INSERT INTO `name_book` VALUES (1,'name_book1'),(2,'name_book2'),(3,'name_book3');
/*!40000 ALTER TABLE `name_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udc`
--

DROP TABLE IF EXISTS `udc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `udc` (
  `idudc` int(11) NOT NULL AUTO_INCREMENT,
  `udccol` varchar(256) NOT NULL,
  PRIMARY KEY (`idudc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udc`
--

LOCK TABLES `udc` WRITE;
/*!40000 ALTER TABLE `udc` DISABLE KEYS */;
INSERT INTO `udc` VALUES (1,'udc1'),(2,'udc2'),(3,'udc3');
/*!40000 ALTER TABLE `udc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-11  1:58:57
