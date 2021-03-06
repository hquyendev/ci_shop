-- MySQL dump 10.13  Distrib 5.7.11, for Linux (x86_64)
--
-- Host: localhost    Database: ci_shop
-- ------------------------------------------------------
-- Server version	5.7.11-0ubuntu6

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
  `detail` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cate`
--

LOCK TABLES `shop_cate` WRITE;
/*!40000 ALTER TABLE `shop_cate` DISABLE KEYS */;
INSERT INTO `shop_cate` VALUES (1,'Giày Nam','giay-nam','Giày Nam','Giày Nam',0,0,'','Mô tả danh mục Giày Nam'),(2,'Giày boot nam','giay-boot-nam','Giày boot nam','Giày boot nam',1,0,'fa-phuot-ao-2.jpg','Mô tả danh mục Giày boot nam'),(3,'Giày thể thao & thời trang nam','giay-thoi-trang-the-thao-nam','Giày thể thao & thời trang nam','Giày thể thao & thời trang nam',1,0,NULL,'Mô tả danh mục Giày thể thao & thời trang nam'),(4,'Giày tây nam cao cấp','giay-tay-nam-cao-cap','Giày tây nam cao cấp','Giày tây nam cao cấp',1,0,NULL,'Mô tả danh mục Giày tây nam cao cấp'),(5,'Giày mọi nam','giay-moi-nam','Giày mọi nam','Giày mọi nam',1,0,NULL,'Mô tả danh mục Giày mọi nam'),(6,'Giày nữ','giay-nu','Giày nữ','Giày nữ',0,0,NULL,'Mô tả danh mục Giày nữ'),(7,'Giày boot nữ hàn quốc','giay-boot-nu-han-quoc','Giày boot nữ hàn quốc','Giày boot nữ hàn quốc',6,0,NULL,'Mô tả danh mục Giày boot nữ hàn quốc'),(8,'Giày oxford nữ','giay-oxford-nu','Giày oxford nữ','Giày oxford nữ',6,0,NULL,'Mô tả danh mục Giày oxford nữ'),(9,'Giày Thể Thao & thời trang nữ','giay-thoi-trang-nu','Giày Thể Thao & thời trang nữ','Giày Thể Thao & thời trang nữ',6,0,NULL,'Mô tả danh mục Giày Thể Thao & thời trang nữ'),(10,'Giày Mọi Nữ','giay-moi-nu','Giày Mọi Nữ','Giày Mọi Nữ',6,0,NULL,'Mô tả danh mục Giày Mọi Nữ'),(11,'Giày cặp đôi','giay-cap-doi','Giày cặp đôi','Giày cặp đôi',0,0,NULL,'Mô tả danh mục Giày cặp đôi'),(12,'Giày sandal','giay-sandal','Giày sandal','Giày sandal',0,0,NULL,'Mô tả danh mục Giày sandal'),(13,'Vali kéo','vali-keo','Vali kéo','Vali kéo',0,0,NULL,'Mô tả danh mục Vali kéo'),(14,'balo vans','balo-vans','balo vans','balo vans',0,0,NULL,'Mô tả danh mục balo vans'),(15,'Phụ Kiện & Nón','non-phu-kien','Phụ Kiện & Nón','Phụ Kiện & Nón',0,0,NULL,'Mô tả danh mục Phụ Kiện & Nón'),(16,'Cá biển','ca-bien','Cá biển','Cá biển',0,1,'21.jpg','<p>M&ocirc; tả danh mục C&aacute; biển</p>\n'),(17,'Cá sông hồ','ca-song-ho','Cá sông hồ','Cá sông hồ',0,1,'15.jpg','<p>M&ocirc; tả danh mục C&aacute; s&ocirc;ng hồ</p>\n'),(18,'Tôm đỏ','tom-do','Tôm đỏ','Tôm đỏ',0,1,'3.jpg','Mô tả danh mục Tôm đỏ'),(19,'Nghêu sò','ngheu-so','Nghêu sò','Nghêu sò',0,1,'4.jpg','Mô tả danh mục Nghêu sò'),(20,'Cá uớp muối','ca-uop-muoi','Cá uớp muối','Cá uớp muối',0,1,'5.jpg','Mô tả danh mục Cá uớp muối'),(21,'Chai, sò','chai-so','Chai, sò','Chai, sò',0,1,'8.jpg','Mô tả danh mục Chai, sò'),(22,'Tôm biển','tom-bien','Tôm biển','Tôm biển',0,1,'7.jpg','Mô tả danh mục Tôm biển'),(23,'Chai nước ngọt','chai-nuoc-ngot','Chai nước ngọt','Chai nước ngọt',0,1,'6.jpg','Mô tả danh mục Chai nước ngọt'),(24,'sdasdasd','sdasdasd','sdasdasd','sdasdasd',0,0,'8.jpg','Mô tả danh mục sdasdasd'),(25,'sadsad','sadsad','sadsad','sadsad',0,0,'0','Mô tả danh mục sadsad'),(26,'sadasd','sadasdasdas','sadasd','sadasd',0,0,'7.jpg','Mô tả danh mục sadasd');
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
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_guide`
--

