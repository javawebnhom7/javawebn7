CREATE DATABASE  IF NOT EXISTS `estaten7` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `estaten7`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: estateadvance
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `building` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) NOT NULL,
                            `street` varchar(255) DEFAULT NULL,
                            `ward` varchar(255) DEFAULT NULL,
                            `district` varchar(255) DEFAULT NULL,
                            `numberfloor` bigint(20) DEFAULT NULL,
                            `floor` bigint(20) DEFAULT NULL,
                            `floorarea` bigint(20) DEFAULT NULL,
                            `direction` varchar(255) DEFAULT NULL,
                            `level` varchar(255) DEFAULT NULL,
                            `rentprice` bigint(20) DEFAULT NULL,
                            `rentpricedescription` text,
                            `servicefee` bigint(20) DEFAULT NULL,
                            `carfee` bigint(20) DEFAULT NULL,
                            `motofee` bigint(20) DEFAULT NULL,
                            `waterfee` bigint(20) DEFAULT NULL,
                            `electricityfee` bigint(20) DEFAULT NULL,
                            `deposit` varchar(255) DEFAULT NULL,
                            `renttime` varchar(255) DEFAULT NULL,
                            `type` varchar(255) DEFAULT NULL,
                            `note` varchar(255) DEFAULT NULL,
                            `avatar` varchar(2000) DEFAULT NULL,
                            `createddate` datetime DEFAULT NULL,
                            `modifieddate` datetime DEFAULT NULL,
                            `createdby` varchar(255) DEFAULT NULL,
                            `modifiedby` varchar(255) DEFAULT NULL,
                            `managername` varchar(255) DEFAULT NULL,
                            `managerphone` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` (`id`, `name`, `street`, `ward`, `district`, `numberfloor`, `floor`, `floorarea`, `direction`, `level`, `rentprice`, `rentpricedescription`, `servicefee`, `carfee`, `motofee`, `waterfee`, `electricityfee`, `deposit`, `type`, `note`, `avatar`, `managername`, `managerphone`)
VALUES
    ('1', 'TienDucBuilding', '91 Đại An', 'Văn Quán', 'HA_DONG', '20', '11', '300', 'Tây', 'A', '20000000', '20 triệu/tháng', '200000', '200000', '100000', '3500', '3500', '2 tháng', 'NOI_THAT', 'Chung cư được xây dựng đầu năm 2024', 'https://media.istockphoto.com/id/899913340/vi/anh/k%E1%BA%BFt-xu%E1%BA%A5t-3d-ph%C3%B2ng-kh%C3%A1ch-ho%E1%BA%B7c-ph%C3%B2ng-kh%C3%A1ch-s%E1%BA%A1n-hi%E1%BB%87n-%C4%91%E1%BA%A1i.jpg?s=612x612&w=0&k=20&c=P5QyXMKr_WJ70b40guBSBvTQEhdXMdO0n4pJ_1gqj5U=', 'Nguyễn Cẩm Chi', '0123719241'),
    ('2', 'Chung cư Times City', '458 Minh Khai', 'Vĩnh Tuy', 'HAI_BA_TRUNG', '12', '8','320', 'Đông Nam', 'B', '15000000', '15 triệu/tháng', '500000', '1000000', '200000', '100000', '3500', '1 năm', 'NOI_THAT', 'Gần trường học', 'https://i.pinimg.com/736x/78/b9/63/78b963ea5d2313ee3f6e59476ad6984d.jpg', 'Nguyền Giang Nam', '0909123456'),
    ('3', 'Văn phòng Vincom Tower', '191 Bà Triệu', 'Lê Đại Hành', 'HAI_BA_TRUNG', '14', '2','330', 'Tây Bắc', 'C', '50000000', '50 triệu/tháng', '1000000', '2000000', '300000', '150000', '4000', '5 năm', 'NOI_THAT', 'Gần trung tâm thương mại', 'https://i.pinimg.com/564x/2f/35/ec/2f35ec7d7efb1cd81c29841c9798012d.jpg', 'Nguyễn Đức Dũng', '0909345678'),
    ('4', 'Chung cư Royal City', '72A Nguyễn Trãi', 'Thượng Đình', 'THANH_XUAN', '23', '5', '400','Tây Bắc', 'A' , '20000000', '20 triệu/tháng', '700000', '1200000', '250000', '120000', '4000', '1 năm', 'NGUYEN_CAN', 'Gần trung tâm thương mại', 'https://i.pinimg.com/564x/74/d6/88/74d6888e8b39bc09259234765293bf22.jpg', 'Đào Tuấn Thành', '0909567890'),
    ('5', 'Văn phòng Keangnam Landmark 72', 'Phạm Hùng', 'Mỹ Đình', 'NAM_TU_LIEM', '15', '10','200', 'Nam', 'A', '60000000', '60 triệu/tháng', '1500000', '2500000', '350000', '180000', '5000', '10 năm', 'NGUYEN_CAN', 'View toàn cảnh thành phố', 'https://i.pinimg.com/564x/08/b7/a5/08b7a5daaca96539069787511026c0e3.jpg', 'Lưu Đức Vũ', '0910123456'),
    ('6', 'Chung cư Vinhomes Green Bay', 'Đại lộ Thăng Long', 'Mễ Trì', 'NAM_TU_LIEM', '32', '32','500', 'Tây Nam', 'A', '17000000', '17 triệu/tháng', '600000', '1000000', '210000', '100000', '3700', '1 năm', 'NOI_THAT', 'View hồ bơi', 'https://i.pinimg.com/564x/e9/5f/db/e95fdb37f8c2a920b5facce86dbfae9f.jpg', 'Trần Quang Sáng', '0910345678'),
    ('7', 'Văn phòng Lotte Center', '54 Liễu Giai', 'Cống Vị', 'BA_DINH', '16', '12', '600','Đông Bắc', 'B', '70000000', '70 triệu/tháng', '2000000', '3000000', '400000', '200000', '6000', '5 năm', 'NOI_THAT', 'Gần đại sứ quán và khách sạn 5 sao', 'https://i.pinimg.com/564x/35/ce/06/35ce06c2ef1da625ca09d7e20d372206.jpg', 'Lã Thanh Trường', '0910567890'),
    ('8', 'Chung cư The Manor', 'Mễ Trì', 'Mỹ Đình', 'NAM_TU_LIEM', '10', '3','720', 'Bắc', 'B', '22000000', '22 triệu/tháng', '750000', '1300000', '260000', '130000', '4500', '1 năm', 'NGUYEN_CAN', 'Khu dân cư cao cấp', 'https://i.pinimg.com/564x/1a/6d/09/1a6d09e292a837888b933f237ec72b60.jpg', 'Hà Đức Duy', '0910789123'),
    ('9', 'Văn phòng FLC Twin Towers', '265 Cầu Giấy', 'Dịch Vọng', 'CAU_GIAY', '7', '4','400', 'Tây', 'C', '45000000', '45 triệu/tháng', '1200000', '1800000', '290000', '160000', '4200', '3 năm', 'NOI_THAT', 'Nằm trên trục đường lớn', 'https://i.pinimg.com/564x/9f/1c/b3/9f1cb369b7bd0109d0e6c1adc090ff7d.jpg', 'Nguyễn Văn Toàn', '0910987654'),
    ('10', 'Chung cư Mandarin Garden', 'Hoàng Minh Giám', 'Nhân Chính', 'THANH_XUAN', '24', '12','350','Đông Bắc', 'A', '18000000', '18 triệu/tháng', '600000', '1100000', '230000', '110000', '3800', '1 năm', 'NOI_THAT', 'Khu dân cư yên tĩnh', 'https://i.pinimg.com/564x/cc/78/6c/cc786c8979889500ddcc997322183e46.jpg', 'Nguyễn Hương Giang', '0910112233'),
    ('11', 'Văn phòng TNR Tower', '54A Nguyễn Chí Thanh', 'Láng Thượng', 'DONG_DA', '13', '7','380', 'Nam', 'A', '55000000', '55 triệu/tháng', '1300000', '2100000', '330000', '140000', '4600', '7 năm', 'NOI_THAT', 'Nằm gần các trường đại học', 'https://i.pinimg.com/736x/d9/76/8b/d9768bdcd2056391d1dc8f5e1b83e19e.jpg', 'Nguyễn Thu Hà', '0910981234'),
    ('12', 'Chung cư Golden Westlake', '151 Thụy Khuê', 'Thụy Khuê', 'TAY_HO', '11', '6','460', 'Tây Nam', 'B', '16000000', '16 triệu/tháng', '650000', '1200000', '220000', '115000', '3900', '1 năm', 'NOI_THAT', 'View Hồ Tây', 'https://i.pinimg.com/564x/1b/63/7c/1b637c5984059b0e54b615eb1043689f.jpg', 'Trần Bích Hà', '0910765432'),
    ('13', 'Văn phòng Charmvit Tower', '117 Trần Duy Hưng', 'Trung Hòa', 'CAU_GIAY', '25', '21','500', 'Bắc', 'A', '48000000', '48 triệu/tháng', '1100000', '1900000', '300000', '130000', '4100', '5 năm', 'NOI_THAT', 'Khu vực sầm uất', 'https://i.pinimg.com/564x/1f/7e/bc/1f7ebcfa1037abe0f168c6aa1af10cfc.jpg', 'Nguyễn Duy Long', '0910543210'),
    ('14', 'Chung cư Tràng An Complex', '1 Phùng Chí Kiên', 'Nghĩa Đô', 'CAU_GIAY', '40', '3','300', 'Đông', 'A', '15000000', '15 triệu/tháng', '500000', '1000000', '200000', '100000', '3500', '1 năm', 'NOI_THAT', 'Gần các trường học', 'https://i.pinimg.com/736x/c5/7f/f2/c57ff2226c65aee6dbafd4057dcf0a12.jpg', 'Nguyễn Kim Phụng', '0910123456');


/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `rentarea`
--

DROP TABLE IF EXISTS `rentarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `rentarea` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `value` int(11) DEFAULT NULL,
                            `buildingid` bigint(20) DEFAULT NULL,
                            `createddate` datetime DEFAULT NULL,
                            `modifieddate` datetime DEFAULT NULL,
                            `createdby` varchar(255) DEFAULT NULL,
                            `modifiedby` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            KEY `rentarea_building` (`buildingid`),
                            CONSTRAINT `rentarea_building` FOREIGN KEY (`buildingid`) REFERENCES `building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentarea`
