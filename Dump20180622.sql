-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ks
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `t_course`
--

DROP TABLE IF EXISTS `t_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程名',
  `desc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '课程描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_course`
--

LOCK TABLES `t_course` WRITE;
/*!40000 ALTER TABLE `t_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_kid`
--

DROP TABLE IF EXISTS `t_kid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_kid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '幼儿id',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '幼儿名',
  `birthdate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生日',
  `photo` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '照片',
  `parentsId` int(11) NOT NULL COMMENT '家长id（t_user表主键）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_kid`
--

LOCK TABLES `t_kid` WRITE;
/*!40000 ALTER TABLE `t_kid` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_teacher`
--

DROP TABLE IF EXISTS `t_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师id',
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '教师名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher`
--

LOCK TABLES `t_teacher` WRITE;
/*!40000 ALTER TABLE `t_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_teacher_course`
--

DROP TABLE IF EXISTS `t_teacher_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teacher_course` (
  `teacherId` int(11) NOT NULL COMMENT '教师id',
  `courseId` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`teacherId`,`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher_course`
--

LOCK TABLES `t_teacher_course` WRITE;
/*!40000 ALTER TABLE `t_teacher_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_teacher_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_teaching`
--

DROP TABLE IF EXISTS `t_teaching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teaching` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `kidId` int(11) NOT NULL COMMENT '幼儿Id',
  `teacherId` int(11) NOT NULL COMMENT '教师Id',
  `teachDate` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '上课时间',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '上课内容',
  `effect` text COLLATE utf8_unicode_ci NOT NULL COMMENT '上课效果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teaching`
--

LOCK TABLES `t_teaching` WRITE;
/*!40000 ALTER TABLE `t_teaching` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_teaching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `role` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '角色（admin系统管理员、parents家长）',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `pwd` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-22 11:27:33
