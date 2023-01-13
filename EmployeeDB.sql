

-- Dumping database structure for employeedb
CREATE DATABASE IF NOT EXISTS `employeedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `employeedb`;

-- Dumping structure for table employeedb.department
CREATE TABLE IF NOT EXISTS `department` (
  `DepartID` int(11) NOT NULL,
  `DepartName` varchar(50) NOT NULL,
  `Descriptions` varchar(100) NOT NULL,
  PRIMARY KEY (`DepartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table employeedb.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `EmpCode` char(6) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Birthday` date NOT NULL DEFAULT '2002-04-05',
  `Gender` bit(1) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DepartID` int(11) NOT NULL,
  `Salary` varchar(100) NOT NULL,
  KEY `FK_employee_department` (`DepartID`),
  CONSTRAINT `FK_employee_department` FOREIGN KEY (`DepartID`) REFERENCES `department` (`DepartID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