LOCK TABLES `shop_guide` WRITE;
/*!40000 ALTER TABLE `shop_guide` DISABLE KEYS */;
INSERT INTO `shop_guide` VALUES (1,'Chính sách bảo hành','<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>\n','chinh-sach-bao-hanh',NULL,0,1494170333,1),(2,'Chính sách vận chuyển','Chính sách vận chuyên','chinh-sach-van-chuyen',NULL,0,NULL,1),(3,'Hướng dẫn mua hàng','Hướng dẫn mua hàng','huong-dan-mua-hang',NULL,0,NULL,1),(4,'Bản đồ','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31351.497999136234!2d106.69896745654773!3d10.816114170759292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175289c3683f2a7%3A0xf8213d8614e6f0b0!2zVGhhbmggxJBhLCBDxrAgeMOhIFRoYW5oIMSQYSwgcGjGsOG7nW5nIDI3LCBCw6xuaCBUaOG6oW5oLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1493997504816\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>','ban-do',NULL,0,1493997733,1),(5,'Liên hệ','Liên hệ','lien-he',NULL,0,NULL,1),(6,'Test','<p>dasdasdasdasdsad&nbsp;</p>\n','test',NULL,1,1491989797,11),(7,'Test','<p>dasdasdasdasdsad&nbsp;</p>\n','test',NULL,1,1491989801,11),(8,'Test','<p>dasdasdasdasdsad&nbsp;</p>\n','test',NULL,1,1491989850,11),(9,'Test','<p>đasadsad</p>\n','test','17022154_218122591996843_435425160893870',1,1491990216,11),(10,'Test','<p>đasadsad</p>\n','test','17022154_218122591996843_435425160893870',1,1491990219,11),(11,'Thực phẩm sạch','<p>Đ&acirc;y l&agrave; thực phẩm sạch</p>\n','thuc-pham-sach',NULL,1,1492704154,11),(12,'Tươi ngon','<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sử dụng thực phẩm tươi sống nhất</p>\n','tuoi-ngon',NULL,1,1492704282,11),(13,'Tươi sống','<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sử dụng sản phẩm tươi sống</p>\n','tuoi-song',NULL,1,1492704552,11),(14,'Về chúng tôi','<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n\n<p>Th&ocirc;ng tin về ch&uacute;ng t&ocirc;i&nbsp;</p>\n','ve-chung-toi',NULL,0,1494173099,1);
/*!40000 ALTER TABLE `shop_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_intro`
--

DROP TABLE IF EXISTS `shop_intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove` tinyint(1) DEFAULT '1',
  `time` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '11',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_intro`
--

LOCK TABLES `shop_intro` WRITE;
/*!40000 ALTER TABLE `shop_intro` DISABLE KEYS */;
INSERT INTO `shop_intro` VALUES (2,'An toàn','<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sử dụng sản phẩm an to&agrave;n</p>\n','an-toan','71.jpg',1,1492704645,-1,NULL),(3,'Nguồn gốc','<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sử dụng sản phẩm c&oacute; nguồn gốc r&otilde; r&agrave;ng</p>\n','nguon-goc','72.jpg',1,1492706108,1,'Chúng tôi luôn sử dụng sản phẩm có nguồn gốc rõ ràng'),(4,'Nhân viên','<p>Cộng đồng nh&acirc;n vi&ecirc;n nhiệt huyế</p>\n','nhan-vien','4.jpg',1,1492705564,1,NULL),(5,'Sản phẩm','<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sử dụng sản phẩm tươi sống</p>\n','san-pham','1.jpg',1,1492704913,1,NULL),(6,'Vệ sinh','<p>Sản phẩm lu&ocirc;n đạt vệ sinh</p>\n','ve-sinh','2.jpg',1,1492705410,1,NULL);
/*!40000 ALTER TABLE `shop_intro` ENABLE KEYS */;
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
-- Table structure for table `shop_post_product`
--

