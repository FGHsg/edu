-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: guoshu
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
  `url` varchar(255) DEFAULT '',
  `word` text,
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '处理前图',
  `position` tinyint(4) NOT NULL DEFAULT '1' COMMENT '所处位置：1首页 2关于我们 3产品中心 4新品爆品 5微信动态 6产品中心详情页 7新品爆品详情页',
  `status` tinyint(4) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `new_window` tinyint(4) DEFAULT '0' COMMENT '链接是否在新窗口打开？',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,'index1','http://www.guoshu.com/good/1','skc sdfk顺55','/uploads/Ad/20170718/1bb7011c1d93e03b19c041bdeb7f4a8f.png',1,1,1500340719,1500345022,0),(2,'index2','','adf2342dsd','/uploads/Ad/20170718/e06c1ed672d91dd92601971190d93d6e.png',1,1,1500341307,1500343539,0),(3,'产品中心上','http://www.guoshu.com/good/3','','/uploads/Ad/20170718/8f3a6bb9b89fab410823031eb7d6c98a.png',2,1,1500341952,1500711692,0),(4,'index3','','safdsag','/uploads/Ad/20170718/d0f4a22e481636ab42d2eac00ee7669f.png',1,1,1500343178,1500359572,0),(5,'showye第一张','','<p>\r\n	<img src=\"/guoshu/public/editor/attached/image/20170718/20170718165415_77545.png\" alt=\"\" />好的吉国\r\n</p>\r\n<p>\r\n	夺中不困在夺\r\n</p>','/uploads/ad/20170718/a87bf4ed27166437dd0c3de6cc0fa82d.png',1,1,1500368069,1500368069,0),(6,'wc1','','<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:18px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, &quot;font-size:18px;background-color:#FFFFFF;\">棒师傅首发爆品之</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:18px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, &quot;font-size:18px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, &quot;font-size:18px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;恋爱盒子</span><br />\r\n</span></span>\r\n</p>\r\n<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:18px;background-color:#FFFFFF;\"></span>','/uploads/ad/20170722/6248ca400c4d1091af1ad03410b6cf3d.png',10,1,1500701708,1500701708,0),(7,'wc2','http://www.sina.com','<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\">最酷混搭 最爽口感</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\">  冰爽椰巧玉米露</span><br />\r\n</span>\r\n</p>','/uploads/ad/20170722/d7aad3c78497ac05eefccf8309d85cd6.png',10,1,1500701740,1500702276,0),(8,'wx3','','<p>\r\n	sdfg345\r\n</p>\r\n<p>\r\n	s gf345\r\n</p>','/uploads/ad/20170722/598555e06033b0daedf9d231288c5807.png',10,1,1500702393,1500702393,0),(9,'saoindex','http://localhost/guoshu/public/gshpc/wx/index.html','','/uploads/ad/20170722/bd9e7e9f56b32cc7aa4ae558345f6d97.png',11,1,1500702595,1500702595,0),(10,'guyu','','','/uploads/ad/20170722/9f44bfd844406b998af87a8dea185251.jpg',8,1,1500705218,1500705218,0),(11,'fanzhan1','','','/uploads/ad/20170722/4101cb18d26425af1dac36dc370de200.jpg',12,1,1500707486,1500707486,0),(12,'fz2','','','/uploads/ad/20170722/462f2b2b572a98eb7df25c43dbaa1d6f.png',12,2,1500707797,1500707810,0),(13,'cpzx1','','','/uploads/ad/20170722/61b7974f69a60fd9f0d08a26c8c5188b.png',2,1,1500711949,1500711949,0),(14,'new1','http://163.com','','/uploads/ad/20170722/a9d02fe9645889c2e875103a91b589c8.png',3,1,1500717855,1500765632,1),(15,'xq1','','','/uploads/ad/20170723/d503e9996be38fb4452f2011857b95fe.png',5,1,1500766986,1500766986,0),(16,'newdatal','','','/uploads/ad/20170723/429f98b59fbe1782e3e39010dbb06581.png',6,1,1500772921,1500772921,0),(17,'wxdt','','','/uploads/ad/20170723/87fcfb9e1070572d4406f8c7f07cb288.png',4,1,1500776153,1500777747,0),(18,'wxdtlb1','','','/uploads/ad/20170723/45f5b4f503f7f851a7cf4135e2f4c7e3.png',7,1,1500777184,1500777250,0),(19,'logo1','','','/uploads/ad/20170723/33c4813cde6368f56af8440716ebb93c.png',13,1,1500794415,1500794415,0),(20,'erwm','','','/uploads/ad/20170723/443f7f3d018040d4f6ba5c98a42a417f.png',14,1,1500799367,1500799367,0),(21,'liniandi','http://www.sina.com','','/uploads/ad/20170724/ae0e6f44e5cf93d1be2d0ef1d23a83b9.png',9,1,1500861338,1500861729,0);
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'guoshu','b2c282b9bbeb858ddffc30a4973b6489',0,0,0,1500456440);
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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` VALUES (1,1,'0.0.0.0',1499767207,1499767207,1499767207),(2,1,'0.0.0.0',1499767231,1499767231,1499767231),(3,1,'0.0.0.0',0,1499767560,1499767560),(4,1,'0.0.0.0',0,1499916149,1499916149),(5,1,'0.0.0.0',0,1499925030,1499925030),(6,1,'0.0.0.0',0,1499938178,1499938178),(7,1,'0.0.0.0',0,1500014353,1500014353),(8,1,'0.0.0.0',0,1500252968,1500252968),(9,1,'0.0.0.0',0,1500263126,1500263126),(10,1,'0.0.0.0',0,1500339905,1500339905),(11,1,'0.0.0.0',0,1500352852,1500352852),(12,1,'0.0.0.0',0,1500435777,1500435777),(13,1,'0.0.0.0',0,1500446591,1500446591),(14,1,'0.0.0.0',0,1500453897,1500453897),(15,1,'0.0.0.0',0,1500454086,1500454086),(16,1,'0.0.0.0',0,1500454490,1500454490),(17,1,'0.0.0.0',0,1500454539,1500454539),(18,1,'0.0.0.0',0,1500454573,1500454573),(19,1,'0.0.0.0',0,1500454631,1500454631),(20,1,'::1',0,1500455625,1500455625),(21,1,'::1',0,1500456424,1500456424),(22,1,'::1',0,1500456448,1500456448),(23,1,'::1',0,1500513406,1500513406),(24,1,'::1',0,1500513427,1500513427),(25,1,'::1',0,1500685652,1500685652),(26,1,'::1',0,1500685681,1500685681),(27,1,'::1',0,1500685702,1500685702),(28,1,'::1',0,1500687879,1500687879),(29,1,'::1',0,1500692678,1500692678),(30,1,'::1',0,1500701197,1500701197),(31,1,'::1',0,1500707367,1500707367),(32,1,'::1',0,1500716637,1500716637),(33,1,'::1',0,1500764567,1500764567),(34,1,'::1',0,1500772464,1500772464),(35,1,'::1',0,1500787510,1500787510),(36,1,'127.0.0.1',0,1500858729,1500858729),(37,1,'127.0.0.1',0,1500944768,1500944768);
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attr`
--

