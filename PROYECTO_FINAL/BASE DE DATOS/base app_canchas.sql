-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_app_canchas
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendario` (
  `Fecha` date NOT NULL,
  `Dia_nombre` varchar(10) DEFAULT NULL,
  `mes` varchar(10) DEFAULT NULL,
  `Año` int DEFAULT NULL,
  `Habil` int DEFAULT NULL,
  PRIMARY KEY (`Fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` VALUES ('2024-06-01','sábado','6',2024,1),('2024-06-02','domingo','6',2024,1),('2024-06-03','lunes','6',2024,1),('2024-06-04','martes','6',2024,1),('2024-06-05','miércoles','6',2024,1),('2024-06-06','jueves','6',2024,1),('2024-06-07','viernes','6',2024,1),('2024-06-08','sábado','6',2024,1),('2024-06-09','domingo','6',2024,1),('2024-06-10','lunes','6',2024,1),('2024-06-11','martes','6',2024,1),('2024-06-12','miércoles','6',2024,1),('2024-06-13','jueves','6',2024,1),('2024-06-14','viernes','6',2024,1),('2024-06-15','sábado','6',2024,1),('2024-06-16','domingo','6',2024,1),('2024-06-17','lunes','6',2024,1),('2024-06-18','martes','6',2024,1),('2024-06-19','miércoles','6',2024,1),('2024-06-20','jueves','6',2024,1),('2024-06-21','viernes','6',2024,1),('2024-06-22','sábado','6',2024,1),('2024-06-23','domingo','6',2024,1),('2024-06-24','lunes','6',2024,1),('2024-06-25','martes','6',2024,1),('2024-06-26','miércoles','6',2024,1),('2024-06-27','jueves','6',2024,1),('2024-06-28','viernes','6',2024,1),('2024-06-29','sábado','6',2024,1),('2024-06-30','domingo','6',2024,1),('2024-07-01','lunes','7',2024,1),('2024-07-02','martes','7',2024,1),('2024-07-03','miércoles','7',2024,1),('2024-07-04','jueves','7',2024,1),('2024-07-05','viernes','7',2024,1),('2024-07-06','sábado','7',2024,1),('2024-07-07','domingo','7',2024,1),('2024-07-08','lunes','7',2024,1),('2024-07-09','martes','7',2024,1),('2024-07-10','miércoles','7',2024,1),('2024-07-11','jueves','7',2024,1),('2024-07-12','viernes','7',2024,1),('2024-07-13','sábado','7',2024,1),('2024-07-14','domingo','7',2024,1),('2024-07-15','lunes','7',2024,1),('2024-07-16','martes','7',2024,1),('2024-07-17','miércoles','7',2024,1),('2024-07-18','jueves','7',2024,1),('2024-07-19','viernes','7',2024,1),('2024-07-20','sábado','7',2024,1),('2024-07-21','domingo','7',2024,1),('2024-07-22','lunes','7',2024,1),('2024-07-23','martes','7',2024,1),('2024-07-24','miércoles','7',2024,1),('2024-07-25','jueves','7',2024,1),('2024-07-26','viernes','7',2024,1),('2024-07-27','sábado','7',2024,1),('2024-07-28','domingo','7',2024,1),('2024-07-29','lunes','7',2024,1),('2024-07-30','martes','7',2024,1),('2024-07-31','miércoles','7',2024,1),('2024-08-01','jueves','8',2024,1),('2024-08-02','viernes','8',2024,1),('2024-08-03','sábado','8',2024,1),('2024-08-04','domingo','8',2024,1),('2024-08-05','lunes','8',2024,1),('2024-08-06','martes','8',2024,1),('2024-08-07','miércoles','8',2024,1),('2024-08-08','jueves','8',2024,1),('2024-08-09','viernes','8',2024,1),('2024-08-10','sábado','8',2024,1),('2024-08-11','domingo','8',2024,1),('2024-08-12','lunes','8',2024,1),('2024-08-13','martes','8',2024,1),('2024-08-14','miércoles','8',2024,1),('2024-08-15','jueves','8',2024,1),('2024-08-16','viernes','8',2024,1),('2024-08-17','sábado','8',2024,1),('2024-08-18','domingo','8',2024,1),('2024-08-19','lunes','8',2024,1),('2024-08-20','martes','8',2024,1),('2024-08-21','miércoles','8',2024,1),('2024-08-22','jueves','8',2024,1),('2024-08-23','viernes','8',2024,1),('2024-08-24','sábado','8',2024,1),('2024-08-25','domingo','8',2024,1),('2024-08-26','lunes','8',2024,1),('2024-08-27','martes','8',2024,1),('2024-08-28','miércoles','8',2024,1),('2024-08-29','jueves','8',2024,1),('2024-08-30','viernes','8',2024,1),('2024-08-31','sábado','8',2024,1),('2024-09-01','domingo','9',2024,1),('2024-09-02','lunes','9',2024,1),('2024-09-03','martes','9',2024,1),('2024-09-04','miércoles','9',2024,1),('2024-09-05','jueves','9',2024,1),('2024-09-06','viernes','9',2024,1),('2024-09-07','sábado','9',2024,1),('2024-09-08','domingo','9',2024,1),('2024-09-09','lunes','9',2024,1),('2024-09-10','martes','9',2024,1),('2024-09-11','miércoles','9',2024,1),('2024-09-12','jueves','9',2024,1),('2024-09-13','viernes','9',2024,1),('2024-09-14','sábado','9',2024,1),('2024-09-15','domingo','9',2024,1),('2024-09-16','lunes','9',2024,1),('2024-09-17','martes','9',2024,1),('2024-09-18','miércoles','9',2024,1),('2024-09-19','jueves','9',2024,1),('2024-09-20','viernes','9',2024,1),('2024-09-21','sábado','9',2024,1),('2024-09-22','domingo','9',2024,1),('2024-09-23','lunes','9',2024,1),('2024-09-24','martes','9',2024,1),('2024-09-25','miércoles','9',2024,1),('2024-09-26','jueves','9',2024,1),('2024-09-27','viernes','9',2024,1),('2024-09-28','sábado','9',2024,1),('2024-09-29','domingo','9',2024,1),('2024-09-30','lunes','9',2024,1),('2024-10-01','martes','10',2024,1),('2024-10-02','miércoles','10',2024,1),('2024-10-03','jueves','10',2024,1),('2024-10-04','viernes','10',2024,1),('2024-10-05','sábado','10',2024,1),('2024-10-06','domingo','10',2024,1),('2024-10-07','lunes','10',2024,1),('2024-10-08','martes','10',2024,1),('2024-10-09','miércoles','10',2024,1),('2024-10-10','jueves','10',2024,1),('2024-10-11','viernes','10',2024,1),('2024-10-12','sábado','10',2024,1),('2024-10-13','domingo','10',2024,1),('2024-10-14','lunes','10',2024,1),('2024-10-15','martes','10',2024,1),('2024-10-16','miércoles','10',2024,1),('2024-10-17','jueves','10',2024,1),('2024-10-18','viernes','10',2024,1),('2024-10-19','sábado','10',2024,1),('2024-10-20','domingo','10',2024,1),('2024-10-21','lunes','10',2024,1),('2024-10-22','martes','10',2024,1),('2024-10-23','miércoles','10',2024,1),('2024-10-24','jueves','10',2024,1),('2024-10-25','viernes','10',2024,1),('2024-10-26','sábado','10',2024,1),('2024-10-27','domingo','10',2024,1),('2024-10-28','lunes','10',2024,1),('2024-10-29','martes','10',2024,1),('2024-10-30','miércoles','10',2024,1),('2024-10-31','jueves','10',2024,1),('2024-11-01','viernes','11',2024,1),('2024-11-02','sábado','11',2024,1),('2024-11-03','domingo','11',2024,1),('2024-11-04','lunes','11',2024,1),('2024-11-05','martes','11',2024,1),('2024-11-06','miércoles','11',2024,1),('2024-11-07','jueves','11',2024,1),('2024-11-08','viernes','11',2024,1),('2024-11-09','sábado','11',2024,1),('2024-11-10','domingo','11',2024,1),('2024-11-11','lunes','11',2024,1),('2024-11-12','martes','11',2024,1),('2024-11-13','miércoles','11',2024,1),('2024-11-14','jueves','11',2024,1),('2024-11-15','viernes','11',2024,1),('2024-11-16','sábado','11',2024,1),('2024-11-17','domingo','11',2024,1),('2024-11-18','lunes','11',2024,1),('2024-11-19','martes','11',2024,1),('2024-11-20','miércoles','11',2024,1),('2024-11-21','jueves','11',2024,1),('2024-11-22','viernes','11',2024,1),('2024-11-23','sábado','11',2024,1),('2024-11-24','domingo','11',2024,1),('2024-11-25','lunes','11',2024,1),('2024-11-26','martes','11',2024,1),('2024-11-27','miércoles','11',2024,1),('2024-11-28','jueves','11',2024,1),('2024-11-29','viernes','11',2024,1),('2024-11-30','sábado','11',2024,1),('2024-12-01','domingo','12',2024,1),('2024-12-02','lunes','12',2024,1),('2024-12-03','martes','12',2024,1),('2024-12-04','miércoles','12',2024,1),('2024-12-05','jueves','12',2024,1),('2024-12-06','viernes','12',2024,1),('2024-12-07','sábado','12',2024,1),('2024-12-08','domingo','12',2024,1),('2024-12-09','lunes','12',2024,1),('2024-12-10','martes','12',2024,1),('2024-12-11','miércoles','12',2024,1),('2024-12-12','jueves','12',2024,1),('2024-12-13','viernes','12',2024,1),('2024-12-14','sábado','12',2024,1),('2024-12-15','domingo','12',2024,1),('2024-12-16','lunes','12',2024,1),('2024-12-17','martes','12',2024,1),('2024-12-18','miércoles','12',2024,1),('2024-12-19','jueves','12',2024,1),('2024-12-20','viernes','12',2024,1),('2024-12-21','sábado','12',2024,1),('2024-12-22','domingo','12',2024,1),('2024-12-23','lunes','12',2024,1),('2024-12-24','martes','12',2024,1),('2024-12-25','miércoles','12',2024,1),('2024-12-26','jueves','12',2024,1),('2024-12-27','viernes','12',2024,1),('2024-12-28','sábado','12',2024,1),('2024-12-29','domingo','12',2024,1),('2024-12-30','lunes','12',2024,1),('2024-12-31','martes','12',2024,1);
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canchas`
--

