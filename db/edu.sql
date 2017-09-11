-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='广告图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (50,'ad1','/uploads/ad/20170818/852a2969e1f4d688406e533d3b672493.png',NULL,1,1,0,1502335175,1503041423),(51,'邮电','/uploads/ad/20170818/308d1162d6a0a428bdfbba2b76fa5f5b.jpg',NULL,1,1,0,1502335269,1503050240),(52,'ad3','/uploads/ad/20170818/fab9c65f3a9ae0f6b815b3fa13082414.png',NULL,1,1,0,1502335286,1503040450),(53,'ceshigg','/uploads/ad/20170908/3d810ed8b23f26d5f4af46f8f791d6e3.png',NULL,1,1,0,1504840325,1504840325);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='收货人地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (4,11,'王小给','13588984521',0,'河南省许昌市文化区','光明路8号幸福小区',NULL,NULL),(5,11,'王小给','13588984985',0,'河南省许昌市训新区','霞光路10号百度分公司1103',NULL,NULL),(6,12,'张某人','13544484521',0,'北京北京昌平区','永泰中路21号永泰东里27号楼',NULL,NULL),(7,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1502952283,1502952283),(8,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1502952341,1502952341),(9,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1502955311,1502955311),(10,3,'王东旭','13311278511',0,'北京市 北京市 昌平区','霍营龙锦苑东五区5号楼4单元502室\n',1503046310,1503046310),(11,4,'田中领','13419635556',0,'北京市 北京市 昌平区','回龙观东大街',1503046646,1503046646),(12,4,'田中领','13419635556',0,'北京市 北京市 昌平区','回龙观东大街',1503046652,1503046652),(13,4,'田中领','13419635556',0,'北京市 北京市 昌平区','回龙观东大街',1503046656,1503046656),(14,4,'田中领','13419635556',0,'北京市 北京市 昌平区','回龙观东大街',1503046668,1503046668),(15,4,'田中领','13419635556',0,'北京市 北京市 昌平区','回龙观东大街',1503046683,1503046683),(16,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503277127,1503277127),(17,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503283622,1503283622),(18,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503283622,1503283622),(19,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503283622,1503283622),(20,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503283622,1503283622),(21,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503283623,1503283623),(22,2,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503283624,1503283624),(23,2,'小米妹','15866324459',0,'北京市 北京市 朝阳区','北四环东路65号世纪宝鼎',1503285007,1503285007),(24,8,'张三','18888888888',0,'广东省 广州市 天河区','某巷某号',1503306784,1503306784);
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
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` VALUES (57,1,'127.0.0.1',0,1501833137,1501833137),(58,1,'127.0.0.1',0,1502067864,1502067864),(59,1,'127.0.0.1',0,1502240961,1502240961),(60,1,'127.0.0.1',0,1502333311,1502333311),(61,1,'127.0.0.1',0,1502336471,1502336471),(62,1,'127.0.0.1',0,1502336681,1502336681),(63,1,'127.0.0.1',0,1502436213,1502436213),(64,1,'127.0.0.1',0,1502442590,1502442590),(65,1,'127.0.0.1',0,1502674307,1502674307),(66,1,'121.69.81.74',0,1502681336,1502681336),(67,1,'121.69.81.74',0,1502689368,1502689368),(68,1,'124.202.184.186',0,1502781023,1502781023),(69,1,'124.202.184.186',0,1502784156,1502784156),(70,1,'218.241.251.151',0,1502847349,1502847349),(71,1,'218.241.251.151',0,1502852831,1502852831),(72,1,'218.241.251.151',0,1502862149,1502862149),(73,1,'218.241.251.151',0,1502863760,1502863760),(74,1,'218.241.251.151',0,1502867560,1502867560),(75,1,'121.69.81.74',0,1502871736,1502871736),(76,1,'124.202.184.186',0,1503022709,1503022709),(77,1,'124.202.184.186',0,1503032283,1503032283),(78,1,'124.202.184.186',0,1503035131,1503035131),(79,1,'124.202.184.186',0,1503040632,1503040632),(80,1,'124.202.184.186',0,1503046794,1503046794),(81,1,'124.202.184.186',0,1503049502,1503049502),(82,1,'218.241.251.151',0,1503307476,1503307476),(83,1,'218.241.251.151',0,1503885690,1503885690),(84,1,'60.10.118.238',0,1504062413,1504062413),(85,1,'124.202.184.186',0,1504063167,1504063167),(86,1,'60.10.118.238',0,1504072216,1504072216),(87,1,'60.10.118.238',0,1504072438,1504072438),(88,1,'124.202.184.186',0,1504766663,1504766663),(89,1,'124.202.184.186',0,1504768426,1504768426),(90,1,'218.241.251.151',0,1504840295,1504840295);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,1,'zixunbjdxfenlei1-1','','zixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1cont\r\nzixun1contzixun1contzixun1cont\r\n\r\nzixun1contzixun1contzixun1contzixun1contzixun1contzixun1contzixun1cont\r\n\r\nzixun1contzixun1contzixun1contzixun1cont',1,1,1502252734,1502260806,0,1,1),(2,1,4,'zixun2qh','','zixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontent\r\n\r\nzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontentzixun2qhcontent',1,1,1502253241,1503043753,0,0,1),(3,3,1,'zixun2bjd','','zixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcontzixun2bjdcont',1,1,1502253282,1503043750,0,0,3),(4,2,3,'zinxunqinghua2-1','','zinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4contzinxunqinghua4zinxunqinghua4cont',1,1,1502253316,1503043747,0,0,4),(5,5,5,'zixunr mdxfnelei3-1','','zixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1contzixunr mdxfnelei3zixunr mdxfnelei3-1cont',1,1,1502253403,1503043744,0,1,5),(6,1,1,'bjdxfenlei1-2','','bjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2contbjdxfenlei1-2cont',1,1,1502255117,1503043741,0,1,5),(7,6,1,'山东省2017年新增博士硕士学位授权审核申报工作已结束','','齐鲁晚报讯 记者从省教育厅了解到，我省2017年新增博士硕士学位授权审核申报工作已结束。8月15日，相关申请材料在全国学位授权审核系统山东省信息平台予以公示。驻鲁高校中有10所申请成为博士学位授予单位，包括鲁大和滨医等2所驻烟高校。\r\n\r\n公示信息显示，山东建筑大学、齐鲁工业大学、青岛农业大学、潍坊医学院 、齐鲁医科大学(筹)、滨州医学院、聊城大学、鲁东大学、山东体育学院和山东工艺美术学院为新增博士授予单位，其中鲁东大学和滨州医学院为驻烟高校。如果公示无异议，上述高校今后或将能自己培养博士生了。\r\n\r\n鲁东大学申请材料显示，该校申请增设3个博士学位授权点，包括教育学、 生态学和物理学，全部为博士一级授权点。滨州医学院申请增设临床医学一个博士一级授权点。\r\n\r\n据悉，烟台共有高校15所，普通高校14所，2012年以前驻烟普通高校一直没有博士点。2012年，烟台高校获得服务国家特殊需求博士人才培养项目立项，尝试培养博士生。当时获得立项的高校和项目分别是烟台大学的重大新药新型释药系统人才培养项目和鲁东大学的问题青少年教育矫正管理人才培养项目。\r\n\r\n据介绍，“服务国家特殊需求博士人才培养项目”试点工作，是按照国务院学位委员会第二十八次会议的决定部署开展的，即安排少数确属服务国家特殊需求，但尚无硕士学位授予权的高等院校和无博士学位授予权的高等院校，在一定时期(5年)和限定的学科范围内招收培养硕士、博士生，并按项目主要支撑学科授予学位。待首届硕士、博士毕业后，国务院学位委员会对人才培养项目实施情况进行评估，并根据特殊需求的满足情况和国家需求变化情况决定是否继续实施该人才培养项目。\r\n\r\n可见当时烟大和鲁大的两个博士培养项目并不是正式的博士点，仅仅是一个试点项目。根据政策，该人才培养项目的实施以5年为期，实行动态管理。项目实施期满后，效果较好，可以申请继续实施。如果实施效果不好，便撤销。但毕竟是有了“准博士点”，这将为日后申请正式的博士点奠定良好的基础。\r\n\r\n此次公示的新增学位授予单位全省共有21个，新增学位授权点有272个。此外，山东大学则为新增自主审核单位。在公示的获批博士点名单中，没有烟台大学，而滨州医学院则如同一匹“黑马”出现在名单中。\r\n\r\n“有了博士点就等于有了更好的发展平台，博士点的设立必将促进烟台的高等教育的发展。”一位高校知情人士说，博士点标志着烟台高等教育在学位与研究生教育、学科建设上取得了重大突破，实现了本科、硕士、博士人才培养模式 的跨越式发展。',1,1,1503043982,1503043987,1,1,0),(8,6,1,'中华女子学院2018年社会工作硕士专业学位研究生（MSW）招生信息','','中华女子学院地处首都北京，是直属中华全国妇女联合会、教育部批准备案的全国第一所公办全日制本科女子普通高等学校。学校前身是1949年由宋庆龄、何香凝、蔡畅、邓颖超、康克清等老一辈妇女革命家创建的新中国妇女职业学校。六十五年来，学校几经跨越式发展，1995年更名为中华女子学院，2002年正式转制为普通高等学校。 \r\n   学校始终秉承老一辈妇女革命家确立的为新中国培养新女性的办学目标，致力于贯彻男女平等基本国策, 推动两性和谐发展，服务妇女全面发展，服务经济社会发展，服务国家总体外交，以“崇德、至爱、博学、尚美”为校训，努力培养德智体美全面发展，具有“四自”精神、公益意识、知性高雅的应用型女性人才。',1,1,1503044023,1503044023,1,1,0),(9,7,1,'教育部 国家中医药管理局关于医教协同深化中医药教育改革与发展的指导意见','','各省、自治区、直辖市教育厅(教委)、中医药管理局，新疆生产建设兵团教育局、卫生局，教育部直属有关高等学校，中国中医科学院：\r\n\r\n为深入贯彻党的十八大和十八届三中、四中、五中、六中全会精神以及全国卫生与健康大会精神，全面落实《国家中长期教育改革和发展规划纲要(2010-2020年)》《国务院关于扶持和促进中医药事业发展的若干意见》《中医药发展战略规划纲要(2016-2030年)》等文件精神，加快构建符合自身特点的中医药人才培养体系，促进中医药教育更好地服务中医药发展和健康中国建设，现就医教协同深化中医药教育改革与发展提出如下意见。\r\n\r\n一、指导思想\r\n\r\n以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入贯彻习近平总书记系列重要讲话精神和治国理政新理念新思想新战略，遵循中医药教育和人才成长规律，以解决中医药教育科学发展关键领域的重点难点问题为突破口，以完善中医药教育体制机制为着力点，深化中医药教育综合改革，全面提高中医药教育质量，推进中医药人才队伍建设，为中医药振兴发展提供强有力的智力支持和人才保障。\r\n\r\n二、总体目标与重点任务\r\n\r\n到2020年，基本建成院校教育、毕业后教育、继续教育三阶段有机衔接，师承教育贯穿始终，符合中医药事业发展要求和学科特色的中医药人才培养体系。院校教育质量得到显著提高，毕业后教育得到有效普及，继续教育实现全面覆盖，师承教育优势得到充分发挥。\r\n\r\n围绕中医药医疗、保健、教育、科研、产业、文化和对外交流与合作全面协调发展需求，着力推进以“5+3”(5年中医学本科教育+3年中医住院医师规范化培训或3年中医硕士专业学位研究生教育)为主体、以“3+2”(3年中医学专科教育+2年中医类别助理全科医生培训)为补充的中医临床人才培养，加快推进中医药健康服务技术技能人才培养，统筹推进多类型中医药人才培养，建立和完善符合中医药行业特点、以职业胜任能力和创新创业能力提升为主线的人才培养、评价、激励机制，形成有利于优秀中医药人才脱颖而出的政策环境和社会氛围。',1,1,1503044048,1503044048,1,1,0),(10,7,1,'教育部关于进一步做好“5+3”一体化医学人才培养工作的若干意见','','有关省、自治区、直辖市教育厅(教委)，部属有关高等学校：\r\n\r\n为加快构建标准化规范化临床医学人才培养体系，现就进一步做好“5+3”一体化人才培养(以下简称“一体化人才培养”)工作，提出如下意见。\r\n\r\n一、明确一体化人才培养目标\r\n\r\n2015年，教育部决定，自当年起将七年制临床医学专业招生调整为临床医学专业(“5+3”一体化)，即5年本科阶段合格者直接进入本校与住院医师规范化培训有机衔接的3年临床医学(含中医、口腔医学)硕士专业学位研究生教育阶段，实施一体化人才培养。一体化人才培养是培养高水平高素质临床医师的重要途径，是标准化规范化临床医学人才培养体系的重要组成部分，是推进医学教育综合改革的重要内容。\r\n\r\n一体化人才培养的培养目标是，加强医教协同，适应我国卫生健康事业发展需要，培养具有良好职业道德、人文素养和专业素质，掌握坚实的医学基础理论、基本知识和基本技能，具备较强的临床思维、临床实践能力，以及一定的临床科学研究和临床教学能力，能独立、规范地承担本专业和相关专业的常见多发病的预防和诊治工作的高水平高素质临床医师。有关高校要根据这一培养目标的要求，创新培养模式、优化培养方案、改革内容方法、健全评价体系、做好政策衔接，不断提高一体化人才培养质量。\r\n\r\n二、深化一体化人才培养改革\r\n\r\n1.加强综合素质培养。全面贯彻党的教育方针，坚持立德树人，将社会主义核心价值观教育全方位贯穿融入人才培养全过程、将医德教育贯穿医学教育全过程，教育学生恪守医学生誓言，培养学生献身医学、热爱祖国、忠于人民的精神。要强化自然科学、人文科学和社会科学教育，培养大卫生、大健康观念，拓宽一体化人才培养学生的知识基础。\r\n\r\n2.创新一体化人才培养模式。根据一体化人才培养的特点，有关高校要因校制宜，构建本科教育、专业学位研究生教育、住院医师规范化培训有效衔接的人才培养模式，统筹安排5年本科教育与3年硕士专业学位研究生教育培养过程，统筹安排研究生学位课程与住院医师规范化培训理论课程的教学，推动本科课程与研究生课程、基础医学课程与临床医学课程、专业课程与人文素养课程的有机融合。创新教育教学方法，倡导启发式、探究式、讨论式、参与式教学。改革教学管理，充分调动教师与学生的教学积极性，探索建立符合一体化人才培养特点的质量评价体系。\r\n\r\n3.强化临床实践能力培养。推动临床实践教学体系改革，实施早临床、多临床、反复临床，加强医学生临床思维能力和临床操作的规范化培养。严格临床教学与实习管理，本科教育阶段临床通科实习要注重学生临床基本技能的训练，研究生教育阶段临床能力培养要按照住院医师规范化培训要求进行，注重学生临床综合能力的培养。有关高校要优先将一体化人才培养的学生安排在附属医院进行临床通科实习和接受住院医师规范化培训。',1,1,1503044074,1503044074,1,1,0),(11,8,1,'浙江大学濮阳博士服务中心挂牌成立','','8月15上午，浙江大学中国农村发展研究院现代农业与农业投资研究所濮阳博士服务中心(简称浙江大学濮阳博士服务中心)在市农科院挂牌成立。这标志着濮阳市行政决策与学术研究机构的合作达到了一个新的高度。\r\n\r\n近年来，濮阳市着力构建农业与第二、第三产业交叉融合的现代产业体系，全市农业产业化龙头企业发展到565家，国家级、省级重点企业达29家。为助推濮阳市农业经济转型升级，经浙江大学中国农村发展研究院现代农业与农业投资研究所、市农科院、市统计局三方共同协商，筹备成立浙江大学濮阳博士服务中心，旨在整合利用三方人才、基础设施和统计信息等方面的资源优势，打造专业现代化农业发展研究智库，为学者研究提供坚实的平台，为市委、市政府发展现代农业有关决策提供咨询服务。\r\n\r\n该中心的工作内容主要包括：全面收集分析濮阳农业投资信息、探索农业现代化的成功经验和存在问题，为企业和政府提供农业投资资讯，组织农业企业交流活动，承担农商企业研究课题，培训农业龙头企业负责人，扶植现代农业企业发展等。',1,1,1503044094,1503044094,1,1,0),(12,6,1,'北京师范大学应用心理硕士4个方向招生','','北京考试报讯(特约记者 刘 婧)记者从北京师范大学获悉，学校应用心理专业硕士(MAP)预计2018年分设4个方向招生。\r\n\r\n学校心理学院MAP教育中心主任孙舒平介绍，应用心理专业硕士明年分设4个方向招生，其中用户体验(UX)招65人，临床与咨询心理招65人，品牌、广告与消费心理招30人，心理测量与人力资源管理招40人。品牌、广告与消费心理(BAC)为新增专业方向。该专业是心理学在商业领域的经典应用专业方向，也是行业顶尖公司如腾讯、阿里、华为等的市场与消费者研究部门招聘人才的必选专业。BAC方向整合心理学、认知神经科学、行为经济学、广告学、营销学的原理、方法和技术，为品牌管理、营销、广告、消费者研究、社会/民意调查等行业培养具有交叉学科背景和实战技能的高端专业人才。应用心理专业硕士学制两年，采取非全日制培养方式，即部分晚上、周末2天及集中授课(一般集中4天)的方式进行课程学习，平时或周末晚上有讲座或实习、督导等安排，随后进行研究，撰写论文。\r\n\r\n为进一步加强对考生个人能力、综合素质和专业素养的评估，选拔优秀生源，应用心理专业硕士项目于8月、9月举办两场提前面试。4个方向均接收推免生，名额不多于20人。有推免意向的应届本科生可选择参加提前面试或9月的推免生面试(仅有一次面试机会)。选择参加提前面试的推免生仍要于9月登录北师大推免系统进行相应操作。推免结果于9月推免生面试结束后统一公布。今年提前面试成绩不做保留。去年参加北师大心理学部MAP提前面试但未通过初试的考生，今年若要报考，仍要申请参加提前面试或正常批复试。\r\n\r\n北师大MAP作为首批应用心理专硕的招生院校，2011年开始招生，是目前全国最大的应用心理专硕培养基地。明年研考科目将调整，预计7月中旬公布。考生可登录北师大心理学部网站查询。',1,1,1503044114,1503044114,1,1,0);
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
  `sort` int(11) DEFAULT '10000',
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='文章类别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate_article`
--

