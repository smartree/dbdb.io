-- MySQL dump 10.13  Distrib 5.7.9, for Linux (x86_64)
--
-- Host: localhost    Database: dbdb_io
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add operating system',7,'add_operatingsystem'),(20,'Can change operating system',7,'change_operatingsystem'),(21,'Can delete operating system',7,'delete_operatingsystem'),(22,'Can add programming language',8,'add_programminglanguage'),(23,'Can change programming language',8,'change_programminglanguage'),(24,'Can delete programming language',8,'delete_programminglanguage'),(25,'Can add license',9,'add_license'),(26,'Can change license',9,'change_license'),(27,'Can delete license',9,'delete_license'),(28,'Can add project type',10,'add_projecttype'),(29,'Can change project type',10,'change_projecttype'),(30,'Can delete project type',10,'delete_projecttype'),(34,'Can add publication',12,'add_publication'),(35,'Can change publication',12,'change_publication'),(36,'Can delete publication',12,'delete_publication'),(37,'Can add feature',13,'add_feature'),(38,'Can change feature',13,'change_feature'),(39,'Can delete feature',13,'delete_feature'),(40,'Can add feature option',14,'add_featureoption'),(41,'Can change feature option',14,'change_featureoption'),(42,'Can delete feature option',14,'delete_featureoption'),(43,'Can add suggested system',15,'add_suggestedsystem'),(44,'Can change suggested system',15,'change_suggestedsystem'),(45,'Can delete suggested system',15,'delete_suggestedsystem'),(46,'Can add system',16,'add_system'),(47,'Can change system',16,'change_system'),(48,'Can delete system',16,'delete_system'),(49,'Can add system version',17,'add_systemversion'),(50,'Can change system version',17,'change_systemversion'),(51,'Can delete system version',17,'delete_systemversion'),(52,'Can add system version feature option',18,'add_systemversionfeatureoption'),(53,'Can change system version feature option',18,'change_systemversionfeatureoption'),(54,'Can delete system version feature option',18,'delete_systemversionfeatureoption');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$hK4ZG0pR8SkD$RLTiV1kpu+w2/zlFDNhDkcvPc1wxw9fX0A5EwxfXOuo=','2017-04-24 13:51:08.409121',1,'pavlo','','','pavlo@cs.cmu.edu',1,1,'2017-04-14 14:11:06.080414'),(2,'pbkdf2_sha256$24000$VkhcIGQRPIrK$5Qyu9iAEvCeF2lvXHUXKbrEzjko8r2QhEq9xbHhkUH0=','2017-04-27 20:20:25.539250',1,'dvanaken','','','dvanaken@cs.cmu.edu',1,1,'2017-04-24 13:47:20.328782'),(3,'pbkdf2_sha256$24000$9wQ1bGo5Q7ol$SYVrIYOunvr841CDgSXQEK27syr7lTOQiO8RApmKBTg=','2017-05-03 00:56:51.698403',1,'femi','','','',1,1,'2017-05-03 00:56:41.531741');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(13,'systems','feature'),(14,'systems','featureoption'),(9,'systems','license'),(7,'systems','operatingsystem'),(8,'systems','programminglanguage'),(10,'systems','projecttype'),(12,'systems','publication'),(15,'systems','suggestedsystem'),(16,'systems','system'),(17,'systems','systemversion'),(18,'systems','systemversionfeatureoption');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-04-14 14:06:36.036441'),(2,'auth','0001_initial','2017-04-14 14:06:45.116903'),(3,'admin','0001_initial','2017-04-14 14:06:47.116536'),(4,'admin','0002_logentry_remove_auto_add','2017-04-14 14:06:47.259032'),(5,'contenttypes','0002_remove_content_type_name','2017-04-14 14:06:48.514581'),(6,'auth','0002_alter_permission_name_max_length','2017-04-14 14:06:48.648412'),(7,'auth','0003_alter_user_email_max_length','2017-04-14 14:06:48.765776'),(8,'auth','0004_alter_user_username_opts','2017-04-14 14:06:48.810027'),(9,'auth','0005_alter_user_last_login_null','2017-04-14 14:06:49.436168'),(10,'auth','0006_require_contenttypes_0002','2017-04-14 14:06:49.477751'),(11,'auth','0007_alter_validators_add_error_messages','2017-04-14 14:06:49.532876'),(12,'sessions','0001_initial','2017-04-14 14:06:50.158477'),(13,'systems','0001_initial','2017-05-02 07:35:26.421069');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3piyqgw5s7h7dn3pv0ecrcvqay1qscmn','MmIzNWEwMGE2Mzk3ZWE0Y2ZkOGJjN2EzMDczYTQ2ZDA5NGVkYzRmODp7Il9hdXRoX3VzZXJfaGFzaCI6ImIxYjc0NzcxOGM0OTA0YTA5NjliNWY5MzkwNmJiNjJkMjdhNzg1NDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 13:51:08.542916'),('6q97mt6kej54vqvl4uv7405fbqu0z34v','NzIwOGQ3ZWU3YTFlNGExZWFhMTE1ODg4MWNhZjEyMTQyMGRhODA5Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyYzk5MTUwODJmZjBmYmM4NzVjYTIxMTkyOTg0NWZjZmNjN2VmYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-05-17 00:56:51.732045'),('8bd40umxagmokvw4haphhxm8o9hpamrp','YzA3ZmVmZTM3ZmY5MmNkOTQ1ZTM3MGYzYjRiOTVhNmQ5MGYyYTRlNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdkZDU3YTcwODJhOTExZDc3NzhlYzgzYjY3Yjg4YTA4MzJiMmQ3OGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2017-05-11 20:20:25.648134'),('xx9a4c1mnd17nke7nvz67l123wbhaxnq','NzZmMGIwMTBiMTVkMDBkYzJjODgxZWJkNjI2MjMyYmRiMWRmNDY3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyYzEyMGUxOWM1ZjQxZTA3OTUzY2VmY2FmN2RiNjg3YmUxNjBkNjMiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-05-16 21:49:00.197153');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_apiaccessmethod`
--

DROP TABLE IF EXISTS `systems_apiaccessmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_apiaccessmethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_apiaccessmethod`
--

LOCK TABLES `systems_apiaccessmethod` WRITE;
/*!40000 ALTER TABLE `systems_apiaccessmethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_apiaccessmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_feature`
--

DROP TABLE IF EXISTS `systems_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `multivalued` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_feature`
--

LOCK TABLES `systems_feature` WRITE;
/*!40000 ALTER TABLE `systems_feature` DISABLE KEYS */;
INSERT INTO `systems_feature` VALUES (1,'System Architecture',1),(2,'Data Model',1),(3,'Storage Model',1),(4,'Query Interface',1),(5,'Storage Architecture',1),(6,'Concurrency Control',1),(7,'Isolation Levels',1),(8,'Indexes',1),(9,'Foreign Keys',1),(10,'Logging',1),(11,'Checkpoints',1),(12,'Views',1),(13,'Query Execution',1),(14,'Stored Procedures',1),(15,'Joins',1),(16,'Query Compilation',1);
/*!40000 ALTER TABLE `systems_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_featureoption`
--

DROP TABLE IF EXISTS `systems_featureoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_featureoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) DEFAULT NULL,
  `value` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_featureoption_feature_id_541c3429_fk_systems_feature_id` (`feature_id`),
  CONSTRAINT `systems_featureoption_feature_id_541c3429_fk_systems_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `systems_feature` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_featureoption`
--

LOCK TABLES `systems_featureoption` WRITE;
/*!40000 ALTER TABLE `systems_featureoption` DISABLE KEYS */;
INSERT INTO `systems_featureoption` VALUES (1,13,'Tuple-at-a-Time Model'),(2,13,'Vectorized Model'),(3,13,'Materialized Model'),(4,10,'Physical Logging'),(5,10,'Physiological Logging'),(6,10,'Logical Logging'),(7,10,'Command Logging'),(8,10,'Other'),(9,7,'Read Uncommitted'),(10,7,'Read Committed'),(11,7,'Cursor Stability'),(12,7,'Repeatable Read'),(13,7,'Snapshot Isolation'),(14,7,'Serializable'),(15,15,'Nested Loop'),(16,15,'Hash'),(17,15,'Sort-Merge'),(18,15,'Semi'),(19,15,'Broadcast'),(20,12,'Virtual Views'),(21,12,'Materialized Views'),(22,9,'Supported'),(23,4,'SQL'),(24,4,'SQL/PGM'),(25,4,'PL/SQL'),(26,4,'Custom API'),(27,2,'Relational'),(28,2,'Hierarchical'),(29,2,'Network'),(30,2,'Document / XML'),(31,2,'Key/Value'),(32,2,'Column Family'),(33,2,'Other'),(34,3,'N-ary Storage Model'),(35,3,'Decomposition Storage Model'),(36,3,'Hybrid'),(37,3,'Custom'),(38,1,'Shared-Everything'),(39,1,'Shared-Disk'),(40,1,'Shared-Nothing'),(41,5,'Disk-oriented'),(42,5,'In-Memory'),(43,5,'Hybrid'),(44,11,'Blocking'),(45,11,'Non-Blocking'),(46,11,'Consistent'),(47,11,'Fuzzy'),(48,6,'Two-Phase Locking (Deadlock Detection)'),(49,6,'Two-Phase Locking (Deadlock Prevention)'),(50,6,'Optimistic Concurrency Control (OCC)'),(51,6,'Multi-version Concurrency Control (MVCC)'),(52,6,'Timestamp Ordering'),(53,8,'B+Tree'),(54,8,'R-Tree'),(55,8,'KD-Tree'),(56,8,'Skip List'),(57,8,'Bw-Tree'),(58,8,'BitMap'),(59,8,'Hash Table'),(60,8,'Other'),(61,16,'Code Generation'),(62,16,'JIT Compilation');
/*!40000 ALTER TABLE `systems_featureoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_license`
--

DROP TABLE IF EXISTS `systems_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `slug` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_license_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_license`
--

LOCK TABLES `systems_license` WRITE;
/*!40000 ALTER TABLE `systems_license` DISABLE KEYS */;
INSERT INTO `systems_license` VALUES (1,'AGPL v3',NULL,'agpl-v3'),(2,'Apache v2',NULL,'apache-v2'),(3,'BSD',NULL,'bsd'),(4,'Eclipse Public License',NULL,'eclipse-public-license'),(5,'GPL v2',NULL,'gpl-v2'),(6,'GPL v3',NULL,'gpl-v3'),(7,'LGPL',NULL,'lgpl'),(8,'MIT',NULL,'mit'),(9,'Mozilla Public License',NULL,'mozilla-public-license'),(10,'MySQL FOSS',NULL,'mysql-foss'),(11,'Open Source',NULL,'open-source'),(12,'Proprietary',NULL,'proprietary'),(13,'Public Domain',NULL,'public-domain'),(14,'OpenLDAP Public License',NULL,'openldap-public-license');
/*!40000 ALTER TABLE `systems_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_operatingsystem`
--

DROP TABLE IF EXISTS `systems_operatingsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_operatingsystem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `slug` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_operatingsystem_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_operatingsystem`
--

LOCK TABLES `systems_operatingsystem` WRITE;
/*!40000 ALTER TABLE `systems_operatingsystem` DISABLE KEYS */;
INSERT INTO `systems_operatingsystem` VALUES (1,'AIX',NULL,'aix'),(2,'All OS with a Java VM',NULL,'all-os-with-a-java-vm'),(3,'All OS with a Java VM and a servlet container',NULL,'all-os-with-a-java-vm-and-a-servlet-container'),(4,'Android',NULL,'android'),(5,'BSD',NULL,'bsd'),(6,'DOS',NULL,'dos'),(7,'FreeBSD',NULL,'freebsd'),(8,'HP-UX',NULL,'hp-ux'),(9,'Linux',NULL,'linux'),(10,'NetBSD',NULL,'netbsd'),(11,'OS X',NULL,'os-x'),(12,'Raspbian',NULL,'raspbian'),(13,'Solaris',NULL,'solaris'),(14,'Unix',NULL,'unix'),(15,'VxWorks',NULL,'vxworks'),(16,'Windows',NULL,'windows'),(17,'hosted',NULL,'hosted'),(18,'iOS',NULL,'ios'),(19,'server-less',NULL,'server-less'),(20,'z/OS',NULL,'zos');
/*!40000 ALTER TABLE `systems_operatingsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_programminglanguage`
--

DROP TABLE IF EXISTS `systems_programminglanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_programminglanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `slug` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_programminglanguage_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_programminglanguage`
--

LOCK TABLES `systems_programminglanguage` WRITE;
/*!40000 ALTER TABLE `systems_programminglanguage` DISABLE KEYS */;
INSERT INTO `systems_programminglanguage` VALUES (1,'.Net',NULL,'net'),(2,'Actionscript',NULL,'actionscript'),(3,'Ada',NULL,'ada'),(4,'Basic',NULL,'basic'),(5,'C',NULL,'c'),(6,'C#',NULL,'c1'),(7,'C++',NULL,'c2'),(8,'Clojure',NULL,'clojure'),(9,'Cobol',NULL,'cobol'),(10,'Cocoa',NULL,'cocoa'),(11,'Coldfusion',NULL,'coldfusion'),(12,'D',NULL,'d'),(13,'Dart',NULL,'dart'),(14,'Delphi',NULL,'delphi'),(15,'Eiffel',NULL,'eiffel'),(16,'Erlang',NULL,'erlang'),(17,'Forth',NULL,'forth'),(18,'Fortran',NULL,'fortran'),(19,'Go',NULL,'go'),(20,'Groovy',NULL,'groovy'),(21,'Haskell',NULL,'haskell'),(22,'Java',NULL,'java'),(23,'Java (Jdbc-Odbc)',NULL,'java-jdbc-odbc'),(24,'Javascript',NULL,'javascript'),(25,'Javascript (Node.Js)',NULL,'javascript-nodejs'),(26,'Lisp',NULL,'lisp'),(27,'Lua',NULL,'lua'),(28,'Matlab',NULL,'matlab'),(29,'Ocaml',NULL,'ocaml'),(30,'Objective C',NULL,'objective-c'),(31,'Php',NULL,'php'),(32,'Pl/1',NULL,''),(33,'Pl/Sql',NULL,'plsql'),(34,'Perl',NULL,'perl'),(35,'Pike',NULL,'pike'),(36,'Powershell',NULL,'powershell'),(37,'Prolog',NULL,'prolog'),(38,'Python',NULL,'python'),(39,'Qt',NULL,'qt'),(40,'R',NULL,'r'),(41,'Rebol',NULL,'rebol'),(42,'Ruby',NULL,'ruby'),(43,'Scala',NULL,'scala'),(44,'Scheme',NULL,'scheme'),(45,'Smalltalk',NULL,'smalltalk'),(46,'Tcl',NULL,'tcl'),(47,'Vba',NULL,'vba'),(48,'Visual Basic',NULL,'visual-basic'),(49,'Visual Basic.Net',NULL,'visual-basicnet'),(50,'Any Language That Supports Sockets And Either Xml Or Json',NULL,'any-language-that-supports-sockets-and-either-xml-or-json'),(51,'Dbase Proprietary Ide',NULL,'dbase-proprietary-ide'),(52,'Others',NULL,'others');
/*!40000 ALTER TABLE `systems_programminglanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_projecttype`
--

DROP TABLE IF EXISTS `systems_projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_projecttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_projecttype`
--

LOCK TABLES `systems_projecttype` WRITE;
/*!40000 ALTER TABLE `systems_projecttype` DISABLE KEYS */;
INSERT INTO `systems_projecttype` VALUES (1,'Commercial','commercial'),(2,'Academic','academic'),(3,'Mixed','mixed'),(4,'Open Source','open-source'),(5,'Other','other');
/*!40000 ALTER TABLE `systems_projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_publication`
--

DROP TABLE IF EXISTS `systems_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_publication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `bibtex` longtext,
  `link` varchar(200) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `cite` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_publication`
--

LOCK TABLES `systems_publication` WRITE;
/*!40000 ALTER TABLE `systems_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_suggestedsystem`
--

DROP TABLE IF EXISTS `systems_suggestedsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_suggestedsystem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` longtext,
  `email` varchar(100) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `secret_key` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_suggestedsystem`
