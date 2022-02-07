-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: apisequelize
-- ------------------------------------------------------
-- Server version	5.7.18

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

-- to create a new database
DROP DATABASE IF EXISTS apisequelize;
CREATE DATABASE apisequelize;
use apisequelize;

-- Table structure for table `juegos`

DROP TABLE IF EXISTS vehiculo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE vehiculo (
    bastidor MEDIUMINT   not null AUTO_INCREMENT primary key,    
    modelo   varchar(25) not null,
    anio     varchar(25) not null,
    color    varchar(25) not null

)ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- ----------------------------------------------------------------
insert into vehiculo( modelo, anio, color ) values
("chevrolet camaro", 1999, "rojo"),
("ford torino",      1982, "rojo coral"),
("ford mustang",     2009, "rojo"),
("ford fiesta",      2005, "gris marengo"),
("ford fiesta",      2006, "blanco nacar"),
("audi a7",          2005, "verde pistacho"),
("audi a7",          2015, "blanco");

insert into vehiculo( bastidor, modelo, anio, color ) values
(666,  "lamborghini diablo", 2005, "rojo rubi"),
(2357, "ford focus",         2005, "azul le mans");



-- Table structure for table `participations`
--

DROP TABLE IF EXISTS `participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jugador_id` int(11) DEFAULT NULL,
  `juego_id` int(11) DEFAULT NULL,
  `status` char(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jugador_id` (`jugador_id`),
  KEY `juego_id` (`juego_id`),
  CONSTRAINT `participations_ibfk_1` FOREIGN KEY (`jugador_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `participations_ibfk_2` FOREIGN KEY (`juego_id`) REFERENCES `juegos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username`  varchar(255) NOT NULL,
  `status`    char(255) DEFAULT '1',
  `createdAt` datetime NOT NULL DEFAULT now(),
  `updatedAt` datetime NOT NULL DEFAULT now()
); 
-- ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

insert into usuarios( username ) values
("marta"),
("Abdul"),
("maria");

-- Dump completed on 2021-05-28 23:25:48

show tables;

-- select * from SequelizeMeta;
select * from vehiculo;         
-- select * from participations;
select * from usuarios;  