LOCK TABLES `cate_article` WRITE;
/*!40000 ALTER TABLE `cate_article` DISABLE KEYS */;
INSERT INTO `cate_article` VALUES (1,0,'国中不一民',1,0,1502247935,1503043784),(2,0,'了发上是产',2,0,1502247955,1503043781),(3,0,'工以发地一',3,0,1502248001,1503043778),(4,0,'主上中',4,0,1502248012,1503043775),(5,0,'发发了',2,0,1502255263,1503043772),(6,0,'考研资讯',0,1,1503043931,1503043931),(7,0,'国家政策',0,1,1503043944,1503043944),(8,0,'院校政策',0,1,1503043953,1503043953);
/*!40000 ALTER TABLE `cate_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect` (
  `user_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `st` tinyint(4) DEFAULT '1' COMMENT '1收藏 0不收藏',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`,`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES (1,13,1,1503909860,1503909860),(1,14,1,1503922048,1503922048),(2,1,0,1503038042,1503040550),(2,7,0,1502939796,1503278875),(2,8,1,1502956790,1502956790),(2,9,0,1502955345,1503278881),(2,11,1,1503038036,1503038036),(2,12,1,1503042550,1503042550),(2,13,0,1503045148,1503051036),(2,14,1,1503283429,1503283429),(2,15,1,1503283611,1503283611),(3,12,1,1503046333,1503046333),(3,13,1,1503050529,1503050529),(4,1,0,1503039985,1503969170),(4,8,0,1503041287,1503969168),(4,12,0,1503046482,1503969165),(4,13,0,1503285125,1503969163),(4,15,0,1503969130,1503969160),(5,14,1,1503050487,1503050487),(8,15,1,1503886537,1503886537);
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdan`
--

LOCK TABLES `dingdan` WRITE;
/*!40000 ALTER TABLE `dingdan` DISABLE KEYS */;
INSERT INTO `dingdan` VALUES (1,1,26,0.01,1503921976,1503921987,1,1,'082820061649_IoQzC_'),(2,1,27,0.00,1503922050,1503922062,1,1,'082820073076_IoQzC_'),(3,4,15,0.01,1503969133,1503969182,1,5,'082909121359_WYR1NH'),(4,4,15,0.01,1503969135,1503969189,1,5,'082909121592_WYR1NH'),(5,4,15,0.01,1503969137,1503969194,1,5,'082909121727_WYR1NH'),(6,4,15,0.01,1503969139,1503969218,1,5,'082909121914_WYR1NH'),(7,4,15,0.01,1503969139,1503969214,1,5,'082909121954_WYR1NH'),(8,4,15,0.01,1503969139,1503969210,1,5,'082909121923_WYR1NH'),(9,4,15,0.01,1503969139,1503969203,1,5,'082909121919_WYR1NH'),(10,4,15,0.01,1503969139,1503969199,1,5,'082909121985_WYR1NH'),(11,4,15,0.01,1503969140,1503969227,1,5,'082909122081_WYR1NH'),(12,4,15,0.01,1503969140,1503969223,1,5,'082909122046_WYR1NH'),(13,1,29,0.01,1503973483,1503973776,1,1,'082910244369_IoQzC_'),(14,1,30,0.01,1503973805,1503973832,1,1,'082910300597_IoQzC_'),(15,1,30,0.00,1503983943,1503983943,1,1,'082913190384_IoQzC_'),(16,1,30,0.00,1503983975,1503983975,1,1,'082913193579_IoQzC_');
/*!40000 ALTER TABLE `dingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fankui`
--

DROP TABLE IF EXISTS `fankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fankui` (
  `order_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cont` varchar(255) DEFAULT '',
  `st` tinyint(4) DEFAULT '1',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`order_id`,`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反馈表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fankui`
--

LOCK TABLES `fankui` WRITE;
/*!40000 ALTER TABLE `fankui` DISABLE KEYS */;
INSERT INTO `fankui` VALUES (6,3,2,'货小姨子',1,1503032742,1503032742),(7,10,2,'klajdlskjigalsjd8789798475',0,1503027925,1503281589),(40,12,3,'666666',1,1503050412,1503050412);
/*!40000 ALTER TABLE `fankui` ENABLE KEYS */;
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
  `sort` int(11) DEFAULT '10000',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除， 1正常 ,2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`,`school_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='资料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
