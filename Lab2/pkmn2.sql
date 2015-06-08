-- MySQL dump 10.13  Distrib 5.6.25, for Win64 (x86_64)
--
-- Host: localhost    Database: Pokemon
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Current Database: `Pokemon`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Pokemon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `Pokemon`;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `pkmnID` int(11) NOT NULL AUTO_INCREMENT,
  `pkmnName` varchar(25) DEFAULT NULL,
  `pkmnDescription` varchar(255) DEFAULT NULL,
  `type1ID` int(11) DEFAULT NULL,
  `type2ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkmnID`),
  KEY `type1ID` (`type1ID`),
  KEY `type2ID` (`type2ID`),
  CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`type1ID`) REFERENCES `types` (`type1ID`),
  CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`type2ID`) REFERENCES `types` (`type1ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','Seed',5,8),(2,'Ivysaur','Seed',5,8),(3,'Venasaur','Seed',5,8),(4,'Charmander','Lizard',2,19),(5,'Charmeleon','Flame',2,19),(6,'Charizard','Flame',2,10),(7,'Squirtle','Tiny Turtle',3,19),(8,'Wartortle','Turtle',3,19),(9,'Blastoise','Shellfish',3,19);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `type1ID` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`type1ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Normal'),(2,'Fire'),(3,'Water'),(4,'Electric'),(5,'Grass'),(6,'Ice'),(7,'Fighting'),(8,'Poison'),(9,'Ground'),(10,'Flying'),(11,'Psychic'),(12,'Bug'),(13,'Rock'),(14,'Ghost'),(15,'Dragon'),(16,'Dark'),(17,'Steel'),(18,'Fairy'),(19,'None');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-07 22:50:50
