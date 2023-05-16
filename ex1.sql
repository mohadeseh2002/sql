-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 16, 2023 at 01:51 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ex1`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart`
--

DROP TABLE IF EXISTS `chart`;
CREATE TABLE IF NOT EXISTS `chart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Manager` varchar(20) NOT NULL,
  `ManagerId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chart`
--

INSERT INTO `chart` (`id`, `Name`, `Manager`, `ManagerId`) VALUES
(1, 'ken', '', 0),
(2, 'hugo', '', 0),
(3, 'james', 'carol', 5),
(4, 'mark', 'morgan', 13),
(5, 'carol', 'alex', 12),
(6, 'david', 'rose', 21),
(7, 'michaeil', 'markos', 11),
(8, 'brad', 'alex', 12),
(9, 'rob', 'matt', 15),
(10, 'dylan', 'alex', 12),
(11, 'markos', 'carol', 5),
(12, 'alex', 'ken', 1),
(13, 'morgan', 'matt', 15),
(14, 'jennifer', 'morgan', 13),
(15, 'matt', 'hugo', 2),
(16, 'tom', 'brad', 8),
(17, 'oliver', 'dylan', 10),
(18, 'daniel', 'rob', 9),
(19, 'amanda', 'markos', 11),
(20, 'ana', 'dylan', 10),
(21, 'rose', 'rob', 9),
(22, 'robert', 'rob', 9),
(23, 'fill', 'morgan', 13),
(24, 'antoan', 'david', 6),
(25, 'eddie', 'mark', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `charts`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
`LEVEL` bigint
,`Manager` varchar(20)
,`Name` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ex1`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ex1`;
CREATE TABLE IF NOT EXISTS `ex1` (
`کل فروش` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ex2`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ex2`;
CREATE TABLE IF NOT EXISTS `ex2` (
`تعداد مشتریان` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ex3`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ex3`;
CREATE TABLE IF NOT EXISTS `ex3` (
`product` varchar(20)
,`SUM(sale.unitprice)` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ex4`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ex4`;
CREATE TABLE IF NOT EXISTS `ex4` (
`COUNT(product)` bigint
,`COUNT(sale.salesid)` bigint
,`customer` varchar(20)
,`unitprice` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ex6`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ex6`;
CREATE TABLE IF NOT EXISTS `ex6` (
`SUM(sale.unitprice*saleprofit.profitratio)` double
);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `salesid` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `customer` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `date` int NOT NULL,
  `quantity` int NOT NULL,
  `unitprice` int NOT NULL,
  PRIMARY KEY (`salesid`,`product`),
  KEY `product` (`product`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`salesid`, `orderid`, `customer`, `product`, `date`, `quantity`, `unitprice`) VALUES
(4, 1, 'c1', 'p2', 1, 4, 150),
(5, 2, 'c2', 'p2', 1, 5, 150),
(6, 1, 'c1', 'p1', 1, 7, 100),
(7, 3, 'c1', 'p4', 1, 5, 150),
(8, 4, 'c3', 'p3', 1, 7, 200),
(9, 4, 'c4', 'p6', 1, 4, 50),
(10, 4, 'c4', 'p4', 1, 5, 150),
(11, 2, 'c4', 'p2', 1, 4, 500),
(12, 5, 'c4', 'p1', 1, 8, 800),
(13, 5, 'c5', 'p5', 1, 7, 100),
(14, 6, 'c5', 'p3', 1, 1, 400),
(15, 6, 'c1', 'p3', 1, 3, 450),
(16, 7, 'c1', 'p5', 1, 2, 400),
(17, 7, 'c3', 'p6', 1, 5, 500),
(18, 7, 'c3', 'p3', 1, 8, 600),
(19, 8, 'c3', 'p5', 1, 6, 450),
(20, 8, 'c5', 'p3', 1, 5, 400),
(21, 8, 'c5', 'p4', 1, 1, 200),
(22, 9, 'c2', 'p3', 1, 7, 150),
(23, 9, 'c2', 'p4', 1, 3, 500),
(24, 9, 'c2', 'p3', 1, 5, 400),
(25, 9, 'c2', 'p3', 1, 1, 250),
(26, 10, 'c4', 'p4', 1, 8, 400),
(27, 11, 'c6', 'p5', 1, 4, 300),
(28, 11, 'c6', 'p5', 2, 5, 200),
(29, 12, 'c3', 'p6', 2, 7, 400),
(30, 12, 'c3', 'p3', 2, 8, 500),
(31, 12, 'c3', 'p6', 2, 6, 600),
(32, 13, 'c2', 'p5', 2, 5, 550),
(33, 13, 'c2', 'p5', 2, 4, 500),
(34, 14, 'c6', 'p3', 2, 2, 200),
(35, 15, 'c4', 'p4', 2, 3, 700);

-- --------------------------------------------------------

--
-- Table structure for table `saleprofit`
--

DROP TABLE IF EXISTS `saleprofit`;
CREATE TABLE IF NOT EXISTS `saleprofit` (
  `product` varchar(20) NOT NULL,
  `profitratio` varchar(20) NOT NULL,
  PRIMARY KEY (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `saleprofit`
--

INSERT INTO `saleprofit` (`product`, `profitratio`) VALUES
('p1', '5%'),
('p2', '25%'),
('p3', '10%'),
('p4', '20%'),
('p5', '10%'),
('p6', '10%');

-- --------------------------------------------------------

--
-- Structure for view `charts`
--
DROP TABLE IF EXISTS `charts`;

DROP VIEW IF EXISTS `charts`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `charts`  AS SELECT `chart`.`Name` AS `Name`, `chart`.`Manager` AS `Manager`, (select `chart`.`id` from `chart` where (`chart`.`id` = `chart`.`ManagerId`)) AS `LEVEL` FROM `chart``chart`  ;

-- --------------------------------------------------------

--
-- Structure for view `ex1`
--
DROP TABLE IF EXISTS `ex1`;

DROP VIEW IF EXISTS `ex1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex1`  AS SELECT sum(`sale`.`unitprice`) AS `کل فروش` FROM `sale``sale`  ;

-- --------------------------------------------------------

--
-- Structure for view `ex2`
--
DROP TABLE IF EXISTS `ex2`;

DROP VIEW IF EXISTS `ex2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex2`  AS SELECT count(distinct `sale`.`customer`) AS `تعداد مشتریان` FROM `sale``sale`  ;

-- --------------------------------------------------------

--
-- Structure for view `ex3`
--
DROP TABLE IF EXISTS `ex3`;

DROP VIEW IF EXISTS `ex3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex3`  AS SELECT `sale`.`product` AS `product`, sum(`sale`.`unitprice`) AS `SUM(sale.unitprice)` FROM `sale` GROUP BY `sale`.`product``product`  ;

-- --------------------------------------------------------

--
-- Structure for view `ex4`
--
DROP TABLE IF EXISTS `ex4`;

DROP VIEW IF EXISTS `ex4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex4`  AS SELECT `sale`.`customer` AS `customer`, `sale`.`unitprice` AS `unitprice`, count(`sale`.`salesid`) AS `COUNT(sale.salesid)`, count(`sale`.`product`) AS `COUNT(product)` FROM `sale` HAVING (sum(`sale`.`unitprice`) > 1500)  ;

-- --------------------------------------------------------

--
-- Structure for view `ex6`
--
DROP TABLE IF EXISTS `ex6`;

DROP VIEW IF EXISTS `ex6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ex6`  AS SELECT sum((`sale`.`unitprice` * `saleprofit`.`profitratio`)) AS `SUM(sale.unitprice*saleprofit.profitratio)` FROM (`sale` join `saleprofit` on((`sale`.`product` = `saleprofit`.`product`)))  ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`product`) REFERENCES `saleprofit` (`product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