INSERT INTO `good` VALUES (1,'tushu1-1',0,0,4,2,'/uploads/good/20170807/0d6eb1e96a9118f2621ee768a90377d8.png','/uploads/good/20170807/db7c7ace41e58b490ea3c536d0673b4c.png',0.01,'<p>\r\n	asdfa\r\n</p>\r\n<p>\r\n	adga\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	dgae2w43545asf7a3\r\n</p>',0,'',1,0,1,1,0,1502079047,1503041637),(2,'tushu1-2',7,0,4,1,'/uploads/good/20170807/34849f7f83a700b36646714ad7b3607a.png','/uploads/good/20170807/2f9a347a36290cac719792a9a6f4b1a7.png',0.02,'<br />\r\n<p>\r\n	架车路线\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n联系我们<br />\r\n<div>\r\n	<br />\r\n</div>',0,'',1,0,1,2,0,1502079261,1503041633),(3,'zhenti1-1',1,2,6,1,'/uploads/good/20170807/1927e0fcc0f1ea74158006d76123c15c.png','/uploads/good/20170807/c387259ea01568f61ad18a88e393f56f.png',0.12,'<p>\r\n	真是1就是好啊\r\n</p>\r\n<p>\r\n	来做一下吧\r\n</p>\r\n<p>\r\n	真是好吗\r\n</p>',0,'',2,1,0,1,0,1502079313,1503041630),(4,'zhenti1－2',1,0,6,1,'/uploads/good/20170807/cc9d515151c19516c3ca4ae1eb7af07a.png','/uploads/good/20170807/caa3d1d517632760e095c9391f945b50.png',0.11,'<p style=\"text-indent:2em;\">\r\n	前有写过百度网盘如何添加好友，但是并没有明确的找到百度网盘添加好友的入口，今天发现百度网盘的分享里面有一个添加好友的功能，这里和大家补充一下，希望对大家有所帮助！！\r\n</p>',0,'',2,1,0,2,0,1502079451,1503041628),(5,'zhenti2-1',2,0,7,4,'/uploads/good/20170807/5fe0747ff8fe070091126a8311f2c99d.png','/uploads/good/20170807/edacdb4395c3d59351d865f8dacf2c05.png',0.01,'<p>\r\n	真是2分类下2\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',0,'',2,0,0,1,0,1502082131,1503041623),(6,'zhenti2-2',1,0,7,5,'/uploads/good/20170807/e5c61d3410b528a817faff00a5c25488.png','/uploads/good/20170807/4913109cf4c41cb1d70fcdb618875061.png',0.20,'adf2342asdg',0,'',2,1,1,2,0,1502082178,1503041620),(7,'zhenti2-2bd',1222,0,7,4,'/uploads/good/20170809/7d78843a2d9453046d762e7be93703a2.png','/uploads/good/20170809/c625bc62a0a50d6c25c6eb3651cdecc2.png',0.01,'<p>\r\n	ziliaagjoiasdg\r\n</p>\r\n<p>\r\n	adsgadgsag4654564asdg\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	asd1g35a4dg6a69g\r\n</p>',0,'',2,1,0,0,0,1502257748,1503041617),(8,'tushu3kc',3,0,5,1,'/uploads/good/20170810/85a4681583e35e6b9c24a936918a79d2.png','/uploads/good/20170810/b061dca679fa4ebf0b3fa736128ddca0.png',0.00,'',0,'',1,0,0,0,0,1502343031,1503041614),(9,'真抻12',120,2,7,9,'/uploads/good/20170816/14cd9d5eb4d993a844100b1f76a4cd6b.png','/uploads/good/20170816/15993841749accd3a2a77075e75ee180.png',0.02,'甘基本苛三苛',0,'',2,0,0,0,0,1502847413,1503041611),(10,'zhen888',133,0,7,9,'/uploads/good/20170816/543827396536a60914a5c2c336d8a9d6.png','/uploads/good/20170816/3fe2c9ebe21510e1c9ec0550561a1bbf.png',0.05,'<p>\r\n	asdfsa65464ga\r\n</p>\r\n<p>\r\n	65464a65gadsg\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',0,'',2,0,0,0,0,1502847451,1503041608),(12,'中国研究生教育质量年度报告（2016）',9,1,4,3,'/uploads/good/20170818/d584366e35de8c6653a976dab0c053c8.png','/uploads/good/20170818/4bf2ab2d632dd51198343433023ae8a5.png',0.01,'《中国研究生教育质量年度报告（2016）》是具有研究性质的、研究生教育质量的第5份年度报告。报告坚持以“年度”和“质量”为核心主题词，从多角度、多层面研究了我国2015年度的研究生教育质量，力求科学、客观地反映2015年度我国的研究生教育质量。\r\n\r\n本报告回顾了“十二五”期间我国提高研究生教育提高质量的举措，“十二五”期间中国研究生教育质量的评价，并对“十三五”时期研究生教育提高质量进行了展望；对2015年我国研究生教育发展做了基本概况，分析了2015年我研究生教育质量，构建出研究生教育质量指数；遴选出2015年度中国研究生教育质量事件、质量单位和年度质量人物；从人才培养和社会贡献两个维度，构建了由5个一级指标，13个二级指标，25个观察点组成的理论指标，并基于数据的可得性，并对31个省、自治区、直辖市的研究生教育质量进行单项及综合排名；对全国139所研究生培养单位的39715名研究生的满意度问卷调查，全面、客观地呈现了2015年研究生对研究生教育的总体满意度及对课程教学、科学研究、导师指导、管理服务的满意度；收集了国外媒体对我国研究生教育发展的观察和国外高等教育研究机构对我国研究生教育的评价。编录了2015年中国学位与研究生教育要事志、第五届学位与研究生教育优秀博士学位论文名单、第六届《学位与研究生教育》优秀论文名单、2014年学位授权点及专项评估结果及处理意见、2015年学位与研究生教育质量方面的两个重要文件。',0,'',1,0,1,10000,1,1503042297,1503050389),(11,'不怕累',165,0,4,9,'/uploads/good/20170816/940fffd6e580e221e640a0e7a2667e92.png','/uploads/good/20170816/7aeb9d1dce47fc8999cfaf6d30fac3f8.png',0.01,'这本书好，可以在晚上看看。\r\n不想看就在白天看。\r\n看完就可以考上老家大学了。',0,'',1,0,0,10000,0,1502854490,1503041605),(13,'如何做一个好导师:指导研究生及本科生研究、撰写学位论文',5,0,5,2,'/uploads/good/20170818/473baebcb589d50b234577703900e5e6.png','/uploads/good/20170818/2dbda647f56f7a84fc7143409e1654d5.png',41.10,'研究乃学习之要旨，臻于解惑、释惑。于此之间，不管是研究项目还是撰写毕业论文，研究者（从事研究的学生）均切实需要导师给予质量高、力度大、收效好的指导。本书第二版以近年来创新性研究及其成果为基础，加之导师指导这一专业领域内的一系列新发展，对第一版全面升级，在跨文化指导、在线远程指导与反馈、学术导师的新角色，以及营建研究社区、维系学术关系等方面都有新的拓展。本书：使你参与其中，并积极反思哿研究生、本科生研究指导的有效策略；探讨以实践为基础的专业研究、创新性研究、著作类博士研究、人际沟通能力，以及学习者多样性的管理；特别重视指导学生经历整个评审过程；兼收国内外研究，积累好的实践经验。',0,'',1,0,1,10000,1,1503042894,1503043840),(14,'现货正版李正元范培华2018考研数学二数学历年试题解析.数学二李正元研究生考试英语考试2018考研数学',1,0,6,1,'/uploads/good/20170907/637e358e077decba8634ac53c9284bb9.png','/uploads/good/20170907/534d2c9dcc6d2a8ba07147fb07f652b5.png',0.00,'2018年李正元●范培华考研数学(5)\r\n数学历年试题解析\r\n【数学二 理工类】\r\n\r\n\r\n考研数学二北大燕园 2018年李正元 范培华考研数学（2）数学历年试题解析（数学二）\r\n作 者：李正元 范培华 主编\r\n',0,'',2,0,1,10000,1,1503049769,1504768784),(15,'考研英语一2018 真题试卷 2018考研英语一历年真题2010-2017年 全国硕士研究生入学统一考试 历年真题全解 英语考研真题2018英语一 考研英语',6,0,7,1,'/uploads/good/20170818/5d339e71db9039e900972a6558fb34f3.png','/uploads/good/20170818/91fea43d8e908de99b2640664c7191ee.png',0.01,'价格说明\r\n当当价：为商品的销售价，具体的成交价可能因会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。\r\n划线价：划线价格可能是图书封底定价、商品吊牌价、品牌专柜价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品曾经展示过的销售价等，由于地区、时间的差异化和市场行情波动，商品吊牌价、品牌专柜价等可能会与您购物时展示的不一致，该价格仅供您参考。\r\n折扣：折扣指在划线价（图书定价、商品吊牌价、品牌专柜价、厂商指导价等）某一价格基础上计算出的优惠比例或优惠金额。如有疑问，您可在购买前联系客服咨询。\r\n异常问题：如您发现活动商品销售价或促销信息有异常，请立即联系我们补正，以便您能顺利购物。',0,'',2,0,1,10000,1,1503049866,1503049866);
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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='产品-属性表(与good表 和 attr表关联)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_attr`
--

