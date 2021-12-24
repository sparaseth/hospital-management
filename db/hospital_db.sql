-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hospital_managemen
--

CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

--
-- Definition of table `doctor_table`
--

DROP TABLE IF EXISTS `doctor_table`;
CREATE TABLE `doctor_table` (
  `Doctor_Name` varchar(30) default NULL,
  `Specialist` varchar(10) default NULL,
  `Visiting_Time` varchar(20) default NULL,
  `Contact_No` varchar(12) default NULL,
  `Email` varchar(30) default NULL,
  `Address` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_table`
--

/*!40000 ALTER TABLE `doctor_table` DISABLE KEYS */;
INSERT INTO `doctor_table` (`Doctor_Name`,`Specialist`,`Visiting_Time`,`Contact_No`,`Email`,`Address`) VALUES 
 ('Sujit','cardiac','2.30-3.30','9861356264','sujit_paraseth@yahoo.co.in','EWS 7/6'),
 ('Sujit','cardiac','2.30-3.30','9861356264','sujit_paraseth@yahoo.co.in','EWS 7/6'),
 ('Subash Paraseth','skin','10.30-12.00','943765795','subash_paraseth@hotmail.com','Mallipada');
/*!40000 ALTER TABLE `doctor_table` ENABLE KEYS */;


--
-- Definition of table `patient_table`
--

DROP TABLE IF EXISTS `patient_table`;
CREATE TABLE `patient_table` (
  `Patient_Name` varchar(30) default NULL,
  `Patient_Age` int(11) default NULL,
  `Patient_Sex` varchar(6) default NULL,
  `Name_Of_Guardian` varchar(30) default NULL,
  `Address` varchar(100) default NULL,
  `Contact_Number` int(11) default NULL,
  `Blood_Group` varchar(5) default NULL,
  `Blood_Pressure` varchar(6) default NULL,
  `Weight` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_table`
--

/*!40000 ALTER TABLE `patient_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_table` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
