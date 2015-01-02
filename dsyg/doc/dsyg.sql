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
  `fieldcode` varchar(32) DEFAULT NULL COMMENT '大分类',
  `fieldname` varchar(64) DEFAULT NULL COMMENT '名称',
  `code` varchar(16) DEFAULT NULL COMMENT '代码',
  `lang` varchar(8) DEFAULT NULL COMMENT '语言，默认为C=Chinese',
  `mean` varchar(128) DEFAULT NULL COMMENT '含义（单位）',
  `note` varchar(256) DEFAULT NULL COMMENT '备注',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他为无效',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbdict01` */

insert  into `tbdict01`(`id`,`fieldcode`,`fieldname`,`code`,`lang`,`mean`,`note`,`status`,`createuid`,`createdate`,`updateuid`,`updatedate`) values (1,'goods','電子線','01','c','Electronic Wire','电线',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(2,'goods','熱収束套管','02','c','Heat-Shrink-Tube','套管',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(3,'goods','柔軟扁平套管','03','c','Flexible Flat Cable','扁平线',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(4,'goods','镁合金','04','c','Magnesium Alloy','线束',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(5,'goods','線束加工','05','c','Wiring Harness','连接器',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(6,'goods','柔軟印刷电路板','06','c','Flexible Printed Circuit Board','FPC',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(7,'01_item01','80℃','01','c','耐温','电线耐温80℃',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(8,'01_item01','105℃','02','c','耐温','电线耐温105℃',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(9,'01_item01','150℃','03','c','耐温','电线耐温150℃',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(10,'02_item01','80℃','01','c','耐温','套管耐温80℃',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(11,'02_item01','105℃','02','c','耐温','套管耐温105℃',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(12,'02_item01','150℃','03','c','耐温','套管耐温150℃',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(13,'01_item02','30V','001','c','耐压','耐压30V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(14,'01_item02','60V','002','c','耐压','耐压60V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(15,'01_item02','150V','003','c','耐压','耐压150V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(16,'01_item02','300V','004','c','耐压','耐压300V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(17,'01_item02','600V','006','c','耐压','耐压600V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(18,'01_item02','3KV','030','c','耐压','耐压3KV',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(19,'01_item02','6KV','060','c','耐压','耐压6KV',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(20,'01_item02','10KV及以上','100','c','耐压','耐压10KV及以上',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(21,'02_item02','300V','004','c','耐压','耐压300V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(22,'02_item02','600V','006','c','耐压','耐压600V',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(23,'02_item02','1KV及以上','010','c','耐压','耐压1KV及以上',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(24,'01_item03','PVC Free','01','c','材质','材质PVC Free',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(25,'01_item03','Halogen Free','02','c','材质','材质Halogen Free',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(26,'02_item03','双层绝缘','01','c','绝缘','绝缘双层绝缘',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(27,'02_item03','单层绝缘','02','c','绝缘','绝缘单层绝缘',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(28,'02_item04','2:1','01','c','收缩比','收缩比2:1',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(29,'02_item04','3:1','02','c','收缩比','收缩比3:1',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(30,'02_item04','4:1','03','c','收缩比','收缩比4:1',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(31,'makearea','日本','001','c','产地','产地日本',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(32,'makearea','马来西亚','002','c','产地','产地马来西亚',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(33,'makearea','苏州','003','c','产地','产地苏州',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00'),(34,'unit','箱','001','c','箱','单位箱',1,'admin','2014-12-16 00:00:00','admin','2014-12-16 00:00:00');

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
  `newsdate` varchar(10) DEFAULT NULL COMMENT '新闻日期',
  `status` int(4) DEFAULT NULL COMMENT '状态，1为有效，其他为无效',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tbnews` */

insert  into `tbnews`(`id`,`showno`,`title`,`data`,`author`,`pic01`,`pic02`,`pic03`,`pic04`,`pic05`,`res01`,`res02`,`res03`,`res04`,`res05`,`newsdate`,`status`,`createuid`,`createdate`,`updateuid`,`updatedate`) values (4,NULL,'11111','333333333333','2222222222','20141228023856221aa15be.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-01-02',1,'admin','2014-12-27 21:35:45','admin','2015-01-03 01:49:34'),(5,NULL,'ABABABEEE','fasfsa','3wwe','20150103015024559095b95.JPG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-01-04',1,'admin','2015-01-03 01:50:24','admin','2015-01-03 01:50:24');

/*Table structure for table `tbproduct01` */

DROP TABLE IF EXISTS `tbproduct01`;

CREATE TABLE `tbproduct01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fieldcode` varchar(8) DEFAULT NULL COMMENT '品种01：电线，02：套管，03：扁平线，04：线束，05：连接器，06：FPC',
  `cata1` varchar(8) DEFAULT NULL COMMENT '大分类',
  `cata2` varchar(8) DEFAULT NULL COMMENT '中分类',
  `cata3` varchar(8) DEFAULT NULL COMMENT '小分类',
  `nameno` varchar(64) DEFAULT NULL COMMENT '名称代码',
  `typeno` varchar(64) DEFAULT NULL COMMENT '型号',
  `typenosub` varchar(64) DEFAULT NULL COMMENT '型号辅助',
  `color1` varchar(64) DEFAULT NULL COMMENT '颜色1',
  `color2` varchar(64) DEFAULT NULL COMMENT '颜色2（备用）',
  `size01` varchar(64) DEFAULT NULL COMMENT '规格1',
  `size02` varchar(64) DEFAULT NULL COMMENT '规格2',
  `makearea` varchar(64) DEFAULT NULL COMMENT '产地',
  `item01` varchar(64) DEFAULT NULL COMMENT '项目1',
  `item02` varchar(64) DEFAULT NULL COMMENT '项目2',
  `item03` varchar(64) DEFAULT NULL COMMENT '项目3',
  `item04` varchar(64) DEFAULT NULL COMMENT '项目4',
  `item05` varchar(64) DEFAULT NULL COMMENT '项目5',
  `item06` varchar(64) DEFAULT NULL COMMENT '项目6',
  `item07` varchar(64) DEFAULT NULL COMMENT '项目7',
  `item08` varchar(64) DEFAULT NULL COMMENT '项目8',
  `item09` varchar(64) DEFAULT NULL COMMENT '项目9',
  `item10` varchar(64) DEFAULT NULL COMMENT '项目10',
  `item11` varchar(64) DEFAULT NULL COMMENT '项目11',
  `item12` varchar(64) DEFAULT NULL COMMENT '项目12',
  `item13` varchar(64) DEFAULT NULL COMMENT '项目13',
  `item14` varchar(64) DEFAULT NULL COMMENT '项目14',
  `item15` varchar(64) DEFAULT NULL COMMENT '项目15',
  `item16` varchar(64) DEFAULT NULL COMMENT '项目16',
  `item17` varchar(64) DEFAULT NULL COMMENT '项目17',
  `item18` varchar(64) DEFAULT NULL COMMENT '项目18',
  `item19` varchar(64) DEFAULT NULL COMMENT '项目19',
  `item20` varchar(64) DEFAULT NULL COMMENT '项目20',
  `item21` varchar(64) DEFAULT NULL COMMENT '项目21',
  `item22` varchar(64) DEFAULT NULL COMMENT '项目22',
  `item23` varchar(64) DEFAULT NULL COMMENT '项目23',
  `item24` varchar(64) DEFAULT NULL COMMENT '项目24',
  `item25` varchar(64) DEFAULT NULL COMMENT '项目25',
  `item26` varchar(64) DEFAULT NULL COMMENT '项目26',
  `item27` varchar(64) DEFAULT NULL COMMENT '项目27',
  `item28` varchar(64) DEFAULT NULL COMMENT '项目28',
  `item29` varchar(64) DEFAULT NULL COMMENT '项目29',
  `item30` varchar(64) DEFAULT NULL COMMENT '项目30',
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
  `keyword` varchar(512) DEFAULT NULL COMMENT '关键字，模糊查询用',
  `createuid` varchar(32) DEFAULT NULL COMMENT '数据创建者',
  `createdate` datetime DEFAULT NULL COMMENT '数据创建时间',
  `updateuid` varchar(32) DEFAULT NULL COMMENT '数据更新者',
  `updatedate` datetime DEFAULT NULL COMMENT '数据更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `tbproduct01` */

insert  into `tbproduct01`(`id`,`fieldcode`,`cata1`,`cata2`,`cata3`,`nameno`,`typeno`,`typenosub`,`color1`,`color2`,`size01`,`size02`,`makearea`,`item01`,`item02`,`item03`,`item04`,`item05`,`item06`,`item07`,`item08`,`item09`,`item10`,`item11`,`item12`,`item13`,`item14`,`item15`,`item16`,`item17`,`item18`,`item19`,`item20`,`item21`,`item22`,`item23`,`item24`,`item25`,`item26`,`item27`,`item28`,`item29`,`item30`,`pic01`,`pic02`,`pic03`,`pic04`,`pic05`,`pdfpath`,`rank`,`status`,`res01`,`res02`,`res03`,`res04`,`res05`,`res06`,`res07`,`res08`,`res09`,`res10`,`keyword`,`createuid`,`createdate`,`updateuid`,`updatedate`) values (6,'01',NULL,NULL,NULL,'11aa','22a','33a','红色123',NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'電子線,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2015-01-03 02:10:19'),(9,'03',NULL,NULL,NULL,'11','22','33',NULL,NULL,NULL,NULL,'002','','','','',NULL,NULL,NULL,NULL,NULL,'44','45','66','77','88','001',NULL,NULL,NULL,NULL,'aa','bb','001','21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20141226002610904c3de40.jpg','201412260026109089dbf5d.png','20141226002610924c5ddd3.png',NULL,NULL,'2014122600261093899c137.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'扁平线,11,22,33,44,45,66,77,77,马来西亚,','admin','2014-12-26 00:26:11','admin','2014-12-26 00:26:11'),(10,'01',NULL,NULL,NULL,'2222222222','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(11,'01',NULL,NULL,NULL,'333333333','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(12,'01',NULL,NULL,NULL,'444444444444','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(13,'01',NULL,NULL,NULL,'5555555555555','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(14,'01',NULL,NULL,NULL,'6666666666666','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(15,'01',NULL,NULL,NULL,'77777777777777','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(16,'01',NULL,NULL,NULL,'888888888888','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(17,'01',NULL,NULL,NULL,'99999999999999','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(18,'01',NULL,NULL,NULL,'aaaaaaaaaaaaaaa','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(19,'01',NULL,NULL,NULL,'bbbbbbbbbbbb','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(20,'01',NULL,NULL,NULL,'cccccccccccc','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(22,'01',NULL,NULL,NULL,'ddddd','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(23,'01',NULL,NULL,NULL,'eeeeeeeee','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(24,'01',NULL,NULL,NULL,'ffffffff','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(25,'01',NULL,NULL,NULL,'gggggggggggg','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(26,'01',NULL,NULL,NULL,'hhhhhhhh','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(27,'01',NULL,NULL,NULL,'iiiiiiiiiii','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(28,'01',NULL,NULL,NULL,'jjjjjjjjjjj','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(29,'01',NULL,NULL,NULL,'kkkkkkkkkkkkk','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(30,'01',NULL,NULL,NULL,'lllllllll','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(31,'01',NULL,NULL,NULL,'mmmmmmmmmm','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08'),(32,'01',NULL,NULL,NULL,'nnnnnnnnnn','22a','33a',NULL,NULL,NULL,NULL,'003','02','003','02','',NULL,NULL,NULL,NULL,NULL,'44a','55a','66a','77a','88a','001',NULL,NULL,NULL,NULL,'99a','121a','001','55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'201412240119375195c85c4.jpg','2014122302242512467205d.png','20141223022425136277a41.jpg',NULL,NULL,'201412230224251399ec07c.pdf',50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电线,11aa,105℃,150V,Halogen Free,22a,33a,44a,55a,66a,77a,77a,苏州,','admin','2014-12-23 02:24:25','admin','2014-12-26 00:50:08');

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

insert  into `tbuser`(`userid`,`username`,`password`,`rolecode`,`status`,`note`,`createuid`,`createdate`,`updateuid`,`updatedate`) values ('admin','admin11','b59c67bf196a4758191e42f76670ceba','admin',1,'admin addaaa','admin','2014-12-08 00:00:00','admin','2014-12-15 23:06:39');

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
