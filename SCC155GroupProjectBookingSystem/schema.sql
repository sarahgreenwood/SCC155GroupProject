# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: bookingSystem
# Generation Time: 2018-02-22 19:23:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table BOOKINGS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BOOKINGS`;

CREATE TABLE `BOOKINGS` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `timeIn` int(11) DEFAULT NULL,
  `timeOut` int(11) DEFAULT NULL,
  `contactID` mediumint(9) NOT NULL,
  `roomID` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contactID` (`contactID`),
  KEY `roomID` (`roomID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`contactID`) REFERENCES `CONTACT` (`id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`roomID`) REFERENCES `ROOM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table CONTACT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CONTACT`;

CREATE TABLE `CONTACT` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(120) NOT NULL,
  `lastName` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `houseNameNumber` varchar(120) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `phoneNumber` int(4) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `userTypeID` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userTypeID` (`userTypeID`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`userTypeID`) REFERENCES `USER_TYPE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table ROOM
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ROOM`;

CREATE TABLE `ROOM` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(120) NOT NULL,
  `roomPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table ROOM_TYPE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ROOM_TYPE`;

CREATE TABLE `ROOM_TYPE` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(120) NOT NULL,
  `roomPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table USER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table USER_TYPE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER_TYPE`;

CREATE TABLE `USER_TYPE` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
