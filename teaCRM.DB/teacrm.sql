/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.17 : Database - teacrm
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`teacrm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `teacrm`;

/*Table structure for table `t_con_expvalue` */

DROP TABLE IF EXISTS `t_con_expvalue`;

CREATE TABLE `t_con_expvalue` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '?????????',
  `exp_g_leibie` varchar(100) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='\r\n  ??????????\r\n\r\n ?????????????????????????';

/*Data for the table `t_con_expvalue` */

/*Table structure for table `t_cus_base` */

DROP TABLE IF EXISTS `t_cus_base`;

CREATE TABLE `t_cus_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '?????????',
  `cus_no` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT '???????????',
  `comp_num` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cus_name` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '???? ??/????',
  `cus_sname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '???????',
  `cus_lastid` int(11) DEFAULT NULL COMMENT '?????????',
  `cus_tel` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '?????????',
  `cus_city` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '??????',
  `cus_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '??????',
  `cus_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????',
  `con_id` int(11) NOT NULL COMMENT '??????',
  `user_id` int(11) NOT NULL COMMENT '?????',
  `con_team` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '???????',
  `con_is_pub` int(11) NOT NULL COMMENT '0 ? 1? ??????',
  `con_back` int(11) NOT NULL COMMENT '?????????0 ? 1?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='\r\n ??????????\r\n\r\n ???? id ?????????????????';

/*Data for the table `t_cus_base` */

