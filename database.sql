/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.5.61 : Database - cris
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cris` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cris`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`) values 
(1,'Parth'),
(1,'Dush');

/*Table structure for table `discussion_forum` */

DROP TABLE IF EXISTS `discussion_forum`;

CREATE TABLE `discussion_forum` (
  `Thread_no` int(11) NOT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `Owner` varchar(30) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Thread_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discussion_forum` */

insert  into `discussion_forum`(`Thread_no`,`Title`,`Owner`,`Description`) values 
(0,'string','string','string'),
(1,NULL,NULL,'test1');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `order` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order` */

insert  into `order`(`id`,`customerid`,`order`) values 
(1,987,'2019-06-14'),
(2,756,'2019-06-01');

/*Table structure for table `suggestion_form` */

DROP TABLE IF EXISTS `suggestion_form`;

CREATE TABLE `suggestion_form` (
  `suggestion_id` int(11) NOT NULL,
  `Emp_No` int(30) DEFAULT NULL,
  `suggestion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suggestion_form` */

/*Table structure for table `thread_details` */

DROP TABLE IF EXISTS `thread_details`;

CREATE TABLE `thread_details` (
  `thread_no` int(30) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `thread_details` */

insert  into `thread_details`(`thread_no`,`user`,`description`,`id`) values 
(1,NULL,'test2',1),
(1,NULL,'test3',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
