/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.51-community : Database - dsyg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dsyg` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dsyg`;

/*Table structure for table `tbdict01` */

DROP TABLE IF EXISTS `tbdict01`;

CREATE TABLE `tbdict01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fieldcode` varchar(32) DEFAULT NULL COMMENT '代码',
  `fieldname` varchar(64) DEFAULT NULL COMMENT '名称',
  `lang` varchar(8) DEFAULT NULL COMMENT '语言，默认为C=Chinese',
  `mean` varchar(128) DEFAULT NULL COMMENT '含义（单位）',
  `note` varchar(256) DEFAULT NULL COMMENT '备注',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他为无效',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbdict01` */

/*Table structure for table `tbnews` */

DROP TABLE IF EXISTS `tbnews`;

CREATE TABLE `tbnews` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `showno` int(4) DEFAULT NULL COMMENT '显示顺序号',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `data` varchar(5000) DEFAULT NULL COMMENT '内容',
  `author` varchar(64) DEFAULT NULL COMMENT '作者',
  `pic01` varchar(64) DEFAULT NULL COMMENT '图片1路径',
  `pic02` varchar(64) DEFAULT NULL COMMENT '图片2路径',
  `pic03` varchar(64) DEFAULT NULL COMMENT '图片3路径',
  `pic04` varchar(64) DEFAULT NULL COMMENT '图片4路径',
  `pic05` varchar(64) DEFAULT NULL COMMENT '图片5路径',
  `res01` varchar(512) DEFAULT NULL COMMENT '预备项目1',
  `res02` varchar(512) DEFAULT NULL COMMENT '预备项目2',
  `res03` varchar(512) DEFAULT NULL COMMENT '预备项目3',
  `res04` varchar(512) DEFAULT NULL COMMENT '预备项目4',
  `res05` varchar(512) DEFAULT NULL COMMENT '预备项目5',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他为无效',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbnews` */

/*Table structure for table `tbproduct01` */

DROP TABLE IF EXISTS `tbproduct01`;

CREATE TABLE `tbproduct01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fieldno` varchar(8) DEFAULT NULL COMMENT '品种01：电线，02：套管，03：扁平线，04：线束，05：连接器，06：FPC',
  `cata1` varchar(8) DEFAULT NULL COMMENT '大分类',
  `cata2` varchar(8) DEFAULT NULL COMMENT '中分类',
  `cata3` varchar(8) DEFAULT NULL COMMENT '小分类',
  `nameno` varchar(16) DEFAULT NULL COMMENT '名称代码',
  `typeno` varchar(64) DEFAULT NULL COMMENT '型号',
  `typenosub` varchar(64) DEFAULT NULL COMMENT '型号辅助',
  `color1` varchar(8) DEFAULT NULL COMMENT '颜色1',
  `color2` varchar(8) DEFAULT NULL COMMENT '颜色2（备用）',
  `size01` varchar(64) DEFAULT NULL COMMENT '规格1',
  `size02` varchar(64) DEFAULT NULL COMMENT '规格2',
  `makearea` varchar(8) DEFAULT NULL COMMENT '产地',
  `item01` varchar(8) DEFAULT NULL COMMENT '项目1',
  `item02` varchar(8) DEFAULT NULL COMMENT '项目2',
  `item03` varchar(8) DEFAULT NULL COMMENT '项目3',
  `item04` varchar(8) DEFAULT NULL COMMENT '项目4',
  `item05` varchar(8) DEFAULT NULL COMMENT '项目5',
  `item06` varchar(8) DEFAULT NULL COMMENT '项目6',
  `item07` varchar(8) DEFAULT NULL COMMENT '项目7',
  `item08` varchar(8) DEFAULT NULL COMMENT '项目8',
  `item09` varchar(8) DEFAULT NULL COMMENT '项目9',
  `item10` varchar(8) DEFAULT NULL COMMENT '项目10',
  `item11` varchar(8) DEFAULT NULL COMMENT '项目11',
  `item12` varchar(8) DEFAULT NULL COMMENT '项目12',
  `item13` varchar(8) DEFAULT NULL COMMENT '项目13',
  `item14` varchar(8) DEFAULT NULL COMMENT '项目14',
  `item15` varchar(8) DEFAULT NULL COMMENT '项目15',
  `item16` varchar(8) DEFAULT NULL COMMENT '项目16',
  `item17` varchar(8) DEFAULT NULL COMMENT '项目17',
  `item18` varchar(8) DEFAULT NULL COMMENT '项目18',
  `item19` varchar(8) DEFAULT NULL COMMENT '项目19',
  `item20` varchar(8) DEFAULT NULL COMMENT '项目20',
  `item21` varchar(8) DEFAULT NULL COMMENT '项目21',
  `item22` varchar(8) DEFAULT NULL COMMENT '项目22',
  `item23` varchar(8) DEFAULT NULL COMMENT '项目23',
  `item24` varchar(8) DEFAULT NULL COMMENT '项目24',
  `item25` varchar(8) DEFAULT NULL COMMENT '项目25',
  `item26` varchar(8) DEFAULT NULL COMMENT '项目26',
  `item27` varchar(8) DEFAULT NULL COMMENT '项目27',
  `item28` varchar(8) DEFAULT NULL COMMENT '项目28',
  `item29` varchar(8) DEFAULT NULL COMMENT '项目29',
  `item30` varchar(8) DEFAULT NULL COMMENT '项目30',
  `pic01` varchar(32) DEFAULT NULL COMMENT '图片1路径',
  `pic02` varchar(32) DEFAULT NULL COMMENT '图片2路径',
  `pic03` varchar(32) DEFAULT NULL COMMENT '图片3路径',
  `pic04` varchar(32) DEFAULT NULL COMMENT '图片4路径',
  `pic05` varchar(32) DEFAULT NULL COMMENT '图片5路径',
  `pdfpath` varchar(32) DEFAULT NULL COMMENT 'PDF文件路径',
  `rank` int(4) DEFAULT NULL COMMENT '级别（0-99）',
  `status` int(4) DEFAULT NULL COMMENT '状态：1为有效，其他为无效',
  `res01` varchar(16) DEFAULT NULL COMMENT '预备项目1',
  `res02` varchar(16) DEFAULT NULL COMMENT '预备项目2',
  `res03` varchar(16) DEFAULT NULL COMMENT '预备项目3',
  `res04` varchar(16) DEFAULT NULL COMMENT '预备项目4',
  `res05` varchar(16) DEFAULT NULL COMMENT '预备项目5',
  `res06` varchar(16) DEFAULT NULL COMMENT '预备项目6',
  `res07` varchar(16) DEFAULT NULL COMMENT '预备项目7',
  `res08` varchar(16) DEFAULT NULL COMMENT '预备项目8',
  `res09` varchar(16) DEFAULT NULL COMMENT '预备项目9',
  `res10` varchar(16) DEFAULT NULL COMMENT '预备项目10',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '数据创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '数据更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbproduct01` */

/*Table structure for table `tbrole` */

DROP TABLE IF EXISTS `tbrole`;

CREATE TABLE `tbrole` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `rolecode` varchar(32) DEFAULT NULL COMMENT '角色CODE',
  `rolename` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `rank` int(4) DEFAULT NULL COMMENT '角色级别',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他为无效',
  `createuid` varchar(32) DEFAULT NULL COMMENT '创建者ID',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '更新者ID',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tbrole` */