DROP TABLE IF EXISTS `shop_post_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_post_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_post_product`
--

LOCK TABLES `shop_post_product` WRITE;
/*!40000 ALTER TABLE `shop_post_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_post_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_post_type`
--

DROP TABLE IF EXISTS `shop_post_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_post_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_post_type`
--

LOCK TABLES `shop_post_type` WRITE;
/*!40000 ALTER TABLE `shop_post_type` DISABLE KEYS */;
INSERT INTO `shop_post_type` VALUES (1,'video','Video',1,1491907655),(2,'blog','Blog',1,1491907655);
/*!40000 ALTER TABLE `shop_post_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_posts`
--

DROP TABLE IF EXISTS `shop_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_posts`
--

LOCK TABLES `shop_posts` WRITE;
/*!40000 ALTER TABLE `shop_posts` DISABLE KEYS */;
INSERT INTO `shop_posts` VALUES (1,'test','Test','<p>dasdsad</p>\n',1,1491990730,NULL,'17022154_218122591996843_4354251608938707979_n11.jpg',NULL),(2,'test2','Test','<p>dasdasdsa</p>\n',-1,1491991753,'blog','unnamed.jpg',NULL),(3,'huong-dan-cach-nau-mon-ca-ri-ga','Huớng dẫn cách nấu món cà ri gà ','<p>Day la noi dung</p>\n',-1,1492013828,'video',NULL,NULL),(4,'cach-lam-sach-rau-cu-qua','Cách làm sạch rau củ quả ','<p>Hay ăn sạch uống sạch ngay h&ocirc;m nay</p>\n',1,1492425793,'blog','post-4.jpg',NULL),(5,'dsadasdasdasdasd','dsadasdasdasdasd','<p>dasdsad</p>\n',-1,1492014170,'blog','Screen_Shot_2017-04-08_at_10.08_.46_PM_2.png',NULL),(6,'chuan-rau-sach-la-nhu-the-nao','Chuẩn rau sạch là như thế nào','',1,1492428015,'blog','2.jpg',NULL),(7,'che-bien-hai-san-tuoi-ngon','Chế biến hải sản tươi ngon','',1,1492428129,'blog','6.jpg',NULL),(8,'huong-dan-cach-nau-mon-suon-xao-chua-ngot','Hướng dẫn cách nấu món Sườn Xào Chua Ngọt','',1,1492429382,'video','https://www.youtube.com/watch?v=hbhSY2ggKIY',NULL),(9,'huong-dan-cach-nau-mon-tom-rang-me','Hướng dẫn cách nấu món Tôm rang me','',1,1492429435,'video','https://www.youtube.com/watch?v=phWaz6hj07k',NULL),(10,'cach-che-bien-mon-goi-bo-bop-thau-cuc-ngon','Cách chế biến món Gỏi Bò Bóp Thấu cực ngon','',1,1492429454,'video','https://www.youtube.com/watch?v=nItt3hUhJwo',NULL),(11,'goi-muc-thai-lan','Gỏi mực Thái Lan','',1,1492429472,'video','https://www.youtube.com/watch?v=pgkcqRokNek',NULL),(12,'che-suong-sa-hat-luu','Chè sương sa hạt lựu','',1,1492429488,'video','https://www.youtube.com/watch?v=X7yqjlEIMXo',NULL),(13,'cach-nau-tra-sua-thai-thom-ngon-cuc-don-gian','Cách nấu trà sữa Thái thơm ngon cực đơn giản','',1,1492429507,'video','https://www.youtube.com/watch?v=T015rIHYL3w',NULL),(14,'https-www-youtube-com-watch-v-glju1qua42s','https://www.youtube.com/watch?v=gLJu1quA42s','',-1,1492429525,'video','https://www.youtube.com/watch?v=T015rIHYL3w',NULL),(15,'cach-lam-banh-sua-tuoi-chien-thom-ngon','Cách làm Bánh sữa tươi chiên thơm ngon','',1,1492429539,'video','https://www.youtube.com/watch?v=gLJu1quA42s',NULL),(16,'cach-lam-banh-ran-doremon-banh-dorayaki-chanh-chua','Cách làm Bánh rán Doremon (bánh Dorayaki) chanh chua ','',1,1492429571,'video','https://www.youtube.com/watch?v=Tdfvu_0Ctf8',NULL);
/*!40000 ALTER TABLE `shop_posts` ENABLE KEYS */;
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
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate` tinyint(3) DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `view` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (430,'Cá biển sơ chế ','ca-bien-so-che',17,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','8.jpg','120000',0,'0',1494149595,1,2),(431,'Ngêu biển','ngeu-bien',19,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p2.jpg','120000',0,'0',1494149607,1,3),(432,'Tôm Mỹ ','tom-my',22,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p3.jpg','400000',0,'0',1494149616,1,NULL),(433,'Cá hồi Canada ','ca-hoi-canada',17,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p4.jpg','350000',0,'0',1494149623,1,NULL),(434,'Cá nục biển  ','ca-nuc-bien',20,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p5.jpg','150000',0,'0',1494149632,1,NULL),(435,'Cá hồi chế biến sẵn ','ca-hoi-che-bien-san',20,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p6.jpg','650000',0,'0',1494149640,1,NULL),(436,'Cá hồi chế biến sẵn ','ca-hoi-che-bien-san2',16,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p61.jpg','650000',0,'0',1494149652,1,NULL),(437,'Cá uớp muối','ca-uop-muoi',20,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p7.jpg','250000',0,'0',1494149667,1,NULL),(438,'Tôm chế biến sẵn ','tom-che-bien-san',20,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p8.jpg','350000',0,'0',1494149681,1,NULL),(439,'Tôm chế biến sẵn ','tom-che-bien-san2',22,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p81.jpg','350000',0,'0',1494149691,1,NULL),(440,'Tôm chế biến sẵn moi','tom-che-bien-san-moi',18,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p82.jpg','350000',0,'0',1494149702,1,NULL),(441,'Cá biển sơ chế','ca-bien-so-che-moi',17,'0','<p>Đ&acirc;y l&agrave; m&ocirc; tả cho sản phẩm</p>\n','p110.jpg','120000',0,'0',1494149714,1,2);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_slider`
--