LOCK TABLES `good_attr` WRITE;
/*!40000 ALTER TABLE `good_attr` DISABLE KEYS */;
INSERT INTO `good_attr` VALUES (30,6,8,'lishen',0,0,1502267747),(31,6,9,'value1',0,0,1502267747),(32,3,10,'value2',1,0,0),(33,4,8,'lishen',1,0,0),(34,4,9,'value1',1,0,0),(35,6,8,'qingyao',0,0,1502267788),(36,6,9,'value1',0,0,1502267788),(37,6,11,'2015',0,0,1502267788),(38,6,10,'value2',0,0,1502267947),(39,6,8,'',0,0,1502268104),(40,6,9,'value1',0,0,1502268104),(41,6,11,'',0,0,1502268104),(42,6,8,'lishen',0,0,1502268164),(43,6,9,'value1',0,0,1502268164),(44,6,11,'',0,0,1502268164),(45,6,8,'lishen',0,0,1502270295),(46,6,9,'',0,0,1502270295),(47,6,11,'2016',0,0,1502270295),(48,6,8,'qingyao',1,0,0),(49,6,9,'value3',1,0,0),(50,6,11,'',1,0,0),(51,7,8,'qingyao',1,0,0),(52,7,9,'value2',1,0,0),(53,7,11,'2016',1,0,0);
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
INSERT INTO `menu_admin` VALUES (1,'主要管理',0,'','','',1,1499926154,1499926154),(2,'资料分类',1,'Cate','index','',3,1499926628,1502096492),(4,'资讯分类',1,'CateArticle','index','',6,1499929021,1502096536),(5,'资料',1,'Good','index','',2,1499931635,1501833787),(6,'资讯',1,'Article','index','',5,1499931757,1502096531),(7,'资料参数',1,'Attr','index','',4,1500019957,1502096510),(8,'订单管理',0,'','','',2,1500281130,1502343485),(9,'广告图',1,'Ad','index','',7,1500281153,1502343371),(11,'订单',8,'Dingdan','index','',1,1500353254,1502343547),(14,'其它管理',0,'','','',3,1500451917,1502343607),(15,'修改后台密码',14,'Admin','edit','',2,1500452020,1502338124),(21,'小程序用户',8,'User','index','',2,1502338116,1502343555),(20,'院校首页推荐',1,'SchoolRec','index','',8,1502100618,1502343387),(19,'院校',1,'School','index','',1,1501834139,1502096449);
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
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='订单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_good`
--

