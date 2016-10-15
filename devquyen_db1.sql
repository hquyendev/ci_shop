-- phpMyAdmin SQL Dump
-- version 4.1.14.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2015 at 11:49 PM
-- Server version: 5.1.73-log
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `devquyen_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_admin`
--

CREATE TABLE IF NOT EXISTS `shop_admin` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(34) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shop_admin`
--

INSERT INTO `shop_admin` (`id`, `name`, `username`, `password`, `active`) VALUES
(1, 'Quyền DEV', 'admin', '1acc9b635a2197bd87b00ba2d4812dbc﻿', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_cate`
--

CREATE TABLE IF NOT EXISTS `shop_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(3) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `shop_cate`
--

INSERT INTO `shop_cate` (`id`, `name`, `slug`, `des`, `meta`, `parent`, `active`) VALUES
(1, 'Giày Nam', 'giay-nam', 'Giày Nam', 'Giày Nam', 0, 1),
(2, 'Giày boot nam', 'giay-boot-nam', 'Giày boot nam', 'Giày boot nam', 1, 1),
(3, 'Giày thể thao & thời trang nam', 'giay-thoi-trang-the-thao-nam', 'Giày thể thao & thời trang nam', 'Giày thể thao & thời trang nam', 1, 1),
(4, 'Giày tây nam cao cấp', 'giay-tay-nam-cao-cap', 'Giày tây nam cao cấp', 'Giày tây nam cao cấp', 1, 1),
(5, 'Giày mọi nam', 'giay-moi-nam', 'Giày mọi nam', 'Giày mọi nam', 1, 1),
(6, 'Giày nữ', 'giay-nu', 'Giày nữ', 'Giày nữ', 0, 1),
(7, 'Giày boot nữ hàn quốc', 'giay-boot-nu-han-quoc', 'Giày boot nữ hàn quốc', 'Giày boot nữ hàn quốc', 6, 1),
(8, 'Giày oxford nữ', 'giay-oxford-nu', 'Giày oxford nữ', 'Giày oxford nữ', 6, 1),
(9, 'Giày Thể Thao & thời trang nữ', 'giay-thoi-trang-nu', 'Giày Thể Thao & thời trang nữ', 'Giày Thể Thao & thời trang nữ', 6, 1),
(10, 'Giày Mọi Nữ', 'giay-moi-nu', 'Giày Mọi Nữ', 'Giày Mọi Nữ', 6, 1),
(11, 'Giày cặp đôi', 'giay-cap-doi', 'Giày cặp đôi', 'Giày cặp đôi', 0, 1),
(12, 'Giày sandal', 'giay-sandal', 'Giày sandal', 'Giày sandal', 0, 1),
(13, 'Vali kéo', 'vali-keo', 'Vali kéo', 'Vali kéo', 0, 1),
(14, 'balo vans', 'balo-vans', 'balo vans', 'balo vans', 0, 1),
(15, 'Phụ Kiện & Nón', 'non-phu-kien', 'Phụ Kiện & Nón', 'Phụ Kiện & Nón', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_guide`
--

CREATE TABLE IF NOT EXISTS `shop_guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove` tinyint(1) DEFAULT '1',
  `time` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '11',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_guide`
--

INSERT INTO `shop_guide` (`id`, `name`, `content`, `slug`, `image`, `remove`, `time`, `active`) VALUES
(1, 'Chính sách bảo hành', 'Chính sách bảo hành', 'chinh-sach-bao-hanh', NULL, 0, NULL, 1),
(2, 'Chính sách vận chuyển', 'Chính sách vận chuyên', 'chinh-sach-van-chuyen', NULL, 0, NULL, 1),
(3, 'Hướng dẫn mua hàng', 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', NULL, 0, NULL, 1),
(4, 'Bản đồ', 'Bản đồ', 'ban-do', NULL, 0, NULL, 1),
(5, 'Liên hệ', 'Liên hệ', 'lien-he', NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_like`
--

CREATE TABLE IF NOT EXISTS `shop_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `shop_like`
--

INSERT INTO `shop_like` (`id`, `product`, `time`, `user`, `active`) VALUES
(1, 410, 1439403830, 1, 1),
(3, 394, 1439403858, 1, 1),
(4, 257, 1439440644, 1, 1),
(5, 258, 1439440645, 1, 1),
(6, 259, 1439440646, 1, 1),
(7, 260, 1439440647, 1, 1),
(8, 261, 1439440649, 1, 1),
(9, 262, 1439440650, 1, 1),
(10, 256, 1439442874, 1, 1),
(11, 311, 1439448176, 2, 1),
(12, 259, 1439490911, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE IF NOT EXISTS `shop_order` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`id`, `user`, `_name`, `_phone`, `_add`, `_note`, `count`, `money`, `status`, `time`, `active`) VALUES
(1, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 2, 1439393608, 1),
(2, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393614, 1),
(3, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393625, 1),
(4, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 3, 1439393653, 1),
(5, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 3, 1439393677, 1),
(6, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393691, 1),
(7, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393709, 1),
(8, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 3, 1439393716, 1),
(9, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393769, 1),
(10, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393780, 1),
(11, 0, 'dá', 'đâsd', 'ád', '', 1, 135000, 0, 1439393787, 1),
(12, 1, 'Hungquyen', '12415125123', 'asd s as sa', '', 7, 1785000, 3, 1439440699, 1),
(13, 1, 'Hungquyen', '12415125123', ' 412421412', '', 7, 1785000, 3, 1439440722, 1),
(14, 1, 'Hungquyen', '12415125123', '21 312321', '', 3, 2655000, 3, 1439441311, 1),
(15, 2, 'User test', '0929606064', 'HCM', '', 2, 143000, 3, 1439448123, 1),
(16, 2, 'User test', '0929606064', 'HANOI', '', 6, 1730000, 3, 1439448188, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_detail`
--

CREATE TABLE IF NOT EXISTS `shop_order_detail` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `shop_order_detail`
--