insert  into `tbrole`(`id`,`rolecode`,`rolename`,`rank`,`note`,`status`,`createuid`,`createdate`,`updateuid`,`updatedate`) values (1,'admin','系统管理员',99,'系统管理员',1,'admin','2014-12-08 00:00:00','admin','2014-12-08 00:00:00'),(2,'manager','公司领导',90,'公司用用户：公司领导',1,'admin','2014-12-08 00:00:00','admin','2014-12-08 00:00:00'),(3,'warehouse','仓库管理员',80,'公司用用户：仓库管理员',1,'admin','2014-12-08 00:00:00','admin','2014-12-08 00:00:00'),(4,'employee','公司职员',70,'公司用用户：公司职员',1,'admin','2014-12-08 00:00:00','admin','2014-12-08 00:00:00'),(5,'normal','普通用户',50,'非公司用户：普通用户',1,'admin','2014-12-08 00:00:00','admin','2014-12-08 00:00:00');

/*Table structure for table `tbuser` */

DROP TABLE IF EXISTS `tbuser`;

CREATE TABLE `tbuser` (
  `userid` varchar(32) NOT NULL COMMENT '用户登录ID',
  `username` varchar(64) DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(32) DEFAULT NULL COMMENT '登录密码，MD5加密',
  `rolecode` varchar(32) DEFAULT NULL COMMENT '角色CODE',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他为无效',
  `note` varchar(256) DEFAULT NULL COMMENT '备注',
  `createuid` varchar(32) DEFAULT NULL COMMENT '创建者ID',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '更新者ID',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbuser` */

insert  into `tbuser`(`userid`,`username`,`password`,`rolecode`,`status`,`note`,`createuid`,`createdate`,`updateuid`,`updatedate`) values ('admin','admin','b59c67bf196a4758191e42f76670ceba','admin',1,'admin add','admin','2014-12-08 00:00:00','admin','2014-12-08 00:00:00');

/*Table structure for table `tbwarehouse` */

DROP TABLE IF EXISTS `tbwarehouse`;

CREATE TABLE `tbwarehouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `productid` bigint(20) DEFAULT NULL COMMENT '产品表ID',
  `item01` decimal(10,2) DEFAULT NULL COMMENT '入库',
  `item02` decimal(10,2) DEFAULT NULL COMMENT '出库',
  `item03` varchar(32) DEFAULT NULL COMMENT '定单单位',
  `item04` varchar(32) DEFAULT NULL COMMENT '送货期',
  `item05` decimal(10,2) DEFAULT NULL COMMENT '项目5',
  `item06` decimal(10,2) DEFAULT NULL COMMENT '项目6',
  `item07` decimal(10,2) DEFAULT NULL COMMENT '项目7',
  `item08` decimal(10,2) DEFAULT NULL COMMENT '项目8',
  `item09` decimal(10,2) DEFAULT NULL COMMENT '项目9',
  `item10` decimal(10,2) DEFAULT NULL COMMENT '项目10',
  `rank` int(4) DEFAULT NULL COMMENT '级别（0-99）',
  `res01` varchar(16) DEFAULT NULL COMMENT '预备项目1',
  `res02` varchar(16) DEFAULT NULL COMMENT '预备项目2',
  `res03` varchar(16) DEFAULT NULL COMMENT '预备项目3',
  `res04` varchar(16) DEFAULT NULL COMMENT '预备项目4',
  `res05` varchar(16) DEFAULT NULL COMMENT '预备项目5',
  `res06` varchar(16) DEFAULT NULL COMMENT '预备项目6',
  `res07` varchar(16) DEFAULT NULL COMMENT '预备项目7',
  `res08` varchar(16) DEFAULT NULL COMMENT '预备项目8',
  `res09` varchar(16) DEFAULT NULL COMMENT '预备项目9',
  `res10` varchar(16) DEFAULT NULL COMMENT '预备项目10',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他无效',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbwarehouse` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