LOCK TABLES `order_good` WRITE;
/*!40000 ALTER TABLE `order_good` DISABLE KEYS */;
INSERT INTO `order_good` VALUES (1,1,12,1,1503921976,1503921976),(2,2,14,1,1503922050,1503922050),(3,3,15,1,1503969133,1503969133),(4,4,15,1,1503969136,1503969136),(5,5,15,1,1503969137,1503969137),(6,6,15,1,1503969139,1503969139),(7,7,15,1,1503969139,1503969139),(8,8,15,1,1503969139,1503969139),(9,9,15,1,1503969139,1503969139),(10,10,15,1,1503969140,1503969140),(11,11,15,1,1503969140,1503969140),(12,12,15,1,1503969140,1503969140),(13,13,12,1,1503973483,1503973483),(14,14,12,1,1503973805,1503973805),(15,15,14,1,1503983943,1503983943),(16,16,14,1,1503983975,1503983975);
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='院校表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'南方科技大学','教育部','/uploads/school/20170818/51f599ae7ea047f34d912f65c681949f.png','/uploads/school/20170818/f71f52e0b9bc14f655b571ab5ef3e452.png','广东',1,1502243831,1503038522,2),(2,'北京工业大学','教育部','/uploads/school/20170818/16ed6fab127c4f824bc0e0c34c21648a.png','/uploads/school/20170818/5c05c2e0163c065280538daa433c5ce1.png','北京',1,1502244322,1503039428,0),(3,'中国政法大学','教育部','/uploads/school/20170818/c8bae045fb109e4fe0b051606e2de127.png','/uploads/school/20170818/f5e1b58698b1906a6a6b8698c8d17283.png','北京',1,1502244376,1503040146,3),(4,'东华大学','教育部','/uploads/school/20170818/c0b58d0d17a93ae6a3833132b4f0d52b.png','/uploads/school/20170818/5cb7b8474736aeb9d8eb16299c1542d0.png','上海',1,1502244410,1503038601,4),(5,'清华大学','教育部','/uploads/school/20170818/986ee459d168cfe15592616b3f3e1410.png','/uploads/school/20170818/9aab9713efc21e02909890379a209d14.png','深圳',1,1502245609,1503038801,1),(6,'guagmingdaxue','jioayubu','/uploads/school/20170811/0c7b75a409a487af4c3f022e7cf976cf.png','/uploads/school/20170811/fb6996253e5cabb1707fd03cf4c1b1a7.png','taiyuan',0,1502440124,1503041572,10000),(7,'清化大学','教育疗','/uploads/school/20170815/baa54a526c9db149b436b73dbe39db79.png','/uploads/school/20170815/4f73a37c0d40e266548f96a77de093d7.png','北京',0,1502781081,1503041568,10000),(8,'化中科技大学','教育部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','武汉',0,1502781121,1503041564,10000),(9,'山西师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','太原',0,0,1503043673,10000),(10,'河北师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043669,10000),(11,'adf师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043657,10000),(12,'2343ag师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043653,10000),(13,'asdg师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043649,10000),(14,'rrrr师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043643,10000),(15,'dddd师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043639,10000),(16,'gggg师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043634,10000),(17,'cccv师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043604,10000),(18,'ttnn师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043525,10000),(19,'uyiui师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043530,10000),(20,'3rrr师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','太原',0,0,1503043535,10000),(21,'4eee师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043539,10000),(22,'a4rsg师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043554,10000),(23,'adf43ag师adfas学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043559,10000),(24,'234g师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043569,10000),(25,'rrrr师adf大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043574,10000),(26,'sdgdd师范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043578,10000),(27,'ggdsf234sdg大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043584,10000),(28,'cccv师范dfdsg学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043588,10000),(29,'ttnn342asdg范大学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043594,10000),(30,'uyiuisdf23434学','师范部','/uploads/school/20170815/64e6e07f37b15357a94444263ee70fe9.png','/uploads/school/20170815/8e53f45b7212238e3eeb52bcc5e11f30.png','石家庄',0,0,1503043599,10000);
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
INSERT INTO `school_rec` VALUES (1,3,'/uploads/school_rec/20170818/2a5d4f0b6af66076a3ff3a39725f412a.png',2,1,2,1502265113,1503040240),(2,1,'/uploads/school_rec/20170818/9c8df9180265a0d312a233d057f10544.jpg',1,1,1,1502265289,1503048325),(3,4,'/uploads/school_rec/20170818/73f18da191d329fb15341a76f61739a2.png',1,1,0,1502267318,1503036528),(4,5,'/uploads/school_rec/20170818/0abb4270d76f6fa79c86c6ee9c342952.png',2,1,0,1502267328,1503039048),(5,2,'/uploads/school_rec/20170818/a3569fe70e9169a7807b475cb9458b3b.png',2,1,0,1502267341,1503039683);
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
  `addr` varchar(200) DEFAULT NULL COMMENT '所在地',
  `info` text COMMENT '个人说明',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `open_id` (`open_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'oZ-T80EpUg1EqS4Mi3AczpttOO4c','zyg～php','IoQzC_','','',1,'https://wx.qlogo.cn/mmopen/vi_32/wngyDHNUK7QXZJWh3z4icry3KMotE8ZEwQDlwoK9P4ScXAkIf3WyoHrftdoPGZmEvSRfMUeMsJNNlKJwBl241icw/0',NULL,NULL,NULL,1,NULL,NULL,1503911038,1503911038),(2,'oZ-T80HIty-GwwhqTUcvKw5Gagoo','rdgztest_RTEPAP','gmKRaz','','',0,'',NULL,NULL,NULL,1,NULL,NULL,1503918406,1503918406),(3,'oZ-T80DM6knyK-pGsIyJftm2Hmaw','王东旭','vYi3le','','',1,'https://wx.qlogo.cn/mmopen/vi_32/BUQmDb2nhpn6UjEmHdQW2sov1hCKUEvCRtHKOpQ20cCpSy5vs3uvY3dhiarwCjTlMURopFnFBppObgh7qGcDDLw/0',NULL,NULL,NULL,1,NULL,NULL,1503969028,1503969028),(4,'oZ-T80Pon5bEl1khMDqeWgB5DYFg','Tancky','WYR1NH','','',1,'https://wx.qlogo.cn/mmopen/5jL8u4LUwOt8ricVKh0Va5kibiaBmic5gTZVSDmVdZk9Esib2dv1ibV7kz1U8PgumAiaFcHibSM2NRMqy9fber0DYgVngjxibLY0BrsfS/0',NULL,NULL,NULL,1,NULL,NULL,1503969100,1503969100),(5,'oZ-T80LJDOFsCMYZGlQhm9Hpdx4Q','rdgztest_RXKDRJ','dGPS74','','',0,'',NULL,NULL,NULL,1,NULL,NULL,1503972888,1503972888),(6,'oZ-T80K_xo83H-vlqsdGTyWVE4BI','微信昵称','PUGV4e','','',1,'',NULL,NULL,NULL,1,NULL,NULL,1503973797,1503973797),(7,'oZ-T80Ec5VEWVEIP4D5dPbFusmJk','rdgztest_BWHMAZ','Ni3ZE4','','',0,'',NULL,NULL,NULL,1,NULL,NULL,1503984242,1503984242),(8,'oZ-T80NubncpK9PhHgdIFZvWEZns','微信昵称','wFfh7M','','',1,'',NULL,NULL,NULL,1,NULL,NULL,1504082442,1504082442),(9,'oZ-T80PQ32cNLJjDojsCtI-LgqxE','微信昵称','YIk-NM','','',1,'',NULL,NULL,NULL,1,NULL,NULL,1504106191,1504106191),(10,'oZ-T80IyhlkMADjC1bfszWOmUZ8E','微信昵称','SxvJxe','','',1,'',NULL,NULL,NULL,1,NULL,NULL,1504322404,1504322404),(11,'oZ-T80BWtv8Etfa_k0iO9Qch6nQw','微信昵称','rbbWlD','','',1,'',NULL,NULL,NULL,1,NULL,NULL,1504657357,1504657357),(12,'o8jjv0CV9FQdXt_EvYyOU0K3EGi4','Tancky','jeQtCd','','',1,'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLLNlstvtbvicIcqpawXrrqATia8oyOjibiaDznWe1PjrJ5Hka2BfbWyhGb06KeXwxibpN13uMnjVFM39g/0',NULL,NULL,NULL,1,NULL,NULL,1505098037,1505098037);
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

-- Dump completed on 2017-09-11 13:41:28