--

LOCK TABLES `rentarea` WRITE;
/*!40000 ALTER TABLE `rentarea` DISABLE KEYS */;
INSERT INTO `rentarea`
VALUES (1,100,1,NULL,NULL,NULL,NULL),(2,200,1,NULL,NULL,NULL,NULL),(3,200,2,NULL,NULL,NULL,NULL),(4,300,2,NULL,NULL,NULL,NULL),(5,400,2,NULL,NULL,NULL,NULL),(6,300,3,NULL,NULL,NULL,NULL),(7,400,3,NULL,NULL,NULL,NULL),(8,500,3,NULL,NULL,NULL,NULL),(9,100,4,NULL,NULL,NULL,NULL),(10,400,4,NULL,NULL,NULL,NULL),(11,250,4,NULL,NULL,NULL,NULL),(12,100,6,NULL,NULL,NULL,NULL),(13,200,6,NULL,NULL,NULL,NULL),
       (14,400,7,NULL,NULL,NULL,NULL),(15,100,8,NULL,NULL,NULL,NULL),(16,200,9,NULL,NULL,NULL,NULL),(17,100,10,NULL,NULL,NULL,NULL),(18,150,10,NULL,NULL,NULL,NULL),(19,300,11,NULL,NULL,NULL,NULL),(20,100,12,NULL,NULL,NULL,NULL),(21,150,13,NULL,NULL,NULL,NULL),(22,200,14,NULL,NULL,NULL,NULL),(23,200,5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rentarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                        `name` varchar(255) NOT NULL,
                        `code` varchar(255) NOT NULL,
                        `createddate` datetime DEFAULT NULL,
                        `modifieddate` datetime DEFAULT NULL,
                        `createdby` varchar(255) DEFAULT NULL,
                        `modifiedby` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Quản lý','ADMIN',NULL,NULL,NULL,NULL),(2,'Người dùng','USER',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                        `username` varchar(255) NOT NULL,
                        `password` varchar(255) NOT NULL,
                        `fullname` varchar(255) DEFAULT NULL,
                        `phone` varchar(255) DEFAULT NULL,
                        `email` varchar(255) DEFAULT NULL,
                        `status` int(11) NOT NULL,
                        `createddate` datetime DEFAULT NULL,
                        `modifieddate` datetime DEFAULT NULL,
                        `createdby` varchar(255) DEFAULT NULL,
                        `modifiedby` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','admin',NULL,NULL,1,NULL,NULL,NULL,NULL),(2,'user','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','user',NULL,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `role_id` bigint(20) NOT NULL,
                             `user_id` bigint(20) NOT NULL,
                             `createddate` datetime DEFAULT NULL,
                             `modifieddate` datetime DEFAULT NULL,
                             `createdby` varchar(255) DEFAULT NULL,
                             `modifiedby` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             KEY `fk_user_role` (`user_id`),
                             KEY `fk_role_user` (`role_id`),
                             CONSTRAINT `fk_role_user` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
                             CONSTRAINT `fk_user_role` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1,NULL,NULL,NULL,NULL),(2,2,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'estateadvance'
--

--
-- Dumping routines for database 'estateadvance'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-01 13:04:26
