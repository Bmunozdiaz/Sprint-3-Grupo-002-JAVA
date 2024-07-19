-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: telovendo
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `clienteID` int NOT NULL AUTO_INCREMENT,
  `NombreCliente` varchar(64) DEFAULT NULL,
  `ApellidoCliente` varchar(64) DEFAULT NULL,
  `DireccionCliente` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`clienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Pérez','Calle Falsa 123'),(2,'Ana','García','Avenida Siempre Viva 742'),(3,'Luis','Martínez','Boulevard de los Sueños 456'),(4,'María','Rodríguez','Plaza Mayor 1'),(5,'Pedro','Hernández','Calle del Sol 25');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `ProductoID` int NOT NULL AUTO_INCREMENT,
  `NombreProducto` varchar(64) DEFAULT NULL,
  `Precio` decimal(10,0) DEFAULT NULL,
  `Categoria` varchar(64) DEFAULT NULL,
  `NombreCorporativo` varchar(64) DEFAULT NULL,
  `Color` varchar(64) DEFAULT NULL,
  `Stock` bigint DEFAULT NULL,
  PRIMARY KEY (`ProductoID`),
  KEY `NombreCorporativo` (`NombreCorporativo`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`NombreCorporativo`) REFERENCES `proveedores` (`NombreCorporativo`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Audífonos',19990,'Electrónica y computación','ElectroCorp','Negro',50),(2,'Mouse',39990,'Electrónica y computación','TechnoMarket','Rojo',100),(3,'Refrigerador',590990,'Línea blanca','GadgetWorld','Azul',200),(4,'Smartphone',120990,'Telefonía','MegaElectro','Verde',150),(5,'Laptop',290990,'Computación','DigitalPlus','Marrón',75),(6,'Televisor',300000,'Electrónica','ElectroCorp','Blanco',120),(7,'Teclado',49990,'Electrónica y computación','TechnoMarket','Negro',60),(8,'Lavadora',179990,'Línea blanca','GadgetWorld','Rosa',180),(9,'Tablet',240990,'Electrónica','MegaElectro','Amarillo',90),(10,'Monitor',134990,'Electrónica y computación','DigitalPlus','Negro',130);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `ProveedorID` int NOT NULL AUTO_INCREMENT,
  `Representante` varchar(64) DEFAULT NULL,
  `NombreCorporativo` varchar(64) DEFAULT NULL,
  `Telefono1` bigint DEFAULT NULL,
  `Telefono2` bigint DEFAULT NULL,
  `Contacto` varchar(64) DEFAULT NULL,
  `Categoria` varchar(64) DEFAULT NULL,
  `Correo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ProveedorID`),
  UNIQUE KEY `NombreCorporativo` (`NombreCorporativo`),
  UNIQUE KEY `Categoria` (`Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Carlos Pérez','ElectroCorp',5551234,5555678,'Luis Martínez','Electrónica','contacto@electrocorp.com'),(2,'María López','TechnoMarket',5552345,5556789,'Jorge Fernández','Periféricos','contacto@technomarket.com'),(3,'Pedro Gómez','GadgetWorld',5553456,5557890,'Ricardo Ramírez','Línea blanca','contacto@gadgetworld.com'),(4,'Lucía Díaz','MegaElectro',5554567,5558901,'Ana María Castro','Telefonía','contacto@megaelectro.com'),(5,'Fernando Martínez','DigitalPlus',5555678,5559012,'Eduardo Soto','Computación','contacto@digitalplus.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'telovendo'
--

--
-- Dumping routines for database 'telovendo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-19 12:10:52