DROP TABLE IF EXISTS `attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `name` varchar(100) NOT NULL,
  `type` tinyint(4) DEFAULT '1' COMMENT '值添加类型：1下拉添加 2表单输入',
  `values` text COMMENT '当为下拉类型时，则添加可能值,表单输入时为空',
  `status` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='产品属性表,与分类关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attr`
--

LOCK TABLES `attr` WRITE;
/*!40000 ALTER TABLE `attr` DISABLE KEYS */;
INSERT INTO `attr` VALUES (1,0,'级别',1,'L级,A级',1,1500254357,1500265218),(2,2,'保质期',1,'12,23,24,8',1,1500254575,1500264905),(3,0,'规格',1,'850g*12/件,120g*12/件',1,1500258212,1500258212),(4,0,'包装',1,'马口铁,羊口铁,ss',1,1500264957,1500265592),(5,0,'固形物含量',2,'55%',1,1500270810,1500270810),(6,2,'测试秆',1,'中是中国,不则时,苦苦,苦苦苦',1,1500367375,1500367425);
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
  `name` varchar(99) NOT NULL COMMENT '名称',
  `slogan` varchar(50) DEFAULT '' COMMENT '分类标语：好樱桃来自好产地',
  `desc` text COMMENT '分类描述',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '当type=2时列表原图',
  `type` tinyint(4) DEFAULT '1' COMMENT '分类类型：1表示产品导航下 2表示新品爆品下',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '首页推荐',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'中心分类1','好栎 来自山东','好栎 来自山东好栎 来自山东\r\n好栎 来自山东\r\n好栎 来自山东','',1,0,3,1,1499938319,1500713427),(2,'中心分类2','好原料 来自好产地','优质水果产区，精洗水果加工而成不僻得精','',1,0,2,1,1499938863,1500256365),(3,'苦adf111','asdf111dsf','adfasdf11134','',1,0,4,1,1499938893,1500713436),(4,'樱桃金罐','   好樱桃 源自好产地   ','<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 中国优质大樱桃产区—山东烟台\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 地处胶东半岛海洋气候及生态环境适宜大樱桃种植与生长\r\n</p>\r\n<p>\r\n	中国早期引进大樱桃种植的区域 &nbsp; &nbsp; &nbsp; &nbsp;中国大樱桃大规模种植的区域\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 素有“北方春果第一枝”美誉\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','',1,0,0,1,1499938977,1500713005),(5,'234234','dfaf','23424adf','',1,0,2,1,1499939115,1500001554),(6,'adfag6','adgag6','asdgag6','',1,0,6,1,1499939168,1499997960),(7,'adfag23','adgag34','asdgag34','',1,0,2,1,1499939270,1500713417),(8,'123','123','312','',1,0,4,1,1499939301,1500257223),(9,'sdsfsf','','sdsfsf','/uploads/new_hot/20170714/f42e0b88440702f24dac1b46af4950d4.png',2,1,1,1,1499940188,1500695808),(10,'分类2','','分类2分类2分类2','/uploads/new_hot/20170713/6413d4d029f1455667bd3a7621f925d9.png',2,0,1,1,1499940394,1499940394),(11,'果找茶蛋糕','','<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\">             当果遇上茶完美融合果香和茶香</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\">                    果与茶用不同的味道</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, \"font-size:18px;background-color:#FFFFFF;\">         酸甜美味的果，慢柔宁静的茶相约在一起。</span><br />\r\n</span>\r\n</p>','/uploads/new_hot/20170722/afba9e1e491cc05cc0be4cea8f0aa6b1.png',2,1,12,1,1499941215,1500773486),(12,'adfsag','','adfsag','/uploads/new_hot/20170713/48847ed0df91928d0a25558dfe3a9b0e.png',2,0,0,1,1499942067,1500002880),(13,'ceshigyigetu','','ceshigyigetu','/uploads/new_hot/20170714/f10b14033cacf0525646e37de0dbd082.png',2,0,1,1,1499995827,1500256969),(14,'援藏一下','','asdfasg','/uploads/new_hot/20170714/9e6a19dd174d4abca383808225a85d98.png',2,1,0,1,1499996247,1500697001),(15,'改分类亲品','','改分类亲品','/uploads/new_hot/20170714/1c943ce7598bbab7ff6bf9a78f6c389a.png',2,1,11,1,1500002502,1500695818),(16,'改分类亲品','','改分类亲品','/uploads/new_hot/20170714/ff5d663029449403afdee424211b65ed.png',2,0,12,1,1500002615,1500002990),(17,'默认类型','',NULL,'',1,0,0,0,0,1500263285),(18,'默认类型','',NULL,'',1,0,0,0,0,1500263289),(-1,'默认类型','',NULL,'',1,0,0,1,0,0),(19,'恋爱盒子','','<p style=\"text-align:center;\">\r\n	好吃的就要合在一卢。。。\r\n</p>\r\n<p>\r\n	当你对时间，对的地点，遇到对的她，这是经合，当你捧一声蛋糕，答出一起分享，这就是爱情。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	爱要盒在下志起。\r\n</p>','/uploads/new_hot/20170718/42e77629bcb1d9e4d6091ee81b460ebf.png',2,0,1,1,1500365985,1500365985),(20,'水果浙掏系列水果浙掏系列水果浙掏系列水果浙掏系列水果浙掏系列','好原料 来自好产地','<p>\r\n	不能好好说吧一\r\n</p>\r\n<p>\r\n	<span>不能好好说吧一</span><span>不能好好说吧一</span> \r\n</p>\r\n<p>\r\n	<span>不能好好说吧一绿原声带</span>\r\n</p>','',1,0,2,1,1500366728,1500366778),(21,'樱桃罐头系列','   好樱桃 源自好产地   ','<p>\r\n	中国优质大樱桃产区—山东烟台棒师傅 &nbsp;樱桃种植基地。\r\n</p>\r\n<p>\r\n	精选应季新鲜樱桃加工而成，不含香精、防腐剂\r\n</p>','',1,0,1,1,1500713370,1500713370);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `status` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='合作客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (1,'hezuo1','','/uploads/friend/20170718/50b47c533e11c50831d991e2a620c2d6.png',1,1500355166,1500356104),(2,'宜家','http://www.guoshu/logo/3','/uploads/friend/20170718/ce3ba3bb575d1cc584ef1f7e2332fa48.png',1,1500355385,1500356050),(3,'111','http://sports.sina.com.cn/csl/','/uploads/friend/20170722/565587190158b05ab8c2374ac354c237.png',1,1500703475,1500703475);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `name` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
  `pic` varchar(255) NOT NULL DEFAULT '' COMMENT '详情页大图',
  `desc` text COMMENT '产品特点或描述',
  `sort` int(11) DEFAULT '0' COMMENT '产品排序',
  `status` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `is_add_attr` tinyint(4) DEFAULT '0' COMMENT '是否添加了属性',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '首页是否显示',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
