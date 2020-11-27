/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.21 : Database - registration_module
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`registration_module` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `registration_module`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `accomodation` varchar(255) DEFAULT NULL,
  `checkin` varchar(255) DEFAULT NULL,
  `checkout` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `booking` */

insert  into `booking`(`id`,`email`,`first_name`,`last_name`,`password`,`mobile`,`destination`,`accomodation`,`checkin`,`checkout`,`location`,`person`) values 
(1,'Abinashtripathy06@gmail.com','Abinash','Tripathy','$2a$10$UqPeeywImb/aMmk7E/dj7eC0wLbBRPF7M72EzsPV3xwmzOogDeCj6','9437434921','Phulbani','Double_Bed','2020-11-26','2020-11-30','Sambalpur','2'),
(3,'Abinashtripathy116@gmail.com','Abinash','Tripathy','$2a$10$LDFpV0gUZ5K0a8S16q5CxO8eSICnNbgziY9KaSexFIJyMFioSguOy','9437434921','Simlipal','Single_Bed','2020-11-26','2020-11-30','Bhubaneswar','3'),
(5,'abi@gmail','Abinash','Tripathy','$2a$10$j4pHg4WHl75kcrI2jRJPGepGxh2R5iYPeiixt60I9VbD1nSxNGhka','9437434921','Satkosia','Double_Bed','2020-11-26','2020-11-30','Bolangir','2'),
(9,'Abinashtripathy16@gmail.com','Abinash','Tripathy','$2a$10$aJGHnJ393Tb4KIsNF1Mrx.ibY6PmmXDcX/im5hEbLZQNGvFcfHEk2','9437434921','Nuanai','Double_Bed','2020-11-26','2020-11-30','Sambalpur','3'),
(11,'abcd@gmail.com','Abinash','Tripathy','$2a$10$lbMAhh4923UTnw7PxOZYw.3cvHGCMg8L5CBPLVUtTBFfQ7dH6EY5e','9437434921','Phulbani','Double_Bed','2020-11-26','2020-11-30','Bolangir','4');

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(13);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values 
(2,'ROLE_USER'),
(4,'ROLE_USER'),
(6,'ROLE_USER'),
(10,'ROLE_USER'),
(12,'ROLE_USER');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`),
  KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `booking` (`id`),
  CONSTRAINT `FKrhfovtciq1l558cw6udg0h0d3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_id`,`role_id`) values 
(1,2),
(3,4),
(5,6),
(9,10),
(11,12);

/*Table structure for table `users_roles` */

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `booking` (`id`),
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users_roles` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
