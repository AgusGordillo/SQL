-- Tablas principales: areas, puestos, empleados, cuentas, clientes y llamadas
-- Otras tablas: act_calls, cambio_puesto, nuevas_llamadas, new_empleado, modif_llamadas

CREATE DATABASE  IF NOT EXISTS `contactcenter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `contactcenter`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: contactcenter
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `act_calls`
--

LOCK TABLES `act_calls` WRITE;
/*!40000 ALTER TABLE `act_calls` DISABLE KEYS */;
INSERT INTO `act_calls` VALUES (51,'2023-10-03 21:04:27','root@localhost');
/*!40000 ALTER TABLE `act_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'operaciones'),(2,'capital humano'),(3,'calidad'),(4,'capacitacion'),(5,'work force mangement'),(6,'administracion'),(7,'infraestructura'),(8,'tecnologia y sistemas'),(9,'cultura organizacional'),(10,'direccion');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cambio_puesto`
--

LOCK TABLES `cambio_puesto` WRITE;
/*!40000 ALTER TABLE `cambio_puesto` DISABLE KEYS */;
INSERT INTO `cambio_puesto` VALUES ('evelyn','bueno',4,5);
/*!40000 ALTER TABLE `cambio_puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,12345678,'pedro','perez',96325874,'pedroperez@gmail.com'),(2,98765432,'juan','casas',14785236,'juancasas@gmail.com'),(3,36985214,'maria','flores',12398745,'mariaflores@gmail.com'),(4,14785236,'eugenia','barrios',32145698,'eugeniabarrios@hotmail.com'),(5,96325874,'sandra','estrella',10236547,'sandraestrella@gmail.com'),(6,98732165,'tadeo','luna',89631478,'tadeoluna@outlook.es'),(7,32145697,'franco','gomez',32185236,'francogomez@gmail.com'),(8,72679925,'cintia','pereyra',14789631,'cintiapereyra@gmail.com'),(9,76918289,'carolina','ochoa',12345679,'carolinaochoa@yahoo.com.ar'),(10,81156652,'monica','juarez',20136547,'monicajuarez@gmail.com'),(11,85395016,'jeremias','peralta',32589648,'jeremiasperalta@gmail.com'),(12,89633380,'lautaro','gutierrez',54796314,'lautarogutierrez@outlook.es'),(13,93871743,'lucas','gonzalez',56873633,'lucasgonzalez@gmail.com'),(14,98110107,'federico','madera',66554478,'federicomadera@gmail.com'),(15,10234847,'mario','rosas',33155587,'mariorosas@gmail.com'),(16,10658683,'cristian','martinez',33322256,'cristianmartinez@gmail.com'),(17,11082519,'sebastian','potter',99855746,'sebastianpotter@gmail.com'),(18,11506356,'lorena','everdeen',55963347,'lorenaeverdeen@outlook.com'),(19,11930192,'belen','swift',66955822,'belenswift@gmail.com'),(20,26895743,'bianca','malfoy',13479954,'biancamalfoy@gmail.com'),(21,30025789,'miriam','granger',33566997,'miriamgranger@gmail.com'),(22,89515436,'daniela','krum',55698223,'danielakrum@gmail.com'),(23,89156247,'jorge','lovegood',88975333,'jorgelovegood@gmail.com'),(24,20358972,'nicolas','crabe',33551166,'nicolascrabe@gmail.com'),(25,16599813,'daniel','goyle',66698551,'danielgoyle@gmail.com'),(26,33256971,'susana','riddle',11111336,'susanariddle@yahoo.com.ar'),(27,39561158,'agostina','nieve',33333221,'agostinanieve@gmail.com'),(28,26158632,'ignacio','plaza',22222111,'ignacioplaza@gmail.com'),(29,56971233,'gustavo','rojo',55555998,'gustavorojo@gmail.com'),(30,25489236,'melisa','limon',77777888,'melisalimon@gmail.com'),(31,68746305,'carmen','perez',22255779,'carmenperez@hotmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,'claro'),(2,'banco galicia'),(3,'sanatorio allende'),(4,'naranja x'),(5,'mercado libre'),(6,'banco macro');
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,NULL,1,'jose','amarillo',3513654789,'pepeamarillo@hotmail.com','1970-01-15','2005-08-23'),(2,1,3,'florencia','blanca',3510235897,'florenciablanca@outlook.es','1996-12-12','2017-03-01'),(3,1,2,'juan','rojo',3514785693,'juanrojo@gmail.com','2000-05-25','2022-09-15'),(4,NULL,16,'pedro','azul',3510556987,'pedroazul@hotmail.com','1987-08-30','2015-11-10'),(5,2,3,'juana','rosa',3512589743,'juanarosa@outlook.com','1988-07-05','2011-04-25'),(6,NULL,12,'celeste','gomez',3510239875,'celestegomez@gmail.com','1995-06-07','2014-02-10'),(7,3,3,'blanca','lopez',3510589741,'blancalopez@gmail.com','1996-01-31','2017-03-16'),(8,NULL,8,'camila','juarez',3451068974,'camilajuarez@gmail.com','1964-01-12','2005-06-01'),(9,NULL,27,'laura','paz',3510147896,'laurapaz@hotmail.com','1991-09-28','2013-06-26'),(10,2,2,'pablo','ortiz',3514789556,'pabloortiz@gmail.com','1992-04-15','2018-12-01'),(11,NULL,8,'miriam','gonzalez',3510235789,'miriamgonzalez@yahoo.com','1985-02-01','2010-01-30'),(12,4,3,'natalia','perez',3510025789,'nataliaperez@hotmail.com','1978-12-04','2009-03-16'),(13,NULL,9,'hugo','alfonso',3519996312,'hugoalfonso23@outlook.es','1986-11-08','2009-03-16'),(14,NULL,24,'hector','gonzalez perez',3258791578,'hectorgp89@gmail.com','1990-12-16','2020-03-14'),(15,NULL,26,'antonella','fernandez',3510236987,'antonellafernandez@gmail.com','1993-06-10','2016-08-09'),(16,5,3,'carla','romano',3510148792,'carlaromano@gmail.com','1996-07-03','2017-03-01'),(17,3,2,'vanesa','hidalgo',3518925434,'vanesahidalgo@hotmail.com','1965-02-14','2009-03-01'),(18,NULL,28,'sabrina','rosas',3514445891,'sabrinarosas@outlook.com','1987-05-23','2011-04-04'),(19,NULL,9,'ezequiel','arjona',3518886317,'ezequielarjona@outlook.com','1996-06-08','2018-05-02'),(20,NULL,5,'evelyn','bueno',3518947355,'evelynbueno@hotmail.com','1987-10-13','2012-01-10'),(21,6,3,'agostina','luna',1158931595,'agostinaluna@gmail.com','2000-08-12','2022-09-17'),(22,4,2,'romina','gimenez',3517964524,'rominagimenez@gmail.com','1995-07-20','2016-04-13'),(23,1,3,'mariela','jimenez',3694891258,'marielajimenez@gmail.com','1999-08-29','2022-09-17'),(24,NULL,21,'ricardo','rossi',3514892558,'ricardorossi@gmail.com','1990-12-01','2015-06-09'),(25,2,3,'alejandra','pereyra',3516669842,'alejandrapereyra@outlook.com','2000-12-25','2022-09-17'),(26,5,2,'maria','velez',3512224896,'mariavelez999@hotmail.com','1998-06-12','2021-12-10'),(27,NULL,25,'giuliana','santos',3546982159,'giulianasantos@hotmail.com','2001-06-30','2009-02-03'),(28,NULL,9,'victor','rodriguez',3514792200,'victorrodriguez@gmail.com','1994-01-20','2014-07-20'),(29,3,3,'nahuel','cordoba',3517770123,'nahuelcba@outlook.com','1988-01-31','2017-03-01'),(30,NULL,23,'juan','rivera',3516699105,'juanrivera@hotmail.com','1980-05-10','2009-02-03'),(31,6,2,'manuel','flores',3517075996,'manuelflores@gmail.com','2000-03-04','2009-02-03'),(32,NULL,29,'gianina','amato',2359204591,'gianinaamato@gmail.com','1996-02-28','2016-04-13'),(33,NULL,26,'rocio','nieto',3512589761,'rocionieto@hotmail.com','1992-12-22','2016-04-13'),(34,4,3,'luz','pluto',3510231456,'luzpluto@outlook.es','1997-06-06','2017-03-01'),(35,5,3,'sofia','marte',3519977882,'sofiamarte@hotmail.es','1999-01-02','2017-03-01'),(36,NULL,5,'aldana','casas',3511111112,'aldanacasas@gmail.com','1997-11-08','2017-07-20'),(37,6,3,'paola','tapia',3518974463,'paolatapia@hotmail.com','1982-06-15','2011-04-25'),(38,NULL,11,'paulo','londra',3514793520,'paulolondra@yahoo.com.ar','1995-11-16','2017-03-01'),(39,NULL,7,'sebastian','bianco',3535697523,'sebastianbianco@outlook.com','1999-02-18','2009-02-03'),(40,NULL,22,'sebastian','funes',3549752163,'sebastianfunes@gmail.com','1980-04-30','2009-02-03'),(41,NULL,6,'belen','nieves',3515578932,'belennieves@gmail.com','1995-09-07','2017-03-01'),(42,1,3,'marcelo','reynoso',3517951100,'reynosomarcelo@yahoo.com.ar','1979-03-03','2011-04-25'),(43,NULL,10,'juan','zalazar',3588894560,'juanzalazar@gmail.com','1989-10-19','2009-02-03'),(44,NULL,14,'mario','almiron',3516352419,'marioalmiron@yahoo.com.ar','1991-11-11','2017-03-01'),(45,NULL,17,'carlos','gallardo',3511125361,'carlosgallardo@hotmail.com','1995-12-23','2017-03-01'),(46,NULL,18,'soledad','artaza',3517485962,'soledadartaza@hotmail.com','1976-02-09','2009-02-03'),(47,NULL,15,'alejo','cejas',3519685745,'alejocejas@gmail.com','1987-05-02','2009-02-03'),(48,NULL,20,'juana','alarcon',3414789623,'juanaalarcon@yahoo.com','2000-09-30','2009-02-03'),(49,NULL,19,'sofia','paredes',3512596321,'sofiaparedes@yahoo.com.ar','1985-08-25','2009-02-03'),(50,NULL,13,'camila','ontivero',3517922556,'camilaontivero@gmail.com','2000-08-31','2009-02-03'),(51,1,1,'mario','bros',3517071992,'mariobros@lego.com.ar','2000-08-15','2023-09-01');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `llamadas`
--