INSERT INTO `good` VALUES (1,2,'product2','/uploads/good/20170722/8697a3b20c01debee6c74c28150eb05d.png','/uploads/good/20170714/e28d9c9ccebc4848ed3a0cc185d74e25.png','<p>\r\n	adfadf2345\r\n</p>\r\n<p>\r\n	i v kasdf l\r\n</p>',3,1,1,1500010061,1500769163,1),(2,2,'product1','/uploads/good/20170714/840e6c92f42c6d4a6f7c1b3f6d0c3fe1.png','/uploads/good/20170714/27abc99320948f495cdb1c31571d8f5e.png','p j wqi 浊枯',2,1,1,1500020583,1500769150,1),(3,8,'pro3','/uploads/good/20170714/f3b6b1c7a5c5892f8841419f8deb62d2.png','/uploads/good/20170714/864b09562cf2de8472638af349821177.png','adsfadf',0,1,0,1500020648,1500345786,0),(4,2,'你是夜班 2','/uploads/good/20170714/46364d89d61fa902c54445f46fc49df7.png','/uploads/good/20170714/6a9354fd0928db0240597806d4eabdef.png','adfaf',1,2,0,1500020668,1500772723,1),(5,2,'棒师傅金罐黑樱桃罐头','/uploads/good/20170722/2c65c05800889daeb1fc4b01e5be2625.png','/uploads/good/20170718/48ca8225a812310edca0b6e7c20765bd.png','<p>\r\n	产品特点：\r\n</p>\r\n<p>\r\n	不要放在水时，因为会不能放太久。\r\n</p>\r\n<p>\r\n	哈哈,这里描述信息会显示正常吗？\r\n</p>\r\n<p>\r\n	我是遷的\r\n</p>',4,1,0,1500364484,1500769188,1),(6,2,'棒师傅黑樱桃罐头','/uploads/good/20170722/1c6c1f775a969a6bab50d565cb01172f.png','/uploads/good/20170722/63eee77e969f3c7386b96d3edf1d06bf.png','<p>\r\n	后台左侧导航\r\n</p>\r\n<p>\r\n	后台左侧导航\r\n</p>\r\n<p>\r\n	后台左侧导航\r\n</p>',5,1,1,1500713504,1500772516,0),(7,21,'棒师傅天然黑樱桃罐头','/uploads/good/20170722/86bb49f20cf91e0af4e5b4797fd6823d.png','/uploads/good/20170722/2de1bd60943f572ef26813ae9f1a8b5f.png','asdfsfadsf',0,1,0,1500713681,1500713681,0),(8,21,'棒师傅原味有枝红樱桃罐头','/uploads/good/20170722/25bd75c5b1636a3318aaeabddcd6bf9b.png','/uploads/good/20170722/a3c7e5b080e4f0f7b0965f1a0ae2ec2e.png','eeeeeeeeee',0,1,0,1500713730,1500713730,0),(9,21,'棒师傅原味有枝黑樱桃罐头','/uploads/good/20170722/dc42df1e490f33e29017e2d2ca99c53d.png','/uploads/good/20170722/d468f55e8c187449b4947ae294f734ce.png','111111111111111111111',0,1,0,1500714272,1500714272,0),(10,21,'棒师傅黑樱桃罐头2','/uploads/good/20170722/8954d7b087c1dbcaf6151a5cf6e7751c.png','/uploads/good/20170722/c6ec5fd2c126262f12817cb70e850ac7.png','222222222222222',0,2,0,1500714330,1500714343,0);
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
  `status` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`,`good_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='产品-属性表(与good表 和 attr表关联)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_attr`