DROP TABLE IF EXISTS `shop_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_slider`
--

LOCK TABLES `shop_slider` WRITE;
/*!40000 ALTER TABLE `shop_slider` DISABLE KEYS */;
INSERT INTO `shop_slider` VALUES (1,NULL,NULL,NULL,-1,1491903796),(2,'17239712_1405224422875182_4250549768410670145_o1.jpg',NULL,NULL,-1,1491903991),(3,'17022154_218122591996843_4354251608938707979_n.jpg',NULL,NULL,-1,1491904628),(4,'17239712_1405224422875182_4250549768410670145_o2.jpg',NULL,NULL,-1,1491905036),(5,'6.jpg',NULL,NULL,1,1492086284),(6,'7.jpg',NULL,NULL,1,1492086423),(7,'8.jpg',NULL,NULL,1,1492086436);
/*!40000 ALTER TABLE `shop_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_subscribe`
--

DROP TABLE IF EXISTS `shop_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_subscribe`
--

LOCK TABLES `shop_subscribe` WRITE;
/*!40000 ALTER TABLE `shop_subscribe` DISABLE KEYS */;
INSERT INTO `shop_subscribe` VALUES (1,'',1,NULL),(2,'dasdas',1,NULL),(3,'dasdasdasd',1,NULL),(4,'dasdasdasddasd',1,NULL);
/*!40000 ALTER TABLE `shop_subscribe` ENABLE KEYS */;
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

-- Dump completed on 2017-05-08 14:58:06
