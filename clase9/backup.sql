-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb74806
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `catNombre` (`catNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (5,'Cámaras Mirrorless'),(6,'Iluminación inteligente'),(2,'Parlantes Bluetooth'),(3,'Robot de limpieza'),(1,'Smartphone'),(4,'Smat TV');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `idDestino` smallint unsigned NOT NULL AUTO_INCREMENT,
  `aeropuerto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,2) unsigned NOT NULL,
  `idRegion` smallint unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`idDestino`),
  UNIQUE KEY `aeropuerto` (`aeropuerto`),
  KEY `idRegion` (`idRegion`),
  CONSTRAINT `destinos_ibfk_1` FOREIGN KEY (`idRegion`) REFERENCES `regiones` (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',9711.00,5,1),(2,'Amsterdam (Schiphol)',6231.00,5,1),(3,'Miami (Wilcox Field)',6517.00,4,1),(4,'Tokio (Narita)',8704.00,7,1),(5,'Kuala Lumpur (KLIA)',8570.00,7,1),(6,'Bangkok (Suvarnabhumi)',8469.00,7,1),(7,'París (Charles de Gaulle)',7713.00,5,1),(8,'Cancún (Cancún)',6494.00,3,1),(9,'Milán (Malpensa)',6756.00,5,1);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_precios`
--

DROP TABLE IF EXISTS `lista_precios`;
/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_precios` AS SELECT 
 1 AS `id`,
 1 AS `Producto`,
 1 AS `Precio`,
 1 AS `Lista`,
 1 AS `Marca`,
 1 AS `Categoría`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` smallint unsigned NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `mkNombre` (`mkNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Apple'),(10,'Blaupunkt'),(8,'Bose'),(4,'iRobot'),(3,'Marshall'),(7,'Nikon'),(9,'OnePlus'),(2,'Oppo'),(6,'Samsung'),(5,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` int unsigned NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'Martinez','Vanesa',35741951,'2006-06-21'),(3,'González','Mónica',36520147,'2005-09-30'),(4,'Álvarez','Fernando',32912457,'2007-11-02'),(5,'González','María',30215478,'2024-12-01'),(6,'Pérez','Juan',31025679,'2024-12-15'),(7,'Rodríguez','Lucía',34985231,'2024-11-30'),(8,'Fernández','Carlos',25879654,'2024-12-20'),(9,'López','Ana',32147896,'2024-12-10'),(10,'Gómez','Pedro',28319476,'2024-12-18'),(11,'Martínez','Sofía',31547289,'2024-12-05'),(12,'Sánchez','Luis',27183945,'2024-12-22'),(13,'Ramírez','Gabriela',29148765,'2024-12-12'),(14,'Torres','Federico',31025678,'2024-12-25');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `exacto` decimal(10,2) unsigned NOT NULL,
  `aproximado` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,59.00,59),(2,99.99,99.99),(3,78.83,78.83),(4,22.30,22.3),(5,100.99,100.99),(6,60.00,60);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdPrecio` decimal(10,2) unsigned NOT NULL,
  `idMarca` smallint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `prdDescripcion` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prdImagen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdActivo` tinyint(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `prdNombre` (`prdNombre`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Oppo A78 Dual-SIM 128GB',200.00,2,1,'Smartphone Android con pantalla HD+ de 6.56 pulgadas. 8GB de RAM y 128GB de almacenamiento interno. Cámara trasera dual de 50MP. Cámara selfie es de 8MP. Batería de 5000 mAh con soporte para carga rápida de 33W.','Oppo-A78.png',1),(2,'iPhone 15 Pro',1000.00,1,1,'Apple iPhone 15 Pro con chasis fabricado en titanio y puerto USB-C. Pantalla OLED LTPO de 6.1 pulgadas y triple cámara posteriorde 48MP. Cámara frontal de 12MP con sensores para Face ID. Batería de carga rápida de 15W.','iPhone-15-pro.png',1),(3,'HomePod (2nd gen)',250.00,1,2,'El HomePod es un altavoz de alta fidelidad que combina sonido inmersivo, asistente personal y control de hogar inteligente. Conectividad Bluetooth y Wifi via Apple Music','homepod-2.png',1),(4,'Marshall Acton III',300.00,3,2,'El altavoz bluetooth Acton III Cuenta con Dynamic Loudness, que ajusta el equilibrio tonal del sonido para garantizar que su música suene brillante en todos los volúmenes. 30 Watts de potencia','marshall-acton-iii.png',1),(5,'Aspiradora Robot iRobot Roomba j7+',900.00,4,3,'Robot de limpieza Roomba J7+ con sistema de limpieza superior de tres fases y dos rodillos de silicona. Tecnología de trazado de mapas inteligente Imprint™ que aprende, crea mapas y se adapta a cada habitación.','roomba-j7.png',1),(6,'Xiaomi TV Q2',560.00,5,4,'Smart TV con panel QLED Quantum Dot Display de 55 pulgadas y resolución 4K UHD. Sonido Dolby VisionTM IQ y Dolby Atmos. Sistema operativo Google TV. 3 puertos HDMI 2.0, un puerto HDMI 2.1 eARC a 120 Hz, 2 USB 2.0, Wi-Fi 802.11, Bluetooth 5.0 y entrada de audio óptica','xiaomi-q2.jpg',1),(7,'Samsung TV Crystal UHD 2023',650.00,6,4,'Smart TV con panel LED de 65 pulgadas con resolución 4K, tasa de 50 Hz y retroiluminación LED. TizenOS integra altavoces de 20 W compatibles con Dolby Atmos. 3 puertos HDMI, 2 USB y salida óptica de audio, WiFi y Bluetooth.','samsung-crystal-65.png',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_proveedores`
--

DROP TABLE IF EXISTS `productos_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_proveedores` (
  `idProducto` mediumint unsigned NOT NULL,
  `idProveedor` smallint unsigned NOT NULL,
  KEY `idProducto` (`idProducto`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `productos_proveedores_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `productos_proveedores_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_proveedores`
--

LOCK TABLES `productos_proveedores` WRITE;
/*!40000 ALTER TABLE `productos_proveedores` DISABLE KEYS */;
INSERT INTO `productos_proveedores` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(2,7),(2,8),(3,9),(3,10),(5,8),(5,6),(6,10);
/*!40000 ALTER TABLE `productos_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` smallint unsigned NOT NULL AUTO_INCREMENT,
  `prvNombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prvCuit` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prvTelefono` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prvDireccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `prvCuit` (`prvCuit`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Distribuciones San Martín','20-12345678-9','011-4567-8901','Av. San Martín 1000, Buenos Aires'),(2,'Tecnologías Avanzadas SRL','23-87654321-4','011-5678-9012','Calle Florida 200, Córdoba'),(3,'Importaciones Gómez','27-11223344-5','0341-678-1234','Ruta Nacional 3 km 150, Rosario'),(4,'Soluciones Industriales','30-99887766-3','011-7890-2345','Av. Corrientes 3000, Buenos Aires'),(5,'Logística Pérez','24-55667788-1','0342-890-3456','Calle Mitre 400, Mendoza'),(6,'Materias Primas SA','25-33445566-2','011-8901-4567','Av. Belgrano 500, La Plata'),(7,'Servicios Integrales Lopez','29-22334455-6','0351-901-5678','Calle Rivadavia 600, Mar del Plata'),(8,'Electrodomésticos Rey','22-66778899-0','011-9012-6789','Av. San Juan 700, Bahía Blanca'),(9,'Construcciones Martínez','28-44556677-8','0343-012-7890','Calle Sarmiento 800, Paraná'),(10,'Alimentos del Sur','26-77889900-4','011-0123-8901','Av. Libertad 900, Santa Fe');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (2,'América Central'),(4,'América del Norte'),(1,'América del Sur'),(7,'Asia'),(3,'Caribe y México'),(6,'Europa del Este'),(5,'Europa Occidental'),(8,'Oceanía');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `lista_precios`
--

/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_precios` AS select `p`.`idProducto` AS `id`,`p`.`prdNombre` AS `Producto`,`p`.`prdPrecio` AS `Precio`,(`p`.`prdPrecio` * 1.05) AS `Lista`,`m`.`mkNombre` AS `Marca`,`c`.`catNombre` AS `Categoría` from ((`productos` `p` join `marcas` `m` on((`p`.`idMarca` = `m`.`idMarca`))) join `categorias` `c` on((`p`.`idCategoria` = `c`.`idCategoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 20:40:24