--

LOCK TABLES `good_attr` WRITE;
/*!40000 ALTER TABLE `good_attr` DISABLE KEYS */;
INSERT INTO `good_attr` VALUES (1,1,1,'L级',0,0,1500278471),(2,1,3,'850g*12/件',0,0,1500278471),(3,1,4,'马口铁',0,0,1500278471),(4,1,5,'55%',0,0,1500278471),(5,1,1,'L级',0,0,1500280325),(6,1,3,'850g*12/件',0,0,1500280325),(7,1,4,'马口铁',0,0,1500280325),(8,1,5,'55%',0,0,1500280325),(9,2,1,'A级',0,0,1500278619),(10,2,3,'850g*12/件',0,0,1500278619),(11,2,4,'羊口铁',0,0,1500278619),(12,2,5,'65%',0,0,1500278619),(13,2,1,'L级',0,0,1500279793),(14,2,3,'120g*12/件',0,0,1500279793),(15,2,4,'马口铁',0,0,1500279793),(16,2,5,'55%',0,0,1500279793),(17,2,1,'L级',1,0,0),(18,2,3,'120g*12/件',1,0,0),(19,2,4,'羊口铁',1,0,0),(20,2,5,'55%',1,0,0),(21,1,2,'24',1,0,0),(22,6,1,'A级',1,0,0),(23,6,3,'120g*12/件',1,0,0),(24,6,4,'羊口铁',1,0,0),(25,6,5,'23%',1,0,0);
/*!40000 ALTER TABLE `good_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_new`
--

DROP TABLE IF EXISTS `good_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `name` varchar(100) NOT NULL,
  `img_top` varchar(255) NOT NULL DEFAULT '' COMMENT '详情页上图',
  `img_bottom` varchar(255) NOT NULL DEFAULT '' COMMENT '详情页下图',
  `status` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常，2不显示',
  `sort` int(11) DEFAULT '0' COMMENT '产品排序',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新品爆品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_new`
--

LOCK TABLES `good_new` WRITE;
/*!40000 ALTER TABLE `good_new` DISABLE KEYS */;
INSERT INTO `good_new` VALUES (1,10,'new3','/uploads/GoodNew/20170714/2222b935bd991149c51a4ccf95f894e1.png','/uploads/GoodNew/20170714/b3a7fb4ec155c924742ef048ee60b29f.png',1,0,1500016865,1500345970),(2,10,'new1','/uploads/good_new/20170714/44a458f20f29321cd5f8897d5339b404.png','/uploads/good_new/20170714/fceaa5e31497d055fe263df798ce420c.png',1,0,1500017557,1500345954),(3,10,'nw3','/uploads/good_new/20170714/c8e3abcbd43b1510275c5bea7ef37315.png','/uploads/good_new/20170714/88f24d631d6de71df5a1391a39477fb6.png',1,0,1500017573,1500346169),(4,10,'sancheu12w','/uploads/good_new/20170714/cdaa362994a5d3de710ffc08ed8f26d1.png','/uploads/good_new/20170714/a4b2c32b072652a831e279a31b59b7e2.png',1,0,1500019675,1500345991),(5,10,'new1','/uploads/good_new/20170718/6b32fb8713b04740b3cf2572885260a7.png','/uploads/good_new/20170718/7f21df6a732a268c8b13e5bcb7251598.png',1,0,1500345939,1500346149);
/*!40000 ALTER TABLE `good_new` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='后台左侧导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_admin`
--

LOCK TABLES `menu_admin` WRITE;
/*!40000 ALTER TABLE `menu_admin` DISABLE KEYS */;
INSERT INTO `menu_admin` VALUES (1,'主要管理',0,'','','',1,1499926154,1499926154),(2,'产品中心分类',1,'Cate','index','type=1',1,1499926628,1499994666),(4,'产品中心产品',1,'Good','index','',3,1499929021,1500266695),(5,'新品爆品分类',1,'Cate','index','type=2',2,1499931635,1499994672),(6,'新品爆品产品',1,'GoodNew','index','',4,1499931757,1500266712),(7,'产品中心产品属性',1,'Attr','index','',5,1500019957,1500266728),(8,'其它管理',0,'','','',2,1500281130,1500362107),(9,'广告图',8,'Ad','index','',1,1500281153,1500281153),(10,'网站设置',8,'Setting','edit','',5,1500281224,1500795604),(11,'合作伙伴',8,'Friend','index','',2,1500353254,1500362045),(12,'招贤纳士',8,'Recruit','index','',3,1500357680,1500362035),(13,'网站seo',8,'SeoSet','index','',6,1500448374,1500795612),(14,'账号管理',0,'','','',3,1500451917,1500451917),(15,'修改后台密码',14,'Admin','edit','',1,1500452020,1500453720),(16,'销售咨询',8,'Seller','index','',4,1500795590,1500795590);
/*!40000 ALTER TABLE `menu_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit`
--

DROP TABLE IF EXISTS `recruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '职位名称',
  `duty` text COMMENT '岗位职责',
  `zige` text COMMENT '任职资格',
  `status` tinyint(4) DEFAULT '1',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='招贤纳士';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit`
--

LOCK TABLES `recruit` WRITE;
/*!40000 ALTER TABLE `recruit` DISABLE KEYS */;
INSERT INTO `recruit` VALUES (1,'销信赖656','1，另中国；\r\n2、奈右因不。\r\n9','1，另23中国；\r\n2、奈右434因不；\r\n3顶替',1,1500359008,1500359404),(2,'经理','<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:20px;background-color:#FFFFFF;\">1、开发多种销售渠道与客户资源，完成销售计划及汇款任务；</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:20px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, &quot;font-size:20px;background-color:#FFFFFF;\">2、有效地管理当地区域的经销商，与客户建立良好关系，以维护企业形象；</span><br />\r\n</span>\r\n</p>','<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:20px;background-color:#FFFFFF;\">1、大专以上学历，食品化工类相关专业；</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Tahoma, &quot;font-size:20px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:Tahoma, &quot;font-size:20px;background-color:#FFFFFF;\">2、5年以上食品加工行业的销售及客户管理工作经验；</span><br />\r\n</span>\r\n</p>',1,1500359429,1500708352),(3,'产品 经理','<p>\r\n	1、不要太夯实啊\r\n</p>\r\n<p>\r\n	2、要太强啊\r\n</p>\r\n<p>\r\n	3、不要太不要脸哦\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','<p>\r\n	1、大专学历\r\n</p>\r\n<p>\r\n	2、不心到时\r\n</p>\r\n<p>\r\n	3、不唐老鸭功\r\n</p>\r\n<p>\r\n	4\\经量很牛啊\r\n</p>',1,1500368527,1500368590);
/*!40000 ALTER TABLE `recruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '职位名称',
  `mobile` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `img` varchar(100) DEFAULT '' COMMENT '二维码',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='销售咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'南区销售经理','139 9853 7657','/uploads/seller/20170723/5d3987eb5faa7a411952795e638c7ce5.png',1500797101,1500799032),(3,'北区销售经理','130 1180 8686','/uploads/seller/20170723/11722ea79749581e2b515647d4ea9b22.png',1500798112,1500798419);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_set`
--

DROP TABLE IF EXISTS `seo_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1首页 2关于我们 3产品中心 4新品爆品 5微信动态 6联系我们',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='后台左侧导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_set`
--

LOCK TABLES `seo_set` WRITE;
/*!40000 ALTER TABLE `seo_set` DISABLE KEYS */;
INSERT INTO `seo_set` VALUES (1,1,'indextile111','indexkey111','indexdesc111',1500450578,1500451713),(3,2,'guanyuwomen-title','guanyuwomen-key','guanyuwomen-desc',1500451830,1500451830),(4,6,'chanpinzhongxin-title','chanpinzhongxin-key,chanpinzhongxin-key2','chanpinzhongxin-descchanpinzhongxin-descchanpinzhongxin-desc,chanpinzhongxin-descchanpinzhongxin-desc',1500778344,1500779982),(5,3,'qiyelinian-title','qiyelinian-keykey,key','qiyelinian-descqiyelinian-descqiyelinian-descqiyelinian-desc,qiyelinian-desc,qiyelinian-desc',1500779540,1500779994),(6,5,'zhaopin-title','zhaopin-tkey,key','zhaopin-tkey,keydesczhaopin-tkey,keydesczhaopin-tkey,keydesc,zhaopin-tkey,keydesc',1500780871,1500780871),(7,7,'new-tile','new-key,key','new-dexc.descnew-dexc.descnew-dexc.descnew-dexc.desc',1500781128,1500781128),(8,8,'wx-title','wx-key','wx-desc',1500781251,1500781251),(9,9,'lianxi-title','lianxi-key','lianxi-desc',1500781285,1500781285);
/*!40000 ALTER TABLE `seo_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums_pro` int(11) NOT NULL DEFAULT '10' COMMENT '产品中心每个分类显示多少产品',
  `nums_pro_detail` int(11) NOT NULL DEFAULT '10' COMMENT 'pc产品中心详情页每个分类推荐产品数',
  `nums_new` int(11) NOT NULL DEFAULT '10' COMMENT '新品列表页每页显示多少条',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `phone400` varchar(50) DEFAULT '' COMMENT '400联系电话',
  `cropyright` varchar(50) DEFAULT '' COMMENT '版权',
  `beian` varchar(50) DEFAULT '' COMMENT '备案',
  `designer` varchar(50) DEFAULT '' COMMENT '设计人',
  `sitename` varchar(50) DEFAULT '' COMMENT '网站名称',
  `consult_phone` varchar(50) DEFAULT '' COMMENT '总部销售咨询电话',
  `fax` varchar(50) DEFAULT '' COMMENT '传真',
  `contact` text COMMENT '联系我们文字',
  `hide_share` tinyint(4) DEFAULT '0' COMMENT '是否隐藏分享新浪，qq等',
  `hide_online` tinyint(4) DEFAULT '0' COMMENT '是否隐藏在线咨询',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站相关设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,0,0,2,1500361629,1500945444,'400-668-2078','版权所有  © 棒师傅（北京）食品有限公司','京ICP备：12037635号','Design by TOPCHEF','棒师傅（北京）食品有限公司','139 9853 7657','139 9853 76590','<p>\r\n	营销中心：\r\n</p>\r\n<p>\r\n	棒师傅（北京）食品有限公司\r\n</p>\r\n<p>\r\n	电话：400-668-2078\r\n</p>\r\n<p style=\"text-indent:3em;\">\r\n	010-87582076\r\n</p>\r\n<p>\r\n	地址：北京市丰台区角门18号未来假日花园枫竹苑一区7-03号\r\n</p>\r\n<p>\r\n	PC：100068\r\n</p>\r\n<p>\r\n	生产工厂（樱桃）：\r\n</p>\r\n<p>\r\n	山东棒师傅食品科技有限公司\r\n</p>\r\n<p>\r\n	地址：山东省海阳经济开发区烟台街22号\r\n</p>\r\n<p>\r\n	生产工厂（玉米）：\r\n</p>\r\n<p>\r\n	吉林祥裕食品有限公司\r\n</p>\r\n<p>\r\n	地址：吉林省公主岭市陶家屯镇102国道北1020公里处\r\n</p>',0,0);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-25 14:20:39
