-- MySQL dump 10.13  Distrib 5.7.16, for osx10.12 (x86_64)
--
-- Host: localhost    Database: ci_shop
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `shop_admin`
--

DROP TABLE IF EXISTS `shop_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_admin` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(34) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_admin`
--

LOCK TABLES `shop_admin` WRITE;
/*!40000 ALTER TABLE `shop_admin` DISABLE KEYS */;
INSERT INTO `shop_admin` VALUES (1,'Quyền DEV','admin','1acc9b635a2197bd87b00ba2d4812dbc﻿',1);
/*!40000 ALTER TABLE `shop_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_cate`
--

DROP TABLE IF EXISTS `shop_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(3) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cate`
--

LOCK TABLES `shop_cate` WRITE;
/*!40000 ALTER TABLE `shop_cate` DISABLE KEYS */;
INSERT INTO `shop_cate` VALUES (1,'Giày Nam','giay-nam','Giày Nam','Giày Nam',0,0,''),(2,'Giày boot nam','giay-boot-nam','Giày boot nam','Giày boot nam',1,0,'fa-phuot-ao-2.jpg'),(3,'Giày thể thao & thời trang nam','giay-thoi-trang-the-thao-nam','Giày thể thao & thời trang nam','Giày thể thao & thời trang nam',1,0,NULL),(4,'Giày tây nam cao cấp','giay-tay-nam-cao-cap','Giày tây nam cao cấp','Giày tây nam cao cấp',1,0,NULL),(5,'Giày mọi nam','giay-moi-nam','Giày mọi nam','Giày mọi nam',1,0,NULL),(6,'Giày nữ','giay-nu','Giày nữ','Giày nữ',0,0,NULL),(7,'Giày boot nữ hàn quốc','giay-boot-nu-han-quoc','Giày boot nữ hàn quốc','Giày boot nữ hàn quốc',6,0,NULL),(8,'Giày oxford nữ','giay-oxford-nu','Giày oxford nữ','Giày oxford nữ',6,0,NULL),(9,'Giày Thể Thao & thời trang nữ','giay-thoi-trang-nu','Giày Thể Thao & thời trang nữ','Giày Thể Thao & thời trang nữ',6,0,NULL),(10,'Giày Mọi Nữ','giay-moi-nu','Giày Mọi Nữ','Giày Mọi Nữ',6,0,NULL),(11,'Giày cặp đôi','giay-cap-doi','Giày cặp đôi','Giày cặp đôi',0,0,NULL),(12,'Giày sandal','giay-sandal','Giày sandal','Giày sandal',0,0,NULL),(13,'Vali kéo','vali-keo','Vali kéo','Vali kéo',0,0,NULL),(14,'balo vans','balo-vans','balo vans','balo vans',0,0,NULL),(15,'Phụ Kiện & Nón','non-phu-kien','Phụ Kiện & Nón','Phụ Kiện & Nón',0,0,NULL),(16,'Cá biển','ca-bien','Cá biển','Cá biển',0,1,'11.jpg'),(17,'Cá sông hồ','ca-song-ho','Cá sông hồ','Cá sông hồ',0,1,'2.jpg'),(18,'Tôm đỏ','tom-do','Tôm đỏ','Tôm đỏ',0,1,'3.jpg'),(19,'Nghêu sò','ngheu-so','Nghêu sò','Nghêu sò',0,1,'4.jpg'),(20,'Cá uớp muối','ca-uop-muoi','Cá uớp muối','Cá uớp muối',0,1,'5.jpg'),(21,'Chai, sò','chai-so','Chai, sò','Chai, sò',0,1,'8.jpg'),(22,'Tôm biển','tom-bien','Tôm biển','Tôm biển',0,1,'7.jpg'),(23,'Chai nước ngọt','chai-nuoc-ngot','Chai nước ngọt','Chai nước ngọt',0,1,'6.jpg'),(24,'sdasdasd','sdasdasd','sdasdasd','sdasdasd',0,0,'8.jpg'),(25,'sadsad','sadsad','sadsad','sadsad',0,0,'0'),(26,'sadasd','sadasdasdas','sadasd','sadasd',0,0,'7.jpg');
/*!40000 ALTER TABLE `shop_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_guide`
--

DROP TABLE IF EXISTS `shop_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove` tinyint(1) DEFAULT '1',
  `time` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '11',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_guide`
--