LOCK TABLES `llamadas` WRITE;
/*!40000 ALTER TABLE `llamadas` DISABLE KEYS */;
INSERT INTO `llamadas` VALUES (1,1,2,1,'C01','2023-08-01 00:00:00'),(2,2,5,3,'BG01','2023-08-01 00:00:00'),(3,4,12,5,'NX01','2023-08-01 00:00:00'),(4,5,16,7,'ML04','2023-08-01 00:00:00'),(5,1,2,9,'C02','2023-08-08 12:00:00'),(6,1,23,11,'C03','2023-08-01 00:00:00'),(7,4,34,13,'NX02','2023-08-01 00:00:00'),(8,5,35,15,'ML02','2023-08-01 00:00:00'),(9,2,25,17,'BG02','2023-08-01 00:00:00'),(10,5,16,19,'ML03','2023-08-02 00:00:00'),(11,1,42,21,'C04','2023-08-02 00:00:00'),(12,2,5,23,'BG03','2023-08-02 00:00:00'),(13,6,37,25,'BM01','2023-08-02 00:00:00'),(14,1,23,27,'C05','2023-08-02 00:00:00'),(15,5,16,29,'ML04','2023-08-02 00:00:00'),(16,1,2,31,'C06','2023-08-02 00:00:00'),(17,4,34,2,'NX03','2023-08-02 00:00:00'),(18,3,29,4,'S01','2023-08-02 00:00:00'),(19,1,42,6,'C07','2023-08-02 00:00:00'),(20,2,5,8,'BG04','2023-08-03 00:00:00'),(21,3,7,10,'S02','2023-08-03 00:00:00'),(22,2,25,12,'BG05','2023-08-03 00:00:00'),(23,1,23,14,'C08','2023-08-03 00:00:00'),(24,2,5,16,'BG06','2023-08-03 00:00:00'),(25,5,16,18,'ML05','2023-08-04 00:00:00'),(26,1,42,20,'C09','2023-08-04 00:00:00'),(27,4,34,22,'NX04','2023-08-04 00:00:00'),(28,3,7,24,'S03','2023-08-05 00:00:00'),(29,3,29,26,'S04','2023-08-05 00:00:00'),(30,1,2,28,'C10','2023-08-05 00:00:00'),(31,4,34,30,'NX05','2023-08-06 00:00:00'),(32,2,25,5,'BG07','2023-08-06 00:00:00'),(33,6,21,9,'BM02','2023-08-06 00:00:00'),(34,3,29,20,'S05','2023-08-06 00:00:00'),(35,4,12,7,'NX06','2023-08-06 00:00:00'),(36,5,35,15,'ML06','2023-08-07 00:00:00'),(37,3,7,3,'S06','2023-08-07 00:00:00'),(38,3,29,8,'S07','2023-08-07 00:00:00'),(39,4,12,4,'NX07','2023-08-17 00:00:00'),(40,5,35,11,'ML07','2023-08-17 00:00:00'),(41,2,5,25,'BG08','2023-08-18 00:00:00'),(42,6,21,1,'BM03','2023-08-19 00:00:00'),(43,3,7,18,'S08','2023-08-19 00:00:00'),(44,6,37,21,'BM04','2023-08-20 00:00:00'),(45,1,2,30,'C11','2023-08-21 00:00:00'),(46,5,16,12,'ML08','2023-08-21 00:00:00'),(47,3,29,31,'S09','2023-08-22 00:00:00'),(48,6,37,19,'BM05','2023-08-22 00:00:00'),(49,6,21,14,'BM06','2023-08-23 00:00:00'),(50,4,12,3,'NX08','2023-08-23 00:00:00'),(51,1,1,1,'C55','2023-10-03 21:04:27');
/*!40000 ALTER TABLE `llamadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `modif_llamadas`
--

LOCK TABLES `modif_llamadas` WRITE;
/*!40000 ALTER TABLE `modif_llamadas` DISABLE KEYS */;
INSERT INTO `modif_llamadas` VALUES ('2023-10-03 21:04:41','root@localhost','ha modificado un registro');
/*!40000 ALTER TABLE `modif_llamadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `new_empleado`
--

LOCK TABLES `new_empleado` WRITE;
/*!40000 ALTER TABLE `new_empleado` DISABLE KEYS */;
INSERT INTO `new_empleado` VALUES (0,'2023-10-03','root@localhost');
/*!40000 ALTER TABLE `new_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nuevas_llamadas`
--

LOCK TABLES `nuevas_llamadas` WRITE;
/*!40000 ALTER TABLE `nuevas_llamadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuevas_llamadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (1,'gerente de operaciones',1),(2,'supervisor operativo',1),(3,'representante',1),(4,'gerente de capital humano',2),(5,'analista de liquidacion',2),(6,'analista de seleccion',2),(7,'gerente de calidad',3),(8,'supervisor de calidad',3),(9,'analista de calidad',3),(10,'supervisor de capacitacion',4),(11,'analista de capacitacion',4),(12,'gerente de wfm',5),(13,'supervisor de wfm',5),(14,'analista de reporting',5),(15,'analista de gtr',5),(16,'gerente de administracion',6),(17,'analista de contabilidad',6),(18,'analista administrativo',6),(19,'recepcionista',6),(20,'gerente de infraestructura',7),(21,'auxiliar de mantenimiento',7),(22,'auxiliar de hys',7),(23,'gerente de sistemas',8),(24,'supervisor de sistemas',8),(25,'analista de sistemas',8),(26,'gerente de cultura',9),(27,'analista de cultura',9),(28,'analista de comunicación',9),(29,'director',10);
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 22:05:38