--

LOCK TABLES `systems_suggestedsystem` WRITE;
/*!40000 ALTER TABLE `systems_suggestedsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_suggestedsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_system`
--

DROP TABLE IF EXISTS `systems_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `current_version` int(10) unsigned NOT NULL,
  `slug` varchar(64) NOT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_system_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_system`
--

LOCK TABLES `systems_system` WRITE;
/*!40000 ALTER TABLE `systems_system` DISABLE KEYS */;
INSERT INTO `systems_system` VALUES (1,'BigTable','2017-04-14 14:08:58.000000',0,'bigtable','216682c2274'),(2,'CockroachDB','2017-04-14 14:08:58.000000',0,'cockroachdb','fa004ec8c27'),(3,'Cassandra','2017-04-14 14:08:58.000000',0,'cassandra','f6131e85051'),(4,'BerkeleyDB','2017-04-14 14:08:58.000000',0,'berkeleydb','fa85171e061'),(5,'HBase','2017-04-14 14:08:58.000000',0,'hbase','86de87544b2'),(6,'LMDB (Lightning Memory-mapped Database)','2017-04-14 14:08:58.000000',0,'lmdb-lightning-memory-mapped-database','f6d8b437e57'),(7,'MemSQL','2017-04-14 14:08:58.000000',0,'memsql','d54a0b470b6'),(8,'Fauna','2017-04-14 14:08:58.000000',0,'fauna','55a18071adc'),(9,'RexDB','2017-04-14 14:08:58.000000',0,'rexdb','03816fca310'),(10,'DataEase','2017-04-14 14:08:58.000000',0,'dataease','64997571acd'),(11,'NuoDB','2017-04-14 14:08:58.000000',0,'nuodb','ed48559989b'),(12,'ObjectDB','2017-04-14 14:08:58.000000',0,'objectdb','33a45f49bf1'),(13,'OpenQM','2017-04-14 14:08:58.000000',0,'openqm','9c84d929d52'),(14,'InfiniteGraph','2017-04-14 14:08:58.000000',0,'infinitegraph','743945afc06'),(15,'RubatoDB','2017-04-14 14:08:58.000000',0,'rubatodb','a2febe68cdc'),(16,'MUFFIN','2017-04-14 14:08:58.000000',0,'muffin','7d32725e295'),(17,'Vectorwise','2017-04-14 14:08:58.000000',0,'vectorwise','5e9cc525518'),(18,'IMS','2017-04-14 14:08:58.000000',0,'ims','c1b7922e988'),(19,'FathomDB','2017-04-14 14:08:58.000000',0,'fathomdb','7411c405154'),(20,'Northgate Reality','2017-04-14 14:08:58.000000',0,'northgate-reality','8322c2a5915'),(21,'RainStor','2017-04-14 14:08:58.000000',0,'rainstor','b765fe99520'),(22,'Trafodion','2017-04-14 14:08:58.000000',0,'trafodion','908610bffa9'),(23,'D3','2017-04-14 14:08:58.000000',0,'d3','56430467d02'),(24,'MapDB','2017-04-14 14:08:58.000000',0,'mapdb','64eaf581f89'),(25,'TokuDB','2017-04-14 14:08:58.000000',0,'tokudb','1f2545c7884'),(26,'BayesDB','2017-04-14 14:08:58.000000',0,'bayesdb','477a856737a'),(27,'Pervasive PSQL','2017-04-14 14:08:58.000000',0,'pervasive-psql','bd3942cdfa0'),(28,'RDBMS','2017-04-14 14:08:58.000000',0,'rdbms','64bec91cf8e'),(29,'FlockDB','2017-04-14 14:08:58.000000',0,'flockdb','bfcbab2ffe1'),(30,'PRISMA/DB','2017-04-14 14:08:58.000000',0,'prismadb','ddbb3edd13e'),(31,'jBASE','2017-04-14 14:08:58.000000',0,'jbase','b334ae1e0fd'),(32,'HamsterDB','2017-04-14 14:08:58.000000',0,'hamsterdb','3f22e6458a6'),(33,'H-Store','2017-04-14 14:08:58.000000',0,'h-store','b8e6b8e426a'),(34,'TokuMX','2017-04-14 14:08:58.000000',0,'tokumx','f6f6e8b5bee'),(35,'Versant Object Database','2017-04-14 14:08:58.000000',0,'versant-object-database','4ea64e2dcab'),(36,'SDD-1','2017-04-14 14:08:58.000000',0,'sdd-1','8fb419b63e1'),(37,'LowDB','2017-04-14 14:08:58.000000',0,'lowdb','f2479a2fbc5'),(38,'Hazelcast','2017-04-14 14:08:58.000000',0,'hazelcast','12bdd11db41'),(39,'Clusterpoint','2017-04-14 14:08:58.000000',0,'clusterpoint','737fce5461e'),(40,'Netezza','2017-04-14 14:08:58.000000',0,'netezza','925bc1415df'),(41,'ROMA','2017-04-14 14:08:58.000000',0,'roma','ab9d291e0dd'),(42,'Tarantool','2017-04-14 14:08:58.000000',0,'tarantool','ba54b755451'),(43,'Google Search Appliance','2017-04-14 14:08:58.000000',0,'google-search-appliance','faf5f5e0631'),(44,'IDMS','2017-04-14 14:08:58.000000',0,'idms','6e655b82dcb'),(45,'ZODB','2017-04-14 14:08:58.000000',0,'zodb','c9bf3ec99bc'),(46,'CodernityDB','2017-04-14 14:08:58.000000',0,'codernitydb','4ff7b04515a'),(47,'FastDB','2017-04-14 14:08:58.000000',0,'fastdb','9efed6db129'),(48,'EnterpriseDB','2017-04-14 14:08:58.000000',0,'enterprisedb','bf5b6fb8172'),(49,'Indica','2017-04-14 14:08:58.000000',0,'indica','8586ed48d35'),(50,'DeepDB','2017-04-14 14:08:58.000000',0,'deepdb','68c391ddaf9'),(51,'Derby','2017-04-14 14:08:58.000000',0,'derby','33642fa67af'),(52,'Google BigTable','2017-04-14 14:08:58.000000',0,'google-bigtable','af7b93b8e0d'),(53,'XAP','2017-04-14 14:08:58.000000',0,'xap','9e66cbcf175'),(54,'NeoView','2017-04-14 14:08:58.000000',0,'neoview','a52137f80e0'),(55,'BlinkDB','2017-04-14 14:08:58.000000',0,'blinkdb','58408267abe'),(56,'Aerospike','2017-04-14 14:08:58.000000',0,'aerospike','25f948d494e'),(57,'Google Spanner','2017-04-14 14:08:58.000000',0,'google-spanner','d0c0f4ed5ee'),(58,'Sedna','2017-04-14 14:08:58.000000',0,'sedna','62cf0c69dfb'),(59,'Infobright','2017-04-14 14:08:58.000000',0,'infobright','7264d13fbc7'),(60,'Cubrid','2017-04-14 14:08:58.000000',0,'cubrid','6a5a6a90e42'),(61,'Perst','2017-04-14 14:08:58.000000',0,'perst','572ba0e9017'),(62,'HyperDex','2017-04-14 14:08:58.000000',0,'hyperdex','72eb32c9156'),(63,'Sequins','2017-04-14 14:08:58.000000',0,'sequins','989944a4b01'),(64,'TransLattice','2017-04-14 14:08:58.000000',0,'translattice','52b2d96febe'),(65,'LMDB','2017-04-14 14:08:58.000000',0,'lmdb','cb1608492ab'),(66,'SharedDB','2017-04-14 14:08:58.000000',0,'shareddb','33df3f9d163'),(67,'Scalaris','2017-04-14 14:08:58.000000',0,'scalaris','00f4a34ccf9'),(68,'Siaqodb','2017-04-14 14:08:58.000000',0,'siaqodb','06aa7e9c08e'),(69,'Kyoto Cabinet','2017-04-14 14:08:58.000000',0,'kyoto-cabinet','ade5ed142b5'),(70,'Rasdaman','2017-04-14 14:08:58.000000',0,'rasdaman','a2739e601f5'),(71,'LightCloud','2017-04-14 14:08:58.000000',0,'lightcloud','79a986418ed'),(72,'AkumuliDB','2017-04-14 14:08:58.000000',0,'akumulidb','487ff8c6c98'),(73,'Impala','2017-04-14 14:08:58.000000',0,'impala','3516d3a63be'),(74,'Ehcache','2017-04-14 14:08:58.000000',0,'ehcache','d6042154db6'),(75,'OlegDB','2017-04-14 14:08:58.000000',0,'olegdb','2eb7e1b427d'),(76,'Crescando','2017-04-14 14:08:58.000000',0,'crescando','47af1fd3b01'),(77,'BangDB','2017-04-14 14:08:58.000000',0,'bangdb','b5108a176f4'),(78,'eXtremeDB','2017-04-14 14:08:58.000000',0,'extremedb','e107664e008'),(79,'Kylin','2017-04-14 14:08:58.000000',0,'kylin','50d5b4621a3'),(80,'DeepDive','2017-04-14 14:08:58.000000',0,'deepdive','806a3fa50c7'),(81,'HyPer','2017-04-14 14:08:58.000000',0,'hyper','1dd9f288df9'),(82,'Bubba','2017-04-14 14:08:58.000000',0,'bubba','e61e8adf499'),(83,'Tokyo Cabinet','2017-04-14 14:08:58.000000',0,'tokyo-cabinet','dbdca1114a9'),(84,'KahaDB','2017-04-14 14:08:58.000000',0,'kahadb','40175d769f8'),(85,'SylvaDB','2017-04-14 14:08:58.000000',0,'sylvadb','c5d56c57840'),(86,'PNUTS','2017-04-14 14:08:58.000000',0,'pnuts','45e2dbf9096'),(87,'Presto','2017-04-14 14:08:58.000000',0,'presto','70f6de3dd93'),(88,'AODBM','2017-04-14 14:08:58.000000',0,'aodbm','048447a1628'),(89,'Datameer','2017-04-14 14:08:58.000000',0,'datameer','95265416157'),(90,'4store','2017-04-14 14:08:58.000000',0,'4store','21259516fa5'),(91,'Redshift','2017-04-14 14:08:58.000000',0,'redshift','1478f34c777'),(92,'C-Store','2017-04-14 14:08:58.000000',0,'c-store','87e6997d988'),(93,'PipelineDB','2017-04-14 14:08:58.000000',0,'pipelinedb','0b5bea5c1ad'),(94,'Hibari','2017-04-14 14:08:58.000000',0,'hibari','73e856a0fd1'),(95,'ITTIA','2017-04-14 14:08:58.000000',0,'ittia','9a9276e37a6'),(96,'LevelDB','2017-04-14 14:08:58.000000',0,'leveldb','55398ecd5c2'),(97,'Cayley','2017-04-14 14:08:58.000000',0,'cayley','9b3f5f539a7'),(98,'Kognitio','2017-04-14 14:08:58.000000',0,'kognitio','1f98abdf9bf'),(99,'Jackrabbit','2017-04-14 14:08:58.000000',0,'jackrabbit','627ba16c9a1'),(100,'Google F1','2017-04-14 14:08:58.000000',0,'google-f1','4b1eddaacba'),(101,'Sparksee','2017-04-14 14:08:58.000000',0,'sparksee','6d40a74dc35'),(102,'NexusDB','2017-04-14 14:08:58.000000',0,'nexusdb','c445512ad43'),(103,'OpenTSDB','2017-04-14 14:08:58.000000',0,'opentsdb','c416d4dc3d9'),(104,'GridGain','2017-04-14 14:08:58.000000',0,'gridgain','b02b6713f05'),(105,'Splunk','2017-04-14 14:08:58.000000',0,'splunk','7d18f117801'),(106,'AceDB','2017-04-14 14:08:58.000000',0,'acedb','6b7704e9a56'),(107,'System R*','2017-04-14 14:08:58.000000',0,'system-r','8c56ef291df'),(108,'VertexDB','2017-04-14 14:08:58.000000',0,'vertexdb','7e55656960d'),(109,'GRACE','2017-04-14 14:08:58.000000',0,'grace','63159948d9a'),(110,'Vitesse DB','2017-04-14 14:08:58.000000',0,'vitesse-db','4ad66ed24cf'),(111,'Tesora','2017-04-14 14:08:58.000000',0,'tesora','3ad6f4ebf96'),(112,'Ingres','2017-04-14 14:08:58.000000',0,'ingres','39b83c5904c'),(113,'Accumulo','2017-04-14 14:08:58.000000',0,'accumulo','13daa440df1'),(114,'Xeround','2017-04-14 14:08:58.000000',0,'xeround','b7a3f198b6d'),(115,'RelationalCloud','2017-04-14 14:08:58.000000',0,'relationalcloud','b2b97626fad'),(116,'HanoiDB','2017-04-14 14:08:58.000000',0,'hanoidb','c01e7835864'),(117,'XPRS','2017-04-14 14:08:58.000000',0,'xprs','1e7b41f7d06'),(118,'Teradata Aster','2017-04-14 14:08:58.000000',0,'teradata-aster','456a744809b'),(119,'H2','2017-04-14 14:08:58.000000',0,'h2','757caec1954'),(120,'Clustrix','2017-04-14 14:08:58.000000',0,'clustrix','7381e5b4800'),(121,'Apollo','2017-04-14 14:08:58.000000',0,'apollo','2dd5f9ec34c'),(122,'SciDB','2017-04-14 14:08:58.000000',0,'scidb','cb70cca8562'),(123,'WiredTiger','2017-04-14 14:08:58.000000',0,'wiredtiger','77850bd892c'),(124,'CrowdDB','2017-04-14 14:08:58.000000',0,'crowddb','c1d6694492d'),(125,'SQL Anywhere','2017-04-14 14:08:58.000000',0,'sql-anywhere','8741dddf52a'),(126,'Espresso','2017-04-14 14:08:58.000000',0,'espresso','faccfd73082'),(127,'Coherence','2017-04-14 14:08:58.000000',0,'coherence','ada2e2b399c'),(128,'R:BASE','2017-04-14 14:08:58.000000',0,'rbase','ff449bb9d82'),(129,'InfluxDB','2017-04-14 14:08:58.000000',0,'influxdb','0d2cda0b9c3'),(130,'Objectivity/DB','2017-04-14 14:08:58.000000',0,'objectivitydb','73b75f0a735'),(131,'Redland','2017-04-14 14:08:58.000000',0,'redland','191f8dfe38f'),(132,'Kdb+','2017-04-14 14:08:58.000000',0,'kdb','d3fd3fa2fd8'),(133,'SmallSQL','2017-04-14 14:08:58.000000',0,'smallsql','e64cd8f7f3c'),(134,'Bitsy','2017-04-14 14:08:58.000000',0,'bitsy','55d64f86499'),(135,'Red Brick','2017-04-14 14:08:58.000000',0,'red-brick','f0732869177'),(136,'Project Voldemort','2017-04-14 14:08:58.000000',0,'project-voldemort','7d594e9b61f'),(137,'Hadapt','2017-04-14 14:08:58.000000',0,'hadapt','933d4ade9f3'),(138,'GemFire','2017-04-14 14:08:58.000000',0,'gemfire','a5c791db284'),(139,'NCache','2017-04-14 14:08:58.000000',0,'ncache','a722b8f0b26'),(140,'IBM System G','2017-04-14 14:08:58.000000',0,'ibm-system-g','b26a0437511'),(141,'Mnesia','2017-04-14 14:08:58.000000',0,'mnesia','7196aa6c48f'),(142,'InfoFrame','2017-04-14 14:08:58.000000',0,'infoframe','99c9415cdb5'),(143,'RethinkDB','2017-04-14 14:08:58.000000',0,'rethinkdb','2c7026b3ac1'),(144,'ClearDB','2017-04-14 14:08:58.000000',0,'cleardb','72d879a9ed3'),(145,'HyperSQL','2017-04-14 14:08:58.000000',0,'hypersql','d8a751e99a6'),(146,'Shore-MT','2017-04-14 14:08:58.000000',0,'shore-mt','3e804fb4058'),(147,'Db4o','2017-04-14 14:08:58.000000',0,'db4o','9ccdee1195a'),(148,'DIRECT','2017-04-14 14:08:58.000000',0,'direct','c6787115331'),(149,'BlackRay','2017-04-14 14:08:58.000000',0,'blackray','d68705e9c21'),(150,'solidDB','2017-04-14 14:08:58.000000',0,'soliddb','9399c607c10'),(151,'ActorDB','2017-04-14 14:08:58.000000',0,'actordb','bc2861acf76'),(152,'Greenplum','2017-04-14 14:08:58.000000',0,'greenplum','a5f18ca8b73'),(153,'TimesTen','2017-04-14 14:08:58.000000',0,'timesten','922ceffd82b'),(154,'Giraph','2017-04-14 14:08:58.000000',0,'giraph','0c63922a346'),(155,'Cloudant','2017-04-14 14:08:58.000000',0,'cloudant','3be22d71b84'),(156,'SSDB','2017-04-14 14:08:58.000000',0,'ssdb','5bded777527'),(157,'Algebraix','2017-04-14 14:08:58.000000',0,'algebraix','9ce96d7422e'),(158,'OWLIM','2017-04-14 14:08:58.000000',0,'owlim','8cd8d50884a'),(159,'Eloquera','2017-04-14 14:08:58.000000',0,'eloquera','7a7b7b7c878'),(160,'CSQL','2017-04-14 14:08:58.000000',0,'csql','e9689391ec6'),(161,'GemStone/S','2017-04-14 14:08:58.000000',0,'gemstones','9d9e09177f5'),(162,'Windows Azure SQL Database','2017-04-14 14:08:58.000000',0,'windows-azure-sql-database','2d0a592ed36'),(163,'Altibase','2017-04-14 14:08:58.000000',0,'altibase','c2ab090dc7b'),(164,'ScaleBase','2017-04-14 14:08:58.000000',0,'scalebase','95640d4e26a'),(165,'SearchBlox','2017-04-14 14:08:58.000000',0,'searchblox','7bbadec0c63'),(166,'Sybase IQ','2017-04-14 14:08:58.000000',0,'sybase-iq','ab2d01cc7ba'),(167,'Dataupia','2017-04-14 14:08:58.000000',0,'dataupia','649474c7c6a'),(168,'FrontBase','2017-04-14 14:08:58.000000',0,'frontbase','f4c9f4421d1'),(169,'MaxDB','2017-04-14 14:08:58.000000',0,'maxdb','281250f449b'),(170,'Vedis','2017-04-14 14:08:58.000000',0,'vedis','159f3f7a37b'),(171,'ScaleOut StateServer','2017-04-14 14:08:58.000000',0,'scaleout-stateserver','3808b02cd5d'),(172,'WhiteDB','2017-04-14 14:08:58.000000',0,'whitedb','7a04abd5c2a'),(173,'WebSphere eXtreme Scale','2017-04-14 14:08:58.000000',0,'websphere-extreme-scale','af0241ce7cb'),(174,'GenieDB','2017-04-14 14:08:58.000000',0,'geniedb','e010ff06db7'),(175,'Endeca','2017-04-14 14:08:58.000000',0,'endeca','5a3cf1ece13'),(176,'SkyDB','2017-04-14 14:08:58.000000',0,'skydb','ffe6860456f'),(177,'Silo','2017-04-14 14:08:58.000000',0,'silo','76cf849d5cb'),(178,'StormDB','2017-04-14 14:08:58.000000',0,'stormdb','65df9951574'),(179,'ForestDB','2017-04-14 14:08:58.000000',0,'forestdb','ce92049713d'),(180,'LogicBlox','2017-04-14 14:08:58.000000',0,'logicblox','9b4956cae02'),(181,'Model 204','2017-04-14 14:08:58.000000',0,'model-204','e5d681f4b04'),(182,'Akiban','2017-04-14 14:08:58.000000',0,'akiban','18063249141'),(183,'mSQL','2017-04-14 14:08:58.000000',0,'msql','9e222037598'),(184,'Exasol','2017-04-14 14:08:58.000000',0,'exasol','388b61abef6'),(185,'Starcounter','2017-04-14 14:08:58.000000',0,'starcounter','ff842f02a5e'),(186,'Kyoto Tycoon','2017-04-14 14:08:58.000000',0,'kyoto-tycoon','3eb6e6d2d1d'),(187,'ModeShape','2017-04-14 14:08:58.000000',0,'modeshape','21d4db0f7fc'),(188,'CitusDB','2017-04-14 14:08:58.000000',0,'citusdb','a4626ce6dae'),(189,'Sybase ADS','2017-04-14 14:08:58.000000',0,'sybase-ads','8d8e3e0e61b'),(190,'Goldstart','2017-04-14 14:08:58.000000',0,'goldstart','7ab2c677d11'),(191,'Tokyo Tyrant','2017-04-14 14:08:58.000000',0,'tokyo-tyrant','52fadd448d4'),(192,'GT.M','2017-04-14 14:08:58.000000',0,'gtm','97e4cdd60bc'),(193,'ObjectStore','2017-04-14 14:08:58.000000',0,'objectstore','7966e7e4adf'),(194,'VistaDB','2017-04-14 14:08:58.000000',0,'vistadb','f48e8bf2ab0'),(195,'Ledis','2017-04-14 14:08:58.000000',0,'ledis','cec8397564e'),(196,'ScaleDB','2017-04-14 14:08:58.000000',0,'scaledb','f61be46ef8b'),(197,'Shore','2017-04-14 14:08:58.000000',0,'shore','85aab018418'),(198,'OpenEdge','2017-04-14 14:08:58.000000',0,'openedge','69b1d3d54a8'),(199,'InfoGrid','2017-04-14 14:08:58.000000',0,'infogrid','5df83036e9f'),(200,'Vertica','2017-04-14 14:08:58.000000',0,'vertica','c16ae635e38'),(201,'Ganesha','2017-04-14 14:08:58.000000',0,'ganesha','c8fd958479c'),(202,'P*TIME','2017-04-14 14:08:58.000000',0,'ptime','16e6ff57fd7'),(203,'ParAccel','2017-04-14 14:08:58.000000',0,'paraccel','e8a30ac4483'),(204,'1010data','2017-04-14 14:08:58.000000',0,'1010data','6823abd65fa'),(205,'Terrastore','2017-04-14 14:08:58.000000',0,'terrastore','c1170b66a23'),(206,'eXist-db','2017-04-14 14:08:58.000000',0,'exist-db','0dd4277cd82'),(207,'AllegroGraph','2017-04-14 14:08:58.000000',0,'allegrograph','4f06ed801ae'),(208,'SAP HANA','2017-04-14 14:08:58.000000',0,'sap-hana','8591edfa976'),(209,'Paradise','2017-04-14 14:08:58.000000',0,'paradise','1d0211f0f70'),(210,'LucidDB','2017-04-14 14:08:58.000000',0,'luciddb','1e57a3049c6'),(211,'Interbase','2017-04-14 14:08:58.000000',0,'interbase','18cfdf6a3cf'),(212,'Encompass','2017-04-14 14:08:58.000000',0,'encompass','7bb41aad1e5'),(213,'InfiniSQL','2017-04-14 14:08:58.000000',0,'infinisql','df205eca4da'),(214,'Tamino','2017-04-14 14:08:58.000000',0,'tamino','5ac763f396b'),(215,'MDBM','2017-04-14 14:08:58.000000',0,'mdbm','4b05bc373ed'),(216,'SmallBase','2017-04-14 14:08:58.000000',0,'smallbase','acab94b0f49'),(217,'OpenBase','2017-04-14 14:08:58.000000',0,'openbase','5d3972445bc'),(218,'Manhattan','2017-04-14 14:08:58.000000',0,'manhattan','1531194e946'),(219,'StagedDB','2017-04-14 14:08:58.000000',0,'stageddb','d269156e3cd'),(220,'GAMMA','2017-04-14 14:08:58.000000',0,'gamma','796c085943c'),(221,'Calvin','2017-04-14 14:08:58.000000',0,'calvin','159e3b0261d'),(222,'Alenka','2017-04-14 14:08:58.000000',0,'alenka','338a00e8d61'),(223,'GraphBase','2017-04-14 14:08:58.000000',0,'graphbase','120475d9b1d'),(224,'Jena','2017-04-14 14:08:58.000000',0,'jena','47c1f3ef547'),(225,'TileDB','2017-04-14 14:08:58.000000',0,'tiledb','3dd13fbbae7'),(226,'GenomicsDB','2017-04-14 14:08:58.000000',0,'genomicsdb','150a8919f2c'),(227,'EnnoDB','2017-04-14 14:08:58.000000',0,'ennodb','e00fea1a1ab'),(228,'GlobalsDB','2017-04-14 14:08:58.000000',0,'globalsdb','360fdbd5247'),(229,'TrailDB','2017-04-14 14:08:58.000000',0,'traildb','e3107ab47e0'),(230,'BrightstarDB','2017-04-14 14:08:58.000000',0,'brightstardb','daf5ad54eb0'),(231,'MarkLogic','2017-04-14 14:08:58.000000',0,'marklogic','c4047cf88ed'),(232,'TimescaleDB','2017-04-14 14:08:58.000000',1,'timescaledb','118796e974d'),(233,'Qserv','2017-04-14 14:08:58.000000',0,'qserv','10ea59d4dbb'),(234,'Informix','2017-04-14 14:08:58.000000',0,'informix','690f9d3140d'),(235,'Amisa Server','2017-04-14 14:08:58.000000',0,'amisa-server','4ff2e4fd421'),(236,'JasDB','2017-04-14 14:08:58.000000',0,'jasdb','3af8b0ce67a'),(237,'MySQL','2017-04-14 14:08:58.000000',0,'mysql','a0fc73815b6'),(238,'JustOneDB','2017-04-14 14:08:58.000000',0,'justonedb','3e1e9810d52'),(239,'Clickhouse','2017-04-14 14:08:58.000000',1,'clickhouse','bbb078070e2'),(240,'SisoDb','2017-04-14 14:08:58.000000',0,'sisodb','3c915522b31'),(241,'Memcached','2017-04-14 14:08:58.000000',4,'memcached','45a160cf54c'),(242,'Sphinx','2017-04-14 14:08:58.000000',0,'sphinx','de4fc14ceda'),(243,'ConcourseDB','2017-04-14 14:08:58.000000',0,'concoursedb','f2691f354da'),(244,'RaptorDB','2017-04-14 14:08:58.000000',0,'raptordb','b29980665e0'),(245,'NonStop SQL','2017-04-14 14:08:58.000000',0,'nonstop-sql','e650eead12c'),(246,'DalmatinerDB','2017-04-14 14:08:58.000000',0,'dalmatinerdb','ca2e72251c8'),(247,'Infinispan','2017-04-14 14:08:58.000000',0,'infinispan','b03ac7ac791'),(248,'CloudSearch','2017-04-14 14:08:58.000000',0,'cloudsearch','3a5d9431fd3'),(249,'SenseiDB','2017-04-14 14:08:58.000000',0,'senseidb','1cb9612a6ea'),(250,'InfiniDB','2017-04-14 14:08:58.000000',0,'infinidb','30f28a10515'),(251,'CloudKit','2017-04-14 14:08:58.000000',0,'cloudkit','7e6063e1a44'),(252,'CORAL','2017-04-14 14:08:58.000000',0,'coral','6bd7d22a21e'),(253,'quasardb','2017-04-14 14:08:58.000000',0,'quasardb','b3ba34ad63c'),(254,'TiKV','2017-04-14 14:08:58.000000',0,'tikv','f25e31ccd61'),(255,'QuineDB','2017-04-14 14:08:58.000000',0,'quinedb','5c753314dd2'),(256,'Hypertable','2017-04-14 14:08:58.000000',0,'hypertable','ec647bcbdb3'),(257,'VelocityDB','2017-04-14 14:08:58.000000',0,'velocitydb','2860da706af'),(258,'ZeroDB','2017-04-14 14:08:58.000000',0,'zerodb','a295bee7fc9'),(259,'GridDB','2017-04-14 14:08:58.000000',0,'griddb','155bc388db0'),(260,'Strabon','2017-04-14 14:08:58.000000',0,'strabon','550d432305e'),(261,'Redis','2017-04-14 14:08:58.000000',0,'redis','6273dbc2e54'),(262,'Baidu Tera','2017-04-14 14:08:58.000000',1,'baidu-tera','69d1ffb08f6'),(263,'ScimoreDB','2017-04-14 14:08:58.000000',0,'scimoredb','a2ed209c0da'),(264,'FoundationDB','2017-04-14 14:08:58.000000',0,'foundationdb','c28c0ce6f68'),(265,'Tile38','2017-04-14 14:08:58.000000',0,'tile38','a1cad7c0ca7'),(266,'VulcanDB','2017-04-14 14:08:58.000000',0,'vulcandb','ee30967d8c4'),(267,'RocksDB','2017-04-14 14:08:58.000000',0,'rocksdb','44a0645fed2'),(268,'GUN','2017-04-14 14:08:58.000000',0,'gun','d3866f42a53'),(269,'Drizzle','2017-04-14 14:08:58.000000',0,'drizzle','09227ba2c8f'),(270,'LedisDB','2017-04-14 14:08:58.000000',0,'ledisdb','db270f7e742'),(271,'Berkeley DB','2017-04-14 14:08:58.000000',0,'berkeley-db','e27104bfa80'),(272,'CouchDB','2017-04-14 14:08:58.000000',0,'couchdb','17275ec9be1'),(273,'Couchbase','2017-04-14 14:08:58.000000',0,'couchbase','fc5338d1fbf'),(274,'Adabas','2017-04-14 14:08:58.000000',0,'adabas','441eacc88ce'),(275,'Sybase ASE','2017-04-14 14:08:58.000000',0,'sybase-ase','6e64cc4999c'),(276,'Riak','2017-04-14 14:08:58.000000',0,'riak','132cea8f4b5'),(277,'MariaDB','2017-04-14 14:08:58.000000',0,'mariadb','da92c6f43ae'),(278,'Mimer SQL','2017-04-14 14:08:58.000000',0,'mimer-sql','a5bd9790bf5'),(279,'Srch²','2017-04-14 14:08:58.000000',0,'srch2','ceb1875c391'),(280,'XtremeData','2017-04-14 14:08:58.000000',0,'xtremedata','a0e7cd44cec'),(281,'Exorbyte','2017-04-14 14:08:58.000000',0,'exorbyte','38ce35b8d90'),(282,'Terak','2017-04-14 14:08:58.000000',0,'terak','db0c001985f'),(283,'AtomicDB','2017-04-14 14:08:58.000000',0,'atomicdb','9da79267ac5'),(284,'FineDB','2017-04-14 14:08:58.000000',0,'finedb','5add7c04953'),(285,'LlamaDB','2017-04-14 14:08:58.000000',0,'llamadb','b851d68ee94'),(286,'BuntDB','2017-04-14 14:08:58.000000',0,'buntdb','8377075cdea'),(287,'NuDB','2017-04-14 14:08:58.000000',0,'nudb','653be9ff475'),(288,'c-treeACE','2017-04-14 14:08:58.000000',0,'c-treeace','c023ee1f01f'),(289,'Axibase','2017-04-14 14:08:58.000000',0,'axibase','042a9406b69'),(290,'Oracle NoSQL','2017-04-14 14:08:58.000000',0,'oracle-nosql','f7ec9d76ea6'),(291,'Sequoiadb','2017-04-14 14:08:58.000000',0,'sequoiadb','ee367b34c05'),(292,'GoshawkDB','2017-04-14 14:08:58.000000',0,'goshawkdb','e868d7c713d'),(293,'DB2','2017-04-14 14:08:58.000000',0,'db2','d1ae6b1c5d1'),(294,'Hive','2017-04-14 14:08:58.000000',2,'hive','212c5c8014a'),(295,'Infinitum','2017-04-14 14:08:58.000000',0,'infinitum','381bdf263ba'),(296,'UniData,UniVerse','2017-04-14 14:08:58.000000',0,'unidatauniverse','bc724e78bbf'),(297,'Oracle','2017-04-14 14:08:58.000000',0,'oracle','2721bc2bbcf'),(298,'RavenDB','2017-04-14 14:08:58.000000',0,'ravendb','125f3e71398'),(299,'Virtuoso','2017-04-14 14:08:58.000000',0,'virtuoso','675158e2dd4'),(300,'Dydra','2017-04-14 14:08:58.000000',0,'dydra','12ad105a2e8'),(301,'Sesame','2017-04-14 14:08:58.000000',0,'sesame','6e5726c1e61'),(302,'ToroDB','2017-04-14 14:08:58.000000',0,'torodb','68fb0478ece'),(303,'MonetDB','2017-04-14 14:08:58.000000',0,'monetdb','8ce3c6852f1'),(304,'BitYota','2017-04-14 14:08:58.000000',0,'bityota','8fb972863d1'),(305,'Apache Derby','2017-04-14 14:08:58.000000',0,'apache-derby','01d0c7a2575'),(306,'CastleDB','2017-04-14 14:08:58.000000',0,'castledb','44dc16e0377'),(307,'TerrainDB','2017-04-14 14:08:58.000000',0,'terraindb','53075dc1b7a'),(308,'WakandaDB','2017-04-14 14:08:58.000000',0,'wakandadb','a4548e50d5f'),(309,'Google BigQuery','2017-04-14 14:08:58.000000',0,'google-bigquery','7d1416ecf32'),(310,'OrigoDB','2017-04-14 14:08:58.000000',0,'origodb','e809190d884'),(311,'TiDB','2017-04-14 14:08:58.000000',0,'tidb','161d07217f7'),(312,'IonDB','2017-04-14 14:08:58.000000',0,'iondb','bfc33cdab3a'),(313,'DynomiteDB','2017-04-14 14:08:58.000000',0,'dynomitedb','94834a72fc6'),(314,'GPUdb','2017-04-14 14:08:58.000000',0,'gpudb','765f241a5be'),(315,'madIS','2017-04-14 14:08:58.000000',0,'madis','fe547d251eb'),(316,'Cincom TOTAL','2017-04-14 14:08:58.000000',0,'cincom-total','ed9a28b1a83'),(317,'FiloDB','2017-04-14 14:08:58.000000',0,'filodb','0aaaf2c7915'),(318,'upscaledb','2017-04-14 14:08:58.000000',0,'upscaledb','38a1e9e8854'),(319,'MongoDB','2017-04-14 14:08:58.000000',0,'mongodb','946fecc54e0'),(320,'SnappyData','2017-04-14 14:08:58.000000',0,'snappydata','f335226ad23'),(321,'Druid','2017-04-14 14:08:58.000000',1,'druid','0828b9bb335'),(322,'Neo4j','2017-04-14 14:08:58.000000',1,'neo4j','189c1fffacc'),(323,'HyperGraphDB','2017-04-14 14:08:58.000000',0,'hypergraphdb','826af68eb32'),(324,'Djondb','2017-04-14 14:08:58.000000',0,'djondb','680a471771c'),(325,'WebScaleSQL','2017-04-14 14:08:58.000000',0,'webscalesql','93b049b11a8'),(326,'Percona Server','2017-04-14 14:08:58.000000',0,'percona-server','ac55892f4f3'),(327,'PalDB','2017-04-14 14:08:58.000000',0,'paldb','ca8f085ad8f'),(328,'OrientDB','2017-04-14 14:08:58.000000',0,'orientdb','02debe6baf2'),(329,'Elasticsearch','2017-04-14 14:08:58.000000',0,'elasticsearch','d6c1e6632c7'),(330,'Integrated Data Store','2017-04-14 14:08:58.000000',0,'integrated-data-store','c45c640066b'),(331,'EaseDB','2017-04-14 14:08:58.000000',0,'easedb','0cfee431acc'),(332,'VoltDB','2017-04-14 14:08:58.000000',1,'voltdb','175a04f712e'),(333,'Extenium','2017-04-14 14:08:58.000000',0,'extenium','2b72a5d461e'),(334,'FleetDB','2017-04-14 14:08:58.000000',0,'fleetdb','69d847c0312'),(335,'DGraph','2017-04-14 14:08:58.000000',0,'dgraph','060cc9eae4f'),(336,'dashDB','2017-04-14 14:08:58.000000',0,'dashdb','f1e1676f246'),(337,'ArangoDB','2017-04-14 14:08:58.000000',0,'arangodb','8c44850f54d'),(338,'Sqrrl','2017-04-14 14:08:58.000000',0,'sqrrl','3dcc4894bd2'),(339,'Blazegraph','2017-04-14 14:08:58.000000',0,'blazegraph','f7f17ce5a46'),(340,'PostgreSQL','2017-04-14 14:08:58.000000',0,'postgresql','bbaf26831b0'),(341,'Compass','2017-04-14 14:08:58.000000',0,'compass','e36ec10d1b3'),(342,'piladb','2017-04-14 14:08:58.000000',0,'piladb','20521c5b715'),(343,'Goldstar','2017-04-14 14:08:58.000000',0,'goldstar','acfe1e50ad7'),(344,'SQream','2017-04-14 14:08:58.000000',0,'sqream','727864f525f'),(345,'BlazingDB','2017-04-14 14:08:58.000000',0,'blazingdb','793f5823a4b'),(346,'SQLite','2017-04-14 14:08:58.000000',4,'sqlite','6add068273b'),(347,'DensoDB','2017-04-14 14:08:58.000000',0,'densodb','cb1a3a98e63'),(348,'ConfluxDB','2017-04-14 14:08:58.000000',0,'confluxdb','8ed2d92c63b'),(349,'LittleD','2017-04-14 14:08:58.000000',0,'littled','7889299a686'),(350,'Solr','2017-04-14 14:08:58.000000',0,'solr','26b71d86e85'),(351,'Consus','2017-04-14 14:08:58.000000',0,'consus','2b19d74f25b'),(352,'OSIsoft PI','2017-04-14 14:08:58.000000',0,'osisoft-pi','68cbafb8a3f'),(353,'dBASE','2017-04-14 14:08:58.000000',0,'dbase','fc5dab78a45'),(354,'Nanolat','2017-04-14 14:08:58.000000',0,'nanolat','19d75789487'),(355,'SparkleDB','2017-04-14 14:08:58.000000',0,'sparkledb','0594cfc6090'),(356,'CubicWeb','2017-04-14 14:08:58.000000',0,'cubicweb','088611ea412'),(357,'MLDB','2017-04-14 14:08:58.000000',0,'mldb','a53586acef4'),(358,'Resin Cache','2017-04-14 14:08:58.000000',0,'resin-cache','025e95d47f3'),(359,'SiriDB','2017-04-14 14:08:58.000000',0,'siridb','43e0608918f'),(360,'rqlite','2017-04-14 14:08:58.000000',0,'rqlite','224b17caf26'),(361,'Mulgara','2017-04-14 14:08:58.000000',0,'mulgara','93cff8d6dad'),(362,'Scylla DB','2017-04-14 14:08:58.000000',0,'scylla-db','81e327f763b'),(363,'Firebird','2017-04-14 14:08:58.000000',0,'firebird','b7253d19914'),(364,'ThinkSQL','2017-04-14 14:08:58.000000',0,'thinksql','a2d9dd20fc8'),(365,'CortexDB','2017-04-14 14:08:58.000000',0,'cortexdb','766ca9c8e0a'),(366,'Caché','2017-04-14 14:08:58.000000',0,'cache','316e76c9d19'),(367,'Teradata','2017-04-14 14:08:58.000000',0,'teradata','9b25806a688'),(368,'Tajo','2017-04-14 14:08:58.000000',0,'tajo','0035cd99b0a'),(369,'PumpkinDB','2017-04-14 14:08:58.000000',0,'pumpkindb','749dbf808be'),(370,'EdgeDB','2017-04-14 14:08:58.000000',0,'edgedb','110a71e86e2'),(371,'Noms','2017-04-14 14:08:58.000000',0,'noms','fbfa99fa92d'),(372,'Microsoft Access','2017-04-14 14:08:58.000000',0,'microsoft-access','140db268c16'),(373,'STSdb','2017-04-14 14:08:58.000000',0,'stsdb','299f3398775'),(374,'FileMaker','2017-04-14 14:08:58.000000',0,'filemaker','f11c63f57ed'),(375,'Jade','2017-04-14 14:08:58.000000',0,'jade','9849c2c7310'),(376,'BoltDB','2017-04-14 14:08:58.000000',0,'boltdb','2f0f4c923ef'),(377,'BigchainDB','2017-04-14 14:08:58.000000',0,'bigchaindb','ced978e7c3b'),(378,'QuestDB','2017-04-14 14:08:58.000000',0,'questdb','1b955dc60ca'),(379,'tiedot','2017-04-14 14:08:58.000000',0,'tiedot','d5d7740ca7f'),(380,'Xapian','2017-04-14 14:08:58.000000',0,'xapian','aab36c4a038'),(381,'cdb','2017-04-14 14:08:58.000000',0,'cdb','f8ce3ba7e77'),(382,'BaseX','2017-04-14 14:08:58.000000',0,'basex','0bc60e0b556'),(383,'TomP2P','2017-04-14 14:08:58.000000',0,'tomp2p','64bbfd8c41a'),(384,'EJDB','2017-04-14 14:08:58.000000',0,'ejdb','f9bc31f4ebe'),(385,'RedStore','2017-04-14 14:08:58.000000',0,'redstore','6837aa3ba1a'),(386,'Microsoft SQL Server','2017-04-14 14:08:58.000000',0,'microsoft-sql-server','8f874646c05'),(387,'Titan','2017-04-14 14:08:58.000000',0,'titan','4de11bba4c4'),(388,'Haixun','2017-04-14 14:08:58.000000',0,'haixun','d182ff5585c'),(389,'SummitDB','2017-04-14 14:08:58.000000',0,'summitdb','c326d83f396'),(390,'Kerf','2017-04-14 14:08:58.000000',0,'kerf','57ec7badea8'),(391,'Stardog','2017-04-14 14:08:58.000000',0,'stardog','53d93168796'),(392,'DynamoDB','2017-04-14 14:08:58.000000',0,'dynamodb','373e128e45e'),(393,'Dalí','2017-04-14 14:08:58.000000',0,'dali','fe7f68d26dd'),(394,'SimpleDB','2017-04-14 14:08:58.000000',0,'simpledb','b036b2bc980'),(395,'Sophia','2017-04-14 14:08:58.000000',3,'sophia','655a839de6d'),(396,'Spark','2017-04-24 17:15:37.182813',0,'spark','e6ac5529716'),(397,'Hekaton','2017-05-02 21:54:59.068769',0,'hekaton','47233e396c6');
/*!40000 ALTER TABLE `systems_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion`
--

DROP TABLE IF EXISTS `systems_systemversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_id` int(11) NOT NULL,
  `version_number` int(10) unsigned NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `creator` varchar(100) NOT NULL,
  `version_message` longtext NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` longtext NOT NULL,
  `description_markup_type` varchar(30) NOT NULL,
  `history` longtext NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `_description_rendered` longtext NOT NULL,
  `history_markup_type` varchar(30) NOT NULL,
  `tech_docs` varchar(200) DEFAULT NULL,
  `_history_rendered` longtext NOT NULL,
  `developer` varchar(200) DEFAULT NULL,
  `start_year` varchar(128) DEFAULT NULL,
  `end_year` varchar(128) DEFAULT NULL,
  `project_type_id` int(11) DEFAULT NULL,
  `logo_orig` varchar(100) NOT NULL,
  `logo_thumb` varchar(100) NOT NULL,
  `support_systemarchitecture` tinyint(1) DEFAULT NULL,
  `description_systemarchitecture` longtext NOT NULL,
  `support_datamodel` tinyint(1) DEFAULT NULL,
  `description_systemarchitecture_markup_type` varchar(30) NOT NULL,
  `_description_systemarchitecture_rendered` longtext NOT NULL,
  `description_datamodel` longtext NOT NULL,
  `support_storagemodel` tinyint(1) DEFAULT NULL,
  `description_datamodel_markup_type` varchar(30) NOT NULL,
  `description_storagemodel` longtext NOT NULL,
  `_description_datamodel_rendered` longtext NOT NULL,
  `description_storagemodel_markup_type` varchar(30) NOT NULL,
  `support_queryinterface` tinyint(1) DEFAULT NULL,
  `_description_storagemodel_rendered` longtext NOT NULL,
  `description_queryinterface` longtext NOT NULL,
  `support_storagearchitecture` tinyint(1) DEFAULT NULL,
  `description_queryinterface_markup_type` varchar(30) NOT NULL,
  `_description_queryinterface_rendered` longtext NOT NULL,
  `description_storagearchitecture` longtext NOT NULL,
  `description_storagearchitecture_markup_type` varchar(30) NOT NULL,
  `support_concurrencycontrol` tinyint(1) DEFAULT NULL,
  `description_concurrencycontrol` longtext NOT NULL,
  `_description_storagearchitecture_rendered` longtext NOT NULL,
  `description_concurrencycontrol_markup_type` varchar(30) NOT NULL,
  `support_isolationlevels` tinyint(1) DEFAULT NULL,
  `_description_concurrencycontrol_rendered` longtext NOT NULL,
  `description_isolationlevels` longtext NOT NULL,
  `description_isolationlevels_markup_type` varchar(30) NOT NULL,
  `support_indexes` tinyint(1) DEFAULT NULL,
  `_description_isolationlevels_rendered` longtext NOT NULL,
  `description_indexes` longtext NOT NULL,
  `description_indexes_markup_type` varchar(30) NOT NULL,
  `support_foreignkeys` tinyint(1) DEFAULT NULL,
  `_description_indexes_rendered` longtext NOT NULL,
  `description_foreignkeys` longtext NOT NULL,
  `support_logging` tinyint(1) DEFAULT NULL,
  `description_foreignkeys_markup_type` varchar(30) NOT NULL,
  `description_logging` longtext NOT NULL,
  `_description_foreignkeys_rendered` longtext NOT NULL,
  `description_logging_markup_type` varchar(30) NOT NULL,
  `support_checkpoints` tinyint(1) DEFAULT NULL,
  `description_checkpoints` longtext NOT NULL,
  `_description_logging_rendered` longtext NOT NULL,
  `description_checkpoints_markup_type` varchar(30) NOT NULL,
  `support_views` tinyint(1) DEFAULT NULL,
  `_description_checkpoints_rendered` longtext NOT NULL,
  `description_views` longtext NOT NULL,
  `description_views_markup_type` varchar(30) NOT NULL,
  `support_queryexecution` tinyint(1) DEFAULT NULL,
  `_description_views_rendered` longtext NOT NULL,
  `description_queryexecution` longtext NOT NULL,
  `support_storedprocedures` tinyint(1) DEFAULT NULL,
  `description_queryexecution_markup_type` varchar(30) NOT NULL,
  `description_storedprocedures` longtext NOT NULL,
  `_description_queryexecution_rendered` longtext NOT NULL,
  `support_joins` tinyint(1) DEFAULT NULL,
  `description_storedprocedures_markup_type` varchar(30) NOT NULL,
  `_description_storedprocedures_rendered` longtext NOT NULL,
  `description_joins` longtext NOT NULL,
  `support_querycompilation` tinyint(1) DEFAULT NULL,
  `description_joins_markup_type` varchar(30) NOT NULL,
  `description_querycompilation` longtext NOT NULL,
  `_description_joins_rendered` longtext NOT NULL,
  `description_querycompilation_markup_type` varchar(30) NOT NULL,
  `_description_querycompilation_rendered` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_systemversion_system_id_79e6daa6_fk_systems_system_id` (`system_id`),
  KEY `systems_syste_project_type_id_37859a12_fk_systems_projecttype_id` (`project_type_id`),
  CONSTRAINT `systems_syste_project_type_id_37859a12_fk_systems_projecttype_id` FOREIGN KEY (`project_type_id`) REFERENCES `systems_projecttype` (`id`),
  CONSTRAINT `systems_systemversion_system_id_79e6daa6_fk_systems_system_id` FOREIGN KEY (`system_id`) REFERENCES `systems_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion`
--

LOCK TABLES `systems_systemversion` WRITE;
/*!40000 ALTER TABLE `systems_systemversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_systemversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_access_methods`
--

DROP TABLE IF EXISTS `systems_systemversion_access_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_access_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `apiaccessmethod_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_access_meth_systemversion_id_6f50c0e5_uniq` (`systemversion_id`,`apiaccessmethod_id`),
  KEY `system_apiaccessmethod_id_2379bd11_fk_systems_apiaccessmethod_id` (`apiaccessmethod_id`),
  CONSTRAINT `system_apiaccessmethod_id_2379bd11_fk_systems_apiaccessmethod_id` FOREIGN KEY (`apiaccessmethod_id`) REFERENCES `systems_apiaccessmethod` (`id`),
  CONSTRAINT `systems_sy_systemversion_id_919ced05_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_access_methods`
--

LOCK TABLES `systems_systemversion_access_methods` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_access_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_systemversion_access_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_derived_from`
--

DROP TABLE IF EXISTS `systems_systemversion_derived_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_derived_from` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_derived_fro_systemversion_id_625b673f_uniq` (`systemversion_id`,`system_id`),
  KEY `systems_systemversion_de_system_id_aa6e4d54_fk_systems_system_id` (`system_id`),
  CONSTRAINT `systems_sy_systemversion_id_cbca89d0_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`),
  CONSTRAINT `systems_systemversion_de_system_id_aa6e4d54_fk_systems_system_id` FOREIGN KEY (`system_id`) REFERENCES `systems_system` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_derived_from`
--

LOCK TABLES `systems_systemversion_derived_from` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_derived_from` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_systemversion_derived_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_licenses`
--

DROP TABLE IF EXISTS `systems_systemversion_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_licenses_systemversion_id_32cef59f_uniq` (`systemversion_id`,`license_id`),
  KEY `systems_systemversion__license_id_ca1f6b82_fk_systems_license_id` (`license_id`),
  CONSTRAINT `systems_sy_systemversion_id_97c8057e_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`),
  CONSTRAINT `systems_systemversion__license_id_ca1f6b82_fk_systems_license_id` FOREIGN KEY (`license_id`) REFERENCES `systems_license` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_licenses`
--

LOCK TABLES `systems_systemversion_licenses` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_licenses` DISABLE KEYS */;
INSERT INTO `systems_systemversion_licenses` VALUES (1,1,12),(2,2,2),(3,3,2),(4,4,1),(5,4,3),(6,5,2),(7,6,14),(8,7,12),(9,404,13),(10,405,13),(11,414,13);
/*!40000 ALTER TABLE `systems_systemversion_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_oses`
--

DROP TABLE IF EXISTS `systems_systemversion_oses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_oses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `operatingsystem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_oses_systemversion_id_b63a6a63_uniq` (`systemversion_id`,`operatingsystem_id`),
  KEY `system_operatingsystem_id_a59b73b9_fk_systems_operatingsystem_id` (`operatingsystem_id`),
  CONSTRAINT `system_operatingsystem_id_a59b73b9_fk_systems_operatingsystem_id` FOREIGN KEY (`operatingsystem_id`) REFERENCES `systems_operatingsystem` (`id`),
  CONSTRAINT `systems_sy_systemversion_id_34571281_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_oses`
--

LOCK TABLES `systems_systemversion_oses` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_oses` DISABLE KEYS */;
INSERT INTO `systems_systemversion_oses` VALUES (1,1,9),(3,2,9),(4,2,11),(2,2,16),(6,3,9),(7,3,11),(5,3,16),(8,4,1),(9,4,2),(10,4,4),(11,4,5),(12,4,6),(13,4,7),(14,4,8),(15,4,9),(16,4,10),(17,4,11),(18,4,13),(19,4,14),(20,4,15),(21,4,16),(22,4,18),(23,4,20),(24,5,2),(25,6,1),(26,6,4),(27,6,5),(28,6,7),(29,6,9),(30,6,10),(31,6,11),(32,6,13),(33,6,14),(34,6,16),(35,6,18),(36,7,9),(45,404,4),(44,404,5),(43,404,9),(41,404,11),(37,404,13),(42,404,14),(38,404,15),(39,404,16),(40,404,18),(54,405,4),(53,405,5),(52,405,9),(50,405,11),(46,405,13),(51,405,14),(47,405,15),(48,405,16),(49,405,18),(63,414,4),(62,414,5),(61,414,9),(59,414,11),(55,414,13),(60,414,14),(56,414,15),(57,414,16),(58,414,18);
/*!40000 ALTER TABLE `systems_systemversion_oses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_publications`
--

DROP TABLE IF EXISTS `systems_systemversion_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_publication_systemversion_id_83c6d225_uniq` (`systemversion_id`,`publication_id`),
  KEY `systems_system_publication_id_d593289c_fk_systems_publication_id` (`publication_id`),
  CONSTRAINT `systems_sy_systemversion_id_559d0c19_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`),
  CONSTRAINT `systems_system_publication_id_d593289c_fk_systems_publication_id` FOREIGN KEY (`publication_id`) REFERENCES `systems_publication` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_publications`
--

LOCK TABLES `systems_systemversion_publications` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `systems_systemversion_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_support_languages`
--

DROP TABLE IF EXISTS `systems_systemversion_support_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_support_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `programminglanguage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_support_lan_systemversion_id_3244e552_uniq` (`systemversion_id`,`programminglanguage_id`),
  KEY `fe8f5eba6b1f03cc68c0eac1e84e36f1` (`programminglanguage_id`),
  CONSTRAINT `fe8f5eba6b1f03cc68c0eac1e84e36f1` FOREIGN KEY (`programminglanguage_id`) REFERENCES `systems_programminglanguage` (`id`),
  CONSTRAINT `systems_sy_systemversion_id_516b10e0_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_support_languages`
--

LOCK TABLES `systems_systemversion_support_languages` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_support_languages` DISABLE KEYS */;
INSERT INTO `systems_systemversion_support_languages` VALUES (1,404,5),(13,404,6),(7,404,7),(3,404,12),(5,404,14),(18,404,19),(17,404,21),(2,404,22),(14,404,24),(4,404,26),(9,404,27),(6,404,29),(12,404,30),(19,404,31),(8,404,34),(15,404,38),(10,404,40),(20,404,42),(11,404,44),(21,404,45),(16,404,46),(22,405,5),(36,405,6),(28,405,7),(24,405,12),(26,405,14),(39,405,19),(38,405,21),(23,405,22),(35,405,24),(25,405,26),(30,405,27),(27,405,29),(33,405,30),(40,405,31),(29,405,34),(34,405,38),(31,405,40),(41,405,42),(32,405,44),(42,405,45),(37,405,46),(43,414,5),(57,414,6),(49,414,7),(45,414,12),(47,414,14),(60,414,19),(59,414,21),(44,414,22),(56,414,24),(46,414,26),(51,414,27),(48,414,29),(54,414,30),(61,414,31),(50,414,34),(55,414,38),(52,414,40),(62,414,42),(53,414,44),(63,414,45),(58,414,46);
/*!40000 ALTER TABLE `systems_systemversion_support_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversion_written_in`
--

DROP TABLE IF EXISTS `systems_systemversion_written_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversion_written_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemversion_id` int(11) NOT NULL,
  `programminglanguage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_systemversion_written_in_systemversion_id_dbeffa21_uniq` (`systemversion_id`,`programminglanguage_id`),
  KEY `d936c8cdce240415fee21f5044014cee` (`programminglanguage_id`),
  CONSTRAINT `d936c8cdce240415fee21f5044014cee` FOREIGN KEY (`programminglanguage_id`) REFERENCES `systems_programminglanguage` (`id`),
  CONSTRAINT `systems_sy_systemversion_id_29584374_fk_systems_systemversion_id` FOREIGN KEY (`systemversion_id`) REFERENCES `systems_systemversion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversion_written_in`
--

LOCK TABLES `systems_systemversion_written_in` WRITE;
/*!40000 ALTER TABLE `systems_systemversion_written_in` DISABLE KEYS */;
INSERT INTO `systems_systemversion_written_in` VALUES (1,1,5),(2,1,7),(3,2,19),(4,3,22),(5,3,38),(6,4,1),(7,4,5),(8,4,6),(9,4,7),(10,4,8),(11,4,12),(12,4,14),(13,4,15),(14,4,16),(15,4,19),(16,4,21),(17,4,22),(18,4,24),(19,4,26),(20,4,27),(21,4,28),(22,4,29),(23,4,31),(24,4,33),(25,4,34),(26,4,37),(27,4,38),(28,4,39),(29,4,40),(30,4,41),(31,4,42),(32,4,43),(33,4,45),(34,4,46),(35,4,48),(36,5,22),(37,6,5),(38,7,7),(39,396,7),(40,404,5),(41,405,5),(42,411,5),(43,412,5),(44,413,5),(45,414,5);
/*!40000 ALTER TABLE `systems_systemversion_written_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems_systemversionfeatureoption`
--

DROP TABLE IF EXISTS `systems_systemversionfeatureoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems_systemversionfeatureoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_version_id` int(11) NOT NULL,
  `feature_option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `systems_s_system_version_id_972d1870_fk_systems_systemversion_id` (`system_version_id`),
  KEY `systems_s_feature_option_id_b2ced7b2_fk_systems_featureoption_id` (`feature_option_id`),
  CONSTRAINT `systems_s_feature_option_id_b2ced7b2_fk_systems_featureoption_id` FOREIGN KEY (`feature_option_id`) REFERENCES `systems_featureoption` (`id`),
  CONSTRAINT `systems_s_system_version_id_972d1870_fk_systems_systemversion_id` FOREIGN KEY (`system_version_id`) REFERENCES `systems_systemversion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems_systemversionfeatureoption`
--

LOCK TABLES `systems_systemversionfeatureoption` WRITE;
/*!40000 ALTER TABLE `systems_systemversionfeatureoption` DISABLE KEYS */;
INSERT INTO `systems_systemversionfeatureoption` VALUES (1,1,41),(2,1,37),(3,1,26),(4,1,4),(5,1,32),(6,2,40),(7,2,41),(8,2,13),(9,2,60),(10,2,37),(11,2,51),(12,2,23),(13,2,1),(14,2,8),(15,2,16),(16,2,27),(17,3,40),(18,3,41),(19,3,14),(20,3,58),(21,3,59),(22,3,56),(23,3,60),(24,3,44),(25,3,45),(26,3,46),(27,3,47),(28,3,34),(29,3,35),(30,3,36),(31,3,37),(32,3,49),(33,3,50),(34,3,26),(35,3,1),(36,3,2),(37,3,3),(38,3,4),(39,3,5),(40,3,6),(41,3,7),(42,3,8),(43,3,21),(44,3,31),(45,3,32),(46,3,61),(47,3,62),(48,4,38),(49,4,40),(50,4,41),(51,4,13),(52,4,14),(53,4,53),(54,4,59),(55,4,60),(56,4,47),(57,4,37),(58,4,49),(59,4,51),(60,4,23),(61,4,25),(62,4,26),(63,4,1),(64,4,4),(65,4,15),(66,4,17),(67,4,22),(68,4,30),(69,4,31),(70,4,61),(71,5,40),(72,5,41),(73,5,9),(74,5,10),(75,5,53),(76,5,45),(77,5,35),(78,5,51),(79,5,26),(80,5,1),(81,5,6),(82,5,32),(83,6,42),(84,6,14),(85,6,53),(86,6,37),(87,6,51),(88,6,26),(89,6,1),(90,6,8),(91,6,31),(92,7,40),(93,7,41),(94,7,42),(95,7,10),(96,7,56),(97,7,59),(98,7,45),(99,7,46),(100,7,34),(101,7,35),(102,7,51),(103,7,23),(104,7,1),(105,7,2),(106,7,4),(107,7,15),(108,7,16),(109,7,17),(110,7,19),(111,7,20),(112,7,27),(113,7,31),(114,7,61),(115,7,62),(116,399,44),(117,413,31);
/*!40000 ALTER TABLE `systems_systemversionfeatureoption` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-02 21:03:29