LOCK TABLES `shop_guide` WRITE;
/*!40000 ALTER TABLE `shop_guide` DISABLE KEYS */;
INSERT INTO `shop_guide` VALUES (1,'Chính sách bảo hành','Chính sách bảo hành','chinh-sach-bao-hanh',NULL,0,NULL,1),(2,'Chính sách vận chuyển','Chính sách vận chuyên','chinh-sach-van-chuyen',NULL,0,NULL,1),(3,'Hướng dẫn mua hàng','Hướng dẫn mua hàng','huong-dan-mua-hang',NULL,0,NULL,1),(4,'Bản đồ','Bản đồ','ban-do',NULL,0,NULL,1),(5,'Liên hệ','Liên hệ','lien-he',NULL,0,NULL,1);
/*!40000 ALTER TABLE `shop_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_like`
--

DROP TABLE IF EXISTS `shop_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_like`
--

LOCK TABLES `shop_like` WRITE;
/*!40000 ALTER TABLE `shop_like` DISABLE KEYS */;
INSERT INTO `shop_like` VALUES (1,410,1439403830,1,1),(3,394,1439403858,1,1),(4,257,1439440644,1,1),(5,258,1439440645,1,1),(6,259,1439440646,1,1),(7,260,1439440647,1,1),(8,261,1439440649,1,1),(9,262,1439440650,1,1),(10,256,1439442874,1,1),(11,311,1439448176,2,1),(12,259,1439490911,2,1);
/*!40000 ALTER TABLE `shop_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_add` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_note` text COLLATE utf8_unicode_ci,
  `count` tinyint(2) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `time` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` VALUES (1,0,'dá','đâsd','ád','',1,135000,2,1439393608,1),(2,0,'dá','đâsd','ád','',1,135000,0,1439393614,1),(3,0,'dá','đâsd','ád','',1,135000,0,1439393625,1),(4,0,'dá','đâsd','ád','',1,135000,3,1439393653,1),(5,0,'dá','đâsd','ád','',1,135000,3,1439393677,1),(6,0,'dá','đâsd','ád','',1,135000,0,1439393691,1),(7,0,'dá','đâsd','ád','',1,135000,0,1439393709,1),(8,0,'dá','đâsd','ád','',1,135000,3,1439393716,1),(9,0,'dá','đâsd','ád','',1,135000,2,1439393769,1),(10,0,'dá','đâsd','ád','',1,135000,2,1439393780,1),(11,0,'dá','đâsd','ád','',1,135000,1,1439393787,1),(12,1,'Hungquyen','12415125123','asd s as sa','',7,1785000,3,1439440699,1),(13,1,'Hungquyen','12415125123',' 412421412','',7,1785000,3,1439440722,1),(14,1,'Hungquyen','12415125123','21 312321','',3,2655000,3,1439441311,1),(15,2,'User test','0929606064','HCM','',2,143000,3,1439448123,1),(16,2,'User test','0929606064','HANOI','',6,1730000,3,1439448188,1);
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` tinyint(2) DEFAULT NULL,
  `money` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` VALUES (1,'Nón thời trang hàn quốc NON 116-3',390,'135000','0','0',1,NULL,9,1),(2,'Nón thời trang hàn quốc NON 116-3',390,'135000','0','0',1,NULL,10,1),(3,'Nón thời trang hàn quốc NON 116-3',390,'135000','0','0',1,NULL,11,1),(4,'Nón cặp VK CK hàn quốc NON 106',410,'115000','0','0',1,NULL,12,1),(5,'Giày mọi thủy thủ cá tính NU 498',256,'295000','0','0',1,NULL,12,1),(6,'Giày mọi nữ đơn giản cá tính NU 507',257,'215000','0','0',1,NULL,12,1),(7,'Giày Toms cá tính phong cách năng động NU 218',258,'315000','0','0',2,NULL,12,1),(8,'Giày Toms cá tính phong cách năng động NU 218',259,'315000','0','0',1,NULL,12,1),(9,'Giày mọi da lộn NU 564',261,'215000','0','0',1,NULL,12,1),(10,'Nón cặp VK CK hàn quốc NON 106',410,'115000','0','0',1,NULL,13,1),(11,'Giày mọi thủy thủ cá tính NU 498',256,'295000','0','0',1,NULL,13,1),(12,'Giày mọi nữ đơn giản cá tính NU 507',257,'215000','0','0',1,NULL,13,1),(13,'Giày Toms cá tính phong cách năng động NU 218',258,'315000','0','0',2,NULL,13,1),(14,'Giày Toms cá tính phong cách năng động NU 218',259,'315000','0','0',1,NULL,13,1),(15,'Giày mọi da lộn NU 564',261,'215000','0','0',1,NULL,13,1),(16,'Vali kéo hello ketty hàn quốc VALI 102-1',346,'885000','0','0',1,NULL,14,1),(17,'Vali kéo hello ketty hàn quốc VALI 102-3',347,'885000','0','0',1,NULL,14,1),(18,'Vali kéo hello ketty hàn quốc VALI 102-2',348,'885000','0','0',1,NULL,14,1),(19,'Nón thời trang hàn quốc phong cách cổ chữ Jeep NON 105',415,'135000','0','0',1,NULL,15,1),(20,'Dây giày thời trang nhiều màu  DG 101',418,'8000','0','0',1,NULL,15,1),(21,'Giày sandal có gót 2 màu đen trắng NU 466',323,'295000','0','0',1,NULL,16,1),(22,'Sandal Đơn Giản Xinh xắn NU 456',331,'315000','0','0',1,NULL,16,1),(23,'Giày Sandal Chiến Binh mới NU 459',329,'315000','0','0',1,NULL,16,1),(24,'Giày Cao Gót Hai Màu Tím và Đen Cực Đẹp NU 451',338,'295000','0','0',1,NULL,16,1),(25,'Sandan Chiến Binh Mẫu Mới Cho Mùa Hè Màu Đen NU 453',337,'315000','0','0',1,NULL,16,1),(26,'Giày chiến binh sandal đế bệt cá tính NU 441',341,'195000','0','0',1,NULL,16,1);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate` tinyint(3) DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (430,'Cá biển sơ chế',17,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','8.jpg','120000',0,'0',1491322440,1),(431,'Ngêu biển',19,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p2.jpg|a774d2800bafb51c189d72ec2e3f3041.jpg|f04f8595a5fefb386af6641e086c868a.jpg|0246349e28a05110c9adb1dbcd8752a4.jpg|135a8e4c5f7d55ad914d9acf779c3c12.jpg','120000',100,'',1491125874,1),(432,'Tôm Mỹ',22,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p3.jpg|2ade777df3635be386c48c32e952e46d.jpg|f13e7852971c44e73235c9387844308f.jpg|f28df896ade58fd859fc1e5c8d560036.jpg|8c17c3f15707fd8a90944f487d025e94.jpg','400000',100,'',1491125899,1),(433,'Cá hồi Canada',17,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p4.jpg|dddecec507e52100c792ffd171f7f734.jpg|808e451e6abb60ffe379d397e486955f.jpg|618e4f23fd4f0a0142dcc44ba672bd3e.jpg|e0644f79e2183087b0e76f579b926248.jpg','350000',100,'',1491125928,1),(434,'Cá nục biển',20,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p5.jpg|cff15a9888f1e0b6c075b5a50ef94a98.jpg|f4a80461888596287295274f1ef9adcf.jpg|72e7cf42628da5b4b7a5c27e3655b9d6.jpg|e24ad9dac6bc1e958777385b53bd3861.jpg','150000',100,'',1491125961,1),(435,'Cá hồi chế biến sẵn',20,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p6.jpg|76924f9e7926e5e50d55778fbf0f6e41.jpg|8aa16cbf7056b71524e865043ba46986.jpg|e0ab381731ae51bce0dd0a3af4df6fe6.jpg|ea4ef873d3201d8b5b7c54b46624967f.jpg','650000',100,'',1491125988,1),(436,'Cá hồi chế biến sẵn',16,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p61.jpg|d33aef73f37f05c9499004002e94d077.jpg|f70c7bf8aae1e318232e67e3128536ec.jpg|f1a633c72490f024ceab1895946a7cbf.jpg|e36aefa6a11dee69093dffdc8416fb55.jpg','650000',100,'',1491125997,1),(437,'Cá uớp muối',20,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p7.jpg|e13479233b66ec4456e3ae585c0dc779.jpg|2be8a6467ce8da17235f446e431bb8ad.jpg|14bd715f9d695dec8f883cdf99cc7ebf.jpg|9ef25cd96371103fd3079f7d5e58ca56.jpg','250000',100,'',1491126034,1),(438,'Tôm chế biến sẵn',20,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p8.jpg|ade6455a5faa9bb320da79de5b98ac4d.jpg|6bcc0266632986d946bfa13c14cfcadb.jpg|19f44c0c4d12b9c2f8f5c7f2ebdcd537.jpg|249d0442cbfdf5370de496903ca74760.jpg','350000',100,'',1491126051,1),(439,'Tôm chế biến sẵn',22,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p81.jpg|fdc04dfebc3bba86416582f8d35db1bb.jpg|29956fdb741490d40267cfc4b3f1e843.jpg|1de12cec3ffdea9ef2fd866e367d7e5b.jpg|7e3b49111c34c94e2822d2bcb57e6b28.jpg','350000',100,'',1491126057,1),(440,'Tôm chế biến sẵn',18,'','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p82.jpg|a59b5140ebca35f5faa03592b78d6934.jpg|389d2fbfc7e822ce55bcfc8d72893a18.jpg|e5cba69585834f6772235e32140344d4.jpg|772dd73a81c09bd632edf3bd57af5ac0.jpg','350000',100,'',1491126063,1),(441,'Cá biển sơ chế',17,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p110.jpg','120000',0,'0',1491316666,1);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_user`
--

DROP TABLE IF EXISTS `shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datereg` int(11) DEFAULT NULL,
  `lastlogin` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_user`
--

LOCK TABLES `shop_user` WRITE;
/*!40000 ALTER TABLE `shop_user` DISABLE KEYS */;
INSERT INTO `shop_user` VALUES (1,'Hungquyen',NULL,'16621479883a7a3fa3bd91966794eab0','12415125123','hungquyen.ntt@gmail.com',NULL,'',1439403823,NULL,1),(2,'User test',NULL,'46eba46cb2c3fee95786b217bf7f835e','0929606064','user@gmail.com',NULL,'',1439448100,NULL,1);
/*!40000 ALTER TABLE `shop_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 22:44:29
