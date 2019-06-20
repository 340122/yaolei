/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.5.28 : Database - studentmanager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentmanager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `studentmanager`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `chinese` double DEFAULT NULL,
  `maths` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL COMMENT '体育',
  `pc` double DEFAULT NULL COMMENT '计算机',
  `history` double DEFAULT NULL COMMENT '历史',
  `stu_sno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`chinese`,`maths`,`english`,`physical`,`pc`,`history`,`stu_sno`) values (1,98,65,98,74,65,67,1111101),(2,65,65,78,89,78,87,1111102),(3,67,89,78,87,85,76,1111103),(4,45,12,32,34,66,76,1111104),(5,32,23,12,63,22,98,1111105),(6,34,34,34,34,45,54,1111106),(7,34,34,23,75,78,85,1111107),(8,87,56,23,34,65,56,1111108),(9,37,56,99,34,0,57,1111109),(10,76,39,67,73,55,45,1111110),(11,32,32,76,45,67,98,1111111),(12,34,34,23,87,67,78,1111112),(13,87,77,77,67,65,34,1111113),(14,23,45,54,57,65,55,1111114),(15,65,67,76,56,76,78,1111115),(16,44,32,78,58,87,87,1111116),(17,76,54,45,98,34,23,1111117),(18,78,34,34,32,34,56,1111118);

/*Table structure for table `local` */

DROP TABLE IF EXISTS `local`;

CREATE TABLE `local` (
  `id` int(11) NOT NULL,
  `classs` varchar(20) NOT NULL,
  `school` varchar(20) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `local` */

insert  into `local`(`id`,`classs`,`school`,`typeid`) values (1,'1','第一中学',1),(2,'2','第一中学',1),(3,'3','第一中学',1);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`) values (1,'123','123'),(2,'yl','1234'),(3,'admin','123'),(4,'wan','123'),(5,'wang','123'),(6,'qwe','123'),(7,'asd','asd'),(8,'321','321'),(9,'hcw','hcw'),(10,'zd','123'),(11,'qaz','12');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stu_sno` varchar(20) NOT NULL,
  `stu_name` varchar(20) NOT NULL,
  `stu_age` int(11) NOT NULL,
  `stu_gender` varchar(5) NOT NULL,
  `stu_phone` varchar(20) NOT NULL,
  `chinese` double NOT NULL,
  `maths` double DEFAULT NULL,
  `english` double DEFAULT NULL,
  `physical` double DEFAULT NULL,
  `pc` double DEFAULT NULL,
  `history` double DEFAULT NULL,
  `classs` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_class` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`stu_sno`,`stu_name`,`stu_age`,`stu_gender`,`stu_phone`,`chinese`,`maths`,`english`,`physical`,`pc`,`history`,`classs`,`create_id`,`create_time`,`id`,`stu_class`) values ('1111101','李明',17,'男','123123',76,60,64,89,75,46,2,NULL,NULL,1,2),('1111102','芳华',15,'女','213421321',65,43,64,76,99,92,2,NULL,NULL,2,2),('1111103','校草',19,'男','12313131',52,72,62,27,62,83,1,NULL,NULL,3,1),('1111104','天啊',12,'男','1232131',56,83,87,45,45,97,3,NULL,NULL,4,3),('1111105','白云',16,'女','1232131',68,54,46,98,56,54,2,NULL,NULL,5,2),('1111106','蓝天',15,'女','1232131',45,52,52,56,76,89,1,NULL,NULL,6,1),('1111107','校花',15,'女','3432132',34,78,58,89,57,97,3,NULL,NULL,7,3),('1111108','睿智',17,'男','231213',63,75,68,60,79,80,2,NULL,NULL,8,2),('1111109','峰仨',20,'男','123213',46,80,87,67,34,40,2,NULL,NULL,9,2),('1111110','小华',12,'男','1232131',87,65,34,87,45,39,1,NULL,NULL,10,1),('1111111','雷电',19,'男','1232133',23,43,87,56,67,65,3,NULL,NULL,11,3),('1111112','婉茹',15,'女','123213',45,15,6,89,49,59,2,NULL,NULL,12,2),('1111113','柔雨',18,'女','213213',65,38,76,65,79,76,1,NULL,NULL,13,1),('1111114','翠花',17,'女','132131',36,63,35,64,52,85,3,NULL,NULL,14,3),('1111115','暴雨',19,'男','1232131',54,32,45,32,67,23,2,NULL,NULL,15,2),('1111116','向日葵',17,'女','1322131',32,53,47,96,43,57,3,NULL,NULL,16,3),('1111117','张啊三',45,'男','12321313',87,45,43,67,98,88,2,NULL,NULL,17,2),('1111118','狂风',23,'男','342431',32,56,87,76,65,98,1,NULL,NULL,18,1),('1111119','白猫',18,'女','123213213',35,47,89,32,56,32,1,NULL,NULL,19,1),('1111120','灰姑凉',15,'女','3242342',32,57,87,54,78,54,2,NULL,NULL,20,2),('1111121','先王子',21,'男','4354353',35,45,43,67,89,86,3,NULL,NULL,21,3),('1111124','黑黑',16,'男','1231231231',55,234,324,34,34,54,3,11,'2019-06-10 01:24:51',25,NULL);

