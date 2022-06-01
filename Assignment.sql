-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sqlassignment
-- ------------------------------------------------------
-- Server version	8.0.29


--
-- Table structure for table `customer`

CREATE TABLE `customer` (
  `Cnum` int NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Rating` int NOT NULL,
  `Snum` int NOT NULL,
  PRIMARY KEY (`Cnum`),
  KEY `FK_Customers_Cnum_idx` (`Snum`),
  CONSTRAINT `FK_Customers_Cnum` FOREIGN KEY (`Snum`) REFERENCES `salespeople` (`Snum`)


--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2001,'Hoffman','London',100,1001),(2002,'Giovanne','Rome',200,1003),(2003,'Liu','San Jose',300,1002),(2004,'Grass','Brelin',100,1002),(2006,'Clemens','London',300,1007),(2007,'Pereira','Rome',100,1004);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--


CREATE TABLE `orders` (
  `Onum` int NOT NULL,
  `AMT` float NOT NULL,
  `Odate` date NOT NULL,
  `Cnum` int NOT NULL,
  `Snum` int NOT NULL,
  PRIMARY KEY (`Onum`),
  KEY `FK_orders_Cnum_idx` (`Cnum`),
  KEY `FK_orders_Snum_idx` (`Snum`),
  CONSTRAINT `FK_orders_Cnum` FOREIGN KEY (`Cnum`) REFERENCES `customer` (`Cnum`),
  CONSTRAINT `FK_orders_Snum` FOREIGN KEY (`Snum`) REFERENCES `salespeople` (`Snum`)

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3001,18.69,'1994-10-03',2004,1007),(3002,1900,'1994-10-03',2007,1004),(3003,767.19,'1994-10-03',2001,1001),(3005,5160.45,'1994-10-03',2003,1002),(3006,1098.16,'1994-10-04',2004,1007),(3007,75.75,'1994-10-05',2004,1002),(3008,4723,'1994-10-05',2006,1001),(3009,1713.23,'1994-10-04',2002,1003),(30010,1309.95,'1994-10-06',2004,1002),(30011,9891.88,'1994-10-06',2006,1001);


--
-- Table structure for table `salespeople`
--


CREATE TABLE `salespeople` (
  `Snum` int NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Comm` float DEFAULT NULL,
  PRIMARY KEY (`Snum`)

--
-- Dumping data for table `salespeople`
--

LOCK TABLES `salespeople` WRITE;
/*!40000 ALTER TABLE `salespeople` DISABLE KEYS */;
INSERT INTO `salespeople` VALUES (1001,'Peel','London',0.12),(1002,'Serres','San Jose',0.13),(1003,'Axelrod','New york',0.1),(1004,'Motika','London',0.11),(1007,'Rafkin','Barcelona',0.15);
/*!40000 ALTER TABLE `salespeople` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sqlassignment'
--

