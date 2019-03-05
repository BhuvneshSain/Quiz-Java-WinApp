/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - rgu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rgu` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rgu`;

/*Table structure for table `admindata` */

DROP TABLE IF EXISTS `admindata`;

CREATE TABLE `admindata` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) NOT NULL,
  `adminUname` varchar(255) NOT NULL,
  `adminPass` varchar(12) NOT NULL,
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `adminUname` (`adminUname`),
  UNIQUE KEY `adminPass` (`adminPass`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `admindata` */

insert  into `admindata`(`adminId`,`adminName`,`adminUname`,`adminPass`) values 
(1,'Bhuvnesh Sain','Bhuvnesh@123','admin123'),
(2,'Ganesh Kumar','Ganesh@456','admin456');

/*Table structure for table `memberdata` */

DROP TABLE IF EXISTS `memberdata`;

CREATE TABLE `memberdata` (
  `memId` int(11) NOT NULL AUTO_INCREMENT,
  `memName` varchar(255) NOT NULL,
  `memUname` varchar(255) NOT NULL,
  `memPass` varchar(12) NOT NULL,
  `marks` varchar(255) DEFAULT 'No data found',
  PRIMARY KEY (`memId`),
  UNIQUE KEY `memUname` (`memUname`),
  UNIQUE KEY `memPass` (`memPass`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `memberdata` */

insert  into `memberdata`(`memId`,`memName`,`memUname`,`memPass`,`marks`) values 
(42,'Monu','munna','12345','0'),
(50,'a','a','','4'),
(52,'sonu ','sonu@123','12345678','2');

/*Table structure for table `quizdata` */

DROP TABLE IF EXISTS `quizdata`;

CREATE TABLE `quizdata` (
  `qNo` int(11) NOT NULL AUTO_INCREMENT,
  `qData` varchar(255) NOT NULL,
  `qAns` varchar(1) NOT NULL,
  `qOptA` varchar(255) NOT NULL,
  `qOptB` varchar(255) NOT NULL,
  `qOptC` varchar(255) NOT NULL,
  `qOptD` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Not Attempted',
  PRIMARY KEY (`qNo`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `quizdata` */

insert  into `quizdata`(`qNo`,`qData`,`qAns`,`qOptA`,`qOptB`,`qOptC`,`qOptD`,`status`) values 
(2,'sa','B','as','s','s','s','Attempted'),
(3,'ds','B','sd','sd','sds','d','Attempted'),
(4,'sdsd','B','sd','sds','ds','dsd','Attempted'),
(5,'dsdsd','C','sd','sds','ds','ds','Attempted'),
(6,'sdsdsdsds','C','dsdsdsd','s','sdsds','sd','Attempted'),
(7,'a','B','a','a','aa','a','Attempted'),
(8,' ','B',' ',' ',' ',' ','Attempted'),
(9,'What is 2+2 ?','D','1','2','0','4','Attempted'),
(14,'What is 3+7 ?','D','1','2','3','7','Attempted'),
(15,'What is 4+9 ?	','D','1','2','31','13','Attempted'),
(16,'ff','B','f','ff','f','ff','Attempted'),
(17,'ff','B','ff','f','ff','f','Attempted'),
(18,'dffdf','B','dfd','df','fdf','d','Attempted');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