/*Table structure for table `stuinfo` */

DROP TABLE IF EXISTS `stuinfo`;

CREATE TABLE `stuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) NOT NULL COMMENT '学号',
  `sname` varchar(20) NOT NULL COMMENT '姓名',
  `sex` varchar(5) NOT NULL COMMENT '性别',
  `grade` varchar(5) NOT NULL COMMENT '年级',
  `qualification` varchar(10) NOT NULL COMMENT '学历',
  `sort` varchar(10) NOT NULL COMMENT '学生类别（几年制）',
  `profession` varchar(10) NOT NULL COMMENT '专业',
  `depart` varchar(20) NOT NULL COMMENT '系别',
  `classs` varchar(5) NOT NULL COMMENT '班级',
  `idcard` varchar(50) NOT NULL COMMENT '身份证号',
  `intotime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `stuinfo` */

insert  into `stuinfo`(`id`,`sno`,`sname`,`sex`,`grade`,`qualification`,`sort`,`profession`,`depart`,`classs`,`idcard`,`intotime`) values (1,'17402456','张五','男','2015级','专科','五年制','软件技术','软件工程系','5班','340121189814541784',NULL),(2,'17462547','李四','男','2017级','专科','三年制','软件技术','软件工程系','4班','340456413513513513',NULL),(3,'17401100','王1','男','2017级','专科','三年制','软件技术','软件工程系','4班','1313456143513131',NULL),(4,'17401101','王2','男','2017级','专科','三年制','软件技术','软件工程系','4班','1313236143513131',NULL),(5,'17401102','王3','女','2017级','专科','三年制','软件技术','软件工程系','4班','1313423143533131',NULL),(6,'17401103','王4','女','2017级','专科','三年制','软件技术','软件工程系','4班','13134236143113131',NULL),(7,'17401104','王5','男','2018级','专科','三年制','软件技术','软件工程系','4班','13134561415131321',NULL),(8,'17401105','王6','女','2017级','专科','三年制','软件技术','软件工程系','4班','13114561431131312',NULL),(9,'17401106','王7','男','2017级','专科','五年制','软件技术','软件工程系','4班','13132323143513131',NULL),(10,'17401107','王8','男','2018级','专科','三年制','软件技术','软件工程系','4班','13134231435131311',NULL),(11,'17401108','王9','男','2017级','专科','三年制','软件技术','软件工程系','2班','13134143512331311',NULL),(12,'17401109','王10','女','2017级','专科','三年制','软件技术','软件工程系','4班','1313453235676313',NULL),(13,'17401111','王11','女','2016级','专科','三年制','软件技术','软件工程系','4班','1313456143517613',NULL),(14,'17401112','王12','男','2017级','专科','三年制','软件技术','软件工程系','4班','1313456143565131',NULL),(15,'17401113','王13','女','2017级','专科','三年制','软件技术','软件工程系','4班','1313461465133441',NULL),(16,'17401114','王14','男','2017级','专科','五年制','软件技术','软件工程系','4班','8313456243413413',NULL),(17,'17401115','王15','女','2017级','专科','三年制','软件技术','软件工程系','3班','1313456543514131',NULL),(18,'17401116','王16','男','2018级','专科','三年制','软件技术','软件工程系','4班','1313456343513131',NULL),(19,'17401117','王17','女','2017级','专科','三年制','软件技术','软件工程系','4班','1313453243513131',NULL),(20,'17401118','王18','男','2017级','专科','三年制','软件技术','软件工程系','4班','1313478143513131',NULL),(21,'17401119','王19','女','2017级','专科','三年制','软件技术','软件工程系','4班','1313451233513131',NULL),(22,'17401120','王20','女','2017级','专科','三年制','软件技术','软件工程系','4班','1313426143513131',NULL),(23,'17401121','王21','女','2018级','专科','三年制','软件技术','软件工程系','5班','1323456143513131',NULL),(24,'17401122','王22','女','2017级','专科','三年制','软件技术','软件工程系','4班','1315456143513131',NULL),(25,'17401123','王23','男','2017级','专科','三年制','软件技术','软件工程系','4班','1313456143513131',NULL),(26,'17401124','王24','女','2016级','专科','三年制','软件技术','软件工程系','2班','1213456143513131',NULL),(27,'17401125','王25','女','2017级','专科','三年制','软件技术','软件工程系','4班','2313456143513131',NULL),(28,'17401126','王26','女','2017级','专科','三年制','软件技术','软件工程系','4班','3413456143513131',NULL),(30,'15321431','嘿嘿','女','2017','大专','三年制','数字媒体','软件工程','6','1231321321323','2019-06-10 23:40:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