INSERT INTO `shop_order_detail` (`id`, `name`, `product`, `price`, `color`, `size`, `qty`, `money`, `order`, `active`) VALUES
(1, 'Nón thời trang hàn quốc NON 116-3', 390, '135000', '0', '0', 1, NULL, 9, 1),
(2, 'Nón thời trang hàn quốc NON 116-3', 390, '135000', '0', '0', 1, NULL, 10, 1),
(3, 'Nón thời trang hàn quốc NON 116-3', 390, '135000', '0', '0', 1, NULL, 11, 1),
(4, 'Nón cặp VK CK hàn quốc NON 106', 410, '115000', '0', '0', 1, NULL, 12, 1),
(5, 'Giày mọi thủy thủ cá tính NU 498', 256, '295000', '0', '0', 1, NULL, 12, 1),
(6, 'Giày mọi nữ đơn giản cá tính NU 507', 257, '215000', '0', '0', 1, NULL, 12, 1),
(7, 'Giày Toms cá tính phong cách năng động NU 218', 258, '315000', '0', '0', 2, NULL, 12, 1),
(8, 'Giày Toms cá tính phong cách năng động NU 218', 259, '315000', '0', '0', 1, NULL, 12, 1),
(9, 'Giày mọi da lộn NU 564', 261, '215000', '0', '0', 1, NULL, 12, 1),
(10, 'Nón cặp VK CK hàn quốc NON 106', 410, '115000', '0', '0', 1, NULL, 13, 1),
(11, 'Giày mọi thủy thủ cá tính NU 498', 256, '295000', '0', '0', 1, NULL, 13, 1),
(12, 'Giày mọi nữ đơn giản cá tính NU 507', 257, '215000', '0', '0', 1, NULL, 13, 1),
(13, 'Giày Toms cá tính phong cách năng động NU 218', 258, '315000', '0', '0', 2, NULL, 13, 1),
(14, 'Giày Toms cá tính phong cách năng động NU 218', 259, '315000', '0', '0', 1, NULL, 13, 1),
(15, 'Giày mọi da lộn NU 564', 261, '215000', '0', '0', 1, NULL, 13, 1),
(16, 'Vali kéo hello ketty hàn quốc VALI 102-1', 346, '885000', '0', '0', 1, NULL, 14, 1),
(17, 'Vali kéo hello ketty hàn quốc VALI 102-3', 347, '885000', '0', '0', 1, NULL, 14, 1),
(18, 'Vali kéo hello ketty hàn quốc VALI 102-2', 348, '885000', '0', '0', 1, NULL, 14, 1),
(19, 'Nón thời trang hàn quốc phong cách cổ chữ Jeep NON 105', 415, '135000', '0', '0', 1, NULL, 15, 1),
(20, 'Dây giày thời trang nhiều màu  DG 101', 418, '8000', '0', '0', 1, NULL, 15, 1),
(21, 'Giày sandal có gót 2 màu đen trắng NU 466', 323, '295000', '0', '0', 1, NULL, 16, 1),
(22, 'Sandal Đơn Giản Xinh xắn NU 456', 331, '315000', '0', '0', 1, NULL, 16, 1),
(23, 'Giày Sandal Chiến Binh mới NU 459', 329, '315000', '0', '0', 1, NULL, 16, 1),
(24, 'Giày Cao Gót Hai Màu Tím và Đen Cực Đẹp NU 451', 338, '295000', '0', '0', 1, NULL, 16, 1),
(25, 'Sandan Chiến Binh Mẫu Mới Cho Mùa Hè Màu Đen NU 453', 337, '315000', '0', '0', 1, NULL, 16, 1),
(26, 'Giày chiến binh sandal đế bệt cá tính NU 441', 341, '195000', '0', '0', 1, NULL, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE IF NOT EXISTS `shop_product` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=423 ;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `cate`, `color`, `detail`, `image`, `price`, `qty`, `size`, `time`, `active`) VALUES
(1, 'GIÀY BOOT NAM CAO CẤP JUSTIN SỰ LỰU CHỌN CỦA SIÊU SAO HOLLYWOOD- NA 730', 2, 'Trắng, Xanh, Đỏ', 'None', '37f94fd94b6029a75070821be2d90a56.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940620, 1),
(2, 'Giày boot Carty Paolo cực phong cách  NA 111', 2, 'Trắng, Xanh, Đỏ', 'None', 'd9d6584916ed3e549ac205505e57479a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940620, 1),
(3, 'Giày boot nam cá tính, mạnh mẽ NA 111', 2, 'Trắng, Xanh, Đỏ', 'None', 'a755800bee870f1a68b70fe530357f07.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940621, 1),
(4, 'Giày Boot cực cá tính NA 285', 2, 'Trắng, Xanh, Đỏ', 'None', 'a6319cab693d385e40626e7cce088fac.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940621, 1),
(5, 'Giày Boot cực cá tính NA 285', 2, 'Trắng, Xanh, Đỏ', 'None', '9573cc47099da8437bca21d62be2b94c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940621, 1),
(6, 'Giày boot nam da thật NA 617', 2, 'Trắng, Xanh, Đỏ', 'None', 'e065ad3be8b3ff377dfa468b77a6bbe8.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '835000', 20, '32,32,33,34', 1438940621, 1),
(7, 'Giày boot nam da thật NA 617', 2, 'Trắng, Xanh, Đỏ', 'None', 'ae0af034b4ebd69a7a319854a55fbb21.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '835000', 20, '32,32,33,34', 1438940621, 1),
(8, 'Giày boot nam da thật NA 617', 2, 'Trắng, Xanh, Đỏ', 'None', 'de28b6f5f45322073fc2811f6ab3443f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '835000', 20, '32,32,33,34', 1438940621, 1),
(9, 'Giày boot oxford nam NA 603', 2, 'Trắng, Xanh, Đỏ', 'None', 'ff81c90d5bbcc435c25d5a2bf23ab860.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '445000', 20, '32,32,33,34', 1438940621, 1),
(10, 'Giày boot sang trọng NA 718', 2, 'Trắng, Xanh, Đỏ', 'None', 'b7bcb75da67888291d71c2b7a83d1218.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940621, 1),
(11, 'Giày boot DR da lộn NA 719', 2, 'Trắng, Xanh, Đỏ', 'None', 'cd5a93cfeaa62fe0e717a8658b6d734c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '675000', 20, '32,32,33,34', 1438940621, 1),
(12, 'Giày boot DR da lộn NA 719', 2, 'Trắng, Xanh, Đỏ', 'None', '295a00af7c9ed97c193a00762054461b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '675000', 20, '32,32,33,34', 1438940621, 1),
(13, 'Giày boot DR da lộn NA 719', 2, 'Trắng, Xanh, Đỏ', 'None', 'ab743d44353c63a3feffd75014cf54b6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '675000', 20, '32,32,33,34', 1438940621, 1),
(14, 'Giày boot DR da NA 720', 2, 'Trắng, Xanh, Đỏ', 'None', 'f40520a67aeb1b769ca74a6368cd8259.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '675000', 20, '32,32,33,34', 1438940621, 1),
(15, 'Giày DR cổ ngắn NA 721', 2, 'Trắng, Xanh, Đỏ', 'None', 'd5436889eed225dd6de97a88fe8a7e6b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '595000', 20, '32,32,33,34', 1438940621, 1),
(16, 'Giày DR cổ ngắn NA 721', 2, 'Trắng, Xanh, Đỏ', 'None', '149af676ca25604db2067ea43e651c36.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '595000', 20, '32,32,33,34', 1438940621, 1),
(17, 'Giày DR cổ ngắn NA 721', 2, 'Trắng, Xanh, Đỏ', 'None', '35dfbf96daff00fb6931c562130ca168.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '595000', 20, '32,32,33,34', 1438940621, 1),
(18, 'Giày boot DR nam NA 695', 2, 'Trắng, Xanh, Đỏ', 'None', 'c38562ca928d2960f62dc9bc3e2c6aaa.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '695000', 20, '32,32,33,34', 1438940621, 1),
(19, 'Giày boot DR nam NA 695', 2, 'Trắng, Xanh, Đỏ', 'None', '8560c7bd230ace0e35b2cab84a84c8c9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '695000', 20, '32,32,33,34', 1438940621, 1),
(20, 'Giày dr cổ ngắn nam NA 657', 2, 'Trắng, Xanh, Đỏ', 'None', '2f52f48422ccf31ae650c45604ee95f5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '795000', 20, '32,32,33,34', 1438940621, 1),
(21, 'Giày Timberland chính hãng USA- NA 404 ', 2, 'Trắng, Xanh, Đỏ', 'None', '194b58c91c71012aa30c7d64a11cde71.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '1450000', 20, '32,32,33,34', 1438940621, 1),
(22, 'Giày Timberland chính hãng USA- NA 404 ', 2, 'Trắng, Xanh, Đỏ', 'None', '731fbdcd158ee31ddb93c23b56e9447c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '1450000', 20, '32,32,33,34', 1438940621, 1),
(23, 'Giày Boot cực chất dành cho boys- NA 310', 2, 'Trắng, Xanh, Đỏ', 'None', '5feb8fe83020b4f686d042f7db9321ed.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '445000', 20, '32,32,33,34', 1438940621, 1),
(24, 'Giày Boot cực chất dành cho boys- NA 310', 2, 'Trắng, Xanh, Đỏ', 'None', 'a0a25630aad6f3d50ae27f66f80761b9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '445000', 20, '32,32,33,34', 1438940621, 1),
(25, 'Giày boot Monkey nam NA 593', 2, 'Trắng, Xanh, Đỏ', 'None', '0cced9ff9a68659666f561b5cd6f45d3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940621, 1),
(26, 'Giày boot Monkey nam NA 593', 2, 'Trắng, Xanh, Đỏ', 'None', '79c86b909e89ca491ca6e02e376738f2.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940621, 1),
(27, 'Giày boot DR da thật NA 618', 2, 'Trắng, Xanh, Đỏ', 'None', '26e7ebbd55cd32305a4a3be7f05b5481.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '795000', 20, '32,32,33,34', 1438940621, 1),
(28, 'Giày boot cổ cao NA 672', 2, 'Trắng, Xanh, Đỏ', 'None', 'fb20902d5dcb92fe5e264eb08cc495d4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940621, 1),
(29, 'Giày DR cổ ngắn da thật  NA 627', 2, 'Trắng, Xanh, Đỏ', 'None', '4f6c7c2bb206fd75369888c95ebfae09.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '695000', 20, '32,32,33,34', 1438940621, 1),
(30, 'Giày boot dr da lộn NA 697', 2, 'Trắng, Xanh, Đỏ', 'None', '4060e143ad71ffb7328b9f62371450b0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '695000', 20, '32,32,33,34', 1438940622, 1),
(31, 'Giày boot dr da lộn NA 697', 2, 'Trắng, Xanh, Đỏ', 'None', 'dd12cfbcb9c403edfc5d3500bdf50d1f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '695000', 20, '32,32,33,34', 1438940622, 1),
(32, 'Giày boot cổ ngắn NA 669', 2, 'Trắng, Xanh, Đỏ', 'None', '3ffdd10c116b88255f5484773d0df701.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940622, 1),
(33, 'Giày boot da lôn cá tính NA 663', 2, 'Trắng, Xanh, Đỏ', 'None', 'd5d7f3741c9468f70f98e836b5dccc60.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '595000', 20, '32,32,33,34', 1438940622, 1),
(34, 'Giày boot oxford nam NA 660', 2, 'Trắng, Xanh, Đỏ', 'None', '56dff2e261ba2632b5e57233c9436a85.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '475000', 20, '32,32,33,34', 1438940622, 1),
(35, 'Giày boot oxford nam NA 660', 2, 'Trắng, Xanh, Đỏ', 'None', '0efe6276ccebb8fd3e71b3abab4a326c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '475000', 20, '32,32,33,34', 1438940622, 1),
(36, 'Giày boot oxford nam NA 660', 2, 'Trắng, Xanh, Đỏ', 'None', 'cc8d62f4fd2c369c32b48d516cdbd9ad.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '475000', 20, '32,32,33,34', 1438940622, 1),
(37, 'Giày boot nam mạnh mẽ NA 658', 2, 'Trắng, Xanh, Đỏ', 'None', '9c80470d52e10c7152226e1b39a08ecb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940622, 1),
(38, 'Giày boot nam mạnh mẽ NA 658', 2, 'Trắng, Xanh, Đỏ', 'None', '148ad2a7d554c34fb713a3399585d459.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940622, 1),
(39, 'Giày boot nam mạnh mẽ NA 658', 2, 'Trắng, Xanh, Đỏ', 'None', '6e2901aa2daa56ee026c3cfff5f458e0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940622, 1),
(40, 'Giày boot nam sang trọng NA 656', 2, 'Trắng, Xanh, Đỏ', 'None', 'c6833c4c9a5ab84580a7cac5792cc6f6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '475000', 20, '32,32,33,34', 1438940622, 1),
(41, 'Giày super star cổ cao NA 745', 3, 'Trắng, Xanh, Đỏ', 'None', 'f3f45ff467b35e6f34fc39ab9928df3e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940622, 1),
(42, 'Giày super star cổ cao NA 745', 3, 'Trắng, Xanh, Đỏ', 'None', 'ccdfcf0f3201dd3f9320156c1417152f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940622, 1),
(43, 'Giày super star cổ cao NA 745', 3, 'Trắng, Xanh, Đỏ', 'None', '7fd8db4a0c55eef140201f8211a6a20e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940622, 1),
(44, 'Giày super star cổ cao NA 745', 3, 'Trắng, Xanh, Đỏ', 'None', '7247f4b3fe51ce9e11a91f3d3608a28e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940623, 1),
(45, 'Giày thể thao nam NA 744', 3, 'Trắng, Xanh, Đỏ', 'None', 'bda9728ec7319859d3df8b88ee3e46b3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940623, 1),
(46, 'Giày thể thao nam NA 744', 3, 'Trắng, Xanh, Đỏ', 'None', 'be02742c88afb599ff4ce020fc449dc4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940623, 1),
(47, 'Giày thể thao nam NA 744', 3, 'Trắng, Xanh, Đỏ', 'None', '3bc040f05e7f9638b27fcf8f7502fc95.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940623, 1),
(48, 'Giày slip on da nam NA 743', 3, 'Trắng, Xanh, Đỏ', 'None', 'e92dd9e8cec290790280cc0690dbaa7e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(49, 'Giày slip on da nam NA 743', 3, 'Trắng, Xanh, Đỏ', 'None', 'd4698ae88b10e708b9b2c11b873f1715.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(50, 'Giày thể thao đế ngôi sao NA 742', 3, 'Trắng, Xanh, Đỏ', 'None', 'a71ceba6a9d0357c71b30b175dfc8769.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940623, 1),
(51, 'Giày thể thao đế ngôi sao NA 742', 3, 'Trắng, Xanh, Đỏ', 'None', '520861745b3fcf8ada961918a5b7c348.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940623, 1),
(52, 'Giày thể thao đế ngôi sao NA 742', 3, 'Trắng, Xanh, Đỏ', 'None', '9f6a7566a1f41aba21abc9e62276ffcb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940623, 1),
(53, 'Giày thể thao nam NA 741', 3, 'Trắng, Xanh, Đỏ', 'None', '88f41875d26f7200758a36e6c7b2b102.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(54, 'Giày thể thao nam NA 741', 3, 'Trắng, Xanh, Đỏ', 'None', '6d52518c5718a8d2ed26c2920ef26072.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(55, 'Giày thể thao nam NA 741', 3, 'Trắng, Xanh, Đỏ', 'None', '0be0909dd4a256b35faacff538a3047a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(56, 'Giày thể thao star color NA 740-8', 3, 'Trắng, Xanh, Đỏ', 'None', '49d9753fe3bc6d01f0e2ae43615e4497.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(57, 'Giày thể thao star color NA 740-9', 3, 'Trắng, Xanh, Đỏ', 'None', 'c4602555961cc5be5853606fe171540e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(58, 'Giày thể thao star color NA 740-10', 3, 'Trắng, Xanh, Đỏ', 'None', '4106cdf8a38c9ae111176c431958f517.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(59, 'Giày thể thao star color NA 740-2', 3, 'Trắng, Xanh, Đỏ', 'None', 'ada02073a1e4d2c86439d2b9dc60a522.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(60, 'Giày thể thao star color NA 740-1', 3, 'Trắng, Xanh, Đỏ', 'None', '331b885a3916717f9624d4ca3abdec2d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(61, 'Giày thể thao star color NA 740-7', 3, 'Trắng, Xanh, Đỏ', 'None', '20256f162f3eab5c79befb93a88b7ad8.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(62, 'Giày thể thao star color NA 740-6', 3, 'Trắng, Xanh, Đỏ', 'None', '24349084ef34a1bb97cde49a5eb379b3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(63, 'Giày thể thao star color NA 740-5', 3, 'Trắng, Xanh, Đỏ', 'None', '2169357ed6e6999e4071e504dabca490.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(64, 'Giày thể thao star color NA 740-4', 3, 'Trắng, Xanh, Đỏ', 'None', '1b84331c2cd10efe8e132e61c1f222b6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(65, 'Giày thể thao star color NA 740-3', 3, 'Trắng, Xanh, Đỏ', 'None', '79c8230c8c3e516a3bc863564914c414.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(66, 'Giày thể thao nam NA 739', 3, 'Trắng, Xanh, Đỏ', 'None', '0efa3bafe3d1ae7155bb5351022fd51d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(67, 'Giày thể thao nam NA 739', 3, 'Trắng, Xanh, Đỏ', 'None', 'c7f1af2c7fa0920dd87052274f2a8206.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(68, 'Giày thể thao nam NA 739', 3, 'Trắng, Xanh, Đỏ', 'None', '1b40e2c2c0d284f5909208631d32eb3f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940623, 1),
(69, 'Giày slip on nam NA 738', 3, 'Trắng, Xanh, Đỏ', 'None', 'f85d0d7a5ac3b7ece095216bf89ce889.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940623, 1),
(70, 'Giày slip on nam NA 738', 3, 'Trắng, Xanh, Đỏ', 'None', 'c25e9987c46741dd8fff781a0f3211a1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940623, 1),
(71, 'Giày thể thao nam NA 734', 3, 'Trắng, Xanh, Đỏ', 'None', '7641a75a541197c12df097f0997e6be9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940623, 1),
(72, 'Giày van cao cổ nam NA 733', 3, 'Trắng, Xanh, Đỏ', 'None', 'ee4d7207e897b08819dde88ee9d8ea84.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940624, 1),
(73, 'Giày slip on nam NA 731', 3, 'Trắng, Xanh, Đỏ', 'None', '61b3d4bd4bf0d9ea602322f0f3a60083.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940624, 1),
(74, 'Giày slip on nam NA 727', 3, 'Trắng, Xanh, Đỏ', 'None', '84614d7723bca8c208d63ae90ebba984.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940624, 1),
(75, 'Giày slip on nam NA 727', 3, 'Trắng, Xanh, Đỏ', 'None', 'a55b0f9236cf7a2a14c951cd6012c756.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940624, 1),
(76, 'Giày slip on nam NA 727', 3, 'Trắng, Xanh, Đỏ', 'None', 'cf3b0e7c58fe0c22ec01a856d9e97390.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940624, 1),
(77, 'Giày thể thao nam NA 723 ', 3, 'Trắng, Xanh, Đỏ', 'None', '7d3fd6e1ae15013e9572d1e032684da0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '435000', 20, '32,32,33,34', 1438940624, 1),
(78, 'Giày slip on nam NA 710', 3, 'Trắng, Xanh, Đỏ', 'None', 'c114ae8f425e0d1d5bbe8e34a37f9fa9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940624, 1),
(79, 'Giày slip on nam NA 710', 3, 'Trắng, Xanh, Đỏ', 'None', '2c903e396001d8e55276668647cd12bd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940624, 1),
(80, 'Giày slip on nam NA 710', 3, 'Trắng, Xanh, Đỏ', 'None', '46d5b1547fb3bb9b6584179732310e8f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940624, 1),
(81, 'Giày tây nam cực sang trọng NA 533', 4, 'Trắng, Xanh, Đỏ', 'None', '0628df3fa3a06849dbc96271737714aa.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '495000', 20, '32,32,33,34', 1438940624, 1),
(82, 'Giày mọi phong cách NA 717', 5, 'Trắng, Xanh, Đỏ', 'None', '1c677fac56d5a610077ec922de5993da.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940624, 1),
(83, 'Giày mọi nam NA 737', 5, 'Trắng, Xanh, Đỏ', 'None', '746ced8e0ef437de2bd8cbf7533c90de.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940624, 1),
(84, 'Giày mọi nam NA 737', 5, 'Trắng, Xanh, Đỏ', 'None', '0eabfded5e557adaddf7b4245f430995.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940624, 1),
(85, 'Giày mọi nam NA 737', 5, 'Trắng, Xanh, Đỏ', 'None', 'd9ac7cbb960a8e2c7c41d906ab773875.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940624, 1),
(86, 'Giày slip on nam NA 732', 5, 'Trắng, Xanh, Đỏ', 'None', '1e8df654ddfa76dd23c5a4622cdd4f30.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940624, 1),
(87, 'Giày slip on nam NA 732', 5, 'Trắng, Xanh, Đỏ', 'None', '317b23d1bc51faea02c5edf0e15203de.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940624, 1),
(88, 'Giày slip on nam NA 732', 5, 'Trắng, Xanh, Đỏ', 'None', '6c60a8551b647800e0a69aec9eb8c40e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940624, 1),
(89, 'Giày mọi dây chéo NA 730', 5, 'Trắng, Xanh, Đỏ', 'None', 'ad0c48efe27575be75cb6c9731cf584d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(90, 'Giày mọi dây chéo NA 730', 5, 'Trắng, Xanh, Đỏ', 'None', '00e329b5d32aeef70ee2a6b0312a3720.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(91, 'Giày mọi dây chéo NA 730', 5, 'Trắng, Xanh, Đỏ', 'None', '4a3ad05f6b7d3e05f9019436f969532f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(92, 'Giày mọi dây chéo NA 730', 5, 'Trắng, Xanh, Đỏ', 'None', '4ba3d8591f5b6bf2b6be8bd17a594e3f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(93, 'Giày mọi nam thời trang NA 729', 5, 'Trắng, Xanh, Đỏ', 'None', 'b6c3324baa995a9625155fd41752e8f3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(94, 'Giày mọi nam thời trang NA 729', 5, 'Trắng, Xanh, Đỏ', 'None', '673d6dd07f16e06867db0d9da0daa453.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(95, 'Giày mọi nam thời trang NA 729', 5, 'Trắng, Xanh, Đỏ', 'None', '425ce77adbc520df1827942f394c453f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(96, 'Giày mọi nam thời trang NA 729', 5, 'Trắng, Xanh, Đỏ', 'None', 'd78d674a416268e94d8f08f26cc3e1b3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(97, 'Giày mọi nam đẹp NA 726', 5, 'Trắng, Xanh, Đỏ', 'None', '4f7c1abe60a8663f0de2e3cc6ec2ffbb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940625, 1),
(98, 'Giày mọi nam đẹp NA 726', 5, 'Trắng, Xanh, Đỏ', 'None', '8e0bf8055bf32f2cc7d54ab0568f3557.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940625, 1),
(99, 'Giày Mọi cá tính cho boys NA 529', 5, 'Trắng, Xanh, Đỏ', 'None', '2a5e1c6d1c74365256bddade6af680c9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(100, 'Giày Mọi cá tính cho boys NA 529', 5, 'Trắng, Xanh, Đỏ', 'None', '0321d010766942ac220cc6c48f16c7da.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(101, 'Giày Toms cá tính phong cách năng động NA 239', 5, 'Trắng, Xanh, Đỏ', 'None', '2c7fe6780d8654ae76f7cc9926e01be6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940625, 1),
(102, 'Giày Toms cá tính phong cách năng động NA 239', 5, 'Trắng, Xanh, Đỏ', 'None', '89f03581bb68cd06fb775dae55463e06.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940625, 1),
(103, 'Giày mọi da lộn cột nơ NA 643', 5, 'Trắng, Xanh, Đỏ', 'None', 'a3c641091ef0708b8159e23fe9bae20f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940625, 1),
(104, 'Giày mọi da lộn cột nơ NA 643', 5, 'Trắng, Xanh, Đỏ', 'None', '8e07b3fd6d37bdf3816cd0d2163203a5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940625, 1),
(105, 'Giày mọi da lộn cột nơ NA 643', 5, 'Trắng, Xanh, Đỏ', 'None', '7e1dca1daf8fe1d1342776d1226b271b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940625, 1),
(106, 'Giày mọi da lộn NA 708', 5, 'Trắng, Xanh, Đỏ', 'None', 'ec4610d306017d450ba1c84c9d261d49.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940625, 1),
(107, 'Giày mọi dây kéo NA 701', 5, 'Trắng, Xanh, Đỏ', 'None', '0227c49333a62b076c924b2caf05274a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(108, 'Giày mọi dây kéo NA 701', 5, 'Trắng, Xanh, Đỏ', 'None', 'f2702223154d5f80984c6bd23908cdf0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(109, 'Giày mọi dây kéo NA 701', 5, 'Trắng, Xanh, Đỏ', 'None', 'aed69d25fb7434127c2df93cb638bf8c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(110, 'Giày mọi da nhung NA 700', 5, 'Trắng, Xanh, Đỏ', 'None', 'c9556ba944c85c6df2cf252c47c943f5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(111, 'Giày mọi da nhung NA 700', 5, 'Trắng, Xanh, Đỏ', 'None', '7094d47c0f417dbaf40e6bc0ed975385.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(112, 'Giày mọi da nhung NA 700', 5, 'Trắng, Xanh, Đỏ', 'None', 'ea8b2e4285af32f1da77988eac72f6ed.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(113, 'Giày mọi versace nam NA 699', 5, 'Trắng, Xanh, Đỏ', 'None', '55aa829879733559b8401ecb84b38669.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(114, 'Giày mọi versace nam NA 714', 5, 'Trắng, Xanh, Đỏ', 'None', '199913efefffa82ab70bbd1d6b7e8cfc.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(115, 'Giày mọi versace nam NA 714', 5, 'Trắng, Xanh, Đỏ', 'None', '78e64e9f2e4fc79cd489d12251082f65.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(116, 'Giày mọi versace nam NA 714', 5, 'Trắng, Xanh, Đỏ', 'None', '058bcf9c9741fff0a110f64043a7a3c2.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940625, 1),
(117, 'Giày mọi thể thao nam NA 562', 5, 'Trắng, Xanh, Đỏ', 'None', 'e963a94b7a45e4eef26ea9a2e7721e69.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940626, 1),
(118, 'Giày mọi thể thao nam NA 562', 5, 'Trắng, Xanh, Đỏ', 'None', '689bae5123c19297a98e81a1e7eec900.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940626, 1),
(119, 'Giày mọi cá tính nam NA 683', 5, 'Trắng, Xanh, Đỏ', 'None', '742e1966016af4bc269fa33b93089fec.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(120, 'Giày mọi chữ V NA 715', 5, 'Trắng, Xanh, Đỏ', 'None', '7e62f47956a8118e15d40441a711eb0f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(121, 'Giày mọi chữ V NA 715', 5, 'Trắng, Xanh, Đỏ', 'None', 'efb8b7f642f6fb40be88b9c44ca4d87c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(122, 'Giày boot nữ NU 743', 7, 'Trắng, Xanh, Đỏ', 'None', '50f7c3e797037d660b0a6709b0ce82a4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940626, 1),
(123, 'Giày Boot cao gót cá tính, sang trọng cho girls NU 271', 7, 'Trắng, Xanh, Đỏ', 'None', '378b83c5ea4085cfd932752c8ca28bf3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(124, 'Giày Boot cao gót cá tính, sang trọng cho girls NU 271', 7, 'Trắng, Xanh, Đỏ', 'None', '5f6ec0264321a2331c9b89a9bb3f3c33.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(125, 'Giày Boot cao gót cá tính, sang trọng cho girls NU 271', 7, 'Trắng, Xanh, Đỏ', 'None', '75b915b68e4eda4e531015834bea208d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(126, 'Giày Boot cao gót cá tính, sang trọng cho girls NU 271', 7, 'Trắng, Xanh, Đỏ', 'None', '977dfc6fe034b9c59f40f12517813d48.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940626, 1),
(127, 'Giày boot dr nữ NU 582 ', 7, 'Trắng, Xanh, Đỏ', 'None', '03d37661d940a2895f5e23690dbac38d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(128, 'Giày boot dr cực chất NU 566', 7, 'Trắng, Xanh, Đỏ', 'None', 'a2f8a847ffd60039d0edc07fdec5a600.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '405000', 20, '32,32,33,34', 1438940626, 1),
(129, 'Giày boot dr cực chất NU 566', 7, 'Trắng, Xanh, Đỏ', 'None', '04ae741b262c0cbfb90dfa38ed1dff6e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '405000', 20, '32,32,33,34', 1438940626, 1),
(130, 'Giày boot gót vừa NU 562', 7, 'Trắng, Xanh, Đỏ', 'None', '9bc6f1b5358221d5637330bd74b416ad.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(131, 'Giày boot gót vừa NU 562', 7, 'Trắng, Xanh, Đỏ', 'None', 'cda9552329bc0f049bc77a7940a32295.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(132, 'Giày boot da nhung NU 561', 7, 'Trắng, Xanh, Đỏ', 'None', '4803e26f8a0e3aa1e02ce9578535dfcf.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(133, 'Giày boot da nhung NU 561', 7, 'Trắng, Xanh, Đỏ', 'None', 'c4078a108aa3d85578dbe1374515e04a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(134, 'Giày boot cao gót NU 559', 7, 'Trắng, Xanh, Đỏ', 'None', '6bbf69f3b09661b01e819d6a2a08f51d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(135, 'Giày boot cao gót NU 559 ', 7, 'Trắng, Xanh, Đỏ', 'None', '8cbd074ef17736d047afb2823f119892.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940626, 1),
(136, 'Giày boot gót nhọn NU 555', 7, 'Trắng, Xanh, Đỏ', 'None', 'd88a9d9d2d9883d2ac97b9b89c2f445f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940627, 1),
(137, 'Giày boot cổ lông NU 553', 7, 'Trắng, Xanh, Đỏ', 'None', 'b594f5393829df577cc5793961ca7fb8.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(138, 'Giày boot cổ lông NU 553', 7, 'Trắng, Xanh, Đỏ', 'None', '0ec1963ae6655a4e2a6cd13b3f92563d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(139, 'Giày boot da cao gót NU 552', 7, 'Trắng, Xanh, Đỏ', 'None', '142c41329d1acba6277c49b088fb1362.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(140, 'Giày boot cao gót NU 551', 7, 'Trắng, Xanh, Đỏ', 'None', '42247e08df8fe3e42afb42a83f01d6f1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940627, 1),
(141, 'Giày boot cao gót NU 551', 7, 'Trắng, Xanh, Đỏ', 'None', '244a76227a097c983d1ef30308ce3806.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940627, 1),
(142, 'Giày boot da lộn NU 550', 7, 'Trắng, Xanh, Đỏ', 'None', 'a6d19a746384cd999734c4beec2551c0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(143, 'Giày boot da lộn NU 550', 7, 'Trắng, Xanh, Đỏ', 'None', '35a519bf78e59645c3c563d87a2dd234.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(144, 'Giày boot da cá tính NU 549', 7, 'Trắng, Xanh, Đỏ', 'None', 'd724dd2852e55c8d270d76384fe72e87.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(145, 'Giày boot da cá tính NU 549', 7, 'Trắng, Xanh, Đỏ', 'None', '73eca21cd47c788dbde6e3dc840e10d1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(146, 'Giày boot cao gót NU 544', 7, 'Trắng, Xanh, Đỏ', 'None', '51ee651dd30dde584ccb235c557a5574.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940627, 1),
(147, 'Giày boot nữ độn đế NU 541', 7, 'Trắng, Xanh, Đỏ', 'None', '947ebb6f68765482d4d4686875c362b5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940627, 1),
(148, 'Giày boot nữ độn đế NU 541', 7, 'Trắng, Xanh, Đỏ', 'None', '1a03394cc767aa8d437512ac11fde75b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940627, 1),
(149, 'Giày boot nữ cá tính NU 540', 7, 'Trắng, Xanh, Đỏ', 'None', 'bdd2b43683a1c437596851561bb6c9a5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(150, 'Giày boot nữ cá tính NU 540', 7, 'Trắng, Xanh, Đỏ', 'None', '3c7eb1cd3140a6150c5123e42e90624b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(151, 'Giày boot nữ cá tính NU 540', 7, 'Trắng, Xanh, Đỏ', 'None', '7a5ed42c110af8c8ba08e963c5ef234e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(152, 'Giày boot nữ cá tính NU 539', 7, 'Trắng, Xanh, Đỏ', 'None', '228a1b5d5f374adf1f9c4ed786956798.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940627, 1),
(153, 'Giày boot nữ cá tính NU 539', 7, 'Trắng, Xanh, Đỏ', 'None', '421e4db1ff9eb6ae4642a8724cf623d1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940627, 1),
(154, 'Giày boot dây kéo NU 528', 7, 'Trắng, Xanh, Đỏ', 'None', '56a12a07fbc11a101fdf418046871eba.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940627, 1),
(155, 'Giày boot dây kéo NU 528', 7, 'Trắng, Xanh, Đỏ', 'None', 'd01c3852eb7974c055f5d3d518dc5ba6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940627, 1),
(156, 'Giày boot đế gỗ NU 522', 7, 'Trắng, Xanh, Đỏ', 'None', '1ef1e0b831dea1c2b51fae4d090ed43f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(157, 'Giày boot đế gỗ NU 522', 7, 'Trắng, Xanh, Đỏ', 'None', '64416d583da6e1028411d3aca6835e01.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(158, 'Giày boot dây kéo nữ NU 519', 7, 'Trắng, Xanh, Đỏ', 'None', 'aec8511d74d6a4c54347ab2c9cf71a9b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(159, 'Giày boot dây kéo nữ NU 519', 7, 'Trắng, Xanh, Đỏ', 'None', '0978bf228c2fd06b2dcd44d138bacfca.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(160, 'Giày boot dây kéo nữ NU 519', 7, 'Trắng, Xanh, Đỏ', 'None', '3b619e1bf254bac1d5aac8c4c8caecc6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940627, 1),
(161, 'Giày boot nữ đế gỗ NU 518', 7, 'Trắng, Xanh, Đỏ', 'None', 'a8cd352c30ddb644fd71f9dc7e6986ae.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940628, 1),
(162, 'Giày oxford đế gỗ đẹp NU 491', 8, 'Trắng, Xanh, Đỏ', 'None', 'bc3dc0210cdcb365e6cea4f196f13ba1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(163, 'Giày oxford đế gỗ đẹp NU 491', 8, 'Trắng, Xanh, Đỏ', 'None', 'f51431f5163cf209b0d34c24816a4adf.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(164, 'Giày oxford đế gỗ đẹp NU 491', 8, 'Trắng, Xanh, Đỏ', 'None', '56b974513e9ad265b188428d49b4c957.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(165, 'Giày Boot cực phong cách cho girls NU 421', 8, 'Trắng, Xanh, Đỏ', 'None', '82672fcbc514f608f4301a63065852c0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(166, 'Giày Boot cực phong cách cho girls NU 421', 8, 'Trắng, Xanh, Đỏ', 'None', '43e53ea3035968ca7faae30a359057ca.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(167, 'giày oxford nữ cực chất, cực rẻ NU 202B', 8, 'Trắng, Xanh, Đỏ', 'None', '9279a07f59d5c9598346793501517476.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '285000', 20, '32,32,33,34', 1438940628, 1),
(168, 'giày oxford nữ cực chất, cực rẻ NU 202B', 8, 'Trắng, Xanh, Đỏ', 'None', 'b5dc51015e748ad4d015dc7b2a7f36c1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '285000', 20, '32,32,33,34', 1438940628, 1),
(169, 'Giày oxford da NU 707', 8, 'Trắng, Xanh, Đỏ', 'None', '865be8974afece8e25766dc53190d32a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940628, 1),
(170, 'Giày oxford da NU 707', 8, 'Trắng, Xanh, Đỏ', 'None', '137df605bb8f55713382b32c5208aed8.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940628, 1),
(171, 'Giày oxford sandal NU 586 ', 8, 'Trắng, Xanh, Đỏ', 'None', '16143ba20a691c744118d6fa7ee9cb15.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(172, 'Giày Oxford cute cho girls NU 392', 8, 'Trắng, Xanh, Đỏ', 'None', 'd3fa57e95e399f65e4a0d0aa8cc908c6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940628, 1),
(173, 'Giày Oxford cute cho girls NU 392', 8, 'Trắng, Xanh, Đỏ', 'None', '206c082bb814ab1f32ed538ca7492923.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940628, 1),
(174, 'Giày oxford da bóng cực chất NU 315', 8, 'Trắng, Xanh, Đỏ', 'None', 'afec818c69fe5c8b5ff54ac0b0b33267.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940628, 1),
(175, 'Giày oxford da bóng cực chất NU 315', 8, 'Trắng, Xanh, Đỏ', 'None', '60a5d676ee47e2a76186e2fef89eb5fb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940628, 1),
(176, 'Giày oxford hàn quốc NU 570', 8, 'Trắng, Xanh, Đỏ', 'None', 'a72c235aa0a123765408874761676d89.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '255000', 20, '32,32,33,34', 1438940628, 1),
(177, 'Giày oxford siêu cute da bóng cao gót NU 438', 8, 'Trắng, Xanh, Đỏ', 'None', '74ecc30a6c299fde5c0a8a0aa3cf7ec9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '99000', 20, '32,32,33,34', 1438940628, 1),
(178, 'Giày oxford nữ NU 565', 8, 'Trắng, Xanh, Đỏ', 'None', '685e9c97e84da492ad07c0ecf228bcd9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940628, 1),
(179, 'Giày oxford nữ NU 565', 8, 'Trắng, Xanh, Đỏ', 'None', '3886c93358d7d0d09be1e1823dc0494b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940628, 1),
(180, 'Giày oxford sandal NU 586', 8, 'Trắng, Xanh, Đỏ', 'None', '650393c18452eef2b50670b833fc84e6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940628, 1),
(181, 'Giày oxford con ngựa NU 558 ', 8, 'Trắng, Xanh, Đỏ', 'None', '44f87f6ea91fa4c9a5545f36e0b56bbd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(182, 'Giày oxford con ngựa NU 558 ', 8, 'Trắng, Xanh, Đỏ', 'None', '03ba33a225bd15afbc26ddf270bf7891.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(183, 'Giày oxford da bóng NU 557', 8, 'Trắng, Xanh, Đỏ', 'None', 'f46258ee660b6e7695dc553f1f8175ff.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '365000', 20, '32,32,33,34', 1438940629, 1),
(184, 'Giày oxford da bóng NU 557', 8, 'Trắng, Xanh, Đỏ', 'None', 'ca3bf90f5d7479fe19d0c939df479112.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '365000', 20, '32,32,33,34', 1438940629, 1),
(185, 'Giày oxford cao gót NU 578', 8, 'Trắng, Xanh, Đỏ', 'None', '98389b47c850a6fba04b38d6786e5967.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940629, 1),
(186, 'Giày oxford cao gót NU 578', 8, 'Trắng, Xanh, Đỏ', 'None', '6222c215d83693c34211858071a69dbd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940629, 1),
(187, 'Giày oxford hàn quốc NU 570', 8, 'Trắng, Xanh, Đỏ', 'None', '7d3dec816eadcc21aa6d56eaa8f4dbce.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '255000', 20, '32,32,33,34', 1438940629, 1),
(188, 'Giày oxford đế gỗ NU 589 ', 8, 'Trắng, Xanh, Đỏ', 'None', '2d5bc9426ded1f0158267c39226ad17b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(189, 'Giày oxford đế gỗ NU 589 ', 8, 'Trắng, Xanh, Đỏ', 'None', '506d7bdfdb06887846d019808394e1e7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(190, 'Giày Oxford da lộn NU 333', 8, 'Trắng, Xanh, Đỏ', 'None', '0c454f15a7e27e38ccddf0f672ad8f3e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(191, 'Giày Oxford da lộn NU 333', 8, 'Trắng, Xanh, Đỏ', 'None', 'd3e2370f050f24dd63c951ea56ba7ba0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(192, 'Giày Oxford da lộn NU 333', 8, 'Trắng, Xanh, Đỏ', 'None', '866cd487eaff8c247fe6995ec5389b8c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(193, 'Giày oxford da lộn NU 590', 8, 'Trắng, Xanh, Đỏ', 'None', '5854e17b2eb28c7a42eb8bbf4c78fe0a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(194, 'Giày Oxford cực cá tính NU 425', 8, 'Trắng, Xanh, Đỏ', 'None', 'd036ddbaff9210c1aa08ba005c1315bf.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(195, 'Giày Oxford cực cá tính NU 425', 8, 'Trắng, Xanh, Đỏ', 'None', '96573e970dc867ef37ef32a1261091c5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(196, 'Giày oxford nữ cá tính NU 513', 8, 'Trắng, Xanh, Đỏ', 'None', '504d8671e23768522e4a452b7b493407.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940629, 1),
(197, 'Giày oxford hàn quốc NU 510', 8, 'Trắng, Xanh, Đỏ', 'None', 'c6a0a42832f27ac588f5af3479ddef24.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(198, 'Giày oxford hàn quốc NU 510', 8, 'Trắng, Xanh, Đỏ', 'None', '3ba0c1436513d676e8df98275b8cda97.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(199, 'Giày Oxford nữ NU 506', 8, 'Trắng, Xanh, Đỏ', 'None', '39d6e33cfbaf26763e711a6add20d4b0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(200, 'Giày oxford búp bê NU 489', 8, 'Trắng, Xanh, Đỏ', 'None', '41234844314f2ca4a130159341e0e6e6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940629, 1),
(201, 'Giày oxford nạm đinh NU 579', 8, 'Trắng, Xanh, Đỏ', 'None', '8b975ba3d113002bd46eb15053fa7ddc.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '99000', 20, '32,32,33,34', 1438940629, 1),
(202, 'Giày thể thao nữ NU 750', 9, 'Trắng, Xanh, Đỏ', 'None', 'df1e51c1ec64780ffc02a9acc3a0b849.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '355000', 20, '32,32,33,34', 1438940630, 1),
(203, 'Giày thể thao nữ NU 750', 9, 'Trắng, Xanh, Đỏ', 'None', '1b6c447fb86b3c12d0a76dc87b1cf785.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '355000', 20, '32,32,33,34', 1438940630, 1),
(204, 'Giày thể thao nữ NU 750', 9, 'Trắng, Xanh, Đỏ', 'None', '5a4604554cc900c924fc6361b4124cbb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '355000', 20, '32,32,33,34', 1438940630, 1),
(205, 'Giày thể thao nữ NU 750', 9, 'Trắng, Xanh, Đỏ', 'None', '203899d3931d0c75f848e71068bf3265.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '355000', 20, '32,32,33,34', 1438940630, 1),
(206, 'Giày thể thao nữ NU 749', 9, 'Trắng, Xanh, Đỏ', 'None', 'd0e727af97d0a9cba44f7236d30460ee.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940630, 1),
(207, 'Giày thể thao nữ NU 749', 9, 'Trắng, Xanh, Đỏ', 'None', '49178b53bc651c3ccc2b7b50631ad5e2.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940630, 1),
(208, 'Giày thể thao NU 748 ', 9, 'Trắng, Xanh, Đỏ', 'None', '3dcb067247890524fe33b04fdbb44cc7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(209, 'Giày thể thao NU 748 ', 9, 'Trắng, Xanh, Đỏ', 'None', '45bb744bbba3a8886bf98974e79677d5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(210, 'Giày thể thao NU 748', 9, 'Trắng, Xanh, Đỏ', 'None', '0f6d5bd5e3404687ac21e51d2149e771.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(211, 'Giày thể thao đế ráp NU 747', 9, 'Trắng, Xanh, Đỏ', 'None', '2c290e893cb46cfc3aba6f36526b9613.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(212, 'Giày thể thao đế ráp NU 747', 9, 'Trắng, Xanh, Đỏ', 'None', 'b2078c00e1baec0bb5fa51c0a9ddefd7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(213, 'Giày thể thao đế ráp NU 747', 9, 'Trắng, Xanh, Đỏ', 'None', '1495b3dd719fd2c435cdd6269cbb9435.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1);
INSERT INTO `shop_product` (`id`, `name`, `cate`, `color`, `detail`, `image`, `price`, `qty`, `size`, `time`, `active`) VALUES
(214, 'Giày thể thao đế ráp NU 747', 9, 'Trắng, Xanh, Đỏ', 'None', '061947ebed8416903737f1559fed1794.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(215, 'Giày slip on thuỷ thủ NU 746', 9, 'Trắng, Xanh, Đỏ', 'None', 'c758849f4dcfa1e4f9f60aad3ca05aa9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940630, 1),
(216, 'Giày slip on thuỷ thủ NU 746', 9, 'Trắng, Xanh, Đỏ', 'None', 'db37151367ac39b64a5bfdf09329d933.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940630, 1),
(217, 'Giày thể thao đế bán mì NU 745', 9, 'Trắng, Xanh, Đỏ', 'None', '4bc7fd7ffdf8f3f7a9b3dd4f78876936.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '365000', 20, '32,32,33,34', 1438940630, 1),
(218, 'Giày super star cổ cao NU 744', 9, 'Trắng, Xanh, Đỏ', 'None', '0a21490e789b9efde5db42bf97362ea2.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(219, 'Giày super star cổ cao NU 744', 9, 'Trắng, Xanh, Đỏ', 'None', 'b59881a301a6ab98f6a0ae8b067a7951.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(220, 'Giày super star cổ cao NU 744', 9, 'Trắng, Xanh, Đỏ', 'None', '95da90e3972919a58defb336b1af8ef4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(221, 'Giày super star cổ cao NU 744', 9, 'Trắng, Xanh, Đỏ', 'None', 'a459f413ee46c2f1924b2274c37896ef.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940630, 1),
(222, 'Giày boot nữ NU 743', 9, 'Trắng, Xanh, Đỏ', 'None', 'efb9626231a242c8e1b21a48ce9efce2.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940630, 1),
(223, 'Giày thể thao nữ NU 742', 9, 'Trắng, Xanh, Đỏ', 'None', 'd8d0450bf05dfc3303cc06b9340e174a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940630, 1),
(224, 'Giày thể thao nữ NU 742', 9, 'Trắng, Xanh, Đỏ', 'None', '398e6abd4a3cafb82646db5c5f134e62.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940630, 1),
(225, 'Giày thể thao nữ NU 742', 9, 'Trắng, Xanh, Đỏ', 'None', '4a2ceb480082e87d1c04fd1349b8538e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940630, 1),
(226, 'Giày thể thao keds NU 741-1', 9, 'Trắng, Xanh, Đỏ', 'None', '7c4818c0a5455dc05c37b7d782ce67a6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940630, 1),
(227, 'Giày thể thao keds NU 741-2', 9, 'Trắng, Xanh, Đỏ', 'None', '1c47486e6a64e4bf005990d682301507.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940630, 1),
(228, 'Giày thể thao keds NU 741-3', 9, 'Trắng, Xanh, Đỏ', 'None', '882a6862bafa6e4aedb4fa62a92c477a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940630, 1),
(229, 'Giày thể thao keds NU 741-4', 9, 'Trắng, Xanh, Đỏ', 'None', '046fa61341455f972f9a126a42529d85.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940630, 1),
(230, 'Giày thể thao keds NU 741-5', 9, 'Trắng, Xanh, Đỏ', 'None', '10db7e4a39d390dc53c91ff07b396754.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940630, 1),
(231, 'Giày monkey da bóng NU 740', 9, 'Trắng, Xanh, Đỏ', 'None', '1fdd32a5f91db246e46298b0f64935cd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940631, 1),
(232, 'Giày monkey da bóng NU 740', 9, 'Trắng, Xanh, Đỏ', 'None', '2a24d8325b04da7df1e6cbe4ec4e9bab.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940631, 1),
(233, 'Giày monkey da bóng NU 740', 9, 'Trắng, Xanh, Đỏ', 'None', 'f84c9cd64605cab0f6d59dd83aeeaaac.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940631, 1),
(234, 'Giày thể thao star color NU 726-8', 9, 'Trắng, Xanh, Đỏ', 'None', '576b333bd18d54498ace9ed9667e69e5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '350000', 20, '32,32,33,34', 1438940631, 1),
(235, 'Giày thể thao đế bánh mì NU 727', 9, 'Trắng, Xanh, Đỏ', 'None', '5ac790f0ae8724b5a666ca940fabccb7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '365000', 20, '32,32,33,34', 1438940631, 1),
(236, 'Giày thể thao đế bánh mì NU 727', 9, 'Trắng, Xanh, Đỏ', 'None', '7a2bee244c41c10e221a8481228fabdc.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '365000', 20, '32,32,33,34', 1438940631, 1),
(237, 'Giày thể thao đế bánh mì NU 727', 9, 'Trắng, Xanh, Đỏ', 'None', '6dcccf2b27598fa2db91fa56a72397f3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '365000', 20, '32,32,33,34', 1438940631, 1),
(238, 'Giày thể thao star color NU 726-9', 9, 'Trắng, Xanh, Đỏ', 'None', '6abb331a927e34d54a0ad13507f8cbdb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '350000', 20, '32,32,33,34', 1438940631, 1),
(239, 'Giày thể thao star color NU 726-7', 9, 'Trắng, Xanh, Đỏ', 'None', '8b8c540737495e481a9ea6cca3ee0363.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '350000', 20, '32,32,33,34', 1438940631, 1),
(240, 'Giày thể thao star color NU 726-6', 9, 'Trắng, Xanh, Đỏ', 'None', 'f6c7166940885a5ca3cf175f827ffabc.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '350000', 20, '32,32,33,34', 1438940631, 1),
(241, 'Giày thể thao star color NU 726-5', 9, 'Trắng, Xanh, Đỏ', 'None', '6f37ddca85849c030df99f35ebc31420.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '350000', 20, '32,32,33,34', 1438940631, 1),
(242, 'Giày mọi thủy thủ nữ NU 567', 10, 'Trắng, Xanh, Đỏ', 'None', '2a9117b380f6875fa561d2b0b205c839.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(243, 'Giày mọi thủy thủ nữ NU 567', 10, 'Trắng, Xanh, Đỏ', 'None', '1438e41adf383064c7eb47581c7e5021.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(244, 'Giày mọi thể thao màu xanh đen NU 486', 10, 'Trắng, Xanh, Đỏ', 'None', 'e24a3330840504d381751fbf1d7a67aa.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(245, 'Giày mọi thể thao màu trắng NU 486 ', 10, 'Trắng, Xanh, Đỏ', 'None', '51865dbdf2aba305816652e734ca241d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(246, 'Giày mọi thể thao màu đen NU 486', 10, 'Trắng, Xanh, Đỏ', 'None', 'a193b006deeeaf099a2faa43acd22135.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(247, 'Giày mọi thể thao màu đỏ NU 486', 10, 'Trắng, Xanh, Đỏ', 'None', 'dc0c5122d51c3b7f7807a7e3b363a83f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(248, 'Giày thể thao búp bê NU 504', 10, 'Trắng, Xanh, Đỏ', 'None', '962bc4827ba397a333b353317f2eca2c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '265000', 20, '32,32,33,34', 1438940631, 1),
(249, 'Giày thể thao búp bê NU 504', 10, 'Trắng, Xanh, Đỏ', 'None', 'e31dc44884f5da62f596de94a913a4d5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '265000', 20, '32,32,33,34', 1438940631, 1),
(250, 'Giày thể thao búp bê NU 504', 10, 'Trắng, Xanh, Đỏ', 'None', '6914a86a2be594fde59a8d5ab82895e3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '265000', 20, '32,32,33,34', 1438940631, 1),
(251, 'Giày thể thao búp bê NU 504', 10, 'Trắng, Xanh, Đỏ', 'None', 'ea38853fce5457eb91a39caac8c2666c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '265000', 20, '32,32,33,34', 1438940631, 1),
(252, 'Giày mọi nữ sọc xanh đỏ NU 498', 10, 'Trắng, Xanh, Đỏ', 'None', '25eb09f877ad57692f4670a83a07e17c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(253, 'Giày mọi nữ sọc xanh đỏ NU 498', 10, 'Trắng, Xanh, Đỏ', 'None', '77b28a3110bd3d91e256988fb8251189.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940631, 1),
(254, 'Giày mọi nữ đơn giản cá tính NU 507', 10, 'Trắng, Xanh, Đỏ', 'None', '8a917b134c3476cb662f8b6bed7ec4ad.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(255, 'Giày mọi thủy thủ cá tính NU 498', 10, 'Trắng, Xanh, Đỏ', 'None', 'c3e3f3ac439e02da3b4a33baab89dcc5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940632, 1),
(256, 'Giày mọi thủy thủ cá tính NU 498', 10, 'Trắng, Xanh, Đỏ', 'None', '3d2b8b21a5ed64806da0081dd54bfb49.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940632, 1),
(257, 'Giày mọi nữ đơn giản cá tính NU 507', 10, 'Trắng, Xanh, Đỏ', 'None', '81936de609c091564fbd11edcb8b079f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(258, 'Giày Toms cá tính phong cách năng động NU 218', 10, 'Trắng, Xanh, Đỏ', 'None', '171c061d9455a26bd0662e66f34175ab.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940632, 1),
(259, 'Giày Toms cá tính phong cách năng động NU 218', 10, 'Trắng, Xanh, Đỏ', 'None', 'e8afc7e6a322b1b3dd8ca64f33f24fe1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940632, 1),
(260, 'Giày Toms cá tính phong cách năng động NU 218', 10, 'Trắng, Xanh, Đỏ', 'None', '446d4eabc1b5b60a275f227a37d51520.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940632, 1),
(261, 'Giày mọi da lộn NU 564', 10, 'Trắng, Xanh, Đỏ', 'None', 'fea1d66b0644c98b916ace26551c4dce.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(262, 'Giày mọi da lộn NU 564', 10, 'Trắng, Xanh, Đỏ', 'None', 'f926465a18d3dad2a483b6e239c0d02b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(263, 'Giày mọi da lộn NU 564', 10, 'Trắng, Xanh, Đỏ', 'None', 'f53da919c79ab6c019917fe0a1cc81cd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(264, 'Giày mọi hàn quốc nữ NU 530', 10, 'Trắng, Xanh, Đỏ', 'None', '57c5ead7a3c9e60e43e2f24f52e0a6a2.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940632, 1),
(265, 'Giày mọi hàn quốc nữ NU 530', 10, 'Trắng, Xanh, Đỏ', 'None', 'ca799dad51619d7b70778f14d7042346.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940632, 1),
(266, 'Giày mọi hàn quốc nữ NU 530', 10, 'Trắng, Xanh, Đỏ', 'None', '1acf38759ebc10c94522a5735b6a7ae9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940632, 1),
(267, 'Giày oxford búp bê NU 509', 10, 'Trắng, Xanh, Đỏ', 'None', 'bf5c7a52e04501f25b377410466b5d2e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(268, 'Giày oxford búp bê NU 509', 10, 'Trắng, Xanh, Đỏ', 'None', '0590f52addb1218ff973555e753702c7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '215000', 20, '32,32,33,34', 1438940632, 1),
(269, 'Giày thể thao đế ráp NN 120', 11, 'Trắng, Xanh, Đỏ', 'None', 'bd96cffb4f66232218adb47c2c41f694.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940632, 1),
(270, 'Giày thể thao đế ráp NN 120', 11, 'Trắng, Xanh, Đỏ', 'None', '0270619a5e8da3e10b7addae3fa08f69.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940632, 1),
(271, 'Giày thể thao đế ráp NN 120', 11, 'Trắng, Xanh, Đỏ', 'None', '346154f651115cc0d82becabd16b6922.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940632, 1),
(272, 'Giày thể thao đế ráp NN 120', 11, 'Trắng, Xanh, Đỏ', 'None', 'b3a8f4558751155083fed701d0280063.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940633, 1),
(273, 'Giày slip on da NN 119', 11, 'Trắng, Xanh, Đỏ', 'None', 'd1bfee41e5178ce94eaf1b59cbfa9e3d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(274, 'Giày super star cổ cao NN 118 ', 11, 'Trắng, Xanh, Đỏ', 'None', '6846996d28e0391ae07e96c4b88f6918.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940633, 1),
(275, 'Giày thể thao đôi NN 113', 11, 'Trắng, Xanh, Đỏ', 'None', 'c3d99609cccbe18fa04ff63ab894fa1a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(276, ' Giày thể thao đôi NN 113', 11, 'Trắng, Xanh, Đỏ', 'None', 'd6050276ba6e8fd92e03f4b47c47c589.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(277, 'Giày thể thao đôi NN 113 ', 11, 'Trắng, Xanh, Đỏ', 'None', '63618d9725cda5328b23beb0b1bd018b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(278, 'Giày thể thao đôi NN 113', 11, 'Trắng, Xanh, Đỏ', 'None', '40bf05f10258c13b3f469ef2a82bf55b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(279, 'Giày thể thao đôi NN 113', 11, 'Trắng, Xanh, Đỏ', 'None', 'e42208312b02a2330627be2df5ce0503.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(280, 'Giày thể thao đôi NN 113', 11, 'Trắng, Xanh, Đỏ', 'None', 'a86e38b60e4ea4237db2d2d0af51cc1e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(281, 'Giày thể thao đôi NN 113', 11, 'Trắng, Xanh, Đỏ', 'None', '7c9b78d1081ccea5d182e62a82e13111.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(282, 'Giày thể thao đôi NN 116 ', 11, 'Trắng, Xanh, Đỏ', 'None', '7a1636dcb2dc6bda33d60469cf54fc1c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940633, 1),
(283, 'Giày thể thao đôi NN 116 ', 11, 'Trắng, Xanh, Đỏ', 'None', '2deb56585e41ff002107132a7f9ff232.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940633, 1),
(284, 'Giày thể thao đôi NN 116 ', 11, 'Trắng, Xanh, Đỏ', 'None', '0020fef0714948883a1c1f5f798b3c77.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940633, 1),
(285, 'Giày thể thao air max NN 115', 11, 'Trắng, Xanh, Đỏ', 'None', 'c035b4378c994a75a1ad86ff190440bd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940633, 1),
(286, 'Giày thể thao đế ngôi sao NN 114', 11, 'Trắng, Xanh, Đỏ', 'None', '794b8e66b12ef5513484a28c0ba6a4c4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940633, 1),
(287, 'Giày thể thao đế ngôi sao NN 114', 11, 'Trắng, Xanh, Đỏ', 'None', '1db9d2865cafa7c30353cccfb52304c3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940633, 1),
(288, 'Giày thể thao đế ngôi sao NN 114', 11, 'Trắng, Xanh, Đỏ', 'None', '63c25d024c716ea3e2e0fd1cd3494454.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940633, 1),
(289, 'Giày slip on đôi NN 114', 11, 'Trắng, Xanh, Đỏ', 'None', '332ff6a8a00f0475b512d68aec26ee15.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940633, 1),
(290, 'Giày slip on đôi NN 114', 11, 'Trắng, Xanh, Đỏ', 'None', 'bbf9aa59810ac1454242909c6367ca5a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940633, 1),
(291, 'Giày slip on đôi NN 114', 11, 'Trắng, Xanh, Đỏ', 'None', 'fdf2b8d56c0d26c29659e0a4a08d2348.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940633, 1),
(292, 'Giày thể thao đôi NN 112', 11, 'Trắng, Xanh, Đỏ', 'None', '85359c876abf5838e62bf8f65f213169.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(293, 'Giày thể thao cặp đôi NN 111', 11, 'Trắng, Xanh, Đỏ', 'None', 'f93e2e3b9921f29761b5fdc939ac77c3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '435000', 20, '32,32,33,34', 1438940633, 1),
(294, 'Giày monkey cao cổ NN 110', 11, 'Trắng, Xanh, Đỏ', 'None', 'a8ec5e075df62c6370f9bd97c71eef1b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940633, 1),
(295, 'Giày monkey cao cổ NN 110', 11, 'Trắng, Xanh, Đỏ', 'None', 'f4bc9452d80e0a2e90d8522ee3f58483.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940633, 1),
(296, 'Giày thể thao đôi NN 117', 11, 'Trắng, Xanh, Đỏ', 'None', 'de6dca05b5f0c5c4c213c78355aa9150.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(297, 'Giày thể thao đôi NN 117', 11, 'Trắng, Xanh, Đỏ', 'None', '5bd3f5988a837c5036d3b00766b5ac5b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940633, 1),
(298, 'Giày thể thao ADI cặp NN 109', 11, 'Trắng, Xanh, Đỏ', 'None', 'bf7abcb7a3fad80951153dc034d1ce27.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940633, 1),
(299, 'Giày thể thao ADI cặp NN 109', 11, 'Trắng, Xanh, Đỏ', 'None', '1d26d262f7a7ae707c3246fe5b70d671.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940634, 1),
(300, 'Giày thể thao NK dán NN 108', 11, 'Trắng, Xanh, Đỏ', 'None', '24131b7077358d80b795827a302587d5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940634, 1),
(301, 'Giày thể thao NK dán NN 108', 11, 'Trắng, Xanh, Đỏ', 'None', 'a3d5d3d519aeea19659cf44d7fda2507.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '375000', 20, '32,32,33,34', 1438940634, 1),
(302, 'Giày thể thao air fore NN 107', 11, 'Trắng, Xanh, Đỏ', 'None', 'fd90ded502172f12e5f9a707492943f7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(303, 'Giày thể thao air fore NN 107', 11, 'Trắng, Xanh, Đỏ', 'None', '005ecc3f4515527660d4889c7f07f307.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(304, 'Giày thể thao air fore NN 107', 11, 'Trắng, Xanh, Đỏ', 'None', '6e96bce9b8bd579b9f235b70db3937f7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(305, 'Giày thể thao air fore NN 107', 11, 'Trắng, Xanh, Đỏ', 'None', 'ad70467167445ff7644fcb2b76f3ecdd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(306, 'Giày thể thao air fore NN 107', 11, 'Trắng, Xanh, Đỏ', 'None', '296422adb433a669322dc201410dd8e1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(307, 'Giày thể thao air fore NN 107', 11, 'Trắng, Xanh, Đỏ', 'None', 'e899ece2e287e23e530a17b49a53fea0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(308, 'Giày thể thao air max NN 106', 11, 'Trắng, Xanh, Đỏ', 'None', '331fe79ab47038f0c66c132223bc746b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '415000', 20, '32,32,33,34', 1438940634, 1),
(309, 'Mẫu Chiến Binh mới nhất NU 429', 12, 'Trắng, Xanh, Đỏ', 'None', '1caf8faf79a5e18179ed92d8c5d92df1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(310, 'Mẫu Chiến Binh mới nhất NU 429', 12, 'Trắng, Xanh, Đỏ', 'None', '4ca492cf1f12d713926bfea60b188743.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(311, 'Giày Sandan Cực Ấn Tượng NU 450', 12, 'Trắng, Xanh, Đỏ', 'None', '2bbc4bd534326d87026064a769002e96.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '245000', 20, '32,32,33,34', 1438940634, 1),
(312, 'Giày Sandan Cực Ấn Tượng NU 450', 12, 'Trắng, Xanh, Đỏ', 'None', 'b3995ff8e389c55542e31aa3657c0eb6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '245000', 20, '32,32,33,34', 1438940634, 1),
(313, 'Giày sandal chiến binh NU 467 ', 12, 'Trắng, Xanh, Đỏ', 'None', '439eca9b19ce8c343316e95fbe57cf76.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(314, 'Giày sandal chiến binh NU 467', 12, 'Trắng, Xanh, Đỏ', 'None', 'ceadce519f3165ada3fb4d3dc2ccec39.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(315, 'Giày oxford sandal NU 586 ', 12, 'Trắng, Xanh, Đỏ', 'None', '10a29bbaa4ef6ff93cc0ae8d0048a983.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '345000', 20, '32,32,33,34', 1438940634, 1),
(316, 'Giày chiến binh sandal nữ- NU 219A', 12, 'Trắng, Xanh, Đỏ', 'None', 'd96fed3339af817aa7b9afeb11e90282.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(317, 'Giày chiến binh mẫu mới cho các nàng NU 219', 12, 'Trắng, Xanh, Đỏ', 'None', 'b6cdf54c498775a144b4c2fe04042492.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(318, 'Sandan Chiến Binh Mẫu Mới Cho Mùa Hè Màu Tím NU 453', 12, 'Trắng, Xanh, Đỏ', 'None', '3f3b0f6848bc9f4624cf9e1afca1f919.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '99000', 20, '32,32,33,34', 1438940634, 1),
(319, 'Giày sandal cá tính NU 576', 12, 'Trắng, Xanh, Đỏ', 'None', 'd9567379c5e3fae974a1311cab9c0071.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940634, 1),
(320, 'Giày sandal gót nhọn NU 577', 12, 'Trắng, Xanh, Đỏ', 'None', 'a4751fd87f623410791afe26c8e94efe.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940634, 1),
(321, 'Giày sandal gót nhọn NU 577', 12, 'Trắng, Xanh, Đỏ', 'None', '6c9d9eec920ee42f19fb8e109250ea48.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940635, 1),
(322, 'Giày sandal chiến binh bác hồ NU 468', 12, 'Trắng, Xanh, Đỏ', 'None', '989db6a6fba43f33cb96c0dcfcd58db0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940635, 1),
(323, 'Giày sandal có gót 2 màu đen trắng NU 466', 12, 'Trắng, Xanh, Đỏ', 'None', 'bc65fc4839bff584773638982a7f92d0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940635, 1),
(324, 'Giày sandal có gót 2 màu đen trắng NU 466', 12, 'Trắng, Xanh, Đỏ', 'None', '9fcf62baf5888b0e18d7b4b519f4a224.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940635, 1),
(325, 'Giày sandal đế cao NU 465', 12, 'Trắng, Xanh, Đỏ', 'None', '14e68f78caac17c4b080c016767a11f4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940635, 1),
(326, 'Giày sandal đế cao NU 465', 12, 'Trắng, Xanh, Đỏ', 'None', '7f0744098a009c93d5fe4f964aaeac21.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940635, 1),
(327, 'Giày sandal chiến binh NU 464', 12, 'Trắng, Xanh, Đỏ', 'None', 'bf2dba2b6156734fc58b216d91c39cb5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '395000', 20, '32,32,33,34', 1438940635, 1),
(328, 'Giày Sandal chéo lạ mắt NU 460', 12, 'Trắng, Xanh, Đỏ', 'None', '3670c906aaf22605cfd28d1e1308f8db.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(329, 'Giày Sandal Chiến Binh mới NU 459', 12, 'Trắng, Xanh, Đỏ', 'None', '1b059dc1ea5b500d80629bf413d5539d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(330, 'Giày Sandal Chiến Binh mới NU 459', 12, 'Trắng, Xanh, Đỏ', 'None', 'd1307b1d21f53302df33b79d3aa17c53.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(331, 'Sandal Đơn Giản Xinh xắn NU 456', 12, 'Trắng, Xanh, Đỏ', 'None', '9f08fbcedc62e541357fdcd882791a52.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(332, 'Sandal Đơn Giản Xinh xắn NU 456', 12, 'Trắng, Xanh, Đỏ', 'None', 'e7505b7437ad5a959b8eee25e7117852.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(333, 'Sandal Nữ Cực Lạ Cực Xinh NU 455', 12, 'Trắng, Xanh, Đỏ', 'None', 'ed744b9fd0f9735a68cd770a6573e3c9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(334, 'Sandan Đơn Giản Đáng Iu NU 454', 12, 'Trắng, Xanh, Đỏ', 'None', 'd673f6361d9e62aff6a1ed5eb110735e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940635, 1),
(335, 'Sandan Đơn Giản Đáng Iu NU 454', 12, 'Trắng, Xanh, Đỏ', 'None', '918cd4af7f7c6b906b9fe81424a903cb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940635, 1),
(336, 'Sandan Đơn Giản Đáng Iu NU 454', 12, 'Trắng, Xanh, Đỏ', 'None', '20694eec26dc6d8bc4091715c40b7351.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '235000', 20, '32,32,33,34', 1438940635, 1),
(337, 'Sandan Chiến Binh Mẫu Mới Cho Mùa Hè Màu Đen NU 453', 12, 'Trắng, Xanh, Đỏ', 'None', 'c5948a98cc3dd1761251b2cdd9538e1f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '315000', 20, '32,32,33,34', 1438940635, 1),
(338, 'Giày Cao Gót Hai Màu Tím và Đen Cực Đẹp NU 451', 12, 'Trắng, Xanh, Đỏ', 'None', 'dca93a40a4328eb105d9e62e094cc99d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940635, 1),
(339, 'Giày chiến binh sandal đế bệt cá tính NU 441', 12, 'Trắng, Xanh, Đỏ', 'None', '34cbd5c2c9c2f0f906d11e10a44d7f87.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940635, 1),
(340, 'Giày chiến binh sandal đế bệt cá tính NU 441', 12, 'Trắng, Xanh, Đỏ', 'None', '7f00c6fbc35ec12917883cd9559d2cdc.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940635, 1),
(341, 'Giày chiến binh sandal đế bệt cá tính NU 441', 12, 'Trắng, Xanh, Đỏ', 'None', '17826f2274826d7478286067e6f2c141.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '195000', 20, '32,32,33,34', 1438940635, 1),
(342, 'Giày sandal đế bánh mỳ cực hot cho girl NU 437', 12, 'Trắng, Xanh, Đỏ', 'None', '17562d7577a34f8af7bfad53b4cb26a1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '295000', 20, '32,32,33,34', 1438940635, 1),
(343, 'Giày sandal đế bệt màu đen NU 436', 12, 'Trắng, Xanh, Đỏ', 'None', 'eeeca57dbd090efa243a8ffc91e7bc4a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '245000', 20, '32,32,33,34', 1438940635, 1),
(344, 'Giày sandal đế bệt trắng NU 436', 12, 'Trắng, Xanh, Đỏ', 'None', 'e54dc237b2d62b0aa0d0b4949543005a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '245000', 20, '32,32,33,34', 1438940635, 1),
(345, 'Vali kéo hello ketty hàn quốc VALI 102-4', 13, 'Trắng, Xanh, Đỏ', 'None', '082232e33612fd9333c4669f3c5b7b08.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940635, 1),
(346, 'Vali kéo hello ketty hàn quốc VALI 102-1', 13, 'Trắng, Xanh, Đỏ', 'None', 'ce4f6aff23f1d43f65ee894b34760288.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(347, 'Vali kéo hello ketty hàn quốc VALI 102-3', 13, 'Trắng, Xanh, Đỏ', 'None', 'b85877b696541e20a0a2e8167a518b4d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(348, 'Vali kéo hello ketty hàn quốc VALI 102-2', 13, 'Trắng, Xanh, Đỏ', 'None', 'f8899edd6f8eae49834321c43d153697.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(349, 'Vali kéo hello ketty hàn quốc VALI 102-5', 13, 'Trắng, Xanh, Đỏ', 'None', '401176a2f6f149a87f2756fbcca484de.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(350, 'Vali kéo hello ketty hàn quốc VALI 102-6', 13, 'Trắng, Xanh, Đỏ', 'None', 'e3f2509fe2da848ace7254d964f74266.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(351, 'Vali kéo hello ketty hàn quốc VALI 102-7', 13, 'Trắng, Xanh, Đỏ', 'None', 'be6e646d726196a59c6e7b705f83ed24.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(352, 'Vali kéo hello ketty hàn quốc VALI 102-8', 13, 'Trắng, Xanh, Đỏ', 'None', '152cda4226c19b69654c531888f2108a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(353, 'Vali kéo hello ketty hàn quốc VALI 102-9', 13, 'Trắng, Xanh, Đỏ', 'None', '48a8d125822c902906cb53e27320d9ed.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '885000', 20, '32,32,33,34', 1438940636, 1),
(354, 'Balo thời trang BALO 130', 14, 'Trắng, Xanh, Đỏ', 'None', '222579a4707accbc3bcda7de92a2e9d6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940636, 1),
(355, 'Balo thời trang BALO 129', 14, 'Trắng, Xanh, Đỏ', 'None', '24d2dde930e8b28736f0f1776df67ce5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '275000', 20, '32,32,33,34', 1438940636, 1),
(356, 'Balo thời trang BALO 128', 14, 'Trắng, Xanh, Đỏ', 'None', 'b5144d09297280ade9410b9dc5ad026f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(357, 'Balo thời trang BALO 127', 14, 'Trắng, Xanh, Đỏ', 'None', 'b5c9824069710e5e7a126795018289d9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(358, 'Balo thời trang BALO 126', 14, 'Trắng, Xanh, Đỏ', 'None', '583b50fce389563a285e5d559cea797f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(359, 'Balo thời trang BALO 125', 14, 'Trắng, Xanh, Đỏ', 'None', 'a70c1bfce9226e5f0dc6e731e2d2af6f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(360, 'Balo thời trang BALO 124', 14, 'Trắng, Xanh, Đỏ', 'None', '441ee3eff07e9ffe1768abc39b879e98.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(361, 'Balo thời trang BALO 123', 14, 'Trắng, Xanh, Đỏ', 'None', 'ed0bf47f9730fce94c6c59572e151bf1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(362, 'Balo thời trang BALO 122', 14, 'Trắng, Xanh, Đỏ', 'None', '6736383e315a22300d9268e0a41d8104.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(363, 'Balo thời trang BALO 121', 14, 'Trắng, Xanh, Đỏ', 'None', 'd8a0058d10d8d7cb5246d09cec250cd3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(364, 'Balo thời trang BALO 120', 14, 'Trắng, Xanh, Đỏ', 'None', '599738faa568b9115e4cc7190de250e5.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(365, 'Balo thời trang BALO 119', 14, 'Trắng, Xanh, Đỏ', 'None', '454aedfa63f2559dd6de22b33740940f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(366, 'Balo thời trang thể thao BALO 118', 14, 'Trắng, Xanh, Đỏ', 'None', '26921daa0f767029d8b536c4e1d5348d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(367, 'Balo thời trang thể thao BALO 117', 14, 'Trắng, Xanh, Đỏ', 'None', 'dc1ca2d6d9ae919007b30de7104bf03a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(368, 'Balo thời trang thể thao BALO 116', 14, 'Trắng, Xanh, Đỏ', 'None', 'fecebd591b64865af6a082a1d0645335.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(369, 'Balo thời trang thể thao BALO 115', 14, 'Trắng, Xanh, Đỏ', 'None', '2decf3f773b278f9fdfdb21cbd7ac04e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940636, 1),
(370, 'Balo thời trang thể thao BALO 114', 14, 'Trắng, Xanh, Đỏ', 'None', 'eb6b7b1dcc9fcba29413b75364b0990f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(371, 'Balo thời trang thể thao BALO 113', 14, 'Trắng, Xanh, Đỏ', 'None', 'cdda6bd5f96a1c24bb901413463feacd.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(372, 'Balo thời trang thể thao BALO 112', 14, 'Trắng, Xanh, Đỏ', 'None', 'd970acd09ee15e917143249d126dbbfe.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(373, 'Balo thời trang thể thao BALO 111', 14, 'Trắng, Xanh, Đỏ', 'None', '98492f40ccb313ce8dc6eff54fd695e3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(374, 'Balo thời trang thể thao BALO 110', 14, 'Trắng, Xanh, Đỏ', 'None', '8e72793184adb20c0c9904350e4b58ee.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(375, 'Balo thời trang thể thao BALO 109', 14, 'Trắng, Xanh, Đỏ', 'None', '1b8f9e83240fac91694ef7a4509dd8b0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(376, 'Balo thời trang thể thao BALO 108', 14, 'Trắng, Xanh, Đỏ', 'None', '92e68e4a2338d02d62962fff4ab6b541.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(377, 'Balo thời trang thể thao BALO 107', 14, 'Trắng, Xanh, Đỏ', 'None', '203f0fe98325a148d50cb84625a64cce.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(378, 'Balo thời trang thể thao BALO 106', 14, 'Trắng, Xanh, Đỏ', 'None', '115e5461e03aa6cea37861fc2553b70a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(379, 'Balo thời trang thể thao BALO 105', 14, 'Trắng, Xanh, Đỏ', 'None', '3561498f3b809e05e0a20a1ec4471e4e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(380, 'Balo thời trang thể thao BALO 104', 14, 'Trắng, Xanh, Đỏ', 'None', '0be9e359ef96968750d979cebb2afc60.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(381, 'Balo van thời trang thể thao BALO 103', 14, 'Trắng, Xanh, Đỏ', 'None', 'e47fb57ae1b7ff6210c2c18685f7fa3a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(382, 'Balo thời trang thể thao BALO 102', 14, 'Trắng, Xanh, Đỏ', 'None', '97d672710cfecad984444003b6d75192.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(383, 'Balo thời trang thể thao BALO 101 ', 14, 'Trắng, Xanh, Đỏ', 'None', 'e79c2125292739c751762ce273c28809.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '225000', 20, '32,32,33,34', 1438940637, 1),
(384, 'Nón thời trang hàn quốc NON 117-1', 15, 'Trắng, Xanh, Đỏ', 'None', 'fb28cdd6dbcb5ecde9c8c599559e35ad.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940637, 1),
(385, 'Nón thời trang hàn quốc NON 117-2', 15, 'Trắng, Xanh, Đỏ', 'None', '128f1ebb88af5e3b1403e1dc93ee6d31.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940637, 1),
(386, 'Nón thời trang hàn quốc NON 117-3', 15, 'Trắng, Xanh, Đỏ', 'None', 'a8badc070ed1ffefe4d2d67b8e40522f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940637, 1),
(387, 'Nón thời trang hàn quốc NON 117-4', 15, 'Trắng, Xanh, Đỏ', 'None', '62b7dad0129a8ecbc739e58496b25ef1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(388, 'Nón thời trang hàn quốc NON 116-1', 15, 'Trắng, Xanh, Đỏ', 'None', 'b31e2e7c6ef1d6341fc055a41056c3e6.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(389, 'Nón thời trang hàn quốc NON 116-2', 15, 'Trắng, Xanh, Đỏ', 'None', '8b3cbd345bf08b77d9dc4fa03007ad72.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(390, 'Nón thời trang hàn quốc NON 116-3', 15, 'Trắng, Xanh, Đỏ', 'None', '938ecf7f5b8ca42abcc5b8da1b8056a0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(391, 'Nón thời trang hàn quốc NON 116-4', 15, 'Trắng, Xanh, Đỏ', 'None', '6ccbc189558f281695f3640b4c1d437d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(392, 'Nón thời trang hàn quốc NON 116-5', 15, 'Trắng, Xanh, Đỏ', 'None', '14d8ba56157b5576716cfc0cc2175220.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(393, 'Nón thời trang hàn quốc NON 116-6', 15, 'Trắng, Xanh, Đỏ', 'None', 'e93e07bc91fe1a9236e594e52e47ad8b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(394, 'Nón thời trang hàn quốc NON 116-7', 15, 'Trắng, Xanh, Đỏ', 'None', '5b5dde5c03bf2b2025da377549d3191e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(395, 'Nón cặp VK CK hàn quốc NON 115', 15, 'Trắng, Xanh, Đỏ', 'None', 'bc95fc94774889fe783145c21798d734.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(396, 'Nón cặp VK CK hàn quốc NON 114', 15, 'Trắng, Xanh, Đỏ', 'None', 'da3039ae39fc6dd2c0815f745d72f789.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(397, 'Nón cặp VK CK hàn quốc NON 113', 15, 'Trắng, Xanh, Đỏ', 'None', 'e40b2c79b2971d75b058d39bef5b6e9a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(398, 'Nón cặp VK CK hàn quốc NON 113', 15, 'Trắng, Xanh, Đỏ', 'None', '981d663843ba7770002395a0cf4699b0.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(399, 'Nón thời trang hàn quốc NON 112', 15, 'Trắng, Xanh, Đỏ', 'None', 'e631eb8c9bd7bd0ce5385491c3097fa8.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(400, 'Nón thời trang hàn quốc NON 111', 15, 'Trắng, Xanh, Đỏ', 'None', '506126d5ee0bb3864525f05d6eec9f55.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(401, 'Nón W thời trang hàn quốc NON 110', 15, 'Trắng, Xanh, Đỏ', 'None', '4eddc35182905e24ae65eb32f322bd6e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(402, 'Nón W thời trang hàn quốc NON 110', 15, 'Trắng, Xanh, Đỏ', 'None', 'f5b1728485c68ef4382abeb77016471f.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(403, 'Nón WWO thời trang hàn quốc NON 109', 15, 'Trắng, Xanh, Đỏ', 'None', '6f69379d57782855244c5b7afd1d99ab.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(404, 'Nón WWO thời trang hàn quốc NON 109', 15, 'Trắng, Xanh, Đỏ', 'None', '3e1d9c7f663a726ac1e04d41888f38f4.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(405, 'Nón WWO thời trang hàn quốc NON 109', 15, 'Trắng, Xanh, Đỏ', 'None', '65590707f93b60296824dc4bd75cd4b9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940638, 1),
(406, 'Nón cặp VK CK hàn quốc NON 108', 15, 'Trắng, Xanh, Đỏ', 'None', '47395eb044a7cb457909f81f6f9257d1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(407, 'Nón cặp VK CK hàn quốc NON 108', 15, 'Trắng, Xanh, Đỏ', 'None', '1f60534d1248b7cdf7c4ce8566d08d5e.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(408, 'Nón cặp VK CK hàn quốc NON 107', 15, 'Trắng, Xanh, Đỏ', 'None', '6ea6d8bc4d9bb36f36a7a2cb1bf3e70c.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940638, 1),
(409, 'Nón cặp VK CK hàn quốc NON 107', 15, 'Trắng, Xanh, Đỏ', 'None', '3d4e5e8109a4080fe7a3202e1fdbed2b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940639, 1),
(410, 'Nón cặp VK CK hàn quốc NON 106', 15, 'Trắng, Xanh, Đỏ', 'None', '0e127d11de6e3b8a27c7fcd920ad0b1d.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940639, 1),
(411, 'Nón cặp VK CK hàn quốc NON 106', 15, 'Trắng, Xanh, Đỏ', 'None', '0644c8bb61d35b9d02583672fb34cebb.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '115000', 20, '32,32,33,34', 1438940639, 1),
(412, 'Nón phong cách thời trang hàn quốc hình New York NON 103', 15, 'Trắng, Xanh, Đỏ', 'None', '6d605452ff7c13125de0881bb18a58e1.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940639, 1),
(413, 'Dây giày thời trang DG 104', 15, 'Trắng, Xanh, Đỏ', 'None', '2fc664a91d63c77f00e67a92094e9773.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '10000', 20, '32,32,33,34', 1438940639, 1),
(414, 'Dây giày thời trang DG 103', 15, 'Trắng, Xanh, Đỏ', 'None', 'd81aae127ba75f9173bcaa393870298a.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '20000', 20, '32,32,33,34', 1438940639, 1),
(415, 'Nón thời trang hàn quốc phong cách cổ chữ Jeep NON 105', 15, 'Trắng, Xanh, Đỏ', 'None', 'cce5bbb8cc5fe9288ca386743bb6cfc9.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940639, 1),
(416, 'Nón phong cách thời trang hàn quốc NON 104', 15, 'Trắng, Xanh, Đỏ', 'None', '85c6f247f1a17aef7f2535606342ed87.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940639, 1),
(417, 'Dây giày thời trang  DG 102', 15, 'Trắng, Xanh, Đỏ', 'None', '50c6c669c405166c353f4ef339c1c2a3.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '20000', 20, '32,32,33,34', 1438940639, 1),
(418, 'Dây giày thời trang nhiều màu  DG 101', 15, 'Trắng, Xanh, Đỏ', 'None', '5bbf7b8028d835d03175625c1856ac8b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '8000', 20, '32,32,33,34', 1438940639, 1),
(419, 'Đế lót giày tăng chiều cao hàn quốc LG 101', 15, 'Trắng, Xanh, Đỏ', 'None', 'c9f583e7ff442340842561091d6c1bf7.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '80000', 20, '32,32,33,34', 1438940639, 1),
(420, 'Nón Thời Trang Mới Nhất NON 102', 15, 'Trắng, Xanh, Đỏ', 'None', '94aeb3b88b242614326b2f22652c8b9b.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '135000', 20, '32,32,33,34', 1438940639, 1),
(421, 'Chai Xịt Khử Mùi Giày K 01', 15, 'Trắng, Xanh, Đỏ', 'None', '7fc6cb73b84a831d99076c962343c740.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '80000', 20, '32,32,33,34', 1438940639, 1);
INSERT INTO `shop_product` (`id`, `name`, `cate`, `color`, `detail`, `image`, `price`, `qty`, `size`, `time`, `active`) VALUES
(422, 'Vớ khử mùi cho nam, nữ V 001', 15, 'Trắng, Xanh, Đỏ', 'None', '7fba98d6ed0e5f623ecc13004d14e7fc.jpg|e00cd1fad4a2ce15355e327fcaa2bb5b.jpg|e00cd1fad4a2ce15355e327fcca2aa5b.jpg', '18000', 20, '32,32,33,34', 1438940639, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE IF NOT EXISTS `shop_user` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shop_user`
--

INSERT INTO `shop_user` (`id`, `name`, `username`, `password`, `phone`, `email`, `avatar`, `add`, `datereg`, `lastlogin`, `active`) VALUES
(1, 'Hungquyen', NULL, '16621479883a7a3fa3bd91966794eab0', '12415125123', 'hungquyen.ntt@gmail.com', NULL, '', 1439403823, NULL, 1),
(2, 'User test', NULL, '46eba46cb2c3fee95786b217bf7f835e', '0929606064', 'user@gmail.com', NULL, '', 1439448100, NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