DROP TABLE IF EXISTS `canchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canchas` (
  `Id_cancha` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  `precio_alquiler` float DEFAULT NULL,
  PRIMARY KEY (`Id_cancha`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canchas`
--

LOCK TABLES `canchas` WRITE;
/*!40000 ALTER TABLE `canchas` DISABLE KEYS */;
INSERT INTO `canchas` VALUES (1,'Cancha chica',5,4500),(2,'Cancha_mediana',7,5600),(3,'Cancha grande',11,5600);
/*!40000 ALTER TABLE `canchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `Id_registro` int NOT NULL AUTO_INCREMENT,
  `id_partido` int DEFAULT NULL,
  `id_Usuario` int DEFAULT NULL,
  PRIMARY KEY (`Id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,2,1),(2,3,1),(4,2,1),(5,1,1),(6,2,1),(7,2,1),(8,2,1),(9,2,9),(10,2,4);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `Id_partido` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Id_turno` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `Id_cancha` int DEFAULT NULL,
  `Equipo_completo` varchar(2) DEFAULT NULL,
  `Sumar_Jugador` varchar(2) DEFAULT NULL,
  `Q_Faltan` int DEFAULT NULL,
  PRIMARY KEY (`Id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,'2024-06-02',12,1,2,'no','si',3),(2,'2024-06-19',6,1,3,'si','no',0);
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id_Perfil` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Administrador'),(2,'Socio'),(3,'Invitado');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodo` (
  `Id_Periodo` int NOT NULL AUTO_INCREMENT,
  `Periodo` char(20) DEFAULT NULL,
  `Fecha_desde` date DEFAULT NULL,
  `Fecha_hasta` date DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'Enero - 2024','2024-01-01','2024-01-31',0),(2,'Febrero - 2024','2024-02-01','2024-02-29',0),(3,'Marzo - 2024','2024-03-01','2024-03-31',0),(4,'Abril - 2024','2024-04-01','2024-04-30',0),(5,'Mayo - 2024','2024-05-01','2024-05-31',0),(6,'Junio - 2024','2024-06-01','2024-06-30',1),(7,'Julio - 2024','2024-07-01','2024-07-31',0),(8,'Agosto - 2024','2024-08-01','2024-08-31',0),(9,'Septiembre - 2024','2024-09-01','2024-09-30',0),(10,'Octubre - 2024','2024-10-01','2024-10-31',0),(11,'Noviembre - 2024','2024-11-01','2024-11-30',0),(12,'Diciembre - 2024','2024-12-01','2024-12-31',0);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `Id_turno` int NOT NULL AUTO_INCREMENT,
  `Turno` varchar(20) DEFAULT NULL,
  `Hora_desde` varchar(10) DEFAULT NULL,
  `Hora_Hasta` varchar(10) DEFAULT NULL,
  `Activo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,'00:00 - 01:00','00:00','01:00','NO'),(2,'01:00 - 02:00','01:00','02:00','NO'),(3,'02:00 - 03:00','02:00','03:00','NO'),(4,'03:00 - 04:00','03:00','04:00','NO'),(5,'04:00 - 05:00','04:00','05:00','NO'),(6,'05:00 - 06:00','05:00','06:00','NO'),(7,'06:00 - 07:00','06:00','07:00','NO'),(8,'07:00 - 08:00','07:00','08:00','NO'),(9,'08:00 - 09:00','08:00','09:00','NO'),(10,'09:00 - 10:00','09:00','10:00','NO'),(11,'10:00 - 11:00','10:00','11:00','NO'),(12,'11:00 - 12:00','11:00','12:00','NO'),(13,'12:00 - 13:00','12:00','13:00','NO'),(14,'13:00 - 14:00','13:00','14:00','NO'),(15,'14:00 - 15:00','14:00','15:00','NO'),(16,'15:00 - 16:00','15:00','16:00','NO'),(17,'16:00 - 17:00','16:00','17:00','NO'),(18,'17:00 - 18:00','17:00','18:00','NO'),(19,'18:00 - 19:00','18:00','19:00','NO'),(20,'19:00 - 20:00','19:00','20:00','NO'),(21,'20:00 - 21:00','20:00','21:00','NO'),(22,'21:00 - 22:00','21:00','22:00','NO'),(23,'22:00 - 23:00','22:00','23:00','NO'),(24,'23:00 - 00:00','23:00','00:00','NO');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Tel_Usuario` varchar(50) DEFAULT NULL,
  `DNI` int DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Nombre_Usuario` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `perfil` int DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Martin','Altamirano','3512887744',31897456,'2000-05-26','1@gmail.com','maltamirano','1234',2),(2,'Daniel','Fuentes','423569852',40566822,'1990-10-24','df@hotmail.com','dfuentes','1234',2),(3,'Carlos','Ayala','558899',42563124,'2005-03-02','carlos@yahoo.com','cayala','1234',2),(4,'Federico','Cordoba','3512168877',29208191,'1981-12-10','fcordoba@gmail.com','fcordoba','123456',1),(5,'Federico','Sanchez','3512455663',33700564,'1991-05-17','fsanchez@gmail.com','fsanchez','123456',1),(6,'Elías Valentin','Valdez','3515454749',42440560,'1995-04-05','elias.ol333@gmail.com','evaldez','123456',1),(7,'Herman','Aguilar','3516123458',34349529,'1990-06-12','aguilar.hfd@gmail.com','haguilar','123456',1),(8,'Franco','Molina','3516123458',41152795,'1986-01-04','francomolina155@gmail.com','fmolina','123456',1),(9,'prueba','prueba','423569852',40566822,'1990-10-24','prueba@hotmail.com','test_socio','1234',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 17:05:32