insert  into `t_cus_base`(`id`,`cus_no`,`comp_num`,`cus_name`,`cus_sname`,`cus_lastid`,`cus_tel`,`cus_city`,`cus_address`,`cus_note`,`con_id`,`user_id`,`con_team`,`con_is_pub`,`con_back`) values (1,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(2,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(3,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(4,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(5,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(6,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(7,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(8,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(9,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1),(10,'1',NULL,'ccc','郑州优创科技软件有限公司',NULL,'13893882883','河南省郑州市','西三环建设路南300米路西(西湖东岸)1号楼3单元3楼东户','1',1,1,NULL,1,1);

/*Table structure for table `t_cus_con` */

DROP TABLE IF EXISTS `t_cus_con`;

CREATE TABLE `t_cus_con` (
  `id` int(11) NOT NULL COMMENT '??id',
  `cus_id` int(11) NOT NULL COMMENT '???????id',
  `con_name` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '?????',
  `con_tel` varchar(50) DEFAULT NULL COMMENT '???????',
  `con_qq` varchar(40) DEFAULT NULL COMMENT 'QQ?',
  `con_email` varchar(100) DEFAULT NULL COMMENT '???????',
  `con_bir` datetime DEFAULT NULL COMMENT '????????',
  `con_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????',
  `con_is_main` int(11) NOT NULL COMMENT '0? 1?',
  `user_id` int(11) NOT NULL COMMENT '???id',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`cus_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`cus_id`) REFERENCES `t_cus_base` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=' \r\n ???????????????????';

/*Data for the table `t_cus_con` */

/*Table structure for table `t_cus_expvalue_10000` */

DROP TABLE IF EXISTS `t_cus_expvalue_10000`;

CREATE TABLE `t_cus_expvalue_10000` (
  `cus_id` int(11) NOT NULL COMMENT '?????????',
  `exp_is_marry` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '?????',
  `exp_evaluate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `exp_nation` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `exp_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `exp_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='\r\n  ?????????\r\n\r\n ????????????????????????';

/*Data for the table `t_cus_expvalue_10000` */

insert  into `t_cus_expvalue_10000`(`cus_id`,`exp_is_marry`,`exp_evaluate`,`exp_nation`,`exp_email`,`exp_age`) values (1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1),(1,'1',NULL,'中国','cyutyw@126.com',1);

/*Table structure for table `t_cus_expvalue_99999` */

DROP TABLE IF EXISTS `t_cus_expvalue_99999`;

CREATE TABLE `t_cus_expvalue_99999` (
  `cus_id` int(11) NOT NULL COMMENT '?????????',
  `exp_url` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '?????',
  `exp_nimabi` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `exp_sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `exp_attach` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `exp_addtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='\r\n  ?????????\r\n\r\n ????????????????????????';

/*Data for the table `t_cus_expvalue_99999` */

/*Table structure for table `t_cus_log` */

DROP TABLE IF EXISTS `t_cus_log`;

CREATE TABLE `t_cus_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `cus_id` int(11) NOT NULL COMMENT '??????',
  `cus_type` varchar(50) NOT NULL COMMENT '1. ???? 2.???? 3??????????',
  `cus_info` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '??/??/??/??/?????',
  `user_id` int(11) DEFAULT NULL COMMENT '?????',
  `cus_addtime` datetime NOT NULL COMMENT '??????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='\r\n ?????????????????????????????????';

/*Data for the table `t_cus_log` */

/*Table structure for table `t_fun_app` */

DROP TABLE IF EXISTS `t_fun_app`;

CREATE TABLE `t_fun_app` (
  `id` int(11) NOT NULL COMMENT '???????',
  `app_name` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '?????',
  `app_author` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '????????',
  `app_adddate` datetime DEFAULT NULL COMMENT '??????',
  `app_imgurl` varchar(200) NOT NULL COMMENT '?????????',
  `app_ver` float NOT NULL COMMENT '???????',
  `app_link` varchar(200) NOT NULL COMMENT '???????',
  `app_high` float NOT NULL COMMENT '???????',
  `app_upnote` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT '??????',
  `app_lastdate` datetime DEFAULT NULL COMMENT '????????',
  `app_ind` int(11) NOT NULL COMMENT '?????',
  `app_is_hot` int(11) NOT NULL DEFAULT '0' COMMENT '0 ?? 1??',
  `app_is_red` int(11) NOT NULL DEFAULT '0' COMMENT '0 ?? 1??',
  `app_is_my` int(11) NOT NULL DEFAULT '0' COMMENT '0 ??? 1 ???',
  `app_is_sys` int(11) NOT NULL DEFAULT '0' COMMENT '0 ?? 1??',
  `app_price` float NOT NULL DEFAULT '0' COMMENT '????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='???????';

/*Data for the table `t_fun_app` */

/*Table structure for table `t_fun_expand` */

DROP TABLE IF EXISTS `t_fun_expand`;

CREATE TABLE `t_fun_expand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id?',
  `myapp_id` int(11) NOT NULL COMMENT '???????????',
  `comp_num` varchar(20) DEFAULT NULL,
  `exp_name` varchar(50) NOT NULL COMMENT '??????????',
  `exp_title` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '??????title',
  `exp_ctype` varchar(50) NOT NULL COMMENT '1 ?? 2 ??? 3 ?? 4 ?? 5??? 6??? 7??? 8 ?? 9?? 10?? ',
  `exp_dtype` varchar(50) NOT NULL COMMENT '????? varchar char?',
  `exp_length` int(11) DEFAULT NULL COMMENT '??????',
  `exp_place` char(20) DEFAULT '0' COMMENT '?????',
  `exp_option` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????? ??? ?|?,',
  `exp_default` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '???',
  `exp_is_null` int(11) NOT NULL COMMENT '????? ',
  `exp_is_pw` int(11) NOT NULL COMMENT '??????',
  `exp_is_html` int(11) NOT NULL COMMENT '????html??',
  `exp_etype` int(11) DEFAULT NULL COMMENT '0 ??? 1???',
  `exp_tipmsg` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????????',
  `exp_errmsg` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '???????',
  `exp_pattern` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '???????',
  `exp_sortid` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '?????',
  `exp_css` varchar(100) DEFAULT NULL COMMENT '??????',
  `exp_is_sys` int(11) NOT NULL COMMENT '?????????0? 1?',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_7` (`myapp_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`myapp_id`) REFERENCES `t_fun_myapp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='???????';

/*Data for the table `t_fun_expand` */

insert  into `t_fun_expand`(`id`,`myapp_id`,`comp_num`,`exp_name`,`exp_title`,`exp_ctype`,`exp_dtype`,`exp_length`,`exp_place`,`exp_option`,`exp_default`,`exp_is_null`,`exp_is_pw`,`exp_is_html`,`exp_etype`,`exp_tipmsg`,`exp_errmsg`,`exp_pattern`,`exp_sortid`,`exp_css`,`exp_is_sys`) values (1,1,'10000','exp_is_marry','婚姻状况','5','varchar',20,'0','0|保密,1|未婚,2|已婚',NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(2,1,'10000','exp_evaluate','自我评价','2','varchar',255,'0',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(4,1,'10000','exp_nation','民族','5','varchar',20,'0','0|汉族,1|回族,2|满足,3|朝鲜族,4|苗族',NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(6,1,'10000','exp_email','邮箱','1','varchar',100,'0',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(7,1,'10000','exp_age','年龄','4','int',NULL,'0',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(9,1,'99999','exp_url','链接地址','3','varchar',50,'0',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(12,1,'99999','exp_hobby','爱好','6','varchar',20,'0','0|乒乓球,1|篮球,2|足球,3|羽毛球',NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(13,1,'99999','exp_sex','性别','9','varchar',10,'0','0|保密,1|男,2|女',NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(14,1,'99999','exp_attach','附件','7','varchar',100,'0',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0),(15,1,'99999','exp_addtime','添加时间','8','datatime',NULL,'0',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0);

/*Table structure for table `t_fun_filters` */

DROP TABLE IF EXISTS `t_fun_filters`;

CREATE TABLE `t_fun_filters` (
  `id` int(11) NOT NULL COMMENT '?????????',
  `parent_id` int(11) DEFAULT NULL,
  `comp_num` varchar(20) DEFAULT NULL,
  `fil_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '???????',
  `myapp_id` int(11) NOT NULL COMMENT '????',
  `fil_where` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'sql where????',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_9` (`myapp_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`myapp_id`) REFERENCES `t_fun_myapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='?????? ';

/*Data for the table `t_fun_filters` */

insert  into `t_fun_filters`(`id`,`parent_id`,`comp_num`,`fil_name`,`myapp_id`,`fil_where`) values (1,0,'10000','跟踪进度筛选',1,'jd'),(2,0,'10000','客户类别筛选',1,'ee'),(3,1,'10000','潜在客户',1,'qq'),(4,1,'10000','意向客户',1,'ss'),(5,0,'99999','集团客户',1,'gg');

/*Table structure for table `t_fun_myapp` */

DROP TABLE IF EXISTS `t_fun_myapp`;

CREATE TABLE `t_fun_myapp` (
  `id` int(11) NOT NULL COMMENT '???????????',
  `parent_id` int(11) NOT NULL COMMENT '??????????',
  `myapp_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '??????? ????',
  `myapp_link` varchar(100) DEFAULT NULL COMMENT '????????????',
  `myapp_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '???????',
  `myapp_action` varchar(100) DEFAULT NULL COMMENT '?????????',
  `myapp_date` varchar(200) NOT NULL COMMENT '????????????????',
  `myapp_is_nav` int(11) NOT NULL COMMENT '???????? 0?? 1?',
  `myapp_is_sys` int(11) NOT NULL COMMENT '0 ?? 1? ??????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='???????';

/*Data for the table `t_fun_myapp` */

insert  into `t_fun_myapp`(`id`,`parent_id`,`myapp_name`,`myapp_link`,`myapp_note`,`myapp_action`,`myapp_date`,`myapp_is_nav`,`myapp_is_sys`) values (1,0,'客户','/Apps/CRM/','客户模块',NULL,'2014-01-01',1,1);

/*Table structure for table `t_fun_operating` */

DROP TABLE IF EXISTS `t_fun_operating`;

CREATE TABLE `t_fun_operating` (
  `id` int(11) NOT NULL COMMENT '????id',
  `myapp_id` int(11) NOT NULL COMMENT '??????????',
  `myapp_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '??????',
  `ope_action` varchar(100) NOT NULL COMMENT '?????? add edit list show?',
  `ope_is_sys` int(11) NOT NULL COMMENT '????????? 0??',
  `ope_is_status` int(11) NOT NULL COMMENT '??????   0 ??',
  `ope_is_fast` int(11) NOT NULL COMMENT '?????????? 0????',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_6` (`myapp_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`myapp_id`) REFERENCES `t_fun_myapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='???????';

/*Data for the table `t_fun_operating` */

/*Table structure for table `t_fun_tags` */

DROP TABLE IF EXISTS `t_fun_tags`;

CREATE TABLE `t_fun_tags` (
  `id` int(11) NOT NULL COMMENT '?????',
  `myapp_id` int(11) NOT NULL COMMENT '??????',
  `tag_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '????',
  `tag_value` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '???',
  `tag_color` varchar(30) NOT NULL COMMENT '??????',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_8` (`myapp_id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`myapp_id`) REFERENCES `t_fun_myapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='???????';

/*Data for the table `t_fun_tags` */

/*Table structure for table `t_sys_company` */

DROP TABLE IF EXISTS `t_sys_company`;

CREATE TABLE `t_sys_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id',
  `comp_num` varchar(20) NOT NULL,
  `comp_tname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`,`comp_num`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='??????????????';

/*Data for the table `t_sys_company` */

insert  into `t_sys_company`(`id`,`comp_num`,`comp_tname`) values (3,'10000',NULL),(4,'99999',NULL),(5,'88888',NULL);

/*Table structure for table `t_sys_department` */

DROP TABLE IF EXISTS `t_sys_department`;

CREATE TABLE `t_sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `parent_id` int(11) NOT NULL COMMENT '????id',
  `comp_num` varchar(20) DEFAULT NULL,
  `dep_name` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '??????',
  `dep_num` int(11) DEFAULT NULL COMMENT '????',
  `dep_respon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '200????????',
  `dep_skills` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '200????????',
  `dep_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT=' \r\n ??????\r\n\r\n ??? ????';

/*Data for the table `t_sys_department` */

insert  into `t_sys_department`(`id`,`parent_id`,`comp_num`,`dep_name`,`dep_num`,`dep_respon`,`dep_skills`,`dep_note`) values (1,0,'10000','技术部',1,'1','1','1'),(2,1,'10000','前台部',1,'1','1','1'),(3,0,'10000','客服部',1,'1','1','1'),(4,0,'99999','技术支持',1,'1','1','1');

/*Table structure for table `t_sys_log` */

DROP TABLE IF EXISTS `t_sys_log`;

CREATE TABLE `t_sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????id',
  `user_id` int(11) NOT NULL COMMENT '????id',
  `user_lname` varchar(40) NOT NULL COMMENT '?????',
  `log_action` varchar(50) NOT NULL COMMENT '????(?? ?? ??)???',
  `log_remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '?? ?? ?? ???????',
  `log_ip` varchar(50) DEFAULT NULL COMMENT '??ip????',
  `log_place` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `log_time` datetime DEFAULT NULL COMMENT '????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=latin1 COMMENT=' \r\n ????????\r\n\r\n ??ip ???? ???? ?????';

/*Data for the table `t_sys_log` */

insert  into `t_sys_log`(`id`,`user_id`,`user_lname`,`log_action`,`log_remark`,`log_ip`,`log_place`,`log_time`) values (1,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-08-22 10:09:01'),(2,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-08-22 10:35:48'),(3,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-08-22 11:19:51'),(4,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-08-22 11:20:10'),(5,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(6,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(7,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(8,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(9,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(10,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(11,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(12,4,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(13,4,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(14,3,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(15,4,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-01-01 10:20:30'),(16,4,'admin','Login','河南省开封市网友登陆了系统。','123.14.252.55',NULL,'2014-08-22 14:15:30'),(17,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 14:19:17'),(18,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 14:29:35'),(19,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 14:31:16'),(20,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:04:23'),(21,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:05:29'),(22,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:07:37'),(23,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:07:33'),(24,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:10:26'),(25,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:12:15'),(26,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:13:01'),(27,3,'admin','Login','河南省开封市网友登陆了系统。','61.158.132.133',NULL,'2014-08-22 15:17:45'),(28,3,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:19:52'),(29,3,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:21:02'),(30,3,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:21:19'),(31,3,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:21:36'),(32,3,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:36:04'),(33,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:36:17'),(34,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:40:53'),(35,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:48:21'),(36,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:48:27'),(37,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:52:49'),(38,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:53:09'),(39,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:53:16'),(40,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:58:37'),(41,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:58:40'),(42,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:58:46'),(43,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:58:51'),(44,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:58:54'),(45,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 15:59:21'),(46,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:01:40'),(47,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:01:43'),(48,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:01:47'),(49,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:02:09'),(50,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:02:59'),(51,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:07:19'),(52,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:08:17'),(53,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:08:56'),(54,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:09:04'),(55,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:09:15'),(56,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:09:35'),(57,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:10:38'),(58,4,'admin','Login','安徽省网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:10:44'),(59,3,'admin','Login','北京市网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:15:11'),(60,3,'admin','Login','北京市网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:15:26'),(61,3,'admin','Login','北京市网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:15:38'),(62,4,'admin','Login','北京市网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:15:48'),(63,4,'admin','Login','北京市网友登陆了系统。','111.161.17.9',NULL,'2014-08-22 16:20:41'),(64,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:06:02'),(65,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:05:59'),(66,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:06:08'),(67,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:05:55'),(68,3,'admin','Login','河南省郑州市网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:14:08'),(69,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:13:13'),(70,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:13:05'),(71,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:24:36'),(72,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:24:53'),(73,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:25:36'),(74,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.228.153',NULL,'2014-08-22 18:23:07'),(75,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:37:57'),(76,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:37:51'),(77,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:38:08'),(78,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:38:13'),(79,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:41:12'),(80,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:39:28'),(81,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:47:14'),(82,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:45:09'),(83,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:45:15'),(84,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:45:21'),(85,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:45:27'),(86,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:45:41'),(87,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:56:12'),(88,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 18:56:53'),(89,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 19:01:28'),(90,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 19:15:04'),(91,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 19:15:14'),(92,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 19:15:24'),(93,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 19:15:40'),(94,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216',NULL,'2014-08-22 19:18:35'),(95,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-22 19:48:56'),(96,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-22 20:23:08'),(97,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-22 20:25:51'),(98,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-22 20:27:50'),(99,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-22 20:57:51'),(100,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 09:40:59'),(101,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 09:42:05'),(102,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:19:55'),(103,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:19:55'),(104,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:19:59'),(105,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:19:51'),(106,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:19:54'),(107,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:19:54'),(108,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 11:20:28'),(109,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:50:31'),(110,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:50:34'),(111,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:54:30'),(112,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:54:33'),(113,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:54:47'),(114,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:55:18'),(115,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:56:40'),(116,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:56:44'),(117,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 12:59:22'),(118,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-23 13:00:59'),(119,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 19:51:52'),(120,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 19:54:32'),(121,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 20:02:49'),(122,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 20:02:53'),(123,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 20:02:56'),(124,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 20:02:59'),(125,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 20:03:01'),(126,3,'admin','Login','河南省郑州市网友登陆了系统。','182.119.199.218','河南省郑州市','2014-08-24 20:04:01'),(127,3,'admin','Login','河南省郑州市网友登陆了系统。','182.119.199.218','河南省郑州市','2014-08-24 20:04:04'),(128,3,'admin','Login','河南省郑州市网友登陆了系统。','182.119.199.218','河南省郑州市','2014-08-24 20:06:39'),(129,3,'admin','Login','国内未能识别的地区网友登陆了系统。','182.119.199.218','国内未能识别的地区','2014-08-24 20:06:58'),(130,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 09:19:57'),(131,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 09:20:08'),(132,5,'terwer','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 09:20:30'),(133,12,'tyw222','Login','优创登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 12:14:02'),(134,12,'tyw222','Login','优创登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 12:14:09'),(135,12,'tyw222','Login','优创登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 12:32:06'),(136,3,'admin','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 12:34:18'),(137,18,'terwer555','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 13:22:54'),(138,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 13:24:31'),(139,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 13:39:20'),(140,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 13:39:35'),(141,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 13:59:46'),(142,19,'ling_616','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 14:02:04'),(143,19,'ling_616','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 14:07:24'),(144,25,'youchuang5','Login','sss登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 15:11:45'),(145,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 15:14:42'),(146,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 15:15:15'),(147,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 15:56:13'),(148,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 15:57:04'),(149,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 15:59:41'),(150,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 16:16:55'),(151,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 16:27:50'),(152,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 16:28:00'),(153,26,'tester','Login','安徽省网友登陆了系统。','111.161.17.5','安徽省','2014-08-25 16:42:15'),(154,26,'tester','Login','北京市网友登陆了系统。','111.161.17.5','北京市','2014-08-25 16:45:14'),(155,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 16:48:51'),(156,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 16:55:44'),(157,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 17:01:40'),(158,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 17:04:19'),(159,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 17:14:41'),(160,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 17:18:10'),(161,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 17:22:10'),(162,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 17:25:57'),(163,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:05:56'),(164,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:11:51'),(165,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:10:28'),(166,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:15:06'),(167,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:45:08'),(168,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:48:04'),(169,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:53:07'),(170,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:52:48'),(171,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 18:52:57'),(172,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:08:01'),(173,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:12:38'),(174,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:13:28'),(175,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:11:21'),(176,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:11:32'),(177,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:17:21'),(178,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:19:58'),(179,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:32:10'),(180,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:32:05'),(181,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:34:56'),(182,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:44:40'),(183,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 19:58:33'),(184,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:00:42'),(185,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:02:15'),(186,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:02:09'),(187,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:09:20'),(188,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:20:28'),(189,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:24:33'),(190,3,'admin','Login','超级管理员登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:26:20'),(191,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.216','河南省驻马店市','2014-08-25 20:26:14'),(192,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 22:04:51'),(193,20,'youchuang','Login','黄栾登陆了系统。','171.8.47.62','河南省','2014-08-25 22:07:18'),(194,19,'ling_616','Login','河南省网友登陆了系统。','171.8.47.62','河南省','2014-08-25 22:10:09'),(195,19,'ling_616','Login','河南省网友登陆了系统。','171.8.47.62','河南省','2014-08-25 22:10:27'),(196,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 22:17:58'),(197,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 22:18:02'),(198,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 22:24:15'),(199,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 22:51:49'),(200,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 22:51:45'),(201,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 23:19:22'),(202,3,'admin','Login','超级管理员登陆了系统。','171.8.47.62','河南省','2014-08-25 23:19:20'),(203,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:39:25'),(204,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:38:08'),(205,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:38:17'),(206,3,'admin','Login','超级管理员登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:44:03'),(207,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:44:28'),(208,3,'admin','Login','超级管理员登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:49:35'),(209,3,'admin','Login','超级管理员登陆了系统。','111.161.17.3','北京市','2014-08-26 08:50:07'),(210,3,'admin','Login','超级管理员登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 08:50:46'),(211,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-26 08:53:50'),(212,26,'tester','Login','河南省郑州市网友登陆了系统。','221.14.175.197','河南省郑州市','2014-08-26 09:10:32'),(213,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 13:15:53'),(214,26,'tester','Login','河南省驻马店市网友登陆了系统。','125.46.68.205','河南省驻马店市','2014-08-26 15:54:47'),(215,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 18:43:36'),(216,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 19:24:00'),(217,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 19:37:07'),(218,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 19:39:21'),(219,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 20:22:43'),(220,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 20:22:56'),(221,3,'admin','Login','超级管理员登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 20:23:03'),(222,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.195.15','国内未能识别的地区','2014-08-26 22:13:16'),(223,3,'admin','Login','超级管理员登陆了系统。','123.6.167.41','河南省郑州市','2014-08-27 08:42:06'),(224,26,'tester','Login','河南省郑州市网友登陆了系统。','123.6.167.41','河南省郑州市','2014-08-27 08:57:12'),(225,3,'admin','Login','超级管理员登陆了系统。','123.6.167.41','河南省郑州市','2014-08-27 10:27:08'),(226,26,'tester','Login','河南省郑州市网友登陆了系统。','123.6.167.41','河南省郑州市','2014-08-27 10:57:20'),(227,26,'tester','Login','河南省郑州市网友登陆了系统。','123.6.167.41','河南省郑州市','2014-08-27 10:59:40'),(228,26,'tester','Login','河南省郑州市网友登陆了系统。','123.6.167.41','河南省郑州市','2014-08-27 11:04:25'),(229,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:18:14'),(230,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:33:33'),(231,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:37:54'),(232,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:41:33'),(233,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:44:40'),(234,26,'tester','Login','国内未能识别的地区网友登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:46:18'),(235,28,'admin2','Login','唐有炜登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 12:47:12'),(236,28,'admin2','Login','唐有炜登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:16:38'),(237,28,'admin2','Login','唐有炜登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:19:46'),(238,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:25:12'),(239,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 13:36:32'),(240,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 13:36:30'),(241,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:37:56'),(242,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:45:25'),(243,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:50:22'),(244,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:50:25'),(245,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 13:51:21'),(246,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:06:28'),(247,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:05:01'),(248,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:04:54'),(249,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:09:10'),(250,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:18:54'),(251,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:18:59'),(252,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:19:25'),(253,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:19:36'),(254,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 14:28:22'),(255,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:38:44'),(256,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:38:51'),(257,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:38:47'),(258,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:38:58'),(259,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:39:02'),(260,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:39:05'),(261,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:39:09'),(262,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:39:38'),(263,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:40:32'),(264,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 14:41:19'),(265,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 16:16:05'),(266,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 16:18:32'),(267,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 16:32:24'),(268,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','河南省郑州市','2014-08-27 16:37:51'),(269,3,'admin','Login','超级管理员登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 16:39:44'),(270,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 16:38:00'),(271,20,'youchuang','Login','黄栾登陆了系统。','182.119.77.76','国内未能识别的地区','2014-08-27 16:37:58'),(272,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:01:45'),(273,20,'youchuang','Login','黄栾登陆了系统。','125.46.68.217','河南省驻马店市','2014-08-27 16:59:17'),(274,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:04:01'),(275,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:05:04'),(276,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:09:29'),(277,20,'youchuang','Login','黄栾登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:13:07'),(278,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:30:15'),(279,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:30:18'),(280,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:30:26'),(281,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:42:38'),(282,20,'youchuang','Login','黄栾登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:45:42'),(283,20,'youchuang','Login','黄栾登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:45:38'),(284,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:54:04'),(285,20,'youchuang','Login','黄栾登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:59:51'),(286,20,'youchuang','Login','黄栾登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 17:59:49'),(287,3,'admin','Login','超级管理员登陆了系统。','221.14.175.197','河南省郑州市','2014-08-27 18:39:39'),(288,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:40:24'),(289,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:42:44'),(290,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:45:45'),(291,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:50:56'),(292,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:51:47'),(293,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:52:53'),(294,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:53:31'),(295,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:54:20'),(296,20,'youchuang','Login','黄栾登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:53:33'),(297,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:53:58'),(298,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:59:23'),(299,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 18:59:44'),(300,19,'ling_616','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:04:47'),(301,19,'ling_616','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:05:05'),(302,19,'ling_616','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:05:09'),(303,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:00:50'),(304,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:42:03'),(305,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:42:12'),(306,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:54:26'),(307,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:54:24'),(308,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:57:09'),(309,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 19:57:03'),(310,5,'terwer','Login','河南省郑州市网友登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:09:25'),(311,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:16:29'),(312,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:15:38'),(313,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:15:36'),(314,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:18:40'),(315,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:39:30'),(316,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:39:24'),(317,3,'admin','Login','超级管理员登陆了系统。','221.14.171.228','河南省郑州市','2014-08-27 20:39:26');

/*Table structure for table `t_sys_power` */

DROP TABLE IF EXISTS `t_sys_power`;

CREATE TABLE `t_sys_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id??',
  `module` int(11) NOT NULL COMMENT '????id',
  `power_nav` varchar(200) NOT NULL COMMENT '????????',
  `power_action` varchar(100) NOT NULL COMMENT '?? ?? ?? ?? ?????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT=' \r\n ??????????????????????????  \r\n\r\n ???show ';

/*Data for the table `t_sys_power` */

insert  into `t_sys_power`(`id`,`module`,`power_nav`,`power_action`) values (1,1,'1','1');

/*Table structure for table `t_sys_role` */

DROP TABLE IF EXISTS `t_sys_role`;

CREATE TABLE `t_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??id??',
  `role_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '???? ?????',
  `role_type` int(11) NOT NULL COMMENT '0 ????? 1?????',
  `pow_id` int(11) NOT NULL COMMENT '????id',
  `role_date` varchar(200) NOT NULL COMMENT '?1,2,? ??? ????/?? ????',
  `role_issys` int(11) NOT NULL COMMENT '0 ?? 1???? ?????????',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`pow_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`pow_id`) REFERENCES `t_sys_power` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='???????????\r\n\r\n???????????\r\n\r\n1. ??????\r\n';

/*Data for the table `t_sys_role` */

insert  into `t_sys_role`(`id`,`role_name`,`role_type`,`pow_id`,`role_date`,`role_issys`) values (1,'1',1,1,'2014-01-01 10:20:30',1);

/*Table structure for table `t_sys_user` */

DROP TABLE IF EXISTS `t_sys_user`;

CREATE TABLE `t_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '???????(??)',
  `comp_num` varchar(20) DEFAULT NULL,
  `user_lname` varchar(20) NOT NULL COMMENT '?????',
  `user_password` varchar(100) NOT NULL COMMENT '????',
  `user_tname` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '????',
  `user_sex` int(11) NOT NULL DEFAULT '0' COMMENT '???0 ? 1 ? 2 ??',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '?????',
  `user_email` varchar(50) DEFAULT NULL COMMENT '????',
  `user_tel` varchar(20) DEFAULT NULL COMMENT '????',
  `user_qq` varchar(20) DEFAULT NULL COMMENT 'QQ??',
  `dep_id` int(11) NOT NULL COMMENT '?????(1?2)',
  `user_position` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '???????',
  `user_jobstatus` int(11) DEFAULT '1' COMMENT '1?? 2?? 3?? 4??',
  `role_id` int(11) NOT NULL COMMENT '????? ',
  `user_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0 ?? 1?? ',
  PRIMARY KEY (`id`),
  KEY `AK_Key_2` (`comp_num`),
  KEY `FK_Reference_3` (`role_id`),
  KEY `FK_Reference_4` (`dep_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`role_id`) REFERENCES `t_sys_role` (`id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`dep_id`) REFERENCES `t_sys_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COMMENT='??????\r\n\r\n?????????????????????';

/*Data for the table `t_sys_user` */

insert  into `t_sys_user`(`id`,`comp_num`,`user_lname`,`user_password`,`user_tname`,`user_sex`,`user_phone`,`user_email`,`user_tel`,`user_qq`,`dep_id`,`user_position`,`user_jobstatus`,`role_id`,`user_enable`) values (3,'10000','admin','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','超级管理员',0,'15225062328','cyutyw@126.com',NULL,NULL,1,NULL,NULL,1,0),(5,'99999','terwer','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A',NULL,0,'15927766472',NULL,NULL,NULL,1,NULL,NULL,1,0),(6,'10000','terwer1','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A',NULL,0,'13676545456',NULL,NULL,NULL,1,NULL,NULL,1,0),(7,'10000','terwer2','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A',NULL,0,'13434323454',NULL,NULL,NULL,1,NULL,NULL,1,0),(8,'10000','terwer3','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A',NULL,0,'13297156655',NULL,NULL,NULL,1,NULL,NULL,1,0),(9,'10000','terwer4','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13232334323',NULL,NULL,NULL,1,NULL,NULL,1,0),(10,'10000','terwer5','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13323232323',NULL,NULL,NULL,1,NULL,NULL,1,0),(11,'10000','mtj111','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','优创',0,'13243423456',NULL,NULL,NULL,1,NULL,NULL,1,0),(12,'10000','tyw222','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','优创',0,'13234323432',NULL,NULL,NULL,1,NULL,NULL,1,0),(13,'10000','tyw333','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','优创',0,'13297156657',NULL,NULL,NULL,1,NULL,NULL,1,0),(14,'10000','terwer33','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A',NULL,0,'13297156633',NULL,NULL,NULL,1,NULL,NULL,1,0),(15,'10000','terwer222','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13287565455',NULL,NULL,NULL,1,NULL,NULL,1,0),(16,'10000','terwer333','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','嗯嗯嗯嗯嗯呃',0,'13232323234',NULL,NULL,NULL,1,NULL,NULL,1,0),(17,'10000','terwer444','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','唐有炜',0,'13234343432',NULL,NULL,NULL,1,NULL,NULL,1,0),(18,'10000','terwer555','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13232343234',NULL,NULL,NULL,1,NULL,NULL,1,0),(19,'10000','ling_616','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13592583242',NULL,NULL,NULL,1,NULL,NULL,1,0),(20,'99999','youchuang','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','黄栾',0,'13298125901',NULL,NULL,NULL,1,NULL,NULL,1,0),(21,'10000','youchuang1','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','黄栾',0,'13298125902',NULL,NULL,NULL,1,NULL,NULL,1,0),(22,'10000','youchuang2','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','黄栾',0,'13298125903',NULL,NULL,NULL,1,NULL,NULL,1,0),(23,'10000','youchuang3','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13243432345',NULL,NULL,NULL,1,NULL,NULL,1,0),(24,'10000','youchuang4','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13243432372',NULL,NULL,NULL,1,NULL,NULL,1,0),(25,'10000','youchuang5','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','sss',0,'13232345432',NULL,NULL,NULL,1,NULL,NULL,1,0),(26,'10000','tester','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','',0,'13888888888',NULL,NULL,NULL,1,NULL,NULL,1,0),(27,'10000','youchuang6','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','黄栾',0,'13298125904',NULL,NULL,NULL,1,NULL,NULL,1,0),(28,'10000','admin2','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','唐有炜',0,'15927766471',NULL,NULL,NULL,1,NULL,NULL,1,0),(29,'10000','youchuang8','RQA4AFUAdwA1AG8AUwB1AFcALwBJAD0A','黄栾',0,'13298125907',NULL,NULL,NULL,1,NULL,NULL,1,0);

/*Table structure for table `v_company_user` */

DROP TABLE IF EXISTS `v_company_user`;

/*!50001 DROP VIEW IF EXISTS `v_company_user` */;
/*!50001 DROP TABLE IF EXISTS `v_company_user` */;

/*!50001 CREATE TABLE  `v_company_user`(
 `user_id` int(11) NOT NULL  default '0' ,
 `comp_id` int(11) NOT NULL  default '0' ,
 `comp_num` varchar(20) NOT NULL ,
 `user_lname` varchar(20) NOT NULL ,
 `user_password` varchar(100) NOT NULL ,
 `user_tname` varchar(20) NULL ,
 `comp_tname` varchar(30) NULL ,
 `user_sex` int(11) NOT NULL  default '0' ,
 `user_phone` varchar(20) NULL ,
 `user_email` varchar(50) NULL ,
 `user_tel` varchar(20) NULL ,
 `user_qq` varchar(20) NULL ,
 `dep_id` int(11) NOT NULL ,
 `user_position` varchar(30) NULL ,
 `user_jobstatus` int(11) NULL  default '1' ,
 `role_id` int(11) NOT NULL ,
 `user_enable` int(11) NOT NULL  default '1' 
)*/;

/*View structure for view v_company_user */

/*!50001 DROP TABLE IF EXISTS `v_company_user` */;
/*!50001 DROP VIEW IF EXISTS `v_company_user` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_company_user` AS (select `t_sys_user`.`id` AS `user_id`,`t_sys_company`.`id` AS `comp_id`,`t_sys_company`.`comp_num` AS `comp_num`,`t_sys_user`.`user_lname` AS `user_lname`,`t_sys_user`.`user_password` AS `user_password`,`t_sys_user`.`user_tname` AS `user_tname`,`t_sys_company`.`comp_tname` AS `comp_tname`,`t_sys_user`.`user_sex` AS `user_sex`,`t_sys_user`.`user_phone` AS `user_phone`,`t_sys_user`.`user_email` AS `user_email`,`t_sys_user`.`user_tel` AS `user_tel`,`t_sys_user`.`user_qq` AS `user_qq`,`t_sys_user`.`dep_id` AS `dep_id`,`t_sys_user`.`user_position` AS `user_position`,`t_sys_user`.`user_jobstatus` AS `user_jobstatus`,`t_sys_user`.`role_id` AS `role_id`,`t_sys_user`.`user_enable` AS `user_enable` from (`t_sys_company` join `t_sys_user` on((`t_sys_company`.`comp_num` = `t_sys_user`.`comp_num`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
