-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: edu
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(99) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '原图',
  `url` varchar(100) DEFAULT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '1' COMMENT '所处位置：1首页 ',
  `st` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0删除状态,1正常，2不显示',
  `sort` tinyint(4) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='广告图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (50,'ad1','/uploads/ad/20170810/9b2632b518b6a282ee0b8b0a84d91881.png',NULL,1,1,0,1502335175,1502336236),(51,'ad2','/uploads/ad/20170810/b73f8027bab0b9146db56c57b4ce5617.png',NULL,1,1,0,1502335269,1502335961),(52,'ad3','/uploads/ad/20170810/b8fb78186012de7c642702aa681dc761.png',NULL,1,1,0,1502335286,1502336230);
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `true_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `mobile` char(11) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0' COMMENT '是否为默认地址',
  `pcd` varchar(100) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL COMMENT '收货地址其它信息',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='收货人地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (4,11,'王小给','13588984521',0,'河南省许昌市文化区','光明路8号幸福小区',NULL,NULL),(5,11,'王小给','13588984985',0,'河南省许昌市训新区','霞光路10号百度分公司1103',NULL,NULL),(6,12,'张某人','13544484521',0,'北京北京昌平区','永泰中路21号永泰东里27号楼',NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '账号',
  `pwd` char(32) DEFAULT NULL COMMENT '密码',
  `times` int(11) DEFAULT '0' COMMENT '登录次数',
  `last_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'eduadmin','319dbd9746cefb814e0056899b1aa928',0,0,1501833012,1502336648),(2,'eduadmin2','a8390bd091760b0db7c8cfdb1b1ba69f',0,0,1501833030,1501833030);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '1' COMMENT 'admin_id',
  `last_ip` varchar(50) DEFAULT '' COMMENT '上次登录ip',
  `last_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` VALUES (57,1,'127.0.0.1',0,1501833137,1501833137),(58,1,'127.0.0.1',0,1502067864,1502067864),(59,1,'127.0.0.1',0,1502240961,1502240961),(60,1,'127.0.0.1',0,1502333311,1502333311),(61,1,'127.0.0.1',0,1502336471,1502336471),(62,1,'127.0.0.1',0,1502336681,1502336681),(63,1,'127.0.0.1',0,1502436213,1502436213),(64,1,'127.0.0.1',0,1502442590,1502442590),(65,1,'127.0.0.1',0,1502674307,1502674307);
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_article_id` int(11) DEFAULT '1' COMMENT '文章分类id',
  `school_id` int(11) NOT NULL COMMENT '院校id',
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL DEFAULT '',
  `cont` text NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '1',
  `admin_id` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `st` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0删除状态,1正常，2不显示',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '首页推荐',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_article_id` (`cate_article_id`,`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,1,'zixunbjdxfenlei1-1','','zixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1cont\r\nzixun1contzixun1contzixun1cont\r\n\r\nzixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1cont\r\n\r\nzixun1contzixun1contzixun1contzixun1cont',1,1,1502252734,1502260806,0,1,1),(2,1,4,'zixun2qh','','zixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontent\r\n\r\nzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontent',1,1,1502253241,1502258020,1,0,1),(3,3,1,'zixun2bjd','','zixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcont',1,1,1502253282,1502253282,1,0,3),(4,2,3,'zinxunqinghua2-1','','zinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4cont',1,1,1502253316,1502258005,1,0,4),(5,5,5,'zixunr mdxfnelei3-1','','zixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1cont',1,1,1502253403,1502438976,1,1,5),(6,1,1,'bjdxfenlei1-2','','bjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2cont',1,1,1502255117,1502255117,1,1,5);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attr`
--

DROP TABLE IF EXISTS `attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1真题 2书',
  `name` varchar(100) NOT NULL,
  `input_type` tinyint(4) DEFAULT '1' COMMENT '值添加类型：1下拉添加 2表单输入',
  `values` text COMMENT '当为下拉类型时，则添加可能值,表单输入时为空',
  `st` tinyint(4) DEFAULT '1',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='属性表,与类型关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attr`
--

LOCK TABLES `attr` WRITE;
/*!40000 ALTER TABLE `attr` DISABLE KEYS */;
INSERT INTO `attr` VALUES (8,1,'zuozhe',1,'lishen,qingyao',1,1502092025,1502092025),(9,1,'tushuattr2',2,'value1',1,1502092889,1502093558),(10,2,'zhentiattr1',1,'value1,value2,value3,',1,1502092958,1502093514),(11,1,'发行日期',1,'2015,2016',1,1502097607,1502097607);
/*!40000 ALTER TABLE `attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1书分类 2真题分类',
  `st` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常，2删除',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='资料分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (4,'图书分类1',1,1,1,1501836131,1502068388),(5,'图书分类2',1,1,2,1501839233,1501839587),(6,'真题分类1',2,1,1,1501839251,1502068381),(7,'真题分类2',2,1,2,1501839267,1502260175);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate_article`
--

DROP TABLE IF EXISTS `cate_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '上级id',
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `st` tinyint(4) DEFAULT '1' COMMENT '1正常 0删除',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文章类别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate_article`
--

LOCK TABLES `cate_article` WRITE;
/*!40000 ALTER TABLE `cate_article` DISABLE KEYS */;
INSERT INTO `cate_article` VALUES (1,0,'zixunfenlei1',1,1,1502247935,1502248458),(2,0,'ziuxnfenlei2',2,1,1502247955,1502248384),(3,0,'zixunfenlei3',3,1,1502248001,1502248507),(4,0,'zixunfenlei4',4,1,1502248012,1502248399),(5,0,'zxfenlei5',2,1,1502255263,1502255803);
/*!40000 ALTER TABLE `cate_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdan`
--

DROP TABLE IF EXISTS `dingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT '0',
  `sum_price` decimal(10,2) DEFAULT '0.00',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `good_st` tinyint(4) DEFAULT NULL COMMENT '商品状态，1没发货 2已发货 3已收货 4已下载',
  `st` tinyint(4) DEFAULT '1' COMMENT '1没支付  2完成支付 3取消',
  `orderno` varchar(50) NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderno` (`orderno`),
  KEY `user_id` (`user_id`,`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdan`
--

LOCK TABLES `dingdan` WRITE;
/*!40000 ALTER TABLE `dingdan` DISABLE KEYS */;
INSERT INTO `dingdan` VALUES (1,11,4,1.10,0,1502358623,1,4,'154089892df'),(2,11,5,1.30,0,1502359427,2,2,'154789292df'),(4,12,6,0.01,0,1502358886,2,2,'154955652df');
/*!40000 ALTER TABLE `dingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '名称',
  `store` int(11) DEFAULT '1' COMMENT '库存数量',
  `sales` int(11) DEFAULT '0' COMMENT '销量，商品发货后增加',
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `school_id` int(11) NOT NULL DEFAULT '1' COMMENT '院校id',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
  `img_big` varchar(255) NOT NULL DEFAULT '' COMMENT '大图',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `desc` text COMMENT '描述',
  `ifdown` tinyint(4) DEFAULT '0' COMMENT '是否可下载',
  `file` varchar(255) DEFAULT '' COMMENT '可下载时的文件路径',
  `type` tinyint(4) DEFAULT '1' COMMENT '1图书 2真题',
  `is_add_attr` tinyint(4) DEFAULT '0' COMMENT '是否添加参数',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '首页',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除， 1正常 ,2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`,`school_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='资料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
INSERT INTO `good` VALUES (1,'tushu1-1',0,0,4,2,'/uploads/good/20170807/0d6eb1e96a9118f2621ee768a90377d8.png','/uploads/good/20170807/db7c7ace41e58b490ea3c536d0673b4c.png',0.01,'<p>\r\n	asdfa\r\n</p>\r\n<p>\r\n	adga\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	dgae2w43545asf7a3\r\n</p>',0,'',1,0,1,1,1,1502079047,1502343257),(2,'tushu1-2',7,0,4,1,'/uploads/good/20170807/34849f7f83a700b36646714ad7b3607a.png','/uploads/good/20170807/2f9a347a36290cac719792a9a6f4b1a7.png',0.02,'<br />\r\n<p>\r\n	架车路线\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n联系我们<br />\r\n<div>\r\n	<br />\r\n</div>',0,'',1,0,1,2,1,1502079261,1502438414),(3,'zhenti1-1',1,2,6,1,'/uploads/good/20170807/1927e0fcc0f1ea74158006d76123c15c.png','/uploads/good/20170807/c387259ea01568f61ad18a88e393f56f.png',0.12,'<p>\r\n	真是1就是好啊\r\n</p>\r\n<p>\r\n	来做一下吧\r\n</p>\r\n<p>\r\n	真是好吗\r\n</p>',0,'',2,1,0,1,1,1502079313,1502095881),(4,'zhenti1－2',1,0,6,1,'/uploads/good/20170807/cc9d515151c19516c3ca4ae1eb7af07a.png','/uploads/good/20170807/caa3d1d517632760e095c9391f945b50.png',0.11,'<p style=\"text-indent:2em;\">\r\n	前有写过百度网盘如何添加好友，但是并没有明确的找到百度网盘添加好友的入口，今天发现百度网盘的分享里面有一个添加好友的功能，这里和大家补充一下，希望对大家有所帮助！！\r\n</p>',0,'',2,1,0,2,1,1502079451,1502095915),(5,'zhenti2-1',2,0,7,4,'/uploads/good/20170807/5fe0747ff8fe070091126a8311f2c99d.png','/uploads/good/20170807/edacdb4395c3d59351d865f8dacf2c05.png',0.01,'<p>\r\n	真是2分类下2\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',0,'',2,0,0,1,1,1502082131,1502343187),(6,'zhenti2-2',1,0,7,5,'/uploads/good/20170807/e5c61d3410b528a817faff00a5c25488.png','/uploads/good/20170807/4913109cf4c41cb1d70fcdb618875061.png',0.20,'adf2342asdg',0,'',2,1,1,2,1,1502082178,1502260738),(7,'zhenti2-2bd',1,0,7,4,'/uploads/good/20170809/7d78843a2d9453046d762e7be93703a2.png','/uploads/good/20170809/c625bc62a0a50d6c25c6eb3651cdecc2.png',0.01,'<p>\r\n	ziliaagjoiasdg\r\n</p>\r\n<p>\r\n	adsgadgsag4654564asdg\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	asd1g35a4dg6a69g\r\n</p>',0,'',2,0,0,0,1,1502257748,1502336198),(8,'tushu3kc',3,0,5,1,'/uploads/good/20170810/85a4681583e35e6b9c24a936918a79d2.png','/uploads/good/20170810/b061dca679fa4ebf0b3fa736128ddca0.png',0.00,'',0,'',1,0,0,0,1,1502343031,1502343178);
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_attr`
--

DROP TABLE IF EXISTS `good_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL COMMENT 'good_id',
  `attr_id` int(11) NOT NULL COMMENT 'attr_id',
  `value` varchar(100) DEFAULT NULL COMMENT '产品属性值',
  `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`,`good_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='产品-属性表(与good表 和 attr表关联)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_attr`
--

LOCK TABLES `good_attr` WRITE;
/*!40000 ALTER TABLE `good_attr` DISABLE KEYS */;
INSERT INTO `good_attr` VALUES (30,6,8,'lishen',0,0,1502267747),(31,6,9,'value1',0,0,1502267747),(32,3,10,'value2',1,0,0),(33,4,8,'lishen',1,0,0),(34,4,9,'value1',1,0,0),(35,6,8,'qingyao',0,0,1502267788),(36,6,9,'value1',0,0,1502267788),(37,6,11,'2015',0,0,1502267788),(38,6,10,'value2',0,0,1502267947),(39,6,8,'',0,0,1502268104),(40,6,9,'value1',0,0,1502268104),(41,6,11,'',0,0,1502268104),(42,6,8,'lishen',0,0,1502268164),(43,6,9,'value1',0,0,1502268164),(44,6,11,'',0,0,1502268164),(45,6,8,'lishen',0,0,1502270295),(46,6,9,'',0,0,1502270295),(47,6,11,'2016',0,0,1502270295),(48,6,8,'qingyao',1,0,0),(49,6,9,'value3',1,0,0),(50,6,11,'',1,0,0);
/*!40000 ALTER TABLE `good_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_admin`
--

DROP TABLE IF EXISTS `menu_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '导航名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '导航上级id，总分两级,0表示一级',
  `controller` varchar(100) DEFAULT '' COMMENT '控制器,为一级时为""',
  `action` varchar(100) DEFAULT '' COMMENT '控制器中方法,为一级时为""',
  `param` varchar(100) DEFAULT '' COMMENT '参数',
  `sort` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='后台左侧导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_admin`
--

LOCK TABLES `menu_admin` WRITE;
/*!40000 ALTER TABLE `menu_admin` DISABLE KEYS */;
INSERT INTO `menu_admin` VALUES (1,'主要管理',0,'','','',1,1499926154,1499926154),(2,'资料分类',1,'Cate','index','',3,1499926628,1502096492),(4,'资讯分类',1,'CateArticle','index','',6,1499929021,1502096536),(5,'资料',1,'Good','index','',2,1499931635,1501833787),(6,'资讯',1,'Article','index','',5,1499931757,1502096531),(7,'资料参数',1,'Attr','index','',4,1500019957,1502096510),(8,'订单管理',0,'','','',2,1500281130,1502343485),(9,'广告图',1,'Ad','index','',7,1500281153,1502343371),(10,'网站设置',14,'Setting','edit','',5,1500281224,1502343585),(11,'订单',8,'Dingdan','index','',1,1500353254,1502343547),(14,'其它管理',0,'','','',3,1500451917,1502343607),(15,'修改后台密码',14,'Admin','edit','',2,1500452020,1502338124),(21,'小程序用户',8,'User','index','',2,1502338116,1502343555),(20,'院校首页推荐',1,'SchoolRec','index','',8,1502100618,1502343387),(19,'院校',1,'School','index','',1,1501834139,1502096449);
/*!40000 ALTER TABLE `menu_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_good`
--

DROP TABLE IF EXISTS `order_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `nums` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_good`
--

LOCK TABLES `order_good` WRITE;
/*!40000 ALTER TABLE `order_good` DISABLE KEYS */;
INSERT INTO `order_good` VALUES (1,1,3,2,0),(2,2,4,1,0),(3,4,6,5,0);
/*!40000 ALTER TABLE `order_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '校名',
  `lishu` varchar(50) DEFAULT '1' COMMENT '隶属',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '院校列表图',
  `img_big` varchar(255) NOT NULL DEFAULT '' COMMENT '院校大图',
  `city` varchar(50) NOT NULL DEFAULT '1' COMMENT '所在城市',
  `st` tinyint(4) DEFAULT '1' COMMENT '0不显示， 1正常 ,2删除',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '10000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='院校表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'beijingdaxue','jiaoyubu','/uploads/school/20170809/f35c2283a49e824380b0c5342805f84a.png','/uploads/school/20170809/ca75fa074a5a59cc0d251597e7bb2308.png','beijineg',1,1502243831,1502245687,2),(2,'qinghua','jiaoyubu','/uploads/school/20170809/8873333f8b709f38b91aa82a8856d552.png','/uploads/school/20170809/f1476a1598b7b6eb048efb15cf1b1035.png','biejing',1,1502244322,1502258158,0),(3,'guangxikejidaxue','gaugnxi','/uploads/school/20170809/ce8faafb748fad7a8ee3dfe75d460004.png','/uploads/school/20170809/96896c9dbc588e2ca498903fee11de76.jpg','liuzhou',1,1502244376,1502245693,3),(4,'renmindaxue','keyanbu','/uploads/school/20170809/fac56624951e4e714356efc1682e95cd.png','/uploads/school/20170809/be3869aed28eb70e158e6c180db6c45c.png','beijing',1,1502244410,1502245712,4),(5,'zhengzhoudaxue','zhongdian','/uploads/school/20170809/87929a979a263f4d9549d56667e00386.png','/uploads/school/20170809/ab5c09f0d6d54faeee871bc95745eed2.png','zhengzhou',1,1502245609,1502245609,1),(6,'guagmingdaxue','jioayubu','/uploads/school/20170811/0c7b75a409a487af4c3f022e7cf976cf.png','/uploads/school/20170811/fb6996253e5cabb1707fd03cf4c1b1a7.png','taiyuan',1,1502440124,1502440124,10000);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_rec`
--

DROP TABLE IF EXISTS `school_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_rec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL COMMENT '校id',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '推荐图',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1上部推荐 2下部推荐',
  `st` tinyint(4) DEFAULT '1' COMMENT '0不显示， 1正常 ,2删除',
  `sort` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='院校推荐表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_rec`
--

LOCK TABLES `school_rec` WRITE;
/*!40000 ALTER TABLE `school_rec` DISABLE KEYS */;
INSERT INTO `school_rec` VALUES (1,3,'/uploads/school_rec/20170809/b3a34b61d305917eccef4f4b061aae71.png',2,1,2,1502265113,1502267399),(2,1,'/uploads/school_rec/20170809/2c2db361eb392f9c32a8483d02f71ea4.png',1,1,1,1502265289,1502267388),(3,4,'/uploads/school_rec/20170809/35e2582249d76ee09c55e24cd68b7516.png',1,1,0,1502267318,1502267318),(4,5,'/uploads/school_rec/20170809/9f1dca7765fa7854be7e64abf6bf0001.png',2,1,0,1502267328,1502267328),(5,2,'/uploads/school_rec/20170809/e189564c7642458ed5d1bd078e90ba8a.png',2,1,0,1502267341,1502267378);
/*!40000 ALTER TABLE `school_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) NOT NULL DEFAULT 'asdf4657489234asdfasdg' COMMENT '微信用户的',
  `nickname` varchar(50) NOT NULL DEFAULT '微信昵称',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `pwd` varchar(32) NOT NULL DEFAULT '' COMMENT 'md5加密保存',
  `mobile` char(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为男',
  `vistar` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `login_ip` varchar(20) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `st` tinyint(4) NOT NULL DEFAULT '1',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `open_id` (`open_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'jaidlkjg89234_klsdg-3434ljg','php888','uname1','','',1,'',NULL,NULL,NULL,1,0,0),(12,'jaidlkadf34234_klsdgsdfjg','php666','uname2','','',1,'',NULL,NULL,NULL,1,0,0),(13,'jaadf34kjg89234_klsdg-asd34ljg','php3434','uname3','','',1,'',NULL,NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-14 11:24:46
