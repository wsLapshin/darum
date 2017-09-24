-- MySQL dump 10.13  Distrib 5.6.37, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: darum
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `AreaLayoutColumns`
--

DROP TABLE IF EXISTS `AreaLayoutColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutColumns`
--

LOCK TABLES `AreaLayoutColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutColumns` VALUES (1,1,0,2,1),(2,1,1,3,2),(3,1,2,4,3),(4,2,0,5,4),(5,2,1,6,5),(6,3,0,7,6),(7,3,1,8,7),(8,3,2,9,8);
/*!40000 ALTER TABLE `AreaLayoutColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutCustomColumns`
--

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutCustomColumns`
--

LOCK TABLES `AreaLayoutCustomColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutPresets`
--

DROP TABLE IF EXISTS `AreaLayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutPresets`
--

LOCK TABLES `AreaLayoutPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

LOCK TABLES `AreaLayoutThemeGridColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutThemeGridColumns` VALUES (1,4,0),(2,4,0),(3,4,0),(4,4,0),(5,8,0),(6,4,0),(7,4,0),(8,4,0);
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayouts`
--

DROP TABLE IF EXISTS `AreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayouts`
--

LOCK TABLES `AreaLayouts` WRITE;
/*!40000 ALTER TABLE `AreaLayouts` DISABLE KEYS */;
INSERT INTO `AreaLayouts` VALUES (1,0,0,0,12,1),(2,0,0,0,12,1),(3,0,0,0,12,1);
/*!40000 ALTER TABLE `AreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutsUsingPresets`
--

LOCK TABLES `AreaLayoutsUsingPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,140,'Main',0,0,0,0),(2,140,'Main : 1',0,0,0,1),(3,140,'Main : 2',0,0,0,1),(4,140,'Main : 3',0,0,0,1),(5,140,'Main : 4',0,0,0,1),(6,140,'Main : 5',0,0,0,1),(7,140,'Main : 6',0,0,0,1),(8,140,'Main : 7',0,0,0,1),(9,140,'Main : 8',0,0,0,1),(10,141,'Main',0,0,0,0),(11,154,'Main',0,0,0,0),(13,156,'Main',0,0,0,0),(14,1,'Header Site Title',0,0,1,0),(15,157,'Main',0,0,0,0),(16,1,'Header Navigation',0,0,1,0),(17,1,'Main',0,0,0,0),(18,1,'Page Footer',0,0,0,0),(19,158,'Main',0,0,0,0),(20,1,'Footer Legal',0,0,1,0),(21,159,'Main',0,0,0,0),(22,1,'Footer Navigation',0,0,1,0),(23,160,'Main',0,0,0,0),(24,1,'Footer Contact',0,0,1,0),(25,144,'Disclaimer',0,0,0,0),(27,153,'Main',0,0,0,0),(28,168,'Main',0,0,0,0),(29,169,'Main',0,0,0,0),(30,1,'nav',0,0,0,0),(31,171,'Main',0,0,0,0),(32,172,'Main',0,0,0,0),(33,174,'Main',0,0,0,0),(34,1,'mainmenu',0,0,1,0),(35,153,'mainmenu',0,0,1,0),(36,163,'mainmenu',0,0,1,0),(37,164,'mainmenu',0,0,1,0),(38,170,'mainmenu',0,0,1,0),(40,176,'Main',0,0,0,0),(41,176,'mainmenu',0,0,1,0),(42,178,'Main',0,0,0,0),(43,176,'subnav',0,0,1,0),(44,153,'subnav',0,0,1,0),(45,163,'subnav',0,0,1,0),(46,172,'mainmenu',0,0,1,0),(47,172,'subnav',0,0,1,0),(48,1,'subnav',0,0,1,0),(49,164,'subnav',0,0,1,0),(50,179,'Main',0,0,0,0),(51,179,'mainmenu',0,0,1,0),(52,179,'subnav',0,0,1,0),(53,180,'Main',0,0,0,0),(54,181,'Main',0,0,0,0),(55,182,'Main',0,0,0,0),(56,182,'mainmenu',0,0,1,0),(57,182,'subnav',0,0,1,0),(58,180,'mainmenu',0,0,1,0),(59,180,'subnav',0,0,1,0),(60,181,'mainmenu',0,0,1,0),(61,181,'subnav',0,0,1,0),(62,170,'subnav',0,0,1,0),(63,184,'Main',0,0,0,0),(64,195,'mainmenu',0,0,1,0),(65,195,'subnav',0,0,1,0),(66,195,'nav',0,0,0,0),(69,196,'mainmenu',0,0,1,0),(70,196,'subnav',0,0,1,0),(71,196,'Main',0,0,0,0),(72,197,'Main',0,0,0,0),(73,198,'Main',0,0,0,0),(74,199,'Main',0,0,0,0),(75,197,'mainmenu',0,0,1,0),(76,197,'subnav',0,0,1,0),(77,198,'mainmenu',0,0,1,0),(78,198,'subnav',0,0,1,0),(79,199,'mainmenu',0,0,1,0),(80,199,'subnav',0,0,1,0),(81,200,'mainmenu',0,0,1,0),(82,200,'subnav',0,0,1,0),(83,200,'Main',0,0,0,0),(84,201,'mainmenu',0,0,1,0),(85,201,'subnav',0,0,1,0),(86,201,'Main',0,0,0,0),(87,202,'mainmenu',0,0,1,0),(88,202,'subnav',0,0,1,0),(89,202,'Main',0,0,0,0),(90,190,'mainmenu',0,0,1,0),(91,190,'subnav',0,0,1,0),(92,190,'Main',0,0,0,0),(93,203,'Main',0,0,0,0),(94,204,'Main',0,0,0,0),(95,205,'Main',0,0,0,0),(96,206,'mainmenu',0,0,1,0),(97,206,'subnav',0,0,1,0),(98,206,'Main',0,0,0,0),(99,207,'Main',0,0,0,0),(100,208,'Main',0,0,0,0),(101,209,'Main',0,0,0,0),(102,210,'mainmenu',0,0,1,0),(103,210,'subnav',0,0,1,0),(104,210,'Main',0,0,0,0),(105,211,'Main',0,0,0,0),(106,203,'mainmenu',0,0,1,0),(107,203,'subnav',0,0,1,0),(108,207,'mainmenu',0,0,1,0),(109,207,'subnav',0,0,1,0),(110,211,'mainmenu',0,0,1,0),(111,211,'subnav',0,0,1,0),(112,204,'mainmenu',0,0,1,0),(113,204,'subnav',0,0,1,0),(114,208,'mainmenu',0,0,1,0),(115,208,'subnav',0,0,1,0),(116,205,'mainmenu',0,0,1,0),(117,205,'subnav',0,0,1,0),(118,209,'mainmenu',0,0,1,0),(119,209,'subnav',0,0,1,0),(120,227,'mainmenu',0,0,1,0),(121,227,'subnav',0,0,1,0),(122,228,'mainmenu',0,0,1,0),(123,228,'subnav',0,0,1,0),(124,226,'mainmenu',0,0,1,0),(125,226,'subnav',0,0,1,0),(126,225,'mainmenu',0,0,1,0),(127,225,'subnav',0,0,1,0),(128,223,'mainmenu',0,0,1,0),(129,223,'subnav',0,0,1,0),(130,224,'mainmenu',0,0,1,0),(131,224,'subnav',0,0,1,0),(143,232,'mainmenu',0,0,1,0),(144,232,'subnav',0,0,1,0),(145,232,'MainContent',0,0,0,0),(146,232,'Main',0,0,0,0),(147,219,'mainmenu',0,0,1,0),(148,219,'subnav',0,0,1,0),(149,236,'mainmenu',0,0,1,0),(150,236,'subnav',0,0,1,0),(151,236,'MainContent',0,0,0,0),(152,237,'mainmenu',0,0,1,0),(153,237,'subnav',0,0,1,0),(154,237,'MainContent',0,0,0,0),(156,238,'MainImage',0,0,0,0),(157,238,'mainmenu',0,0,1,0),(158,238,'subnav',0,0,1,0),(159,238,'MainContent',0,0,0,0),(160,232,'MainImage',0,0,0,0),(161,239,'MainImage',0,0,0,0),(162,239,'mainmenu',0,0,1,0),(163,239,'subnav',0,0,1,0),(164,239,'MainContent',0,0,0,0),(165,239,'Main',0,0,0,0),(166,240,'MainImage',0,0,0,0),(167,240,'mainmenu',0,0,1,0),(168,240,'subnav',0,0,1,0),(169,240,'MainContent',0,0,0,0),(170,240,'Main',0,0,0,0),(171,150,'mainmenu',0,0,1,0),(172,150,'subnav',0,0,1,0),(173,220,'mainmenu',0,0,1,0),(174,220,'subnav',0,0,1,0),(185,243,'mainmenu',0,0,1,0),(186,243,'subnav',0,0,1,0),(187,243,'MainImage',0,0,0,0),(188,243,'MainContent',0,0,0,0),(189,243,'Main',0,0,0,0),(190,244,'mainmenu',0,0,1,0),(191,244,'subnav',0,0,1,0),(192,244,'MainImage',0,0,0,0),(193,244,'MainContent',0,0,0,0),(194,219,'List',0,0,0,0),(195,220,'List',0,0,0,0),(196,245,'mainmenu',0,0,1,0),(197,245,'subnav',0,0,1,0),(198,245,'MainImage',0,0,0,0),(199,245,'MainContent',0,0,0,0),(200,245,'Main',0,0,0,0),(201,246,'mainmenu',0,0,1,0),(202,246,'subnav',0,0,1,0),(203,246,'MainImage',0,0,0,0),(204,246,'MainContent',0,0,0,0),(205,246,'Main',0,0,0,0),(206,247,'mainmenu',0,0,1,0),(207,247,'subnav',0,0,1,0),(208,247,'MainImage',0,0,0,0),(209,247,'MainContent',0,0,0,0),(210,167,'mainmenu',0,0,1,0),(211,167,'subnav',0,0,1,0),(212,167,'MainImage',0,0,0,0),(213,167,'MainContent',0,0,0,0),(214,248,'Main',0,0,0,0),(215,250,'mainmenu',0,0,1,0),(216,250,'subnav',0,0,1,0),(217,250,'MainImage',0,0,0,0),(218,250,'MainContent',0,0,0,0),(219,249,'mainmenu',0,0,1,0),(220,249,'subnav',0,0,1,0),(221,249,'MainImage',0,0,0,0),(222,249,'MainContent',0,0,0,0),(223,251,'mainmenu',0,0,1,0),(224,251,'subnav',0,0,1,0),(225,251,'MainImage',0,0,0,0),(226,251,'MainContent',0,0,0,0),(227,252,'mainmenu',0,0,1,0),(228,252,'subnav',0,0,1,0),(229,252,'MainImage',0,0,0,0),(230,252,'MainContent',0,0,0,0),(231,253,'mainmenu',0,0,1,0),(232,253,'subnav',0,0,1,0),(233,253,'MainImage',0,0,0,0),(234,253,'MainContent',0,0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL),(4,'site',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_DCA32C62A12CFE33` (`atID`),
  KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,0,0,1,1,NULL,'pagekey'),(2,'meta_description','Meta Description',1,0,0,2,1,NULL,'pagekey'),(3,'meta_keywords','Meta Keywords',1,0,0,2,1,NULL,'pagekey'),(4,'desktop_priority','Desktop Priority',1,1,0,6,1,NULL,'pagekey'),(5,'is_desktop','Is Desktop',1,1,0,3,1,NULL,'pagekey'),(6,'icon_dashboard','Dashboard Icon',1,1,0,2,1,NULL,'pagekey'),(7,'exclude_nav','Exclude From Nav',1,0,0,3,1,NULL,'pagekey'),(8,'exclude_page_list','Exclude From Page List',1,0,0,3,1,NULL,'pagekey'),(9,'header_extra_content','Header Extra Content',1,0,0,2,1,NULL,'pagekey'),(10,'tags','Tags',1,0,1,7,1,NULL,'pagekey'),(11,'is_featured','Is Featured',1,0,0,3,1,NULL,'pagekey'),(12,'exclude_search_index','Exclude From Search Index',1,0,0,3,1,NULL,'pagekey'),(13,'exclude_sitemapxml','Exclude From sitemap.xml',1,0,0,3,1,NULL,'pagekey'),(14,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,3,2,NULL,'userkey'),(15,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,3,2,NULL,'userkey'),(16,'width','Width',1,0,0,6,3,NULL,'filekey'),(17,'height','Height',1,0,0,6,3,NULL,'filekey'),(18,'account_profile_links','Personal Links',1,0,0,14,2,NULL,'userkey'),(19,'duration','Duration',1,0,0,6,3,NULL,'filekey'),(26,'top10','Топ 10',1,0,0,3,1,NULL,'pagekey'),(30,'parents_articles','Категории статей родителям',1,0,0,7,1,NULL,'pagekey');
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`,`asID`),
  KEY `IDX_222F72D8B6561A7E` (`akID`),
  KEY `IDX_222F72D8A463E8B6` (`asID`),
  CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `AttributeSets` (`asID`),
  CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (0,1,1),(1,2,1),(1,7,2),(2,8,2),(2,9,1),(4,10,2),(0,11,2),(3,12,2),(3,13,1),(5,26,2),(4,30,1);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`asID`),
  KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  KEY `asHandle` (`asHandle`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'seo','SEO',0,0,1,NULL),(2,'navigation','Navigation and Indexing',1,0,1,NULL);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `akCategoryID` int(10) unsigned NOT NULL,
  `atID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akCategoryID`,`atID`),
  KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  KEY `IDX_49A9CABEA12CFE33` (`atID`),
  CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,9),(1,10),(1,11),(1,12),(1,13),(1,15),(2,1),(2,2),(2,3),(2,4),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,13),(2,14),(2,15),(3,1),(3,2),(3,3),(3,4),(3,6),(3,7),(3,9),(3,10),(3,11),(3,12),(3,13),(3,15),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,13),(4,15);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`atID`),
  CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',NULL),(2,'textarea','Text Area',NULL),(3,'boolean','Checkbox',NULL),(4,'date_time','Date/Time',NULL),(5,'image_file','Image/File',NULL),(6,'number','Number',NULL),(7,'select','Select',NULL),(8,'address','Address',NULL),(9,'telephone','Phone Number',NULL),(10,'url','URL',NULL),(11,'email','Email',NULL),(12,'rating','Rating',NULL),(13,'topics','Topics',NULL),(14,'social_links','Social Links',NULL),(15,'express','Express Entity',NULL);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_DCCE7864B6561A7E` (`akID`),
  CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=939 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (152,1),(160,1),(164,1),(170,1),(181,1),(184,1),(187,1),(188,1),(189,1),(196,1),(207,1),(217,1),(232,1),(236,1),(242,1),(246,1),(259,1),(652,1),(658,1),(664,1),(670,1),(676,1),(682,1),(688,1),(694,1),(700,1),(705,1),(711,1),(717,1),(723,1),(740,1),(750,1),(755,1),(806,1),(811,1),(816,1),(836,1),(842,1),(848,1),(860,1),(866,1),(872,1),(888,1),(906,1),(936,1),(139,2),(153,2),(156,2),(159,2),(161,2),(165,2),(182,2),(190,2),(197,2),(208,2),(218,2),(233,2),(237,2),(243,2),(247,2),(260,2),(653,2),(659,2),(665,2),(671,2),(677,2),(683,2),(689,2),(695,2),(701,2),(706,2),(712,2),(718,2),(724,2),(741,2),(751,2),(756,2),(807,2),(812,2),(837,2),(843,2),(849,2),(861,2),(867,2),(873,2),(889,2),(907,2),(937,2),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(17,3),(19,3),(20,3),(21,3),(22,3),(23,3),(26,3),(27,3),(28,3),(29,3),(38,3),(39,3),(40,3),(42,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(63,3),(64,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(86,3),(87,3),(89,3),(90,3),(91,3),(92,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(100,3),(101,3),(102,3),(103,3),(104,3),(105,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(112,3),(113,3),(114,3),(115,3),(116,3),(117,3),(118,3),(119,3),(121,3),(122,3),(123,3),(124,3),(125,3),(126,3),(183,3),(191,3),(198,3),(209,3),(219,3),(234,3),(238,3),(244,3),(248,3),(261,3),(654,3),(660,3),(666,3),(672,3),(678,3),(684,3),(690,3),(696,3),(702,3),(707,3),(713,3),(719,3),(725,3),(742,3),(752,3),(757,3),(808,3),(813,3),(838,3),(844,3),(850,3),(862,3),(868,3),(874,3),(890,3),(908,3),(938,3),(127,4),(134,4),(128,5),(135,5),(1,6),(41,6),(130,6),(131,6),(132,6),(133,6),(9,7),(16,7),(18,7),(24,7),(30,7),(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(43,7),(51,7),(62,7),(65,7),(67,7),(69,7),(71,7),(73,7),(75,7),(77,7),(88,7),(99,7),(129,7),(136,7),(239,7),(240,7),(262,7),(263,7),(154,9),(162,9),(166,9),(257,11),(650,11),(662,11),(674,11),(686,11),(698,11),(709,11),(721,11),(753,11),(804,11),(809,11),(834,11),(840,11),(846,11),(858,11),(864,11),(870,11),(886,11),(25,12),(44,12),(66,12),(68,12),(70,12),(72,12),(74,12),(76,12),(78,12),(120,12),(264,12),(155,13),(163,13),(167,13),(157,16),(185,16),(199,16),(201,16),(203,16),(205,16),(220,16),(222,16),(224,16),(226,16),(814,16),(817,16),(819,16),(821,16),(823,16),(825,16),(875,16),(877,16),(158,17),(186,17),(200,17),(202,17),(204,17),(206,17),(221,17),(223,17),(225,17),(227,17),(815,17),(818,17),(820,17),(822,17),(824,17),(826,17),(876,17),(878,17),(258,26),(651,26),(663,26),(675,26),(687,26),(699,26),(710,26),(722,26),(754,26),(805,26),(810,26),(835,26),(841,26),(847,26),(859,26),(865,26),(871,26),(887,26),(833,30),(839,30),(845,30),(857,30),(863,30),(869,30),(885,30);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthenticationTypes`
--

DROP TABLE IF EXISTS `AuthenticationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthenticationTypes`
--

LOCK TABLES `AuthenticationTypes` WRITE;
/*!40000 ALTER TABLE `AuthenticationTypes` DISABLE KEYS */;
INSERT INTO `AuthenticationTypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0);
/*!40000 ALTER TABLE `AuthenticationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BannedWords`
--

DROP TABLE IF EXISTS `BannedWords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BannedWords`
--

LOCK TABLES `BannedWords` WRITE;
/*!40000 ALTER TABLE `BannedWords` DISABLE KEYS */;
INSERT INTO `BannedWords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `BannedWords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockFeatureAssignments`
--

DROP TABLE IF EXISTS `BlockFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockFeatureAssignments`
--

LOCK TABLES `BlockFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `BlockFeatureAssignments` DISABLE KEYS */;
INSERT INTO `BlockFeatureAssignments` VALUES (168,2,18,1),(168,2,19,2),(168,3,19,2),(168,4,19,2),(232,2,82,3),(237,1,83,4),(238,1,85,5),(239,1,89,9),(239,2,90,10),(239,3,91,11),(239,4,91,11),(239,5,91,11),(239,6,91,11),(239,7,91,11),(239,8,91,11),(240,1,95,15),(240,2,96,16),(240,3,96,16),(240,4,96,16),(240,5,96,16),(240,6,96,16),(240,7,96,16),(243,1,97,17),(243,2,97,17),(243,3,97,17),(243,4,97,17),(243,5,97,17),(243,6,97,17),(243,7,97,17),(244,1,97,17),(245,1,97,17),(245,2,97,17),(245,3,97,17),(246,1,97,17),(246,2,97,17),(247,1,97,17),(246,3,98,18),(246,4,99,19),(246,5,99,19),(246,6,99,19),(246,7,99,19),(246,8,99,19),(249,1,101,20),(251,1,101,20),(252,1,101,20),(252,2,101,20),(253,1,101,20),(253,2,101,20),(253,3,105,21);
/*!40000 ALTER TABLE `BlockFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

LOCK TABLES `BlockTypeSetBlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypeSetBlockTypes` VALUES (14,1,0),(30,1,1),(32,1,2),(17,1,3),(31,1,4),(24,1,5),(13,2,0),(23,2,1),(33,2,2),(35,2,3),(34,2,4),(15,2,5),(41,2,6),(25,2,7),(36,2,8),(40,2,9),(21,3,0),(37,3,1),(16,3,2),(19,4,0),(20,4,1),(39,5,0),(5,5,1),(26,5,2),(27,5,3),(28,5,4),(18,6,0),(38,6,1),(42,6,2),(43,6,3),(29,6,4),(6,7,0),(8,7,1),(9,7,2),(10,7,3),(11,7,4),(12,7,5),(7,7,6);
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSets`
--

DROP TABLE IF EXISTS `BlockTypeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSets`
--

LOCK TABLES `BlockTypeSets` WRITE;
/*!40000 ALTER TABLE `BlockTypeSets` DISABLE KEYS */;
INSERT INTO `BlockTypeSets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Express','express',0,0),(5,'Social Networking','social',0,0),(6,'Multimedia','multimedia',0,0),(7,'Desktop','core_desktop',0,0);
/*!40000 ALTER TABLE `BlockTypeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`btID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (0,1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,400,400,0),(0,2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,400,400,0),(0,3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,400,400,0),(0,4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,400,400,0),(0,5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,400,450,0),(0,6,'desktop_app_status','concrete5 Status Messages','Displays alerts about your concrete5 site and package updates.',0,0,0,0,0,0,400,400,0),(0,7,'desktop_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,0,0,0,0,400,400,0),(0,8,'desktop_site_activity','Site Activity','Displays a graph of recent activity on your site.',0,0,0,0,0,0,560,450,0),(0,9,'desktop_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,0,0,0,0,100,300,0),(0,10,'desktop_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,0,0,0,0,100,300,0),(0,11,'desktop_latest_form','Latest Form','Shows the latest form submission.',0,0,0,0,0,0,400,400,0),(0,12,'desktop_waiting_for_me','Waiting for Me','Displays workflow actions waiting for you.',0,0,0,0,0,0,560,450,0),(0,13,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,525,700,0),(0,14,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,465,600,0),(0,15,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,0,450,400,0),(0,16,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,175,370,0),(0,17,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,320,300,0),(0,18,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,0,365,500,0),(0,19,'express_entry_list','Express Entry List','Add a searchable Express entry list to a page.',0,0,0,0,0,0,400,640,0),(0,20,'express_entry_detail','Express Entry Detail','Add an Express entry detail display to a page.',0,0,0,0,0,0,400,640,0),(0,21,'express_form','Form','Build simple forms and surveys.',0,0,0,0,0,0,480,640,0),(0,22,'form','Legacy Form','Build simple forms and surveys.',1,0,0,0,0,0,430,420,0),(0,23,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,0,500,470,0),(0,24,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,520,400,0),(0,25,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,0,400,400,0),(0,26,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,400,400,0),(0,27,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,560,450,0),(0,28,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,400,400,0),(0,29,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,550,475,0),(1,30,'html','HTML','For adding HTML by hand.',0,0,0,0,0,0,500,600,0),(1,31,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,0,400,400,0),(0,32,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,550,400,0),(0,33,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,465,600,0),(0,34,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,0,400,430,0),(0,35,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,0,525,700,0),(0,36,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,0,550,400,0),(0,37,'search','Search','Add a search box to your site.',0,0,0,0,0,0,420,400,0),(1,38,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,0,550,600,0),(0,39,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,500,500,0),(0,40,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,0,150,500,0),(0,41,'tags','Tags','List pages based on type, area.',0,0,0,0,0,0,439,450,0),(0,42,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,440,450,0),(0,43,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,490,400,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2017-08-29 12:46:30','2017-08-29 12:46:30',NULL,'0',6,1,NULL),(2,'','2017-08-29 12:46:30','2017-08-29 12:46:30',NULL,'0',1,1,NULL),(3,'','2017-08-29 12:46:31','2017-08-29 12:46:31',NULL,'0',11,1,NULL),(4,'','2017-08-29 12:46:32','2017-08-29 12:46:32',NULL,'0',9,1,NULL),(5,'','2017-08-29 12:46:32','2017-08-29 12:46:32',NULL,'0',8,1,NULL),(6,'','2017-08-29 12:46:32','2017-08-29 12:46:32',NULL,'0',1,1,NULL),(7,'','2017-08-29 12:46:33','2017-08-29 12:46:33',NULL,'0',36,1,NULL),(8,'','2017-08-29 12:46:34','2017-08-29 12:46:34',NULL,'0',10,1,NULL),(9,'','2017-08-29 12:46:34','2017-08-29 12:46:34',NULL,'0',1,1,NULL),(10,'','2017-08-29 12:46:35','2017-08-29 12:46:35',NULL,'0',7,1,NULL),(11,'','2017-08-29 12:46:35','2017-08-29 12:46:35',NULL,'0',7,1,NULL),(12,'','2017-08-29 12:46:36','2017-08-29 12:46:36',NULL,'0',7,1,NULL),(13,'','2017-08-29 12:46:36','2017-08-29 12:46:36',NULL,'0',36,1,NULL),(14,'','2017-08-29 12:46:38','2017-08-29 12:46:38',NULL,'0',12,1,NULL),(15,'','2017-08-29 12:46:47','2017-08-29 12:46:47',NULL,'0',12,1,NULL),(18,'','2017-09-02 15:23:43','2017-09-02 15:23:43',NULL,'0',32,1,NULL),(19,'','2017-09-02 15:24:15','2017-09-02 15:28:08','','0',32,1,NULL),(21,'','2017-09-02 23:17:32','2017-09-02 23:17:32',NULL,'0',13,1,NULL),(22,'','2017-09-02 23:19:05','2017-09-02 23:19:05',NULL,'0',14,1,NULL),(27,'','2017-09-02 23:20:13','2017-09-02 23:20:13',NULL,'0',14,1,NULL),(28,'','2017-09-02 23:20:15','2017-09-02 23:20:15',NULL,'0',14,1,NULL),(29,'','2017-09-02 23:21:21','2017-09-02 23:21:22',NULL,'1',13,1,NULL),(31,'','2017-09-02 23:45:17','2017-09-02 23:45:17',NULL,'0',13,1,NULL),(33,'','2017-09-03 13:17:04','2017-09-03 13:17:05',NULL,'1',13,1,NULL),(34,'','2017-09-03 13:17:36','2017-09-03 13:17:37',NULL,'1',13,1,NULL),(38,'','2017-09-03 13:18:58','2017-09-03 13:18:58',NULL,'0',14,1,NULL),(39,'','2017-09-03 13:19:28','2017-09-03 13:19:28',NULL,'1',13,1,NULL),(40,'','2017-09-03 13:20:10','2017-09-03 13:20:11',NULL,'1',13,1,NULL),(41,'','2017-09-03 13:31:59','2017-09-03 13:31:59',NULL,'0',13,1,NULL),(43,'','2017-09-03 13:34:36','2017-09-03 13:34:36',NULL,'0',14,1,NULL),(44,'','2017-09-03 13:35:34','2017-09-03 13:35:34',NULL,'1',13,1,NULL),(45,'','2017-09-03 13:36:17','2017-09-03 13:36:17',NULL,'1',13,1,NULL),(46,'','2017-09-03 13:37:44','2017-09-03 13:37:44',NULL,'1',13,1,NULL),(47,'','2017-09-03 13:44:29','2017-09-03 13:44:29',NULL,'1',13,1,NULL),(48,'','2017-09-03 13:44:45','2017-09-03 13:44:45','subnav.php','1',13,1,NULL),(50,'','2017-09-03 13:48:38','2017-09-03 13:48:38',NULL,'0',14,1,NULL),(52,'','2017-09-03 13:50:24','2017-09-03 13:50:24',NULL,'0',14,1,NULL),(54,'','2017-09-03 13:51:00','2017-09-03 13:51:00',NULL,'0',14,1,NULL),(55,'','2017-09-03 16:11:18','2017-09-03 16:11:18',NULL,'0',14,1,NULL),(56,'','2017-09-03 16:20:27','2017-09-03 16:20:27',NULL,'1',14,1,NULL),(57,'','2017-09-03 16:20:58','2017-09-03 16:20:58',NULL,'1',14,1,NULL),(58,'','2017-09-03 16:21:34','2017-09-03 16:21:34',NULL,'1',14,1,NULL),(59,'','2017-09-03 16:25:42','2017-09-03 16:25:56',NULL,'0',14,1,NULL),(60,'','2017-09-03 16:26:32','2017-09-03 16:26:32',NULL,'0',14,1,NULL),(61,'','2017-09-03 16:27:00','2017-09-03 16:27:00',NULL,'0',14,1,NULL),(62,'','2017-09-03 16:29:44','2017-09-03 16:29:44',NULL,'0',14,1,NULL),(63,'','2017-09-03 16:33:26','2017-09-03 16:33:26',NULL,'0',14,1,NULL),(64,'','2017-09-03 16:38:05','2017-09-03 16:38:05',NULL,'0',14,1,NULL),(65,'','2017-09-03 16:42:09','2017-09-03 16:42:09',NULL,'1',14,1,NULL),(66,'','2017-09-03 16:42:59','2017-09-03 16:42:59',NULL,'1',14,1,NULL),(67,'','2017-09-03 16:43:56','2017-09-03 16:43:57',NULL,'1',14,1,NULL),(68,'','2017-09-03 16:44:24','2017-09-03 16:44:24',NULL,'1',14,1,NULL),(69,'','2017-09-03 16:45:30','2017-09-03 16:45:30',NULL,'1',14,1,NULL),(70,'','2017-09-03 16:47:13','2017-09-03 16:47:14',NULL,'1',14,1,NULL),(79,'','2017-09-04 19:02:13','2017-09-04 19:02:13','subnav.php','1',13,1,NULL),(81,'','2017-09-04 19:29:24','2017-09-04 19:31:05',NULL,'1',14,1,NULL),(82,'','2017-09-04 20:25:08','2017-09-04 20:25:08',NULL,'0',32,1,NULL),(85,'','2017-09-04 20:46:26','2017-09-04 20:46:26',NULL,'0',32,1,NULL),(89,'','2017-09-04 20:48:07','2017-09-04 20:48:07',NULL,'0',32,1,NULL),(90,'','2017-09-04 20:51:16','2017-09-04 20:51:17',NULL,'1',32,1,NULL),(91,'','2017-09-04 21:00:03','2017-09-04 21:00:03',NULL,'1',32,1,NULL),(95,'','2017-09-04 21:03:22','2017-09-04 21:03:22',NULL,'0',32,1,NULL),(96,'','2017-09-04 21:05:51','2017-09-04 21:05:51',NULL,'1',32,1,NULL),(98,'','2017-09-08 15:27:49','2017-09-08 15:27:50',NULL,'1',32,1,NULL),(99,'','2017-09-08 15:36:00','2017-09-08 15:36:01',NULL,'1',32,1,NULL),(100,'','2017-09-08 15:39:30','2017-09-08 15:43:11',NULL,'1',14,1,NULL),(101,'','2017-09-08 18:53:12','2017-09-08 18:53:12',NULL,'0',32,1,NULL),(102,'','2017-09-08 18:53:44','2017-09-08 18:53:44',NULL,'0',14,1,NULL),(103,'','2017-09-08 18:56:35','2017-09-08 18:56:35',NULL,'1',14,1,NULL),(104,'','2017-09-08 19:14:13','2017-09-08 19:14:13',NULL,'1',14,1,NULL),(105,'','2017-09-08 19:17:42','2017-09-08 19:17:43',NULL,'1',32,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeKeys`
--

DROP TABLE IF EXISTS `CollectionAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeKeys`
--

LOCK TABLES `CollectionAttributeKeys` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeKeys` DISABLE KEYS */;
INSERT INTO `CollectionAttributeKeys` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(26),(30);
/*!40000 ALTER TABLE `CollectionAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL,
  `cvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `IDX_BB9995FCB6561A7E` (`akID`),
  KEY `IDX_BB9995FCA2A82A5D` (`avID`),
  CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (2,1,6,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,7,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,7,16),(17,1,3,17),(17,1,7,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(25,1,3,22),(26,1,3,23),(27,1,7,24),(27,1,12,25),(28,1,3,26),(29,1,3,27),(31,1,3,28),(32,1,3,29),(32,1,7,30),(34,1,7,31),(35,1,7,32),(36,1,7,33),(37,1,7,34),(38,1,7,35),(39,1,7,36),(41,1,7,37),(42,1,3,38),(43,1,3,39),(44,1,3,40),(46,1,6,41),(48,1,3,42),(50,1,7,43),(50,1,12,44),(50,1,3,45),(51,1,3,46),(52,1,3,47),(53,1,3,48),(54,1,3,49),(55,1,3,50),(55,1,7,51),(56,1,3,52),(57,1,3,53),(58,1,3,54),(60,1,3,55),(61,1,3,56),(62,1,3,57),(63,1,3,58),(64,1,3,59),(65,1,3,60),(66,1,3,61),(66,1,7,62),(67,1,3,63),(68,1,3,64),(68,1,7,65),(68,1,12,66),(70,1,7,67),(70,1,12,68),(71,1,7,69),(71,1,12,70),(72,1,7,71),(72,1,12,72),(73,1,7,73),(73,1,12,74),(74,1,7,75),(74,1,12,76),(75,1,7,77),(75,1,12,78),(77,1,3,79),(83,1,3,80),(84,1,3,81),(85,1,3,82),(86,1,3,83),(87,1,3,84),(89,1,3,85),(90,1,3,86),(91,1,3,87),(92,1,7,88),(92,1,3,89),(93,1,3,90),(94,1,3,91),(96,1,3,92),(97,1,3,93),(98,1,3,94),(99,1,3,95),(101,1,3,96),(102,1,3,97),(106,1,3,98),(107,1,7,99),(108,1,3,100),(109,1,3,101),(110,1,3,102),(112,1,3,103),(113,1,3,104),(114,1,3,105),(115,1,3,106),(116,1,3,107),(118,1,3,108),(119,1,3,109),(120,1,3,110),(121,1,3,111),(122,1,3,112),(123,1,3,113),(124,1,3,114),(125,1,3,115),(127,1,3,116),(128,1,3,117),(129,1,3,118),(130,1,3,119),(132,1,12,120),(133,1,3,121),(134,1,3,122),(135,1,3,123),(136,1,3,124),(137,1,3,125),(139,1,3,126),(140,1,4,127),(140,1,5,128),(140,1,7,129),(142,1,6,130),(143,1,6,131),(146,1,6,132),(152,1,6,133),(154,1,4,134),(154,1,5,135),(154,1,7,136),(164,1,2,139),(163,3,1,152),(163,4,1,152),(163,5,1,152),(163,6,1,152),(163,3,2,153),(163,4,2,153),(163,5,2,153),(163,6,2,153),(163,3,9,154),(163,4,9,154),(163,5,9,154),(163,6,9,154),(163,3,13,155),(163,4,13,155),(163,5,13,155),(163,6,13,155),(164,2,2,156),(168,4,2,159),(170,1,1,160),(170,1,2,161),(170,1,9,162),(170,1,13,163),(1,6,1,164),(1,7,1,164),(1,8,1,164),(1,6,2,165),(1,7,2,165),(1,8,2,165),(1,6,9,166),(1,7,9,166),(1,8,9,166),(1,6,13,167),(1,7,13,167),(1,8,13,167),(248,1,1,170),(232,1,1,181),(232,2,1,181),(232,1,2,182),(232,2,2,182),(232,1,3,183),(232,2,3,183),(236,1,1,184),(237,1,1,187),(238,1,1,188),(232,3,1,189),(232,3,2,190),(232,3,3,191),(239,1,1,196),(239,2,1,196),(239,3,1,196),(239,1,2,197),(239,2,2,197),(239,3,2,197),(239,1,3,198),(239,2,3,198),(239,3,3,198),(239,4,1,207),(239,4,2,208),(239,4,3,209),(240,1,1,217),(240,2,1,217),(240,1,2,218),(240,2,2,218),(240,1,3,219),(240,2,3,219),(243,1,1,232),(243,1,2,233),(243,1,3,234),(243,2,1,236),(243,2,2,237),(243,2,3,238),(219,2,7,239),(219,3,7,240),(219,4,7,240),(219,5,7,240),(243,3,1,242),(243,3,2,243),(243,3,3,244),(243,4,1,246),(243,4,2,247),(243,4,3,248),(244,1,11,257),(244,1,26,258),(244,1,1,259),(244,1,2,260),(244,1,3,261),(219,6,7,262),(219,7,7,263),(219,8,7,263),(219,7,12,264),(219,8,12,264),(243,5,11,650),(243,5,26,651),(243,5,1,652),(243,5,2,653),(243,5,3,654),(232,4,1,658),(232,4,2,659),(232,4,3,660),(232,5,11,662),(232,5,26,663),(232,5,1,664),(232,5,2,665),(232,5,3,666),(239,5,1,670),(239,5,2,671),(239,5,3,672),(239,6,11,674),(239,6,26,675),(239,6,1,676),(239,6,2,677),(239,6,3,678),(240,3,1,682),(240,3,2,683),(240,3,3,684),(240,4,11,686),(240,4,26,687),(240,4,1,688),(240,4,2,689),(240,4,3,690),(243,6,1,694),(243,6,2,695),(243,6,3,696),(243,7,11,698),(243,7,26,699),(243,7,1,700),(243,7,2,701),(243,7,3,702),(232,6,1,705),(232,6,2,706),(232,6,3,707),(232,7,11,709),(232,7,26,710),(232,7,1,711),(232,7,2,712),(232,7,3,713),(239,7,1,717),(239,7,2,718),(239,7,3,719),(239,8,11,721),(239,8,26,722),(239,8,1,723),(239,8,2,724),(239,8,3,725),(245,1,1,740),(245,1,2,741),(245,1,3,742),(245,2,1,750),(245,2,2,751),(245,2,3,752),(245,3,11,753),(245,3,26,754),(245,3,1,755),(245,3,2,756),(245,3,3,757),(246,1,11,804),(246,1,26,805),(246,1,1,806),(246,1,2,807),(246,1,3,808),(246,2,11,809),(246,3,11,809),(246,4,11,809),(246,5,11,809),(246,2,26,810),(246,3,26,810),(246,4,26,810),(246,5,26,810),(246,2,1,811),(246,3,1,811),(246,4,1,811),(246,5,1,811),(246,2,2,812),(246,3,2,812),(246,4,2,812),(246,5,2,812),(246,2,3,813),(246,3,3,813),(246,4,3,813),(246,5,3,813),(247,1,1,816),(240,5,30,833),(240,5,11,834),(240,5,26,835),(240,5,1,836),(240,5,2,837),(240,5,3,838),(240,6,30,839),(240,6,11,840),(240,6,26,841),(240,6,1,842),(240,6,2,843),(240,6,3,844),(240,7,30,845),(240,7,11,846),(240,7,26,847),(240,7,1,848),(240,7,2,849),(240,7,3,850),(246,6,30,857),(246,6,11,858),(246,6,26,859),(246,6,1,860),(246,6,2,861),(246,6,3,862),(246,7,30,863),(246,7,11,864),(246,7,26,865),(246,7,1,866),(246,7,2,867),(246,7,3,868),(246,8,30,869),(246,8,11,870),(246,8,26,871),(246,8,1,872),(246,8,2,873),(246,8,3,874),(251,1,30,885),(251,1,11,886),(251,1,26,887),(251,1,1,888),(251,1,2,889),(251,1,3,890),(252,1,1,906),(252,2,1,906),(252,1,2,907),(252,2,2,907),(252,1,3,908),(252,2,3,908),(253,1,1,936),(253,2,1,936),(253,3,1,936),(253,1,2,937),(253,2,2,937),(253,3,2,937),(253,1,3,938),(253,2,3,938),(253,3,3,938);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_desktop_priority` decimal(14,4) DEFAULT '0.0000',
  `ak_is_desktop` tinyint(1) DEFAULT '0',
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` longtext COLLATE utf8_unicode_ci,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_article_category_parents` longtext COLLATE utf8_unicode_ci,
  `ak_students_articles` longtext COLLATE utf8_unicode_ci,
  `ak_otnosheniya_articles` longtext COLLATE utf8_unicode_ci,
  `ak_roditely_advices` longtext COLLATE utf8_unicode_ci,
  `ak_students_advices` longtext COLLATE utf8_unicode_ci,
  `ak_otnosheniya_advices` longtext COLLATE utf8_unicode_ci,
  `ak_top10` tinyint(1) DEFAULT '0',
  `ak_parents_articles` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,'','',NULL,0.0000,0,NULL,0,0,'',NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(2,NULL,NULL,NULL,0.0000,0,'fa fa-th-large',0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(10,NULL,NULL,'files, category, categories',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(11,NULL,NULL,'new file set',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(14,NULL,NULL,'user, group, people, permissions, expire, badges',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(15,NULL,NULL,'user attributes, user data, gather data, registration data',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(16,NULL,NULL,'new user, create',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(17,NULL,NULL,'new user group, new group, group, create',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(19,NULL,NULL,'group set',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(20,NULL,NULL,'community, points, karma',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(22,NULL,NULL,'action, community actions',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(25,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(26,NULL,NULL,'forms, questions, response, data',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(27,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(28,NULL,NULL,'questions, quiz, response',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(29,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(31,NULL,NULL,'new theme, theme, active theme, change theme, template, css',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(32,NULL,NULL,'page types',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(34,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(35,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(36,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(37,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(38,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(39,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(41,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(42,NULL,NULL,'page attributes, custom',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(43,NULL,NULL,'single, page, custom, application',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(44,NULL,NULL,'atom, rss, feed, syndication',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(46,NULL,NULL,NULL,0.0000,0,'icon-bullhorn',0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(48,NULL,NULL,'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(50,NULL,NULL,'edit stacks, view stacks, all stacks',0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(51,NULL,NULL,'block, refresh, custom',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(53,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(54,NULL,NULL,'update, upgrade',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(55,NULL,NULL,'concrete5.org, my account, marketplace',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(56,NULL,NULL,'buy theme, new theme, marketplace, template',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(57,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(58,NULL,NULL,'dashboard, configuration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(60,NULL,NULL,'website name, title',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(61,NULL,NULL,'accessibility, easy mode',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(62,NULL,NULL,'sharing, facebook, twitter',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(63,NULL,NULL,'logo, favicon, iphone, icon, bookmark',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(64,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(65,NULL,NULL,'translate, translation, internationalization, multilingual',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(66,NULL,NULL,'languages, update, gettext, translation, translate',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(67,NULL,NULL,'timezone, profile, locale',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(68,NULL,NULL,'site attributes',0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(70,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(71,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(72,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(73,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(74,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(75,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(77,NULL,NULL,'multilingual, localization, internationalization, i18n',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(83,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(84,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(85,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(86,NULL,NULL,'pretty, slug',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(87,NULL,NULL,'configure search, site search, search option',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(89,NULL,NULL,'security, files, media, extension, manager, upload',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(90,NULL,NULL,'file options, file manager, upload, modify',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(91,NULL,NULL,'images, picture, responsive, retina',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(92,NULL,NULL,'thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(93,NULL,NULL,'uploading, upload, images, image, resizing, manager',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(94,NULL,NULL,'security, alternate storage, hide files',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(96,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(97,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(98,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(99,NULL,NULL,'queries, database, mysql',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(101,NULL,NULL,'editors, hide site, offline, private, public, access',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(102,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(106,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(107,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(108,NULL,NULL,'security, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(109,NULL,NULL,'antispam, block spam, security',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(110,NULL,NULL,'lock site, under construction, hide, hidden',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(112,NULL,NULL,'signup, new user, community, public registration, public, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(113,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(114,NULL,NULL,'member profile, member page, community, forums, social, avatar',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(115,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(116,NULL,NULL,'global, password, reset, change password, force, sign out',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(118,NULL,NULL,'smtp, mail settings',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(119,NULL,NULL,'email server, mail settings, mail configuration, external, internal',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(120,NULL,NULL,'test smtp, test mail',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(121,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(122,NULL,NULL,'conversations',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(123,NULL,NULL,'conversations',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(124,NULL,NULL,'conversations ratings, ratings, community, community points',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(125,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(127,NULL,NULL,'attribute configuration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(128,NULL,NULL,'attributes, types',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(129,NULL,NULL,'attributes, sets',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(130,NULL,NULL,'topics, tags, taxonomy',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(132,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(133,NULL,NULL,'overrides, system info, debug, support, help',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(134,NULL,NULL,'errors, exceptions, develop, support, help',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(135,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(136,NULL,NULL,'network, proxy server',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(137,NULL,NULL,'database, entities, doctrine, orm',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(139,NULL,NULL,'upgrade, new version, update',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(140,NULL,NULL,NULL,2.0000,1,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(142,NULL,NULL,NULL,0.0000,0,'fa fa-th',0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(143,NULL,NULL,NULL,0.0000,0,'fa fa-trash-o',0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(146,NULL,NULL,NULL,0.0000,0,'fa fa-briefcase',0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(152,NULL,NULL,NULL,0.0000,0,'fa fa-edit',0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(154,NULL,NULL,NULL,1.0000,1,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(163,'мета заголовок','мета описание 2',NULL,0.0000,0,NULL,0,0,'',NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(164,NULL,'ывафываыфва',NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(168,NULL,'Мета описание',NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(170,'','',NULL,0.0000,0,NULL,0,0,'',NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(219,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(232,'Тестовая статья про что нибудь','Мета описание тестовой статьи про что нибудь','что-нибудь, слово, тест',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'||/Детям до 3х лет||',NULL,NULL,NULL,NULL,NULL,0,NULL),(236,'Введите заголовок статьи',NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(237,'Введите заголовок статьи',NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(238,'Введите заголовок статьи',NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(239,'Введите заголовок статьи','Введите заголовок статьи','Введите заголовок статьи',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'||/Детям до 3х лет||',NULL,NULL,NULL,NULL,NULL,0,NULL),(240,'Введите заголовок статьи','som descr','key1,key2,key3',0.0000,0,NULL,0,0,NULL,NULL,1,0,0,'\nПодросткам\n',NULL,NULL,NULL,NULL,NULL,1,'\nДетям до трёх лет\nШкольникам\n'),(243,'Введите заголовок статьи','sdf','sadf',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'\nПодросткам\n',NULL,NULL,NULL,NULL,NULL,0,NULL),(244,'Введите заголовок статьи','','',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'||',NULL,NULL,NULL,NULL,NULL,0,NULL),(245,'Новая страничка','Мета дескрипшн','Кейворды',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(246,'Новая родителям','Здесь пишем дескрипшн','ключевое1, ключевое2',0.0000,0,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1,'\nШкольникам\n'),(247,'Введите заголовок статьи',NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(251,'Тестовая','','',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,''),(252,'Заголовок статьи','descr','keywords',0.0000,0,NULL,0,0,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Название статьи','Дескрипшн','фывавыбб, фвафыва',0.0000,0,NULL,0,0,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionAreaStyles` VALUES (144,2,'Disclaimer',2);
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (140,1,13,'Main',1),(168,2,19,'Main',4),(168,3,19,'Main',4),(168,4,19,'Main',4);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbRelationID` int(10) unsigned DEFAULT '0',
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`),
  KEY `cbRelationID` (`cbRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,4,21,'nav',19,0,1,0,0,0,0,0),(1,5,29,'nav',19,0,1,0,0,0,0,0),(1,6,29,'nav',19,0,0,0,0,0,0,0),(140,1,1,'Main',1,0,1,0,0,0,0,0),(140,1,2,'Main',2,1,1,0,0,0,0,0),(140,1,3,'Main : 1',3,0,1,0,0,0,0,0),(140,1,4,'Main : 2',4,0,1,0,0,0,0,0),(140,1,5,'Main : 3',5,0,1,0,0,0,0,0),(140,1,6,'Main',6,2,1,0,0,0,0,0),(140,1,7,'Main : 4',7,0,1,0,0,0,0,0),(140,1,8,'Main : 5',8,0,1,0,0,0,0,0),(140,1,9,'Main',9,3,1,0,0,0,0,0),(140,1,10,'Main : 6',10,0,1,0,0,0,0,0),(140,1,11,'Main : 7',11,0,1,0,0,0,0,0),(140,1,12,'Main : 8',12,0,1,0,0,0,0,0),(140,1,13,'Main',13,4,1,0,0,0,0,0),(141,1,14,'Main',14,0,1,0,0,0,0,0),(154,1,15,'Main',15,0,1,0,0,0,0,0),(168,2,18,'Main',17,1,1,0,0,0,0,0),(168,2,19,'Main',18,0,1,0,0,0,0,0),(168,3,19,'Main',18,0,0,0,0,0,0,0),(168,4,19,'Main',18,0,0,0,0,0,0,0),(171,1,22,'Main',20,0,1,0,0,0,0,0),(172,1,27,'Main',21,0,1,0,0,0,0,0),(172,2,28,'Main',22,0,1,0,0,0,0,0),(174,2,31,'Main',23,0,1,0,0,0,0,0),(174,3,33,'Main',23,0,1,0,0,0,0,0),(174,4,34,'Main',23,0,1,0,0,0,0,0),(174,5,39,'Main',23,0,1,0,0,0,0,0),(174,6,40,'Main',23,0,1,0,0,0,0,0),(176,1,38,'Main',24,0,1,0,0,0,0,0),(176,2,38,'Main',24,0,0,0,0,0,0,0),(176,3,38,'Main',24,0,0,0,0,0,0,0),(176,4,38,'Main',24,0,0,0,0,0,0,0),(176,5,38,'Main',24,0,0,0,0,0,0,0),(178,2,41,'Main',25,0,1,0,0,0,0,0),(178,3,44,'Main',25,0,1,0,0,0,0,0),(178,4,45,'Main',25,0,1,0,0,0,0,0),(178,5,46,'Main',25,0,1,0,0,0,0,0),(178,6,47,'Main',25,0,1,0,0,0,0,0),(178,7,48,'Main',25,0,1,0,0,0,0,0),(178,8,79,'Main',25,0,1,0,0,0,0,0),(179,1,43,'Main',26,0,1,0,0,0,0,0),(180,1,50,'Main',27,0,1,0,0,0,0,0),(181,1,52,'Main',28,0,1,0,0,0,0,0),(182,1,54,'Main',29,0,1,0,0,0,0,0),(190,1,62,'Main',34,0,1,0,0,0,0,0),(196,1,55,'Main',30,0,1,0,0,0,0,0),(197,1,55,'Main',30,0,0,0,0,0,0,0),(197,2,56,'Main',30,0,1,0,0,0,0,0),(198,1,55,'Main',30,0,0,0,0,0,0,0),(198,2,57,'Main',30,0,1,0,0,0,0,0),(199,1,55,'Main',30,0,0,0,0,0,0,0),(199,2,58,'Main',30,0,1,0,0,0,0,0),(200,2,59,'Main',31,0,1,0,0,0,0,0),(201,2,60,'Main',32,0,1,0,0,0,0,0),(202,2,61,'Main',33,0,1,0,0,0,0,0),(203,1,62,'Main',34,0,0,0,0,0,0,0),(203,2,65,'Main',34,0,1,0,0,0,0,0),(203,3,65,'Main',34,0,0,0,0,0,0,0),(203,4,65,'Main',34,0,0,0,0,0,0,0),(203,5,65,'Main',34,0,0,0,0,0,0,0),(204,1,62,'Main',34,0,0,0,0,0,0,0),(204,2,67,'Main',34,0,1,0,0,0,0,0),(205,1,62,'Main',34,0,0,0,0,0,0,0),(205,2,69,'Main',34,0,1,0,0,0,0,0),(206,1,63,'Main',35,0,1,0,0,0,0,0),(207,1,63,'Main',35,0,0,0,0,0,0,0),(207,2,66,'Main',35,0,1,0,0,0,0,0),(208,1,63,'Main',35,0,0,0,0,0,0,0),(208,2,68,'Main',35,0,1,0,0,0,0,0),(209,1,63,'Main',35,0,0,0,0,0,0,0),(209,2,70,'Main',35,0,1,0,0,0,0,0),(210,1,64,'Main',36,0,1,0,0,0,0,0),(211,1,64,'Main',36,0,0,0,0,0,0,0),(232,1,81,'MainContent',37,0,1,0,0,0,0,0),(232,2,81,'MainContent',37,1,0,0,0,0,0,0),(232,2,82,'MainContent',38,0,1,0,0,0,0,0),(232,3,81,'MainContent',37,0,0,0,0,0,0,0),(232,4,81,'MainContent',37,0,0,0,0,0,0,0),(232,5,81,'MainContent',37,0,0,0,0,0,0,0),(232,6,81,'MainContent',37,0,0,0,0,0,0,0),(232,7,81,'MainContent',37,0,0,0,0,0,0,0),(238,1,85,'MainImage',40,0,1,0,0,0,0,0),(239,1,89,'MainImage',41,0,1,0,0,0,0,0),(239,2,90,'MainImage',41,0,1,0,0,0,0,0),(239,3,91,'MainImage',41,0,1,0,0,0,0,0),(239,4,91,'MainImage',41,0,0,0,0,0,0,0),(239,5,91,'MainImage',41,0,0,0,0,0,0,0),(239,6,91,'MainImage',41,0,0,0,0,0,0,0),(239,7,91,'MainImage',41,0,0,0,0,0,0,0),(239,8,91,'MainImage',41,0,0,0,0,0,0,0),(240,1,95,'MainImage',42,0,1,0,0,0,0,0),(240,2,96,'MainImage',42,0,1,0,0,0,0,0),(240,3,96,'MainImage',42,0,0,0,0,0,0,0),(240,4,96,'MainImage',42,0,0,0,0,0,0,0),(240,5,96,'MainImage',42,0,0,0,0,0,0,0),(240,6,96,'MainImage',42,0,0,0,0,0,0,0),(240,7,96,'MainImage',42,0,0,0,0,0,0,0),(246,3,98,'MainImage',43,0,1,0,0,0,0,0),(246,4,99,'MainImage',43,0,1,0,0,0,0,0),(246,5,99,'MainImage',43,0,0,0,0,0,0,0),(246,5,100,'MainContent',37,0,1,0,0,0,0,0),(246,6,99,'MainImage',43,0,0,0,0,0,0,0),(246,6,100,'MainContent',37,0,0,0,0,0,0,0),(246,7,99,'MainImage',43,0,0,0,0,0,0,0),(246,7,100,'MainContent',37,0,0,0,0,0,0,0),(246,8,99,'MainImage',43,0,0,0,0,0,0,0),(246,8,100,'MainContent',37,0,0,0,0,0,0,0),(249,1,101,'MainImage',44,0,1,0,0,0,0,0),(249,1,102,'MainContent',45,0,1,0,0,0,0,0),(251,1,101,'MainImage',44,0,0,0,0,0,0,0),(251,1,102,'MainContent',45,0,0,0,0,0,0,0),(252,1,101,'MainImage',44,0,0,0,0,0,0,0),(252,1,102,'MainContent',45,0,0,0,0,0,0,0),(252,2,101,'MainImage',44,0,0,0,0,0,0,0),(252,2,103,'MainContent',45,0,1,0,0,0,0,0),(253,1,101,'MainImage',44,0,0,0,0,0,0,0),(253,1,102,'MainContent',45,0,0,0,0,0,0,0),(253,2,101,'MainImage',44,0,0,0,0,0,0,0),(253,2,104,'MainContent',45,0,1,0,0,0,0,0),(253,3,104,'MainContent',45,0,0,0,0,0,0,0),(253,3,105,'MainImage',44,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksCacheSettings`
--

LOCK TABLES `CollectionVersionBlocksCacheSettings` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

LOCK TABLES `CollectionVersionFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` DISABLE KEYS */;
INSERT INTO `CollectionVersionFeatureAssignments` VALUES (168,2,1),(168,2,2),(168,3,2),(168,4,2),(232,2,3),(238,1,5),(239,1,9),(239,2,10),(239,3,11),(239,4,11),(239,5,11),(239,6,11),(239,7,11),(239,8,11),(240,1,15),(240,2,16),(240,3,16),(240,4,16),(240,5,16),(240,6,16),(240,7,16),(246,3,18),(246,4,19),(246,5,19),(246,6,19),(246,7,19),(246,8,19),(249,1,20),(253,3,21);
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionThemeCustomStyles`
--

LOCK TABLES `CollectionVersionThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','',NULL,'2017-08-29 12:42:34','2017-08-29 12:42:34','Initial Version',0,0,1,NULL,2,4,NULL,NULL),(1,2,'Home','',NULL,'2017-08-29 12:42:34','2017-09-02 21:19:18','Новая версия 2',0,0,1,1,2,6,NULL,NULL),(1,3,'Home','',NULL,'2017-08-29 12:42:34','2017-09-02 21:22:43','Новая версия 3',0,0,1,1,2,9,NULL,NULL),(1,4,'Home','',NULL,'2017-08-29 12:42:34','2017-09-02 23:17:32','Новая версия 4',0,0,1,1,2,9,NULL,NULL),(1,5,'Home','',NULL,'2017-08-29 12:42:34','2017-09-02 23:21:21','Version 5',0,0,1,1,2,9,NULL,NULL),(1,6,'Главная','',NULL,'2017-08-29 12:42:34','2017-09-02 23:26:11','Новая версия 6',0,0,1,1,2,9,NULL,NULL),(1,7,'Главная','',NULL,'2017-08-29 12:42:34','2017-09-02 23:45:18','Version 7',0,0,1,1,2,9,NULL,NULL),(1,8,'Главная','',NULL,'2017-08-29 12:42:34','2017-09-03 15:58:45','Новая версия 8',1,0,1,1,2,9,NULL,NULL),(2,1,'Dashboard','dashboard','','2017-08-29 12:44:18','2017-08-29 12:44:18','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2017-08-29 12:44:19','2017-08-29 12:44:19','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(4,1,'Full Sitemap','full','','2017-08-29 12:44:20','2017-08-29 12:44:20','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(5,1,'Flat View','explore','','2017-08-29 12:44:20','2017-08-29 12:44:20','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(6,1,'Page Search','search','','2017-08-29 12:44:20','2017-08-29 12:44:20','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(7,1,'Files','files','All documents and images.','2017-08-29 12:44:21','2017-08-29 12:44:21','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(8,1,'File Manager','search','','2017-08-29 12:44:21','2017-08-29 12:44:21','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(9,1,'Attributes','attributes','','2017-08-29 12:44:22','2017-08-29 12:44:22','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(10,1,'File Sets','sets','','2017-08-29 12:44:23','2017-08-29 12:44:23','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(11,1,'Add File Set','add_set','','2017-08-29 12:44:24','2017-08-29 12:44:24','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2017-08-29 12:44:24','2017-08-29 12:44:24','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(13,1,'Search Users','search','','2017-08-29 12:44:24','2017-08-29 12:44:24','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(14,1,'User Groups','groups','','2017-08-29 12:44:25','2017-08-29 12:44:25','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(15,1,'Attributes','attributes','','2017-08-29 12:44:25','2017-08-29 12:44:25','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(16,1,'Add User','add','','2017-08-29 12:44:26','2017-08-29 12:44:26','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(17,1,'Add Group','add_group','','2017-08-29 12:44:27','2017-08-29 12:44:27','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2017-08-29 12:44:27','2017-08-29 12:44:27','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(19,1,'Group Sets','group_sets','','2017-08-29 12:44:28','2017-08-29 12:44:28','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(20,1,'Community Points','points',NULL,'2017-08-29 12:44:29','2017-08-29 12:44:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(21,1,'Assign Points','assign',NULL,'2017-08-29 12:44:29','2017-08-29 12:44:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(22,1,'Actions','actions',NULL,'2017-08-29 12:44:30','2017-08-29 12:44:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(23,1,'Express','express','Express Data Objects','2017-08-29 12:44:30','2017-08-29 12:44:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(24,1,'View Entries','entries','','2017-08-29 12:44:31','2017-08-29 12:44:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(25,1,'Reports','reports','Get data from forms and logs.','2017-08-29 12:44:31','2017-08-29 12:44:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(26,1,'Form Results','forms','Get submission data.','2017-08-29 12:44:32','2017-08-29 12:44:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(27,1,'Form Results','legacy','Get submission data.','2017-08-29 12:44:32','2017-08-29 12:44:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(28,1,'Surveys','surveys','','2017-08-29 12:44:32','2017-08-29 12:44:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(29,1,'Logs','logs','','2017-08-29 12:44:33','2017-08-29 12:44:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(30,1,'Pages & Themes','pages','Reskin your site.','2017-08-29 12:44:34','2017-08-29 12:44:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(31,1,'Themes','themes','Reskin your site.','2017-08-29 12:44:34','2017-08-29 12:44:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(32,1,'Inspect','inspect','','2017-08-29 12:44:35','2017-08-29 12:44:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(33,1,'Page Types','types','','2017-08-29 12:44:35','2017-08-29 12:44:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(34,1,'Organize Page Type Order','organize','','2017-08-29 12:44:36','2017-08-29 12:44:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(35,1,'Add Page Type','add','','2017-08-29 12:44:36','2017-08-29 12:44:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(36,1,'Compose Form','form','','2017-08-29 12:44:37','2017-08-29 12:44:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(37,1,'Defaults and Output','output','','2017-08-29 12:44:37','2017-08-29 12:44:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(38,1,'Page Type Attributes','attributes','','2017-08-29 12:44:38','2017-08-29 12:44:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(39,1,'Page Type Permissions','permissions','','2017-08-29 12:44:39','2017-08-29 12:44:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(40,1,'Page Templates','templates','Form factors for pages in your site.','2017-08-29 12:44:39','2017-08-29 12:44:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(41,1,'Add Page Template','add','Add page templates to your site.','2017-08-29 12:44:40','2017-08-29 12:44:40','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(42,1,'Attributes','attributes','','2017-08-29 12:44:40','2017-08-29 12:44:40','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(43,1,'Single Pages','single','','2017-08-29 12:44:41','2017-08-29 12:44:41','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(44,1,'RSS Feeds','feeds','','2017-08-29 12:44:42','2017-08-29 12:44:42','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(45,1,'Conversations','conversations','','2017-08-29 12:44:42','2017-08-29 12:44:42','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(46,1,'Messages','messages','','2017-08-29 12:44:43','2017-08-29 12:44:43','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2017-08-29 12:44:44','2017-08-29 12:44:44','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(48,1,'Stacks & Global Areas','stacks','Share content across your site.','2017-08-29 12:44:44','2017-08-29 12:44:44','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2017-08-29 12:44:45','2017-08-29 12:44:45','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(50,1,'Stack List','list','','2017-08-29 12:44:45','2017-08-29 12:44:45','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2017-08-29 12:44:46','2017-08-29 12:44:46','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(52,1,'Extend concrete5','extend','','2017-08-29 12:44:47','2017-08-29 12:44:47','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(53,1,'Add Functionality','install','Install add-ons & themes.','2017-08-29 12:44:49','2017-08-29 12:44:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(54,1,'Update Add-Ons','update','Update your installed packages.','2017-08-29 12:44:49','2017-08-29 12:44:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(55,1,'Connect to the Community','connect','Connect to the concrete5 community.','2017-08-29 12:44:50','2017-08-29 12:44:50','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(56,1,'Get More Themes','themes','Download themes from concrete5.org.','2017-08-29 12:44:50','2017-08-29 12:44:50','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(57,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2017-08-29 12:44:51','2017-08-29 12:44:51','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(58,1,'System & Settings','system','Secure and setup your site.','2017-08-29 12:44:52','2017-08-29 12:44:52','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(59,1,'Basics','basics','Basic information about your website.','2017-08-29 12:44:52','2017-08-29 12:44:52','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(60,1,'Name & Attributes','name','','2017-08-29 12:44:53','2017-08-29 12:44:53','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(61,1,'Accessibility','accessibility','','2017-08-29 12:44:53','2017-08-29 12:44:53','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(62,1,'Social Links','social','','2017-08-29 12:44:54','2017-08-29 12:44:54','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(63,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2017-08-29 12:44:54','2017-08-29 12:44:54','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(64,1,'Rich Text Editor','editor','','2017-08-29 12:44:55','2017-08-29 12:44:55','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(65,1,'Languages','multilingual','','2017-08-29 12:44:56','2017-08-29 12:44:56','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(66,1,'Update Languages','update','','2017-08-29 12:44:56','2017-08-29 12:44:56','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(67,1,'Time Zone','timezone','','2017-08-29 12:44:57','2017-08-29 12:44:57','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(68,1,'Custom Attributes','attributes','','2017-08-29 12:44:58','2017-08-29 12:44:58','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(69,1,'Express','express','Express','2017-08-29 12:44:58','2017-08-29 12:44:58','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(70,1,'Data Objects','entities','','2017-08-29 12:44:58','2017-08-29 12:44:58','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(71,1,'Attributes','attributes','','2017-08-29 12:44:59','2017-08-29 12:44:59','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(72,1,'Associations','associations','','2017-08-29 12:44:59','2017-08-29 12:44:59','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(73,1,'Forms','forms','','2017-08-29 12:45:00','2017-08-29 12:45:00','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(74,1,'Customize Search','customize_search','','2017-08-29 12:45:01','2017-08-29 12:45:01','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(75,1,'Customize Search','order_entries','','2017-08-29 12:45:01','2017-08-29 12:45:01','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(76,1,'Custom Entry Locations','entries','','2017-08-29 12:45:02','2017-08-29 12:45:02','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(77,1,'Multilingual','multilingual','Run your site in multiple languages.','2017-08-29 12:45:02','2017-08-29 12:45:02','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(78,1,'Multilingual Setup','setup','','2017-08-29 12:45:03','2017-08-29 12:45:03','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(79,1,'Copy Languages','copy','','2017-08-29 12:45:03','2017-08-29 12:45:03','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(80,1,'Page Report','page_report','','2017-08-29 12:45:04','2017-08-29 12:45:04','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(81,1,'Translate Site Interface','translate_interface','','2017-08-29 12:45:04','2017-08-29 12:45:04','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(82,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2017-08-29 12:45:05','2017-08-29 12:45:05','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(83,1,'URLs and Redirection','urls','','2017-08-29 12:45:06','2017-08-29 12:45:06','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(84,1,'Bulk SEO Updater','bulk','','2017-08-29 12:45:06','2017-08-29 12:45:06','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(85,1,'Tracking Codes','codes','','2017-08-29 12:45:07','2017-08-29 12:45:07','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(86,1,'Excluded URL Word List','excluded','','2017-08-29 12:45:07','2017-08-29 12:45:07','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(87,1,'Search Index','searchindex','','2017-08-29 12:45:08','2017-08-29 12:45:08','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(88,1,'Files','files','','2017-08-29 12:45:09','2017-08-29 12:45:09','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(89,1,'Allowed File Types','filetypes','','2017-08-29 12:45:09','2017-08-29 12:45:09','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(90,1,'File Manager Permissions','permissions','','2017-08-29 12:45:10','2017-08-29 12:45:10','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(91,1,'Thumbnails','thumbnails','','2017-08-29 12:45:10','2017-08-29 12:45:10','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(92,1,'Thumbnail Options','options','','2017-08-29 12:45:11','2017-08-29 12:45:11','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(93,1,'Image Uploading','image_uploading','','2017-08-29 12:45:11','2017-08-29 12:45:11','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(94,1,'File Storage Locations','storage','','2017-08-29 12:45:12','2017-08-29 12:45:12','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(95,1,'Optimization','optimization','Keep your site running well.','2017-08-29 12:45:13','2017-08-29 12:45:13','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(96,1,'Cache & Speed Settings','cache','','2017-08-29 12:45:13','2017-08-29 12:45:13','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(97,1,'Clear Cache','clearcache','','2017-08-29 12:45:14','2017-08-29 12:45:14','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(98,1,'Automated Jobs','jobs','','2017-08-29 12:45:14','2017-08-29 12:45:14','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(99,1,'Database Query Log','query_log','','2017-08-29 12:45:15','2017-08-29 12:45:15','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(100,1,'Permissions & Access','permissions','Control who sees and edits your site.','2017-08-29 12:45:15','2017-08-29 12:45:15','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(101,1,'Site Access','site','','2017-08-29 12:45:16','2017-08-29 12:45:16','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(102,1,'Task Permissions','tasks','','2017-08-29 12:45:17','2017-08-29 12:45:17','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(103,1,'User Permissions','users','','2017-08-29 12:45:17','2017-08-29 12:45:17','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(104,1,'Advanced Permissions','advanced','','2017-08-29 12:45:19','2017-08-29 12:45:19','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(105,1,'Workflows','workflows','','2017-08-29 12:45:19','2017-08-29 12:45:19','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(106,1,'IP Blacklist','blacklist','','2017-08-29 12:45:20','2017-08-29 12:45:20','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(107,1,'IP Range','range','','2017-08-29 12:45:20','2017-08-29 12:45:20','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(108,1,'Captcha Setup','captcha','','2017-08-29 12:45:21','2017-08-29 12:45:21','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(109,1,'Spam Control','antispam','','2017-08-29 12:45:23','2017-08-29 12:45:23','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(110,1,'Maintenance Mode','maintenance','','2017-08-29 12:45:24','2017-08-29 12:45:24','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(111,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2017-08-29 12:45:25','2017-08-29 12:45:25','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(112,1,'Public Registration','open','','2017-08-29 12:45:25','2017-08-29 12:45:25','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(113,1,'Login Destination','postlogin','','2017-08-29 12:45:25','2017-08-29 12:45:25','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(114,1,'Public Profiles','profiles','','2017-08-29 12:45:26','2017-08-29 12:45:26','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(115,1,'Authentication Types','authentication','','2017-08-29 12:45:27','2017-08-29 12:45:27','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(116,1,'Global Password Reset','global_password_reset','Signs out all users, resets all passwords and forces users to choose a new one','2017-08-29 12:45:28','2017-08-29 12:45:28','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(117,1,'Notification Settings','notification','','2017-08-29 12:45:29','2017-08-29 12:45:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(118,1,'Email','mail','Control how your site send and processes mail.','2017-08-29 12:45:29','2017-08-29 12:45:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(119,1,'SMTP Method','method','','2017-08-29 12:45:30','2017-08-29 12:45:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(120,1,'Test Mail Settings','test','','2017-08-29 12:45:30','2017-08-29 12:45:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(121,1,'Email Importers','importers','','2017-08-29 12:45:31','2017-08-29 12:45:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(122,1,'Conversations','conversations','Manage your conversations settings','2017-08-29 12:45:32','2017-08-29 12:45:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(123,1,'Settings','settings','','2017-08-29 12:45:32','2017-08-29 12:45:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(124,1,'Community Points','points','','2017-08-29 12:45:33','2017-08-29 12:45:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(125,1,'Banned Words','bannedwords','','2017-08-29 12:45:33','2017-08-29 12:45:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(126,1,'Conversation Permissions','permissions','','2017-08-29 12:45:34','2017-08-29 12:45:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(127,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2017-08-29 12:45:35','2017-08-29 12:45:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(128,1,'Types','types','Choose which attribute types are available for different items.','2017-08-29 12:45:35','2017-08-29 12:45:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(129,1,'Sets','sets','Group attributes into sets for easier organization','2017-08-29 12:45:36','2017-08-29 12:45:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(130,1,'Topics','topics','','2017-08-29 12:45:37','2017-08-29 12:45:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(131,1,'Add Topic Tree','add','','2017-08-29 12:45:37','2017-08-29 12:45:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(132,1,'Environment','environment','Advanced settings for web developers.','2017-08-29 12:45:38','2017-08-29 12:45:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(133,1,'Environment Information','info','','2017-08-29 12:45:39','2017-08-29 12:45:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(134,1,'Debug Settings','debug','','2017-08-29 12:45:39','2017-08-29 12:45:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(135,1,'Logging Settings','logging','','2017-08-29 12:45:40','2017-08-29 12:45:40','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(136,1,'Proxy Server','proxy','','2017-08-29 12:45:41','2017-08-29 12:45:41','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(137,1,'Database Entities','entities','','2017-08-29 12:45:41','2017-08-29 12:45:41','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(138,1,'Update concrete5','update','','2017-08-29 12:45:42','2017-08-29 12:45:42','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(139,1,'Apply Update','update','','2017-08-29 12:45:43','2017-08-29 12:45:43','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(140,1,'Welcome','welcome','','2017-08-29 12:45:43','2017-08-29 12:45:43','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(141,1,'Waiting for Me','me',NULL,'2017-08-29 12:45:48','2017-08-29 12:45:48','Initial Version',1,0,1,NULL,0,2,NULL,NULL),(142,1,'Stacks','!stacks','','2017-08-29 12:46:38','2017-08-29 12:46:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(143,1,'Trash','!trash','','2017-08-29 12:46:39','2017-08-29 12:46:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(144,1,'Login','login','','2017-08-29 12:46:40','2017-08-29 12:46:40','Initial Version',0,0,1,NULL,0,0,NULL,NULL),(144,2,'Login','login','','2017-08-29 12:46:40','2017-09-02 15:03:22','Новая версия 2',1,0,1,1,0,0,NULL,NULL),(145,1,'Register','register','','2017-08-29 12:46:40','2017-08-29 12:46:40','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(146,1,'My Account','account','','2017-08-29 12:46:40','2017-08-29 12:46:40','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(147,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2017-08-29 12:46:41','2017-08-29 12:46:41','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(148,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2017-08-29 12:46:42','2017-08-29 12:46:42','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(149,1,'Private Messages','messages','Inbox for site-specific messages.','2017-08-29 12:46:42','2017-08-29 12:46:42','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(150,1,'Page Forbidden','page_forbidden','','2017-08-29 12:46:43','2017-08-29 12:46:43','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(151,1,'Download File','download_file','','2017-08-29 12:46:43','2017-08-29 12:46:43','Initial Version',1,0,1,NULL,0,0,NULL,NULL),(152,1,'Drafts','!drafts','','2017-08-29 12:46:45','2017-08-29 12:46:45','Initial Version',1,0,1,NULL,2,0,NULL,NULL),(153,1,'Page Not Found','page_not_found','','2017-08-29 12:46:45','2017-08-29 12:46:45','Initial Version',1,0,1,NULL,2,0,NULL,NULL),(154,1,'Welcome Back','desktop','','2017-08-29 12:46:46','2017-08-29 12:46:46','Initial Version',1,0,1,NULL,2,0,NULL,NULL),(156,1,'Header Site Title','header-site-title',NULL,'2017-08-29 13:55:57','2017-08-29 13:55:57','Исходная версия',1,0,1,NULL,1,0,NULL,NULL),(157,1,'Header Navigation','header-navigation',NULL,'2017-08-29 13:55:58','2017-08-29 13:55:58','Исходная версия',1,0,1,NULL,1,0,NULL,NULL),(158,1,'Footer Legal','footer-legal',NULL,'2017-08-29 13:55:59','2017-08-29 13:55:59','Исходная версия',1,0,1,NULL,1,0,NULL,NULL),(159,1,'Footer Navigation','footer-navigation',NULL,'2017-08-29 13:55:59','2017-08-29 13:55:59','Исходная версия',1,0,1,NULL,1,0,NULL,NULL),(160,1,'Footer Contact','footer-contact',NULL,'2017-08-29 13:56:00','2017-08-29 13:56:00','Исходная версия',1,0,1,NULL,1,0,NULL,NULL),(163,3,'Родителям','roditelyam','','2017-09-02 12:30:00','2017-09-02 12:42:37','Новая версия 3',0,0,1,1,0,4,NULL,NULL),(163,4,'Родителям','roditelyam','','2017-09-02 12:30:00','2017-09-03 13:17:04','Новая версия 4',0,0,1,1,0,4,NULL,NULL),(163,5,'Родителям','roditelyam','','2017-09-02 12:30:00','2017-09-03 15:59:19','Новая версия 5',0,0,1,1,2,8,NULL,NULL),(163,6,'Родителям','roditelyam','','2017-09-02 12:30:00','2017-09-03 15:59:29','Новая версия 6',1,0,1,1,2,6,NULL,NULL),(164,1,'Студентам','studentam','','2017-09-02 12:35:00','2017-09-02 12:35:10','Исходная версия',0,0,1,1,0,4,NULL,NULL),(164,2,'Студентам','studentam','','2017-09-02 12:35:00','2017-09-02 12:57:25','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(167,1,'','',NULL,'2017-09-02 15:10:34','2017-09-02 15:10:34','Исходная версия',0,1,1,NULL,0,4,NULL,NULL),(168,1,'Somesingle','somesingle',NULL,'2017-09-02 15:12:49','2017-09-02 15:12:49','Исходная версия',0,0,1,NULL,0,0,NULL,NULL),(168,2,'Somesingle','somesingle',NULL,'2017-09-02 15:12:49','2017-09-02 15:23:43','Version 2',0,0,1,1,0,0,NULL,NULL),(168,3,'Somesingle','somesingle',NULL,'2017-09-02 15:12:49','2017-09-02 15:28:35','Version 3',0,0,1,1,0,0,NULL,NULL),(168,4,'Somesingle','somesingle','','2017-09-02 15:12:00','2017-09-02 15:29:29','Новая версия 4',1,0,1,1,0,0,NULL,NULL),(169,1,'Somesingle','somesingle',NULL,'2017-09-02 16:28:11','2017-09-02 16:28:11','Исходная версия',1,0,1,NULL,0,0,NULL,NULL),(170,1,'Отношения','otnosheniya',NULL,'2017-09-02 23:18:09','2017-09-02 23:18:09','Исходная версия',1,0,1,1,0,4,NULL,NULL),(171,1,'','',NULL,'2017-09-02 23:19:04','2017-09-02 23:19:04','Исходная версия',0,1,1,NULL,0,4,NULL,NULL),(172,1,'Советы','sovety','','2017-09-02 23:19:19','2017-09-02 23:19:19','Исходная версия',0,0,1,1,0,8,NULL,NULL),(172,2,'Советы','sovety','','2017-09-02 23:19:19','2017-09-02 23:20:15','Новая версия 2',1,0,1,1,0,8,NULL,NULL),(174,1,'mainmenu','mainmenu',NULL,'2017-09-02 23:43:44','2017-09-02 23:43:44','Исходная версия',0,0,1,NULL,2,0,NULL,NULL),(174,2,'mainmenu','mainmenu',NULL,'2017-09-02 23:43:44','2017-09-02 23:45:17','Новая версия 2',0,0,1,1,2,0,NULL,NULL),(174,3,'mainmenu','mainmenu',NULL,'2017-09-02 23:43:44','2017-09-03 13:17:04','Новая версия 3',0,0,1,1,2,0,NULL,NULL),(174,4,'mainmenu','mainmenu',NULL,'2017-09-02 23:43:44','2017-09-03 13:17:36','Новая версия 4',1,0,1,1,2,0,NULL,NULL),(174,5,'mainmenu','mainmenu',NULL,'2017-09-02 23:43:44','2017-09-03 13:19:27','Новая версия 5',0,0,1,1,2,0,NULL,NULL),(174,6,'mainmenu','mainmenu',NULL,'2017-09-02 23:43:44','2017-09-03 13:20:10','Новая версия 6',0,0,1,1,2,0,NULL,NULL),(176,1,'Помощь студентам','pomosh-studentam','','2017-09-03 13:17:57','2017-09-03 13:17:57','Исходная версия',0,0,1,1,0,6,NULL,NULL),(176,2,'Помощь студентам','pomosh-studentam','','2017-09-03 13:17:57','2017-09-03 13:19:27','Version 2',0,0,1,1,0,6,NULL,NULL),(176,3,'Помощь студентам','pomosh-studentam','','2017-09-03 13:17:57','2017-09-03 13:35:33','Version 3',0,0,1,1,0,6,NULL,NULL),(176,4,'Помощь студентам','pomosh-studentam','','2017-09-03 13:17:57','2017-09-03 13:37:44','Version 4',0,0,1,1,0,6,NULL,NULL),(176,5,'Помощь студентам','pomosh-studentam','','2017-09-03 13:17:57','2017-09-03 13:44:28','Новая версия 5',1,0,1,1,0,6,NULL,NULL),(178,1,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:31:30','Исходная версия',0,0,1,NULL,2,0,NULL,NULL),(178,2,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:31:59','Новая версия 2',0,0,1,1,2,0,NULL,NULL),(178,3,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:35:33','Новая версия 3',0,0,1,1,2,0,NULL,NULL),(178,4,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:36:16','Новая версия 4',0,0,1,1,2,0,NULL,NULL),(178,5,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:37:43','Новая версия 5',0,0,1,1,2,0,NULL,NULL),(178,6,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:44:28','Новая версия 6',0,0,1,1,2,0,NULL,NULL),(178,7,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-03 13:44:44','Новая версия 7',1,0,1,1,2,0,NULL,NULL),(178,8,'subnav','subnav',NULL,'2017-09-03 13:31:30','2017-09-04 19:02:12','Новая версия 8',0,0,1,NULL,2,0,NULL,NULL),(179,1,'Новые статьи','novye-stati','','2017-09-03 13:34:35','2017-09-03 13:34:35','Исходная версия',1,0,1,1,2,4,NULL,NULL),(180,1,'Статьи','stati','','2017-09-03 13:48:36','2017-09-03 13:48:36','Исходная версия',1,0,1,1,2,4,NULL,NULL),(181,1,'Советы','sovety','','2017-09-03 13:50:22','2017-09-03 13:50:22','Исходная версия',1,0,1,1,2,4,NULL,NULL),(182,1,'Новые советы','novye-sovety','','2017-09-03 13:50:58','2017-09-03 13:50:58','Исходная версия',1,0,1,1,2,4,NULL,NULL),(183,1,'',NULL,NULL,'2017-09-03 15:49:47','2017-09-03 15:49:47','Исходная версия',1,0,NULL,NULL,0,5,NULL,NULL),(184,1,'','',NULL,'2017-08-29 12:46:52','2017-09-03 15:50:08','Initial Version',1,0,NULL,NULL,0,4,NULL,NULL),(187,1,'','',NULL,'2017-09-02 12:30:05','2017-09-03 15:53:01','Исходная версия',1,0,NULL,NULL,0,4,NULL,NULL),(188,1,'',NULL,NULL,'2017-09-03 15:53:02','2017-09-03 15:53:02','Исходная версия',1,0,NULL,NULL,0,8,NULL,NULL),(190,1,'',NULL,NULL,'2017-09-03 15:53:34','2017-09-03 15:53:34','Исходная версия',1,0,NULL,NULL,0,8,NULL,NULL),(191,1,'',NULL,NULL,'2017-09-03 15:54:16','2017-09-03 15:54:16','Исходная версия',1,0,NULL,NULL,0,8,NULL,NULL),(195,1,'',NULL,NULL,'2017-09-03 16:07:53','2017-09-03 16:07:53','Исходная версия',1,0,NULL,NULL,0,9,NULL,NULL),(196,1,'',NULL,NULL,'2017-09-03 16:09:48','2017-09-03 16:09:48','Исходная версия',1,0,NULL,NULL,0,6,NULL,NULL),(197,1,'Родителям','roditelyam',NULL,'2017-09-03 16:17:17','2017-09-03 16:17:17','Исходная версия',0,0,1,1,2,6,NULL,NULL),(197,2,'Родителям','roditelyam',NULL,'2017-09-03 16:17:17','2017-09-03 16:20:27','Version 2',1,0,1,1,2,6,NULL,NULL),(198,1,'Студентам','studentam',NULL,'2017-09-03 16:17:58','2017-09-03 16:17:58','Исходная версия',0,0,1,1,2,6,NULL,NULL),(198,2,'Студентам','studentam',NULL,'2017-09-03 16:17:58','2017-09-03 16:20:58','Version 2',1,0,1,1,2,6,NULL,NULL),(199,1,'Отношения','otnosheniya',NULL,'2017-09-03 16:18:51','2017-09-03 16:18:51','Исходная версия',0,0,1,1,2,6,NULL,NULL),(199,2,'Отношения','otnosheniya',NULL,'2017-09-03 16:18:51','2017-09-03 16:21:34','Version 2',1,0,1,1,2,6,NULL,NULL),(200,1,'Советы','sovety',NULL,'2017-09-03 16:24:29','2017-09-03 16:24:29','Исходная версия',0,0,1,1,2,8,NULL,NULL),(200,2,'Советы','sovety',NULL,'2017-09-03 16:24:29','2017-09-03 16:25:42','Version 2',1,0,1,1,2,8,NULL,NULL),(201,1,'Советы','sovety',NULL,'2017-09-03 16:24:44','2017-09-03 16:24:44','Исходная версия',0,0,1,1,2,8,NULL,NULL),(201,2,'Советы','sovety',NULL,'2017-09-03 16:24:44','2017-09-03 16:26:32','Version 2',1,0,1,1,2,8,NULL,NULL),(202,1,'Советы','sovety',NULL,'2017-09-03 16:25:11','2017-09-03 16:25:11','Исходная версия',0,0,1,1,2,8,NULL,NULL),(202,2,'Советы','sovety',NULL,'2017-09-03 16:25:11','2017-09-03 16:27:00','Version 2',1,0,1,1,2,8,NULL,NULL),(203,1,'Статьи','stati',NULL,'2017-09-03 16:30:24','2017-09-03 16:30:24','Исходная версия',0,0,1,1,2,8,NULL,NULL),(203,2,'Статьи','stati',NULL,'2017-09-03 16:30:24','2017-09-03 16:42:09','Version 2',0,0,1,1,2,8,NULL,NULL),(203,3,'Статьи','stati',NULL,'2017-09-03 16:30:24','2017-09-08 18:45:39','New Version 3',0,0,1,1,2,8,NULL,NULL),(203,4,'Статьи','stati',NULL,'2017-09-03 16:30:24','2017-09-08 18:48:57','New Version 4',0,0,1,1,2,4,NULL,NULL),(203,5,'Статьи','stati',NULL,'2017-09-03 16:30:24','2017-09-08 18:49:10','New Version 5',1,0,1,1,2,8,NULL,NULL),(204,1,'Статьи','stati',NULL,'2017-09-03 16:30:42','2017-09-03 16:30:42','Исходная версия',0,0,1,1,2,8,NULL,NULL),(204,2,'Статьи','stati',NULL,'2017-09-03 16:30:42','2017-09-03 16:43:56','Version 2',1,0,1,1,2,8,NULL,NULL),(205,1,'Статьи','stati',NULL,'2017-09-03 16:32:08','2017-09-03 16:32:08','Исходная версия',0,0,1,1,2,8,NULL,NULL),(205,2,'Статьи','stati',NULL,'2017-09-03 16:32:08','2017-09-03 16:45:30','Version 2',1,0,1,1,2,8,NULL,NULL),(206,1,'',NULL,NULL,'2017-09-03 16:33:06','2017-09-03 16:33:06','Исходная версия',1,0,NULL,NULL,0,7,NULL,NULL),(207,1,'Вопрос-ответ','vopros-otvet',NULL,'2017-09-03 16:34:34','2017-09-03 16:34:34','Исходная версия',0,0,1,1,2,7,NULL,NULL),(207,2,'Вопрос-ответ','vopros-otvet',NULL,'2017-09-03 16:34:34','2017-09-03 16:42:59','Version 2',1,0,1,1,2,7,NULL,NULL),(208,1,'Вопрос-Ответ','vopros-otvet',NULL,'2017-09-03 16:35:46','2017-09-03 16:35:46','Исходная версия',0,0,1,1,2,7,NULL,NULL),(208,2,'Вопрос-Ответ','vopros-otvet',NULL,'2017-09-03 16:35:46','2017-09-03 16:44:24','Version 2',1,0,1,1,2,7,NULL,NULL),(209,1,'Вопрос-Ответ','vopros-otvet',NULL,'2017-09-03 16:36:07','2017-09-03 16:36:07','Исходная версия',0,0,1,1,2,7,NULL,NULL),(209,2,'Вопрос-Ответ','vopros-otvet',NULL,'2017-09-03 16:36:07','2017-09-03 16:47:13','Version 2',1,0,1,1,2,7,NULL,NULL),(210,1,'',NULL,NULL,'2017-09-03 16:37:44','2017-09-03 16:37:44','Исходная версия',1,0,NULL,NULL,0,7,NULL,NULL),(211,1,'Помощь психолога','pomosh-psihologa',NULL,'2017-09-03 16:39:54','2017-09-03 16:39:54','Исходная версия',1,0,1,1,2,7,NULL,NULL),(212,1,'Помощь психолога','pomosh-psihologa',NULL,'2017-09-03 16:40:06','2017-09-03 16:40:06','Исходная версия',1,0,NULL,NULL,2,0,NULL,NULL),(213,1,'Помощь психолога','pomosh-psihologa',NULL,'2017-09-03 16:40:55','2017-09-03 16:40:55','Исходная версия',1,0,NULL,NULL,2,0,NULL,NULL),(215,1,'',NULL,NULL,'2017-09-03 16:52:22','2017-09-03 16:52:22','Исходная версия',1,0,NULL,NULL,0,5,NULL,NULL),(216,1,'Новые','novye',NULL,'2017-09-03 16:52:22','2017-09-03 16:52:22','Исходная версия',1,0,1,1,2,5,NULL,NULL),(217,1,'Популярные','populyarnye',NULL,'2017-09-03 16:52:38','2017-09-03 16:52:38','Исходная версия',0,0,1,1,2,5,NULL,NULL),(217,2,'Популярные','populyarnye',NULL,'2017-09-03 16:52:38','2017-09-04 20:13:37','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(218,1,'Популярные','populyarnye',NULL,'2017-09-03 16:52:40','2017-09-03 16:52:40','Исходная версия',1,0,1,1,2,5,NULL,NULL),(219,1,'Новые','novye',NULL,'2017-09-03 16:53:17','2017-09-03 16:53:17','Исходная версия',0,0,1,1,2,5,NULL,NULL),(219,2,'Новые','novye','','2017-09-03 16:53:00','2017-09-05 01:34:55','New Version 2',0,0,1,1,2,5,NULL,NULL),(219,3,'Все','novye','','2017-09-03 16:53:00','2017-09-05 01:37:47','New Version 3',0,0,1,1,2,5,NULL,NULL),(219,4,'Все','all','','2017-09-03 16:53:00','2017-09-05 01:38:48','New Version 4',0,0,1,1,2,5,NULL,NULL),(219,5,'Все','vse','','2017-09-03 16:53:00','2017-09-05 01:38:50','New Version 5',0,0,1,1,2,5,NULL,NULL),(219,6,'Все','vse','','2017-09-03 16:53:00','2017-09-05 02:22:47','New Version 6',0,0,1,1,2,5,NULL,NULL),(219,7,'Все','vse','','2017-09-03 16:53:00','2017-09-05 02:25:59','New Version 7',0,0,1,1,2,5,NULL,NULL),(219,8,'Все','vse','','2017-09-03 16:53:00','2017-09-05 02:26:51','New Version 8',1,0,1,1,2,5,NULL,NULL),(220,1,'Популярные','populyarnye',NULL,'2017-09-03 16:53:32','2017-09-03 16:53:32','Исходная версия',0,0,1,1,2,5,NULL,NULL),(220,2,'Популярные','populyarnye',NULL,'2017-09-03 16:53:32','2017-09-04 20:12:12','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(221,1,'Новые','novye',NULL,'2017-09-03 16:54:00','2017-09-03 16:54:00','Исходная версия',1,0,1,1,2,5,NULL,NULL),(222,1,'Популярные','populyarnye',NULL,'2017-09-03 16:54:38','2017-09-03 16:54:38','Исходная версия',0,0,1,1,2,5,NULL,NULL),(222,2,'Популярные','populyarnye',NULL,'2017-09-03 16:54:38','2017-09-04 20:13:24','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(223,1,'Новые','novye',NULL,'2017-09-03 16:55:03','2017-09-03 16:55:03','Исходная версия',1,0,1,1,2,5,NULL,NULL),(224,1,'Популярные','populyarnye',NULL,'2017-09-03 16:55:33','2017-09-03 16:55:33','Исходная версия',0,0,1,1,2,5,NULL,NULL),(224,2,'Популярные','populyarnye',NULL,'2017-09-03 16:55:33','2017-09-04 20:12:39','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(225,1,'Новые','novye',NULL,'2017-09-03 16:56:13','2017-09-03 16:56:13','Исходная версия',1,0,1,1,2,5,NULL,NULL),(226,1,'Популярные','populyarnye',NULL,'2017-09-03 16:56:28','2017-09-03 16:56:28','Исходная версия',0,0,1,1,2,5,NULL,NULL),(226,2,'Популярные','populyarnye',NULL,'2017-09-03 16:56:28','2017-09-04 20:13:12','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(227,1,'Новые','novye',NULL,'2017-09-03 16:56:46','2017-09-03 16:56:46','Исходная версия',1,0,1,1,2,5,NULL,NULL),(228,1,'Популярные','populyarnye',NULL,'2017-09-03 16:57:00','2017-09-03 16:57:00','Исходная версия',0,0,1,1,2,5,NULL,NULL),(228,2,'Популярные','populyarnye',NULL,'2017-09-03 16:57:00','2017-09-04 20:13:00','Новая версия 2',1,0,1,1,2,5,NULL,NULL),(232,1,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-04 19:25:37','Version 1',0,0,1,1,0,4,NULL,NULL),(232,2,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-04 20:25:08','Version 2',0,0,1,1,0,4,NULL,NULL),(232,3,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-04 20:46:54','New Version 3',0,0,1,1,0,4,NULL,NULL),(232,4,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-06 14:01:43','New Version 4',0,0,1,1,0,4,NULL,NULL),(232,5,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-06 14:01:49','New Version 5',0,0,1,1,0,4,NULL,NULL),(232,6,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-06 19:12:40','New Version 6',0,0,1,1,0,4,NULL,NULL),(232,7,'Тестовая статья','testovaya-statya',NULL,'2017-09-04 19:25:37','2017-09-06 19:12:44','New Version 7',1,0,1,1,0,4,NULL,NULL),(233,1,'','',NULL,'2017-09-03 15:49:47','2017-09-04 20:10:57','Исходная версия',1,0,NULL,NULL,0,5,NULL,NULL),(234,1,'','',NULL,'2017-09-03 16:52:22','2017-09-04 20:11:37','Исходная версия',1,0,NULL,NULL,0,5,NULL,NULL),(236,1,'','',NULL,'2017-09-04 20:16:19','2017-09-04 20:16:19','Исходная версия',0,1,1,NULL,0,4,NULL,NULL),(237,1,'','',NULL,'2017-09-04 20:41:05','2017-09-04 20:41:05','Исходная версия',0,1,1,NULL,0,4,NULL,NULL),(238,1,'','',NULL,'2017-09-04 20:46:25','2017-09-04 20:46:25','Initial Version',0,1,1,NULL,0,4,NULL,NULL),(239,1,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-04 20:47:37','Initial Version',0,0,1,1,0,4,NULL,NULL),(239,2,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-04 20:51:16','Version 2',0,0,1,1,0,4,NULL,NULL),(239,3,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-04 21:00:02','Version 3',0,0,1,1,0,4,NULL,NULL),(239,4,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-04 21:02:26','New Version 4',0,0,1,1,0,4,NULL,NULL),(239,5,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-06 14:02:17','New Version 5',0,0,1,1,0,4,NULL,NULL),(239,6,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-06 14:02:21','New Version 6',0,0,1,1,0,4,NULL,NULL),(239,7,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-06 19:15:49','New Version 7',0,0,1,1,0,4,NULL,NULL),(239,8,'second_test_page','second-test-page',NULL,'2017-09-04 20:47:37','2017-09-06 19:15:54','New Version 8',1,0,1,1,0,4,NULL,NULL),(240,1,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-04 21:02:42','Initial Version',0,0,1,1,0,4,NULL,NULL),(240,2,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-04 21:05:50','Version 2',0,0,1,1,0,4,NULL,NULL),(240,3,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-06 14:02:50','New Version 3',0,0,1,1,0,4,NULL,NULL),(240,4,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-06 14:02:54','New Version 4',0,0,1,1,0,4,NULL,NULL),(240,5,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-08 15:56:14','New Version 5',0,0,1,1,0,4,NULL,NULL),(240,6,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-08 15:56:32','New Version 6',1,0,1,1,0,4,NULL,NULL),(240,7,'once_more','once-more',NULL,'2017-09-04 21:02:42','2017-09-08 15:56:38','New Version 7',0,1,1,NULL,0,4,NULL,NULL),(243,1,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-05 01:32:11','Initial Version',0,0,1,1,0,4,NULL,NULL),(243,2,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-05 01:32:32','New Version 2',0,0,1,1,0,4,NULL,NULL),(243,3,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-05 02:03:42','New Version 3',0,0,1,1,0,4,NULL,NULL),(243,4,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-05 02:03:45','New Version 4',0,0,1,1,0,4,NULL,NULL),(243,5,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-05 02:46:13','New Version 5',0,0,1,1,0,4,NULL,NULL),(243,6,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-06 14:04:27','New Version 6',0,0,1,1,0,4,NULL,NULL),(243,7,'some third','some-third',NULL,'2017-09-05 01:32:11','2017-09-06 14:04:31','New Version 7',1,0,1,1,0,4,NULL,NULL),(244,1,'','',NULL,'2017-09-05 02:20:11','2017-09-05 02:20:11','Initial Version',0,1,1,NULL,0,4,NULL,NULL),(245,1,'Название Странички','nazvanie-stranichki',NULL,'2017-09-08 15:14:53','2017-09-08 15:14:53','Initial Version',0,0,1,1,0,4,NULL,NULL),(245,2,'Название Странички','nazvanie-stranichki',NULL,'2017-09-08 15:14:53','2017-09-08 15:16:06','New Version 2',0,0,1,1,0,4,NULL,NULL),(245,3,'Название Странички','nazvanie-stranichki',NULL,'2017-09-08 15:14:53','2017-09-08 15:17:01','New Version 3',1,0,1,1,0,4,NULL,NULL),(246,1,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 15:17:34','Initial Version',0,0,1,1,0,4,NULL,NULL),(246,2,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 15:20:11','New Version 2',0,0,1,1,0,4,NULL,NULL),(246,3,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 15:27:48','Version 3',0,0,1,1,0,4,NULL,NULL),(246,4,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 15:35:59','Version 4',0,0,1,1,0,4,NULL,NULL),(246,5,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 15:39:29','Version 5',0,0,1,1,0,4,NULL,NULL),(246,6,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 15:59:30','New Version 6',0,0,1,1,0,4,NULL,NULL),(246,7,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 16:00:22','New Version 7',0,0,1,1,0,4,NULL,NULL),(246,8,'Новая статья родителям','novaya-statya-roditelyam',NULL,'2017-09-08 15:17:34','2017-09-08 16:00:28','New Version 8',1,0,1,1,0,4,NULL,NULL),(247,1,'','',NULL,'2017-09-08 15:28:15','2017-09-08 15:28:15','Initial Version',0,1,1,NULL,0,4,NULL,NULL),(248,1,'','',NULL,'2017-08-29 12:46:52','2017-09-08 18:44:45','Initial Version',1,0,NULL,NULL,0,4,NULL,NULL),(249,1,'',NULL,NULL,'2017-09-08 18:51:15','2017-09-08 18:51:15','Initial Version',1,0,NULL,NULL,0,4,NULL,NULL),(250,1,'','',NULL,'2017-09-08 18:51:16','2017-09-08 18:51:16','Initial Version',0,1,1,NULL,0,4,NULL,NULL),(251,1,'Тестовая статья','testovaya-statya',NULL,'2017-09-08 18:54:11','2017-09-08 18:54:11','Initial Version',0,1,1,NULL,0,4,NULL,NULL),(252,1,'Тестовая статья','testovaya-statya',NULL,'2017-09-08 18:55:18','2017-09-08 18:55:18','Initial Version',0,0,1,1,0,4,NULL,NULL),(252,2,'Тестовая статья','testovaya-statya',NULL,'2017-09-08 18:55:18','2017-09-08 18:56:34','Version 2',1,0,1,1,0,4,NULL,NULL),(253,1,'Название статьи','nazvanie-stati',NULL,'2017-09-08 19:10:28','2017-09-08 19:10:28','Initial Version',0,0,1,1,0,4,NULL,NULL),(253,2,'Название статьи','nazvanie-stati',NULL,'2017-09-08 19:10:28','2017-09-08 19:14:12','Version 2',0,0,1,1,0,4,NULL,NULL),(253,3,'Название статьи','nazvanie-stati',NULL,'2017-09-08 19:10:28','2017-09-08 19:17:41','Version 3',1,0,1,1,0,4,NULL,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2017-08-29 12:42:34','2017-09-03 15:58:46',NULL),(2,'2017-08-29 12:44:18','2017-08-29 12:44:19','dashboard'),(3,'2017-08-29 12:44:19','2017-08-29 12:44:19','sitemap'),(4,'2017-08-29 12:44:20','2017-08-29 12:44:20','full'),(5,'2017-08-29 12:44:20','2017-08-29 12:44:20','explore'),(6,'2017-08-29 12:44:20','2017-08-29 12:44:21','search'),(7,'2017-08-29 12:44:21','2017-08-29 12:44:21','files'),(8,'2017-08-29 12:44:21','2017-08-29 12:44:22','search'),(9,'2017-08-29 12:44:22','2017-08-29 12:44:23','attributes'),(10,'2017-08-29 12:44:23','2017-08-29 12:44:23','sets'),(11,'2017-08-29 12:44:24','2017-08-29 12:44:24','add_set'),(12,'2017-08-29 12:44:24','2017-08-29 12:44:24','users'),(13,'2017-08-29 12:44:24','2017-08-29 12:44:25','search'),(14,'2017-08-29 12:44:25','2017-08-29 12:44:25','groups'),(15,'2017-08-29 12:44:25','2017-08-29 12:44:26','attributes'),(16,'2017-08-29 12:44:26','2017-08-29 12:44:26','add'),(17,'2017-08-29 12:44:27','2017-08-29 12:44:27','add_group'),(18,'2017-08-29 12:44:27','2017-08-29 12:44:27','bulkupdate'),(19,'2017-08-29 12:44:28','2017-08-29 12:44:28','group_sets'),(20,'2017-08-29 12:44:29','2017-08-29 12:44:29','points'),(21,'2017-08-29 12:44:29','2017-08-29 12:44:29','assign'),(22,'2017-08-29 12:44:30','2017-08-29 12:44:30','actions'),(23,'2017-08-29 12:44:30','2017-08-29 12:44:30','express'),(24,'2017-08-29 12:44:31','2017-08-29 12:44:31','entries'),(25,'2017-08-29 12:44:31','2017-08-29 12:44:32','reports'),(26,'2017-08-29 12:44:32','2017-08-29 12:44:32','forms'),(27,'2017-08-29 12:44:32','2017-08-29 12:44:32','legacy'),(28,'2017-08-29 12:44:32','2017-08-29 12:44:33','surveys'),(29,'2017-08-29 12:44:33','2017-08-29 12:44:33','logs'),(30,'2017-08-29 12:44:34','2017-08-29 12:44:34','pages'),(31,'2017-08-29 12:44:34','2017-08-29 12:44:35','themes'),(32,'2017-08-29 12:44:35','2017-08-29 12:44:35','inspect'),(33,'2017-08-29 12:44:35','2017-08-29 12:44:35','types'),(34,'2017-08-29 12:44:36','2017-08-29 12:44:36','organize'),(35,'2017-08-29 12:44:36','2017-08-29 12:44:36','add'),(36,'2017-08-29 12:44:37','2017-08-29 12:44:37','form'),(37,'2017-08-29 12:44:37','2017-08-29 12:44:38','output'),(38,'2017-08-29 12:44:38','2017-08-29 12:44:38','attributes'),(39,'2017-08-29 12:44:39','2017-08-29 12:44:39','permissions'),(40,'2017-08-29 12:44:39','2017-08-29 12:44:39','templates'),(41,'2017-08-29 12:44:40','2017-08-29 12:44:40','add'),(42,'2017-08-29 12:44:40','2017-08-29 12:44:40','attributes'),(43,'2017-08-29 12:44:41','2017-08-29 12:44:41','single'),(44,'2017-08-29 12:44:42','2017-08-29 12:44:42','feeds'),(45,'2017-08-29 12:44:42','2017-08-29 12:44:43','conversations'),(46,'2017-08-29 12:44:43','2017-08-29 12:44:43','messages'),(47,'2017-08-29 12:44:44','2017-08-29 12:44:44','blocks'),(48,'2017-08-29 12:44:44','2017-08-29 12:44:44','stacks'),(49,'2017-08-29 12:44:45','2017-08-29 12:44:45','permissions'),(50,'2017-08-29 12:44:45','2017-08-29 12:44:46','list'),(51,'2017-08-29 12:44:46','2017-08-29 12:44:46','types'),(52,'2017-08-29 12:44:47','2017-08-29 12:44:48','extend'),(53,'2017-08-29 12:44:49','2017-08-29 12:44:49','install'),(54,'2017-08-29 12:44:49','2017-08-29 12:44:49','update'),(55,'2017-08-29 12:44:50','2017-08-29 12:44:50','connect'),(56,'2017-08-29 12:44:50','2017-08-29 12:44:50','themes'),(57,'2017-08-29 12:44:51','2017-08-29 12:44:51','addons'),(58,'2017-08-29 12:44:52','2017-08-29 12:44:52','system'),(59,'2017-08-29 12:44:52','2017-08-29 12:44:53','basics'),(60,'2017-08-29 12:44:53','2017-08-29 12:44:53','name'),(61,'2017-08-29 12:44:53','2017-08-29 12:44:54','accessibility'),(62,'2017-08-29 12:44:54','2017-08-29 12:44:54','social'),(63,'2017-08-29 12:44:54','2017-08-29 12:44:55','icons'),(64,'2017-08-29 12:44:55','2017-08-29 12:44:55','editor'),(65,'2017-08-29 12:44:56','2017-08-29 12:44:56','multilingual'),(66,'2017-08-29 12:44:56','2017-08-29 12:44:56','update'),(67,'2017-08-29 12:44:57','2017-08-29 12:44:57','timezone'),(68,'2017-08-29 12:44:58','2017-08-29 12:44:58','attributes'),(69,'2017-08-29 12:44:58','2017-08-29 12:44:58','express'),(70,'2017-08-29 12:44:58','2017-08-29 12:44:59','entities'),(71,'2017-08-29 12:44:59','2017-08-29 12:44:59','attributes'),(72,'2017-08-29 12:44:59','2017-08-29 12:45:00','associations'),(73,'2017-08-29 12:45:00','2017-08-29 12:45:00','forms'),(74,'2017-08-29 12:45:01','2017-08-29 12:45:01','customize_search'),(75,'2017-08-29 12:45:01','2017-08-29 12:45:02','order_entries'),(76,'2017-08-29 12:45:02','2017-08-29 12:45:02','entries'),(77,'2017-08-29 12:45:02','2017-08-29 12:45:02','multilingual'),(78,'2017-08-29 12:45:03','2017-08-29 12:45:03','setup'),(79,'2017-08-29 12:45:03','2017-08-29 12:45:04','copy'),(80,'2017-08-29 12:45:04','2017-08-29 12:45:04','page_report'),(81,'2017-08-29 12:45:04','2017-08-29 12:45:05','translate_interface'),(82,'2017-08-29 12:45:05','2017-08-29 12:45:05','seo'),(83,'2017-08-29 12:45:06','2017-08-29 12:45:06','urls'),(84,'2017-08-29 12:45:06','2017-08-29 12:45:06','bulk'),(85,'2017-08-29 12:45:07','2017-08-29 12:45:07','codes'),(86,'2017-08-29 12:45:07','2017-08-29 12:45:07','excluded'),(87,'2017-08-29 12:45:08','2017-08-29 12:45:08','searchindex'),(88,'2017-08-29 12:45:09','2017-08-29 12:45:09','files'),(89,'2017-08-29 12:45:09','2017-08-29 12:45:10','filetypes'),(90,'2017-08-29 12:45:10','2017-08-29 12:45:10','permissions'),(91,'2017-08-29 12:45:10','2017-08-29 12:45:11','thumbnails'),(92,'2017-08-29 12:45:11','2017-08-29 12:45:11','options'),(93,'2017-08-29 12:45:11','2017-08-29 12:45:12','image_uploading'),(94,'2017-08-29 12:45:12','2017-08-29 12:45:12','storage'),(95,'2017-08-29 12:45:13','2017-08-29 12:45:13','optimization'),(96,'2017-08-29 12:45:13','2017-08-29 12:45:13','cache'),(97,'2017-08-29 12:45:14','2017-08-29 12:45:14','clearcache'),(98,'2017-08-29 12:45:14','2017-08-29 12:45:14','jobs'),(99,'2017-08-29 12:45:15','2017-08-29 12:45:15','query_log'),(100,'2017-08-29 12:45:15','2017-08-29 12:45:16','permissions'),(101,'2017-08-29 12:45:16','2017-08-29 12:45:16','site'),(102,'2017-08-29 12:45:17','2017-08-29 12:45:17','tasks'),(103,'2017-08-29 12:45:17','2017-08-29 12:45:18','users'),(104,'2017-08-29 12:45:19','2017-08-29 12:45:19','advanced'),(105,'2017-08-29 12:45:19','2017-08-29 12:45:20','workflows'),(106,'2017-08-29 12:45:20','2017-08-29 12:45:20','blacklist'),(107,'2017-08-29 12:45:20','2017-08-29 12:45:21','range'),(108,'2017-08-29 12:45:21','2017-08-29 12:45:22','captcha'),(109,'2017-08-29 12:45:23','2017-08-29 12:45:23','antispam'),(110,'2017-08-29 12:45:24','2017-08-29 12:45:24','maintenance'),(111,'2017-08-29 12:45:25','2017-08-29 12:45:25','registration'),(112,'2017-08-29 12:45:25','2017-08-29 12:45:25','open'),(113,'2017-08-29 12:45:25','2017-08-29 12:45:26','postlogin'),(114,'2017-08-29 12:45:26','2017-08-29 12:45:27','profiles'),(115,'2017-08-29 12:45:27','2017-08-29 12:45:27','authentication'),(116,'2017-08-29 12:45:28','2017-08-29 12:45:28','global_password_reset'),(117,'2017-08-29 12:45:29','2017-08-29 12:45:29','notification'),(118,'2017-08-29 12:45:29','2017-08-29 12:45:29','mail'),(119,'2017-08-29 12:45:30','2017-08-29 12:45:30','method'),(120,'2017-08-29 12:45:30','2017-08-29 12:45:30','test'),(121,'2017-08-29 12:45:31','2017-08-29 12:45:31','importers'),(122,'2017-08-29 12:45:32','2017-08-29 12:45:32','conversations'),(123,'2017-08-29 12:45:32','2017-08-29 12:45:32','settings'),(124,'2017-08-29 12:45:33','2017-08-29 12:45:33','points'),(125,'2017-08-29 12:45:33','2017-08-29 12:45:34','bannedwords'),(126,'2017-08-29 12:45:34','2017-08-29 12:45:34','permissions'),(127,'2017-08-29 12:45:35','2017-08-29 12:45:35','attributes'),(128,'2017-08-29 12:45:35','2017-08-29 12:45:36','types'),(129,'2017-08-29 12:45:36','2017-08-29 12:45:37','sets'),(130,'2017-08-29 12:45:37','2017-08-29 12:45:37','topics'),(131,'2017-08-29 12:45:37','2017-08-29 12:45:38','add'),(132,'2017-08-29 12:45:38','2017-08-29 12:45:39','environment'),(133,'2017-08-29 12:45:39','2017-08-29 12:45:39','info'),(134,'2017-08-29 12:45:39','2017-08-29 12:45:39','debug'),(135,'2017-08-29 12:45:40','2017-08-29 12:45:40','logging'),(136,'2017-08-29 12:45:41','2017-08-29 12:45:41','proxy'),(137,'2017-08-29 12:45:41','2017-08-29 12:45:41','entities'),(138,'2017-08-29 12:45:42','2017-08-29 12:45:42','update'),(139,'2017-08-29 12:45:43','2017-08-29 12:45:43','update'),(140,'2017-08-29 12:45:43','2017-08-29 12:45:44','welcome'),(141,'2017-08-29 12:45:48','2017-08-29 12:45:48','me'),(142,'2017-08-29 12:46:38','2017-08-29 12:46:39','!stacks'),(143,'2017-08-29 12:46:39','2017-08-29 12:46:39','!trash'),(144,'2017-08-29 12:46:40','2017-09-02 15:03:35','login'),(145,'2017-08-29 12:46:40','2017-08-29 12:46:40','register'),(146,'2017-08-29 12:46:40','2017-08-29 12:46:41','account'),(147,'2017-08-29 12:46:41','2017-08-29 12:46:41','edit_profile'),(148,'2017-08-29 12:46:42','2017-08-29 12:46:42','avatar'),(149,'2017-08-29 12:46:42','2017-08-29 12:46:43','messages'),(150,'2017-08-29 12:46:43','2017-08-29 12:46:43','page_forbidden'),(151,'2017-08-29 12:46:43','2017-08-29 12:46:44','download_file'),(152,'2017-08-29 12:46:45','2017-08-29 12:46:45','!drafts'),(153,'2017-08-29 12:46:45','2017-08-29 12:46:46','page_not_found'),(154,'2017-08-29 12:46:46','2017-08-29 12:46:46','desktop'),(156,'2017-08-29 13:55:57','2017-08-29 13:55:57','header-site-title'),(157,'2017-08-29 13:55:58','2017-08-29 13:55:58','header-navigation'),(158,'2017-08-29 13:55:59','2017-08-29 13:55:59','footer-legal'),(159,'2017-08-29 13:55:59','2017-08-29 13:55:59','footer-navigation'),(160,'2017-08-29 13:56:00','2017-08-29 13:56:00','footer-contact'),(163,'2017-09-02 12:30:05','2017-09-03 16:04:51',''),(164,'2017-09-02 12:35:10','2017-09-03 16:05:22',''),(167,'2017-09-02 15:10:34','2017-09-02 15:10:34',''),(168,'2017-09-02 15:12:49','2017-09-02 16:27:39','somesingle'),(169,'2017-09-02 16:28:11','2017-09-02 17:57:19','somesingle'),(170,'2017-09-02 23:18:09','2017-09-03 16:05:34',''),(171,'2017-09-02 23:19:04','2017-09-02 23:19:04',''),(172,'2017-09-02 23:19:19','2017-09-02 23:20:24',''),(174,'2017-09-02 23:43:44','2017-09-03 13:32:35','mainmenu'),(176,'2017-09-03 13:17:57','2017-09-03 13:51:23',''),(178,'2017-09-03 13:31:30','2017-09-03 13:51:24','subnav'),(179,'2017-09-03 13:34:35','2017-09-03 13:49:24',''),(180,'2017-09-03 13:48:36','2017-09-03 13:48:40',''),(181,'2017-09-03 13:50:22','2017-09-03 13:50:25',''),(182,'2017-09-03 13:50:58','2017-09-03 13:51:01',''),(183,'2017-09-03 15:49:47','2017-09-03 15:49:47',NULL),(184,'2017-09-03 15:50:07','2017-09-03 15:50:08',NULL),(187,'2017-09-03 15:53:00','2017-09-03 15:53:01',NULL),(188,'2017-09-03 15:53:02','2017-09-03 15:53:02',NULL),(190,'2017-09-03 15:53:34','2017-09-03 15:53:34',NULL),(191,'2017-09-03 15:54:16','2017-09-03 15:54:16',NULL),(195,'2017-09-03 16:07:53','2017-09-03 16:07:53',NULL),(196,'2017-09-03 16:09:48','2017-09-03 16:09:48',NULL),(197,'2017-09-03 16:17:17','2017-09-03 16:20:34',''),(198,'2017-09-03 16:17:58','2017-09-03 16:21:05',''),(199,'2017-09-03 16:18:51','2017-09-03 16:21:40',''),(200,'2017-09-03 16:24:29','2017-09-03 16:26:04',''),(201,'2017-09-03 16:24:44','2017-09-03 16:26:38',''),(202,'2017-09-03 16:25:11','2017-09-03 16:27:05',''),(203,'2017-09-03 16:30:24','2017-09-08 18:49:11',''),(204,'2017-09-03 16:30:42','2017-09-03 16:44:04',''),(205,'2017-09-03 16:32:08','2017-09-03 16:45:43',''),(206,'2017-09-03 16:33:06','2017-09-03 16:33:06',NULL),(207,'2017-09-03 16:34:34','2017-09-03 16:43:08',''),(208,'2017-09-03 16:35:46','2017-09-03 16:44:29',''),(209,'2017-09-03 16:36:07','2017-09-03 16:47:21',''),(210,'2017-09-03 16:37:44','2017-09-03 16:37:44',NULL),(211,'2017-09-03 16:39:54','2017-09-03 16:39:56',''),(212,'2017-09-03 16:40:06','2017-09-03 16:40:24','pomosh-psihologa'),(213,'2017-09-03 16:40:55','2017-09-03 16:40:55','pomosh-psihologa'),(215,'2017-09-03 16:52:22','2017-09-03 16:52:22',NULL),(216,'2017-09-03 16:52:22','2017-09-03 16:52:24',''),(217,'2017-09-03 16:52:38','2017-09-04 20:13:38',''),(218,'2017-09-03 16:52:40','2017-09-03 16:52:49',''),(219,'2017-09-03 16:53:17','2017-09-08 18:46:19',''),(220,'2017-09-03 16:53:32','2017-09-08 18:48:35',''),(221,'2017-09-03 16:54:00','2017-09-03 16:54:02',''),(222,'2017-09-03 16:54:38','2017-09-04 20:13:24',''),(223,'2017-09-03 16:55:03','2017-09-03 16:55:04',''),(224,'2017-09-03 16:55:33','2017-09-04 20:12:40',''),(225,'2017-09-03 16:56:13','2017-09-03 16:56:14',''),(226,'2017-09-03 16:56:28','2017-09-04 20:13:12',''),(227,'2017-09-03 16:56:46','2017-09-03 16:56:47',''),(228,'2017-09-03 16:57:00','2017-09-04 20:13:01',''),(232,'2017-09-04 19:25:37','2017-09-06 19:12:54',''),(233,'2017-09-04 20:10:56','2017-09-04 20:10:56',NULL),(234,'2017-09-04 20:11:36','2017-09-04 20:11:36',NULL),(236,'2017-09-04 20:16:19','2017-09-04 20:16:19',''),(237,'2017-09-04 20:41:05','2017-09-04 20:41:05',''),(238,'2017-09-04 20:46:25','2017-09-04 20:46:25',''),(239,'2017-09-04 20:47:37','2017-09-06 19:16:02',''),(240,'2017-09-04 21:02:42','2017-09-08 15:56:40',''),(243,'2017-09-05 01:32:11','2017-09-06 14:04:40',''),(244,'2017-09-05 02:20:11','2017-09-05 02:20:36',''),(245,'2017-09-08 15:14:53','2017-09-08 15:17:13',''),(246,'2017-09-08 15:17:34','2017-09-08 16:02:24',''),(247,'2017-09-08 15:28:15','2017-09-08 15:28:15',''),(248,'2017-09-08 18:44:44','2017-09-08 18:44:45',NULL),(249,'2017-09-08 18:51:15','2017-09-08 18:51:15',NULL),(250,'2017-09-08 18:51:16','2017-09-08 18:51:16',''),(251,'2017-09-08 18:54:11','2017-09-08 18:54:36',''),(252,'2017-09-08 18:55:18','2017-09-08 18:57:04',''),(253,'2017-09-08 19:10:28','2017-09-08 19:17:49','');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('','concrete','marketplace.token','QQPA8BjGFu420lOi87bqlStQ2rvbV1gBPyXOE0EE5KGTHqwxmE0UVQGLpUkLIi86'),('','concrete','marketplace.url_token','epoxypueyqg7ntvlvxllm1kr'),('','concrete','security.token.encryption','a18db78d0e6bfb7b05e4e99f78f4887ea9c527afe3bd75e478d86642d59e7057'),('','concrete','security.token.jobs','42c1dca2b1783df1df576cd086efbadaddbd2ece8942c1afa27a092c2c331ed5'),('','concrete','security.token.validation','0210dfd5b1c8fd3ba16c1d5abbb5d8c497559a59ffe65929d87a6d49892793e4');
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfigStore`
--

DROP TABLE IF EXISTS `ConfigStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfigStore`
--

LOCK TABLES `ConfigStore` WRITE;
/*!40000 ALTER TABLE `ConfigStore` DISABLE KEYS */;
INSERT INTO `ConfigStore` VALUES ('file_manager.sort.11','2017-09-04 21:41:31','[\"folderItemModified\",\"desc\"]',1,0),('file_manager.sort.7','2017-09-02 12:23:39','[\"folderItemModified\",\"desc\"]',1,0),('file_manager.sort.9','2017-09-04 17:24:34','[\"folderItemModified\",\"desc\"]',1,0),('MAIN_HELP_LAST_VIEWED','2017-08-29 10:56:00','1504004160',1,0),('NEWSFLOW_LAST_VIEWED','2017-08-29 09:46:58','0',1,0);
/*!40000 ALTER TABLE `ConfigStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationDiscussions`
--

DROP TABLE IF EXISTS `ConversationDiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationDiscussions`
--

LOCK TABLES `ConversationDiscussions` WRITE;
/*!40000 ALTER TABLE `ConversationDiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationDiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationEditors`
--

DROP TABLE IF EXISTS `ConversationEditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationEditors`
--

LOCK TABLES `ConversationEditors` WRITE;
/*!40000 ALTER TABLE `ConversationEditors` DISABLE KEYS */;
INSERT INTO `ConversationEditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',0,0);
/*!40000 ALTER TABLE `ConversationEditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFeatureDetailAssignments`
--

LOCK TABLES `ConversationFeatureDetailAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

LOCK TABLES `ConversationFlaggedMessageTypes` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` DISABLE KEYS */;
INSERT INTO `ConversationFlaggedMessageTypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessages`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessages`
--

LOCK TABLES `ConversationFlaggedMessages` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageAttachments`
--

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageAttachments`
--

LOCK TABLES `ConversationMessageAttachments` WRITE;
/*!40000 ALTER TABLE `ConversationMessageAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageNotifications`
--

DROP TABLE IF EXISTS `ConversationMessageNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageNotifications` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageNotifications`
--

LOCK TABLES `ConversationMessageNotifications` WRITE;
/*!40000 ALTER TABLE `ConversationMessageNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageRatings`
--

DROP TABLE IF EXISTS `ConversationMessageRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageRatings`
--

LOCK TABLES `ConversationMessageRatings` WRITE;
/*!40000 ALTER TABLE `ConversationMessageRatings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageRatings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessages`
--

DROP TABLE IF EXISTS `ConversationMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageReview` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessages`
--

LOCK TABLES `ConversationMessages` WRITE;
/*!40000 ALTER TABLE `ConversationMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAddMessageAccessList`
--

LOCK TABLES `ConversationPermissionAddMessageAccessList` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAssignments`
--

DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

LOCK TABLES `ConversationPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAssignments` DISABLE KEYS */;
INSERT INTO `ConversationPermissionAssignments` VALUES (0,67,94),(0,68,95),(0,71,96),(0,70,97),(0,72,98),(0,69,99),(0,73,100),(0,74,101);
/*!40000 ALTER TABLE `ConversationPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationRatingTypes`
--

DROP TABLE IF EXISTS `ConversationRatingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationRatingTypes`
--

LOCK TABLES `ConversationRatingTypes` WRITE;
/*!40000 ALTER TABLE `ConversationRatingTypes` DISABLE KEYS */;
INSERT INTO `ConversationRatingTypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `ConversationRatingTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationSubscriptions`
--

DROP TABLE IF EXISTS `ConversationSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationSubscriptions`
--

LOCK TABLES `ConversationSubscriptions` WRITE;
/*!40000 ALTER TABLE `ConversationSubscriptions` DISABLE KEYS */;
INSERT INTO `ConversationSubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `ConversationSubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conversations`
--

DROP TABLE IF EXISTS `Conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conversations`
--

LOCK TABLES `Conversations` WRITE;
/*!40000 ALTER TABLE `Conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DataObjectExpressSearchIndexAttributes`
--

DROP TABLE IF EXISTS `DataObjectExpressSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DataObjectExpressSearchIndexAttributes` (
  `exEntryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`exEntryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataObjectExpressSearchIndexAttributes`
--

LOCK TABLES `DataObjectExpressSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `DataObjectExpressSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `DataObjectExpressSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressAttributeKeys`
--

DROP TABLE IF EXISTS `ExpressAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressAttributeKeys` (
  `entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_8C881F181257D5D` (`entity_id`),
  CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressAttributeKeys`
--

LOCK TABLES `ExpressAttributeKeys` WRITE;
/*!40000 ALTER TABLE `ExpressAttributeKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntities`
--

DROP TABLE IF EXISTS `ExpressEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntities` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `default_edit_form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `result_column_set` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  KEY `IDX_BC772AA6CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `ExpressForms` (`id`),
  CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `ExpressForms` (`id`),
  CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntities`
--

LOCK TABLES `ExpressEntities` WRITE;
/*!40000 ALTER TABLE `ExpressEntities` DISABLE KEYS */;
INSERT INTO `ExpressEntities` VALUES ('39362047-91c9-11e7-bf03-5435304d8a85','3936383b-91c9-11e7-bf03-5435304d8a85','3936383b-91c9-11e7-bf03-5435304d8a85','Data Object','data_object','data_objects','',0,'','N;',1,21,'2017-09-05 02:31:47',NULL);
/*!40000 ALTER TABLE `ExpressEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityAssociationSelectedEntries`
--

DROP TABLE IF EXISTS `ExpressEntityAssociationSelectedEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityAssociationSelectedEntries` (
  `id` int(11) NOT NULL,
  `exSelectedEntryID` int(11) NOT NULL,
  PRIMARY KEY (`id`,`exSelectedEntryID`),
  KEY `IDX_1F9C570CBF396750` (`id`),
  KEY `IDX_1F9C570CC7B1F65C` (`exSelectedEntryID`),
  CONSTRAINT `FK_1F9C570CBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressEntityEntryAssociations` (`id`),
  CONSTRAINT `FK_1F9C570CC7B1F65C` FOREIGN KEY (`exSelectedEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityAssociationSelectedEntries`
--

LOCK TABLES `ExpressEntityAssociationSelectedEntries` WRITE;
/*!40000 ALTER TABLE `ExpressEntityAssociationSelectedEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityAssociationSelectedEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityAssociations`
--

DROP TABLE IF EXISTS `ExpressEntityAssociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityAssociations` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  KEY `IDX_98A0F796B5910F71` (`target_entity_id`),
  CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityAssociations`
--

LOCK TABLES `ExpressEntityAssociations` WRITE;
/*!40000 ALTER TABLE `ExpressEntityAssociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityAssociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityEntries`
--

DROP TABLE IF EXISTS `ExpressEntityEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntries` (
  `exEntryID` int(11) NOT NULL AUTO_INCREMENT,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`exEntryID`),
  KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`),
  CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityEntries`
--

LOCK TABLES `ExpressEntityEntries` WRITE;
/*!40000 ALTER TABLE `ExpressEntityEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityEntryAssociations`
--

DROP TABLE IF EXISTS `ExpressEntityEntryAssociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntryAssociations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  KEY `IDX_25B3A082EFB9C8A5` (`association_id`),
  CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityEntryAssociations`
--

LOCK TABLES `ExpressEntityEntryAssociations` WRITE;
/*!40000 ALTER TABLE `ExpressEntityEntryAssociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityEntryAssociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressEntityEntryAttributeValues`
--

DROP TABLE IF EXISTS `ExpressEntityEntryAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntryAttributeValues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`exEntryID`,`akID`),
  KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  KEY `IDX_6DB64154B6561A7E` (`akID`),
  KEY `IDX_6DB64154A2A82A5D` (`avID`),
  CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressEntityEntryAttributeValues`
--

LOCK TABLES `ExpressEntityEntryAttributeValues` WRITE;
/*!40000 ALTER TABLE `ExpressEntityEntryAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressEntityEntryAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetAssociationControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAssociationControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAssociationControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`),
  CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetAssociationControls`
--

LOCK TABLES `ExpressFormFieldSetAssociationControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetAssociationControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetAssociationControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetAttributeKeyControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAttributeKeyControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAttributeKeyControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8481F9D1B6561A7E` (`akID`),
  CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetAttributeKeyControls`
--

LOCK TABLES `ExpressFormFieldSetAttributeKeyControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetAttributeKeyControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetAttributeKeyControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E42868A43ABF811A` (`field_set_id`),
  CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `ExpressFormFieldSets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetControls`
--

LOCK TABLES `ExpressFormFieldSetControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSetTextControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetTextControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetTextControls` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSetTextControls`
--

LOCK TABLES `ExpressFormFieldSetTextControls` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSetTextControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSetTextControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressFormFieldSets`
--

DROP TABLE IF EXISTS `ExpressFormFieldSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_A33BBBEC5FF69B7D` (`form_id`),
  CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `ExpressForms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressFormFieldSets`
--

LOCK TABLES `ExpressFormFieldSets` WRITE;
/*!40000 ALTER TABLE `ExpressFormFieldSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpressFormFieldSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpressForms`
--

DROP TABLE IF EXISTS `ExpressForms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressForms` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D09031A81257D5D` (`entity_id`),
  CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpressForms`
--

LOCK TABLES `ExpressForms` WRITE;
/*!40000 ALTER TABLE `ExpressForms` DISABLE KEYS */;
INSERT INTO `ExpressForms` VALUES ('3936383b-91c9-11e7-bf03-5435304d8a85','39362047-91c9-11e7-bf03-5435304d8a85','Form');
/*!40000 ALTER TABLE `ExpressForms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FailedLoginAttempts`
--

DROP TABLE IF EXISTS `FailedLoginAttempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FailedLoginAttempts` (
  `lcirID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record identifier',
  `flaIp` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'IP address of the failed login attempt',
  `flaTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp of the failed login attempt',
  PRIMARY KEY (`lcirID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Records failed login attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FailedLoginAttempts`
--

LOCK TABLES `FailedLoginAttempts` WRITE;
/*!40000 ALTER TABLE `FailedLoginAttempts` DISABLE KEYS */;
INSERT INTO `FailedLoginAttempts` VALUES (1,'127.000.000.001','2017-09-08 16:09:09');
/*!40000 ALTER TABLE `FailedLoginAttempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureAssignments`
--

DROP TABLE IF EXISTS `FeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureAssignments`
--

LOCK TABLES `FeatureAssignments` WRITE;
/*!40000 ALTER TABLE `FeatureAssignments` DISABLE KEYS */;
INSERT INTO `FeatureAssignments` VALUES (1,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/7315/0435/5007/14_poisk.jpg\";s:8:\"\0*\0width\";s:4:\"1280\";s:9:\"\0*\0height\";s:3:\"861\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(2,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/7315/0435/5007/14_poisk.jpg\";s:8:\"\0*\0width\";s:4:\"1280\";s:9:\"\0*\0height\";s:3:\"861\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(3,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/6415/0454/5870/article.jpg\";s:8:\"\0*\0width\";s:3:\"750\";s:9:\"\0*\0height\";s:3:\"420\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(5,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";N;s:8:\"\0*\0width\";N;s:9:\"\0*\0height\";N;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(9,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/6415/0454/5870/article.jpg\";s:8:\"\0*\0width\";s:3:\"750\";s:9:\"\0*\0height\";s:3:\"420\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(10,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/2115/0454/7425/article.jpg\";s:8:\"\0*\0width\";s:3:\"525\";s:9:\"\0*\0height\";s:3:\"294\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(11,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/4315/0454/7694/14_poisk.jpg\";s:8:\"\0*\0width\";s:3:\"750\";s:9:\"\0*\0height\";s:3:\"504\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(15,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/2115/0454/7425/article.jpg\";s:8:\"\0*\0width\";s:3:\"525\";s:9:\"\0*\0height\";s:3:\"294\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(16,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:42:\"/application/files/5515/0454/8344/girl.jpg\";s:8:\"\0*\0width\";s:3:\"456\";s:9:\"\0*\0height\";s:3:\"324\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(18,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/9215/0456/1287/750x420.png\";s:8:\"\0*\0width\";s:3:\"750\";s:9:\"\0*\0height\";s:3:\"420\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(19,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:41:\"/application/files/2815/0487/4027/033.jpg\";s:8:\"\0*\0width\";s:3:\"630\";s:9:\"\0*\0height\";s:3:\"420\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(20,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/9215/0456/1287/750x420.png\";s:8:\"\0*\0width\";s:3:\"750\";s:9:\"\0*\0height\";s:3:\"420\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(21,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:45:\"/application/files/9215/0456/1287/750x420.png\";s:8:\"\0*\0width\";s:3:\"750\";s:9:\"\0*\0height\";s:3:\"420\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');
/*!40000 ALTER TABLE `FeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureCategories`
--

DROP TABLE IF EXISTS `FeatureCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureCategories`
--

LOCK TABLES `FeatureCategories` WRITE;
/*!40000 ALTER TABLE `FeatureCategories` DISABLE KEYS */;
INSERT INTO `FeatureCategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `FeatureCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeKeys`
--

DROP TABLE IF EXISTS `FileAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeKeys`
--

LOCK TABLES `FileAttributeKeys` WRITE;
/*!40000 ALTER TABLE `FileAttributeKeys` DISABLE KEYS */;
INSERT INTO `FileAttributeKeys` VALUES (16),(17),(19);
/*!40000 ALTER TABLE `FileAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  KEY `IDX_BBECEAA4A2A82A5D` (`avID`),
  CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,16,157),(1,1,17,158),(2,1,16,185),(2,1,17,186),(2,2,16,199),(2,2,17,200),(1,2,16,201),(1,2,17,202),(1,3,16,203),(1,3,17,204),(1,4,16,205),(1,4,17,206),(2,3,16,220),(2,3,17,221),(2,4,16,222),(2,4,17,223),(2,5,16,224),(2,5,17,225),(3,1,16,226),(3,1,17,227),(4,1,16,814),(4,1,17,815),(4,2,16,817),(4,2,17,818),(4,3,16,819),(4,3,17,820),(5,1,16,821),(5,1,17,822),(5,2,16,823),(5,2,17,824),(5,3,16,825),(5,3,17,826),(5,4,16,875),(5,4,17,876),(5,5,16,877),(5,5,17,878);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailPaths`
--

DROP TABLE IF EXISTS `FileImageThumbnailPaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) unsigned NOT NULL,
  `fileVersionID` int(10) unsigned NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageLocationID` int(10) unsigned NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL,
  UNIQUE KEY `thumbnailPathID` (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailPaths`
--

LOCK TABLES `FileImageThumbnailPaths` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailPaths` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileImageThumbnailPaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailTypes`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

LOCK TABLES `FileImageThumbnailTypes` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailTypes` DISABLE KEYS */;
INSERT INTO `FileImageThumbnailTypes` VALUES ('file_manager_listing','File Manager Thumbnails',60,60,'exact',1,1),('file_manager_detail','File Manager Detail Thumbnails',400,NULL,'exact',1,2);
/*!40000 ALTER TABLE `FileImageThumbnailTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FilePermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypeAccessList`
--

LOCK TABLES `FilePermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FilePermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypeAccessListCustom`
--

LOCK TABLES `FilePermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,48.0000,48.0000,0.0000),(2,750.0000,532.0000,0.0000),(3,750.0000,420.0000,0.0000),(4,630.0000,420.0000,0.0000),(5,1537.0000,1025.0000,0.0000);
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocationTypes`
--

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeHandle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`fslTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocationTypes`
--

LOCK TABLES `FileStorageLocationTypes` WRITE;
/*!40000 ALTER TABLE `FileStorageLocationTypes` DISABLE KEYS */;
INSERT INTO `FileStorageLocationTypes` VALUES ('default','Default',1,0),('local','Local',2,0);
/*!40000 ALTER TABLE `FileStorageLocationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslIsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
INSERT INTO `FileStorageLocations` VALUES ('Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1,1);
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileUsageRecord`
--

DROP TABLE IF EXISTS `FileUsageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileUsageRecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileUsageRecord`
--

LOCK TABLES `FileUsageRecord` WRITE;
/*!40000 ALTER TABLE `FileUsageRecord` DISABLE KEYS */;
INSERT INTO `FileUsageRecord` VALUES (1,18,168,2),(1,19,168,2),(1,81,232,1),(2,82,232,2),(2,89,239,1),(1,90,239,2),(1,91,239,3),(2,95,240,1),(2,96,240,2),(4,98,246,3),(5,99,246,4),(3,101,249,1),(3,105,253,3);
/*!40000 ALTER TABLE `FileUsageRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,2,2,1,0),(2,1,2,1,0),(3,1,3,1,0),(4,1,4,1,0),(5,2,3,1,0),(6,2,4,1,0),(7,2,5,1,0),(8,4,2,1,0),(9,4,3,1,0),(10,5,2,1,0),(11,5,3,1,0),(12,5,4,1,0),(13,5,5,1,0);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8_unicode_ci,
  `fvExtension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(11) NOT NULL,
  `fvTags` longtext COLLATE utf8_unicode_ci,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fID`,`fvID`),
  KEY `IDX_D7B5A13AE3111F45` (`fID`),
  KEY `fvFilename` (`fvFilename`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,'14_poisk.jpg','731504355007','2017-09-02 15:23:28','2017-09-02 15:23:28',0,1,215168,1,'14 поиск.jpg','','jpg',1,'',1,0,1),(2,'14_poisk.jpg','431504547694','2017-09-04 20:54:54','2017-09-02 15:23:28',0,1,18409,1,'14 поиск.jpg','','jpg',1,'',1,0,1),(3,'ava1.png','591504548031','2017-09-04 21:00:31','2017-09-02 15:23:28',0,1,5624,1,'14 поиск.jpg','','png',1,'',1,0,1),(4,'ava1.png','821504548048','2017-09-04 21:00:49','2017-09-02 15:23:28',1,1,6055,1,'14 поиск.jpg','','png',1,'',1,0,1),(1,'article.jpg','641504545870','2017-09-04 20:24:30','2017-09-04 20:24:30',0,1,138614,1,'article.jpg','','jpg',1,'',1,0,2),(2,'article.jpg','211504547425','2017-09-04 20:50:26','2017-09-04 20:24:30',0,1,42729,1,'article.jpg','','jpg',1,'',1,0,2),(3,'article.jpg','491504548258','2017-09-04 21:04:18','2017-09-04 20:24:30',0,1,63727,1,'article.jpg','','jpg',1,'',1,0,2),(4,'girl.jpg','551504548344','2017-09-04 21:05:44','2017-09-04 20:24:30',0,1,37029,1,'article.jpg','','jpg',1,'',1,0,2),(5,'girl.jpg','421504548388','2017-09-04 21:06:28','2017-09-04 20:24:30',1,1,42270,1,'article.jpg','','jpg',1,'',1,0,2),(1,'750x420.png','921504561287','2017-09-05 00:41:27','2017-09-05 00:41:27',1,1,2220,1,'750x420.png','','png',1,'',1,0,3),(1,'033.jpg','331504873628','2017-09-08 15:27:08','2017-09-08 15:27:08',0,1,2210771,1,'033.jpg','','jpg',1,'',1,0,4),(2,'033.jpg','381504873834','2017-09-08 15:30:34','2017-09-08 15:27:08',0,1,42028,1,'033.jpg','','jpg',1,'',1,0,4),(3,'033.jpg','281504874027','2017-09-08 15:33:47','2017-09-08 15:27:08',1,1,29896,1,'033.jpg','','jpg',1,'',1,0,4),(1,'627320.jpg','791504874101','2017-09-08 15:35:02','2017-09-08 15:35:02',0,1,900097,1,'627320.jpg','','jpg',1,'',1,0,5),(2,'627320.jpg','671504874128','2017-09-08 15:35:28','2017-09-08 15:35:02',0,1,123702,1,'627320.jpg','','jpg',1,'',1,0,5),(3,'627320.jpg','631504874231','2017-09-08 15:37:11','2017-09-08 15:35:02',0,1,90081,1,'627320.jpg','','jpg',1,'',1,0,5),(4,'033.jpg','931504882581','2017-09-08 17:56:21','2017-09-08 15:35:02',0,1,2210771,1,'627320.jpg','','jpg',1,'',1,0,5),(5,'033.jpg','561504882640','2017-09-08 17:57:20','2017-09-08 15:35:02',1,1,123843,1,'627320.jpg','','jpg',1,'',1,0,5);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) unsigned NOT NULL,
  `folderTreeNodeID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `fslID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`),
  CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `FileStorageLocations` (`fslID`),
  CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2017-09-02 15:23:27',NULL,0,0,7,1,1),(2,'2017-09-04 20:24:30',NULL,0,0,9,1,1),(3,'2017-09-05 00:41:27',NULL,0,0,11,1,1),(4,'2017-09-08 15:27:08',NULL,0,0,7,1,1),(5,'2017-09-08 15:35:01',NULL,0,0,7,1,1);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FormSubmissionNotifications`
--

DROP TABLE IF EXISTS `FormSubmissionNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FormSubmissionNotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_E7B6BE406DCB6296` (`exEntryID`),
  CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE,
  CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FormSubmissionNotifications`
--

LOCK TABLES `FormSubmissionNotifications` WRITE;
/*!40000 ALTER TABLE `FormSubmissionNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `FormSubmissionNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringConfiguredDataSources`
--

DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringConfiguredDataSources`
--

LOCK TABLES `GatheringConfiguredDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringDataSources`
--

DROP TABLE IF EXISTS `GatheringDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringDataSources`
--

LOCK TABLES `GatheringDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringDataSources` DISABLE KEYS */;
INSERT INTO `GatheringDataSources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `GatheringDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemFeatureAssignments`
--

LOCK TABLES `GatheringItemFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemSelectedTemplates`
--

LOCK TABLES `GatheringItemSelectedTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

LOCK TABLES `GatheringItemTemplateFeatures` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateFeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateTypes`
--

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

LOCK TABLES `GatheringItemTemplateTypes` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateTypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplates`
--

DROP TABLE IF EXISTS `GatheringItemTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplates`
--

LOCK TABLES `GatheringItemTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplates` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `GatheringItemTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItems`
--

DROP TABLE IF EXISTS `GatheringItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItems`
--

LOCK TABLES `GatheringItems` WRITE;
/*!40000 ALTER TABLE `GatheringItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringPermissionAssignments`
--

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringPermissionAssignments`
--

LOCK TABLES `GatheringPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gatherings`
--

DROP TABLE IF EXISTS `Gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gatherings`
--

LOCK TABLES `Gatherings` WRITE;
/*!40000 ALTER TABLE `Gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately','2017-08-29 12:44:17',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2017-08-29 12:44:17',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2017-08-29 12:44:17',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2017-08-29 12:44:17',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2017-08-29 12:44:18',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2017-08-29 12:44:18',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2017-08-29 12:44:18',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0),(8,'Update Statistics Trackers','Scan the sitemap for file usage and stack usage to update statistics trackers','2017-08-29 12:44:18',NULL,0,NULL,0,'ENABLED','update_statistics',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LegacyAttributeKeys`
--

DROP TABLE IF EXISTS `LegacyAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LegacyAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LegacyAttributeKeys`
--

LOCK TABLES `LegacyAttributeKeys` WRITE;
/*!40000 ALTER TABLE `LegacyAttributeKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `LegacyAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginControlIpRanges`
--

DROP TABLE IF EXISTS `LoginControlIpRanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginControlIpRanges` (
  `lcirID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record identifier',
  `lcirIpFrom` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Start of the range',
  `lcirIpTo` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'End of the range',
  `lcirType` smallint(5) unsigned NOT NULL COMMENT 'Type of the record',
  `lcirExpires` datetime DEFAULT NULL COMMENT 'Record end-of-life timestamp',
  PRIMARY KEY (`lcirID`),
  KEY `IX_LoginControlIpRanges_Search` (`lcirIpFrom`,`lcirIpTo`,`lcirExpires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='IP ranges used to control login attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginControlIpRanges`
--

LOCK TABLES `LoginControlIpRanges` WRITE;
/*!40000 ALTER TABLE `LoginControlIpRanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginControlIpRanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
INSERT INTO `Logs` VALUES (1,'exceptions',1504203130,'Exception Occurred: /srv/http/darum/public_html/concrete/src/View/View.php:100 include(/srv/http/darum/public_html/concrete/themes/darum/common/elements/doctype.php): failed to open stream: No such file or directory (2)\n',0,600),(2,'exceptions',1504203260,'Exception Occurred: /srv/http/darum/public_html/concrete/src/View/View.php:100 include(/srv/http/darum/public_html/concrete/themes/darum/elements/common/doctype_bot.php): failed to open stream: No such file or directory (2)\n',0,600),(3,'application',1504344164,'Страница \"\", расположенная в \"/!drafts/161\" удалена',1,100),(4,'application',1504345993,'Страница \"\", расположенная в \"/!drafts/165\" удалена',1,100),(5,'application',1504346017,'Страница \"\", расположенная в \"/!drafts/166\" удалена',1,100),(6,'application',1504358859,'Страница \"Somesingle\", расположенная в \"/somesingle\" перемещена в корзину',1,100),(7,'exceptions',1504360778,'Exception Occurred: /srv/http/darum/public_html/concrete/src/View/View.php:233 include(/srv/http/darum/public_html/concrete/single_pages/somesingle.php): failed to open stream: No such file or directory (2)\n',1,600),(8,'exceptions',1504360783,'Exception Occurred: /srv/http/darum/public_html/concrete/src/View/View.php:233 include(/srv/http/darum/public_html/concrete/single_pages/somesingle.php): failed to open stream: No such file or directory (2)\n',1,600),(9,'exceptions',1504360788,'Exception Occurred: /srv/http/darum/public_html/concrete/src/View/View.php:233 include(/srv/http/darum/public_html/concrete/single_pages/somesingle.php): failed to open stream: No such file or directory (2)\n',1,600),(10,'exceptions',1504360811,'Exception Occurred: /srv/http/darum/public_html/concrete/src/View/View.php:233 include(/srv/http/darum/public_html/concrete/single_pages/somesingle.php): failed to open stream: No such file or directory (2)\n',1,600),(11,'application',1504364239,'Страница \"Somesingle\", расположенная в \"/roditelyam/somesingle\" перемещена в корзину',1,100),(12,'exceptions',1504386668,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:124 Call to a member function getSubNav() on null (1)\n',1,600),(13,'exceptions',1504386669,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:124 Call to a member function getSubNav() on null (1)\n',1,600),(14,'exceptions',1504387394,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/controller.php:11 Call to undefined method Concrete\\Block\\Autonav\\Controller::view() (1)\n',1,600),(15,'exceptions',1504387395,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/controller.php:11 Call to undefined method Concrete\\Block\\Autonav\\Controller::view() (1)\n',1,600),(16,'exceptions',1504435596,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:115 Allowed memory size of 134217728 bytes exhausted (tried to allocate 119799808 bytes) (1)\n',1,600),(17,'exceptions',1504435598,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:115 Allowed memory size of 134217728 bytes exhausted (tried to allocate 120324096 bytes) (1)\n',1,600),(18,'exceptions',1504435607,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:115 Allowed memory size of 134217728 bytes exhausted (tried to allocate 120061952 bytes) (1)\n',1,600),(19,'exceptions',1504435609,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:115 Allowed memory size of 134217728 bytes exhausted (tried to allocate 120324096 bytes) (1)\n',1,600),(20,'exceptions',1504435613,'Exception Occurred: /srv/http/darum/public_html/application/blocks/autonav/view.php:115 Allowed memory size of 134217728 bytes exhausted (tried to allocate 120324096 bytes) (1)\n',1,600),(21,'application',1504443056,'Страница \"\", расположенная в \"/186\" удалена',1,100),(22,'application',1504443057,'Страница \"\", расположенная в \"/185\" удалена',1,100),(23,'application',1504443233,'Страница \"\", расположенная в \"/189\" удалена',1,100),(24,'application',1504443324,'Страница \"\", расположенная в \"\" удалена',1,100),(25,'exceptions',1504443655,'Exception Occurred: /srv/http/darum/public_html/concrete/controllers/backend/user_interface/page.php:29 Доступ запрещен (0)\n',1,600),(26,'application',1504443772,'Страница \"вк\", расположенная в \"\" удалена',1,100),(27,'application',1504443885,'Страница \"Родителям\", расположенная в \"/roditelyam\" перемещена в корзину',1,100),(28,'application',1504443891,'Страница \"Родителям\", расположенная в \"/!trash/roditelyam\" перемещена в корзину',1,100),(29,'application',1504443922,'Страница \"Студентам\", расположенная в \"/studentam\" перемещена в корзину',1,100),(30,'application',1504443929,'Страница \"Отношения\", расположенная в \"/otnosheniya\" перемещена в корзину',1,100),(31,'application',1504443930,'Страница \"Отношения\", расположенная в \"/!trash/otnosheniya\" перемещена в корзину',1,100),(32,'application',1504443934,'Страница \"Отношения\", расположенная в \"/!trash/otnosheniya\" перемещена в корзину',1,100),(33,'application',1504446769,'Страница \"Популярные\", расположенная в \"/roditelyam/sovety/populyarnye-1\" перемещена в корзину',1,100),(34,'application',1504540568,'Страница \"\", расположенная в \"/!drafts/175\" удалена',1,100),(35,'application',1504540636,'Страница \"\", расположенная в \"/!drafts/229\" удалена',1,100),(36,'application',1504540735,'Страница \"\", расположенная в \"\" удалена',1,100),(37,'application',1504540735,'Страница \"\", расположенная в \"\" удалена',1,100),(38,'application',1504540896,'Страница \"Тестовая страница\", расположенная в \"/!drafts/230\" удалена',1,100),(39,'application',1504541085,'Страница \"\", расположенная в \"/!drafts/231\" удалена',1,100),(40,'application',1504542308,'Страница \"\", расположенная в \"\" удалена',1,100),(41,'application',1504545253,'Страница \"\", расположенная в \"\" удалена',1,100),(42,'exceptions',1504547091,'Exception Occurred: /srv/http/darum/public_html/application/themes/darum/article.php:13 Object of class Concrete\\Core\\Area\\Area could not be converted to string (4096)\n',1,600),(43,'application',1504562261,'Page \"\" at path \"/!drafts/241\" deleted',1,100),(44,'application',1504564313,'Page \"\" at path \"/!drafts/242\" deleted',1,100),(45,'exceptions',1504565071,'Exception Occurred: /srv/http/darum/public_html/application/themes/darum/articlelist.php:110 syntax error, unexpected end of file (4)\n',1,600),(46,'exceptions',1504691136,'Exception Occurred: /srv/http/darum/public_html/application/attributes/article_category/controller.php:12 Class \'Application\\Attribute\\ArticleCategory\\FontAwesomeIconFormatter\' not found (1)\n',1,600),(47,'exceptions',1504695248,'Exception Occurred: /srv/http/darum/public_html/concrete/controllers/single_page/dashboard/system/attributes/topics.php:53 Call to a member function getTreeTypeObject() on null (1)\n',1,600),(48,'exceptions',1504695376,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class Concrete\\Attribute\\ArticleCategory\\Controller does not exist (-1)\n',1,600),(49,'exceptions',1504704579,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(50,'exceptions',1504704580,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(51,'exceptions',1504704580,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(52,'exceptions',1504704580,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(53,'exceptions',1504704583,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(54,'exceptions',1504704583,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(55,'exceptions',1504704583,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(56,'exceptions',1504704583,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(57,'exceptions',1504704584,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(58,'exceptions',1504704585,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(59,'exceptions',1504704585,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(60,'exceptions',1504704585,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class helper/text does not exist (-1)\n',0,600),(61,'exceptions',1504705719,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(62,'exceptions',1504705852,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(63,'exceptions',1504705857,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(64,'exceptions',1504705897,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(65,'exceptions',1504705899,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(66,'exceptions',1504706033,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(67,'exceptions',1504706034,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(68,'exceptions',1504706050,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(69,'exceptions',1504706054,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:12 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(70,'exceptions',1504706098,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:20 syntax error, unexpected \'}\' (4)\n',0,600),(71,'exceptions',1504706103,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:14 Class \'Application\\Controller\\PageType\\Core\' not found (1)\n',0,600),(72,'exceptions',1504706166,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:13 Call to a member function filterByPageTypeHandler() on null (1)\n',0,600),(73,'exceptions',1504706183,'Exception Occurred: /srv/http/darum/public_html/concrete/src/Search/ItemList/Database/AttributedItemList.php:17 Unable to find attribute page_type_handler (0)\n',0,600),(74,'exceptions',1504709199,'Exception Occurred: /srv/http/darum/public_html/application/controllers/page_types/article_list.php:11 Class \'Application\\Controller\\PageType\\Transliterator\' not found (1)\n',0,600),(75,'exceptions',1504718676,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/illuminate/container/Container.php:734 Class Application\\Attribute\\Topics\\Controller does not exist (-1)\n',1,600),(76,'exceptions',1504718847,'Exception Occurred: /srv/http/darum/public_html/concrete/attributes/topics/controller.php:70 syntax error, unexpected \'}\', expecting \',\' or \';\' (4)\n',1,600),(77,'exceptions',1504725610,'Exception Occurred: /srv/http/darum/public_html/application/attributes/select/controller.php:45 Call to a member function getAttributeKeySettings() on null (1)\n',1,600),(78,'exceptions',1504725731,'Exception Occurred: /srv/http/darum/public_html/concrete/src/Attribute/Controller.php:336 get_class() expects parameter 1 to be object, string given (2)\n',1,600),(79,'exceptions',1504726560,'Exception Occurred: /srv/http/darum/public_html/application/attributes/select/controller.php:24 Cannot use Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings as SelectSettings because the name is already in use (64)\n',1,600),(80,'exceptions',1504728594,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" is not a valid entity or mapped super class. (0)\n',1,600),(81,'exceptions',1504729263,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(82,'exceptions',1504729264,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(83,'exceptions',1504729264,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(84,'exceptions',1504729264,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(85,'exceptions',1504729631,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" is not a valid entity or mapped super class. (0)\n',1,600),(86,'exceptions',1504729675,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" is not a valid entity or mapped super class. (0)\n',1,600),(87,'exceptions',1504729943,'Exception Occurred: /srv/http/darum/public_html/application/src/Entity/Attribute/Key/Settings/SelectSettings.php:15 Class \'Concrete\\Core\\Entity\\Attribute\\Key\\Settings\' not found (1)\n',1,600),(88,'exceptions',1504729974,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(89,'exceptions',1504730331,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(90,'exceptions',1504730361,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(91,'exceptions',1504730691,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(92,'exceptions',1504730725,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(93,'exceptions',1504730748,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(94,'exceptions',1504731201,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(95,'exceptions',1504731803,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(96,'exceptions',1504731859,'Exception Occurred: /srv/http/darum/public_html/application/attributes/select/controller.php:48 Call to undefined method Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\SelectSettings::getGenerateSlug() (1)\n',1,600),(97,'exceptions',1504732304,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(98,'exceptions',1504733987,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Persistence/Mapping/RuntimeReflectionService.php:72 Class Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\SelectSettings does not exist (-1)\n',1,600),(99,'exceptions',1504734289,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(100,'exceptions',1504734919,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(101,'exceptions',1504734937,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(102,'exceptions',1504734940,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(103,'exceptions',1504734951,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(104,'exceptions',1504734960,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(105,'exceptions',1504734960,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(106,'exceptions',1504734971,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(107,'exceptions',1504734991,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(108,'exceptions',1504735535,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(109,'exceptions',1504735536,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Proxy/AbstractProxyFactory.php:209 Doctrine\\Common\\Proxy\\AbstractProxyFactory::getProxyDefinition(): Failed opening required \'/srv/http/darum/public_html/application/config/doctrine/proxies/__CG__ConcreteCoreEntitySiteType.php\' (include_path=\'/srv/http/darum/public_html/concrete/vendor:.:/usr/share/php56/pear\') (64)\n',1,600),(110,'exceptions',1504737149,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(111,'exceptions',1504737369,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(112,'exceptions',1504737590,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:346 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" is not a valid entity or mapped super class. (0)\n',1,600),(113,'exceptions',1504737962,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Persistence/Mapping/MappingException.php:96 Class \'Application\\Attribute\\Select\\SelectSettingsDarum\' does not exist (0)\n',1,600),(114,'exceptions',1504737992,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettingsDarum\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(115,'exceptions',1504738257,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/MappingException.php:340 Class \"Application\\Src\\Entity\\Attribute\\Key\\Settings\\SelectSettings\" sub class of \"Concrete\\Core\\Entity\\Attribute\\Key\\Settings\\Settings\" is not a valid entity or mapped super class. (0)\n',1,600),(116,'exceptions',1504738387,'Exception Occurred: /srv/http/darum/public_html/application/src/Entity/Attribute/Key/Settings/SelectSettings.php:140 Cannot redeclare class Application\\Entity\\Attribute\\Key\\Settings\\SelectSettings (64)\n',1,600),(117,'exceptions',1504738622,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Persistence/Mapping/MappingException.php:37 The class \'Application\\Entity\\Attribute\\Key\\Settings\\SelectSettingsDarum\' was not found in the chain configured namespaces Concrete\\Core\\Entity, Application\\Src (0)\n',1,600),(118,'exceptions',1504738868,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php:71 An exception occurred while executing \'SELECT t1.akSelectAllowMultipleValues AS akSelectAllowMultipleValues_2, t1.akSelectAllowOtherValues AS akSelectAllowOtherValues_3, t1.akSelectOptionDisplayOrder AS akSelectOptionDisplayOrder_4, t1.akSelectGenerateSlug AS akSelectGenerateSlug_5, t1.avSelectOptionListID AS avSelectOptionListID_6, t1.akID AS akID_7 FROM atSelectSettings t1 WHERE t0.akID = ?\' with params [10]:\n\nSQLSTATE[42S22]: Column not found: 1054 Unknown column \'t0.akID\' in \'where clause\' (0)\n',1,600),(119,'exceptions',1504738922,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php:71 An exception occurred while executing \'SELECT t1.akSelectAllowMultipleValues AS akSelectAllowMultipleValues_2, t1.akSelectAllowOtherValues AS akSelectAllowOtherValues_3, t1.akSelectOptionDisplayOrder AS akSelectOptionDisplayOrder_4, t1.akSelectGenerateSlug AS akSelectGenerateSlug_5, t1.avSelectOptionListID AS avSelectOptionListID_6, t1.akID AS akID_7 FROM atSelectSettings t1 WHERE t0.akID = ?\' with params [10]:\n\nSQLSTATE[42S22]: Column not found: 1054 Unknown column \'t0.akID\' in \'where clause\' (0)\n',1,600),(120,'exceptions',1504739015,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php:71 An exception occurred while executing \'SELECT t1.akSelectAllowMultipleValues AS akSelectAllowMultipleValues_2, t1.akSelectAllowOtherValues AS akSelectAllowOtherValues_3, t1.akSelectOptionDisplayOrder AS akSelectOptionDisplayOrder_4, t1.akSelectGenerateSlug AS akSelectGenerateSlug_5, t1.avSelectOptionListID AS avSelectOptionListID_6, t1.akID AS akID_7 FROM atSelectSettings t1 WHERE t0.akID = ?\' with params [10]:\n\nSQLSTATE[42S22]: Column not found: 1054 Unknown column \'t0.akID\' in \'where clause\' (0)\n',1,600),(121,'exceptions',1504739189,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php:71 An exception occurred while executing \'SELECT t1.akSelectAllowMultipleValues AS akSelectAllowMultipleValues_2, t1.akSelectAllowOtherValues AS akSelectAllowOtherValues_3, t1.akSelectOptionDisplayOrder AS akSelectOptionDisplayOrder_4, t1.akSelectGenerateSlug AS akSelectGenerateSlug_5, t1.avSelectOptionListID AS avSelectOptionListID_6, t1.akID AS akID_7 FROM atSelectSettings t1 WHERE t0.akID = ?\' with params [10]:\n\nSQLSTATE[42S22]: Column not found: 1054 Unknown column \'t0.akID\' in \'where clause\' (0)\n',1,600),(122,'exceptions',1504739191,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php:71 An exception occurred while executing \'SELECT t1.akSelectAllowMultipleValues AS akSelectAllowMultipleValues_2, t1.akSelectAllowOtherValues AS akSelectAllowOtherValues_3, t1.akSelectOptionDisplayOrder AS akSelectOptionDisplayOrder_4, t1.akSelectGenerateSlug AS akSelectGenerateSlug_5, t1.avSelectOptionListID AS avSelectOptionListID_6, t1.akID AS akID_7 FROM atSelectSettings t1 WHERE t0.akID = ?\' with params [10]:\n\nSQLSTATE[42S22]: Column not found: 1054 Unknown column \'t0.akID\' in \'where clause\' (0)\n',1,600),(123,'exceptions',1504739675,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/doctrine/common/lib/Doctrine/Common/Persistence/Mapping/MappingException.php:37 The class \'Application\\Entity\\Attribute\\Key\\Settings\\SelectSettingsDarum\' was not found in the chain configured namespaces Concrete\\Core\\Entity, Application\\Src (0)\n',1,600),(124,'exceptions',1504874696,'Exception Occurred: /srv/http/darum/public_html/application/attributes/select/controller.php:46 Call to a member function getAttributeKeySettings() on null (1)\n',1,600),(125,'exceptions',1504875006,'Exception Occurred: /srv/http/darum/public_html/concrete/vendor/zendframework/zend-http/src/Client/Adapter/Curl.php:453 Read timed out (1000)\n',1,600),(126,'exceptions',1504877033,'Exception Occurred: /srv/http/darum/public_html/concrete/src/Search/ItemList/Database/AttributedItemList.php:17 Unable to find attribute article_category_parents (0)\n',1,600),(127,'exceptions',1504883432,'Exception Occurred: /srv/http/darum/public_html/application/attributes/select/type_form.php:53 syntax error, unexpected \'ссылок\' (T_STRING), expecting \',\' or \';\' (4)\n',1,600),(128,'exceptions',1504884234,'Exception Occurred: /srv/http/darum/public_html/application/attributes/select/type_form.php:57 syntax error, unexpected \'ссылки\' (T_STRING), expecting \',\' or \';\' (4)\n',1,600),(129,'application',1504885579,'Page \"Все\" at path \"/roditelyam/stati/vse\" Moved to trash',1,100),(130,'application',1504885688,'Page \"\" at path \"\" deleted',1,100),(131,'application',1504885715,'Page \"Популярные\" at path \"/roditelyam/stati/populyarnye\" Moved to trash',1,100);
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualPageRelations`
--

DROP TABLE IF EXISTS `MultilingualPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualPageRelations` (
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualPageRelations`
--

LOCK TABLES `MultilingualPageRelations` WRITE;
/*!40000 ALTER TABLE `MultilingualPageRelations` DISABLE KEYS */;
INSERT INTO `MultilingualPageRelations` VALUES ('ru_RU','ru',1,248),('ru_RU','ru',2,183),('ru_RU','ru',2,233),('ru_RU','ru',3,215),('ru_RU','ru',3,234);
/*!40000 ALTER TABLE `MultilingualPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualTranslations`
--

DROP TABLE IF EXISTS `MultilingualTranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualTranslations`
--

LOCK TABLES `MultilingualTranslations` WRITE;
/*!40000 ALTER TABLE `MultilingualTranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualTranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotificationAlerts`
--

DROP TABLE IF EXISTS `NotificationAlerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationAlerts` (
  `naID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`naID`),
  KEY `IDX_E11C7408FD71026C` (`uID`),
  KEY `IDX_E11C7408ED024EFD` (`nID`),
  CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`),
  CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotificationAlerts`
--

LOCK TABLES `NotificationAlerts` WRITE;
/*!40000 ALTER TABLE `NotificationAlerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotificationAlerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotificationPermissionSubscriptionList`
--

DROP TABLE IF EXISTS `NotificationPermissionSubscriptionList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationPermissionSubscriptionList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotificationPermissionSubscriptionList`
--

LOCK TABLES `NotificationPermissionSubscriptionList` WRITE;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionList` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotificationPermissionSubscriptionListCustom`
--

DROP TABLE IF EXISTS `NotificationPermissionSubscriptionListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationPermissionSubscriptionListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  KEY `peID` (`peID`),
  KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotificationPermissionSubscriptionListCustom`
--

LOCK TABLES `NotificationPermissionSubscriptionListCustom` WRITE;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotificationPermissionSubscriptionListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notifications`
--

DROP TABLE IF EXISTS `Notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notifications` (
  `nID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`nID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notifications`
--

LOCK TABLES `Notifications` WRITE;
/*!40000 ALTER TABLE `Notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `Notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OauthUserMap`
--

DROP TABLE IF EXISTS `OauthUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OauthUserMap`
--

LOCK TABLES `OauthUserMap` WRITE;
/*!40000 ALTER TABLE `OauthUserMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `OauthUserMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageFeeds`
--

DROP TABLE IF EXISTS `PageFeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageFeeds` (
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL,
  `iconFID` int(10) unsigned NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL,
  `ptID` int(10) unsigned NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL,
  PRIMARY KEY (`pfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageFeeds`
--

LOCK TABLES `PageFeeds` WRITE;
/*!40000 ALTER TABLE `PageFeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageFeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `cPath` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL,
  PRIMARY KEY (`ppID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cID` (`cID`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES ('/dashboard',1,2,1,1),('/dashboard/sitemap',2,3,1,1),('/dashboard/sitemap/full',3,4,1,1),('/dashboard/sitemap/explore',4,5,1,1),('/dashboard/sitemap/search',5,6,1,1),('/dashboard/files',6,7,1,1),('/dashboard/files/search',7,8,1,1),('/dashboard/files/attributes',8,9,1,1),('/dashboard/files/sets',9,10,1,1),('/dashboard/files/add_set',10,11,1,1),('/dashboard/users',11,12,1,1),('/dashboard/users/search',12,13,1,1),('/dashboard/users/groups',13,14,1,1),('/dashboard/users/attributes',14,15,1,1),('/dashboard/users/add',15,16,1,1),('/dashboard/users/add_group',16,17,1,1),('/dashboard/users/groups/bulkupdate',17,18,1,1),('/dashboard/users/group_sets',18,19,1,1),('/dashboard/users/points',19,20,1,1),('/dashboard/users/points/assign',20,21,1,1),('/dashboard/users/points/actions',21,22,1,1),('/dashboard/express',22,23,1,1),('/dashboard/express/entries',23,24,1,1),('/dashboard/reports',24,25,1,1),('/dashboard/reports/forms',25,26,1,1),('/dashboard/reports/forms/legacy',26,27,1,1),('/dashboard/reports/surveys',27,28,1,1),('/dashboard/reports/logs',28,29,1,1),('/dashboard/pages',29,30,1,1),('/dashboard/pages/themes',30,31,1,1),('/dashboard/pages/themes/inspect',31,32,1,1),('/dashboard/pages/types',32,33,1,1),('/dashboard/pages/types/organize',33,34,1,1),('/dashboard/pages/types/add',34,35,1,1),('/dashboard/pages/types/form',35,36,1,1),('/dashboard/pages/types/output',36,37,1,1),('/dashboard/pages/types/attributes',37,38,1,1),('/dashboard/pages/types/permissions',38,39,1,1),('/dashboard/pages/templates',39,40,1,1),('/dashboard/pages/templates/add',40,41,1,1),('/dashboard/pages/attributes',41,42,1,1),('/dashboard/pages/single',42,43,1,1),('/dashboard/pages/feeds',43,44,1,1),('/dashboard/conversations',44,45,1,1),('/dashboard/conversations/messages',45,46,1,1),('/dashboard/blocks',46,47,1,1),('/dashboard/blocks/stacks',47,48,1,1),('/dashboard/blocks/permissions',48,49,1,1),('/dashboard/blocks/stacks/list',49,50,1,1),('/dashboard/blocks/types',50,51,1,1),('/dashboard/extend',51,52,1,1),('/dashboard/extend/install',52,53,1,1),('/dashboard/extend/update',53,54,1,1),('/dashboard/extend/connect',54,55,1,1),('/dashboard/extend/themes',55,56,1,1),('/dashboard/extend/addons',56,57,1,1),('/dashboard/system',57,58,1,1),('/dashboard/system/basics',58,59,1,1),('/dashboard/system/basics/name',59,60,1,1),('/dashboard/system/basics/accessibility',60,61,1,1),('/dashboard/system/basics/social',61,62,1,1),('/dashboard/system/basics/icons',62,63,1,1),('/dashboard/system/basics/editor',63,64,1,1),('/dashboard/system/basics/multilingual',64,65,1,1),('/dashboard/system/basics/multilingual/update',65,66,1,1),('/dashboard/system/basics/timezone',66,67,1,1),('/dashboard/system/basics/attributes',67,68,1,1),('/dashboard/system/express',68,69,1,1),('/dashboard/system/express/entities',69,70,1,1),('/dashboard/system/express/entities/attributes',70,71,1,1),('/dashboard/system/express/entities/associations',71,72,1,1),('/dashboard/system/express/entities/forms',72,73,1,1),('/dashboard/system/express/entities/customize_search',73,74,1,1),('/dashboard/system/express/entities/order_entries',74,75,1,1),('/dashboard/system/express/entries',75,76,1,1),('/dashboard/system/multilingual',76,77,1,1),('/dashboard/system/multilingual/setup',77,78,1,1),('/dashboard/system/multilingual/copy',78,79,1,1),('/dashboard/system/multilingual/page_report',79,80,1,1),('/dashboard/system/multilingual/translate_interface',80,81,1,1),('/dashboard/system/seo',81,82,1,1),('/dashboard/system/seo/urls',82,83,1,1),('/dashboard/system/seo/bulk',83,84,1,1),('/dashboard/system/seo/codes',84,85,1,1),('/dashboard/system/seo/excluded',85,86,1,1),('/dashboard/system/seo/searchindex',86,87,1,1),('/dashboard/system/files',87,88,1,1),('/dashboard/system/files/filetypes',88,89,1,1),('/dashboard/system/files/permissions',89,90,1,1),('/dashboard/system/files/thumbnails',90,91,1,1),('/dashboard/system/files/thumbnails/options',91,92,1,1),('/dashboard/system/files/image_uploading',92,93,1,1),('/dashboard/system/files/storage',93,94,1,1),('/dashboard/system/optimization',94,95,1,1),('/dashboard/system/optimization/cache',95,96,1,1),('/dashboard/system/optimization/clearcache',96,97,1,1),('/dashboard/system/optimization/jobs',97,98,1,1),('/dashboard/system/optimization/query_log',98,99,1,1),('/dashboard/system/permissions',99,100,1,1),('/dashboard/system/permissions/site',100,101,1,1),('/dashboard/system/permissions/tasks',101,102,1,1),('/dashboard/system/permissions/users',102,103,1,1),('/dashboard/system/permissions/advanced',103,104,1,1),('/dashboard/system/permissions/workflows',104,105,1,1),('/dashboard/system/permissions/blacklist',105,106,1,1),('/dashboard/system/permissions/blacklist/range',106,107,1,1),('/dashboard/system/permissions/captcha',107,108,1,1),('/dashboard/system/permissions/antispam',108,109,1,1),('/dashboard/system/permissions/maintenance',109,110,1,1),('/dashboard/system/registration',110,111,1,1),('/dashboard/system/registration/open',111,112,1,1),('/dashboard/system/registration/postlogin',112,113,1,1),('/dashboard/system/registration/profiles',113,114,1,1),('/dashboard/system/registration/authentication',114,115,1,1),('/dashboard/system/registration/global_password_reset',115,116,1,1),('/dashboard/system/registration/notification',116,117,1,1),('/dashboard/system/mail',117,118,1,1),('/dashboard/system/mail/method',118,119,1,1),('/dashboard/system/mail/method/test',119,120,1,1),('/dashboard/system/mail/importers',120,121,1,1),('/dashboard/system/conversations',121,122,1,1),('/dashboard/system/conversations/settings',122,123,1,1),('/dashboard/system/conversations/points',123,124,1,1),('/dashboard/system/conversations/bannedwords',124,125,1,1),('/dashboard/system/conversations/permissions',125,126,1,1),('/dashboard/system/attributes',126,127,1,1),('/dashboard/system/attributes/types',127,128,1,1),('/dashboard/system/attributes/sets',128,129,1,1),('/dashboard/system/attributes/topics',129,130,1,1),('/dashboard/system/attributes/topics/add',130,131,1,1),('/dashboard/system/environment',131,132,1,1),('/dashboard/system/environment/info',132,133,1,1),('/dashboard/system/environment/debug',133,134,1,1),('/dashboard/system/environment/logging',134,135,1,1),('/dashboard/system/environment/proxy',135,136,1,1),('/dashboard/system/environment/entities',136,137,1,1),('/dashboard/system/update',137,138,1,1),('/dashboard/system/update/update',138,139,1,1),('/dashboard/welcome',139,140,1,1),('/dashboard/welcome/me',140,141,1,1),('/!stacks',141,142,1,1),('/!trash',142,143,1,1),('/login',143,144,1,1),('/register',144,145,1,1),('/account',145,146,1,1),('/account/edit_profile',146,147,1,1),('/account/avatar',147,148,1,1),('/account/messages',148,149,1,1),('/page_forbidden',149,150,1,1),('/download_file',150,151,1,1),('/!drafts',151,152,1,1),('/page_not_found',152,153,1,1),('/account/welcome',153,154,1,0),('/!stacks/header-site-title',154,156,1,1),('/!stacks/header-navigation',155,157,1,1),('/!stacks/footer-legal',156,158,1,1),('/!stacks/footer-navigation',157,159,1,1),('/!stacks/footer-contact',158,160,1,1),('/!trash/roditelyam',160,163,1,1),('/!trash/studentam',161,164,1,1),('/!drafts/167',164,167,1,1),('/!trash/somesingle',166,168,1,1),('/!trash/somesingle-1',167,169,1,1),('/somesingle',168,169,0,0),('/!trash/otnosheniya',169,170,1,1),('/!drafts/171',170,171,1,1),('/!trash/roditelyam/sovety',171,172,1,1),('/!stacks/mainmenu',172,174,1,1),('/!trash/studentam/pomosh-studentam',174,176,1,1),('/!stacks/subnav',175,178,1,1),('/!trash/studentam/stati/novye-stati',176,179,1,1),('/!trash/studentam/stati',177,180,1,1),('/!trash/studentam/sovety',178,181,1,1),('/!trash/studentam/sovety/novye-sovety',179,182,1,1),('/184',180,184,1,1),('/187',183,187,1,1),('/roditelyam',186,197,1,1),('/studentam',187,198,1,1),('/otnosheniya',188,199,1,1),('/roditelyam/sovety',189,200,1,1),('/studentam/sovety',190,201,1,1),('/otnosheniya/sovety',191,202,1,1),('/roditelyam/stati',192,203,1,1),('/studentam/stati',193,204,1,1),('/otnosheniya/stati',194,205,1,1),('/roditelyam/vopros-otvet',195,207,1,1),('/studentam/vopros-otvet',196,208,1,1),('/otnosheniya/vopros-otvet',197,209,1,1),('/roditelyam/pomosh-psihologa',198,211,1,1),('/studentam/pomosh-psihologa',199,212,1,1),('/otnosheniya/pomosh-psihologa',200,213,1,1),('/roditelyam/sovety/novye',202,216,1,1),('/roditelyam/sovety/populyarnye',203,217,1,1),('/!trash/populyarnye',204,218,1,1),('/!trash/vse',205,219,1,1),('/!trash/populyarnye-1',206,220,1,1),('/studentam/sovety/novye',207,221,1,1),('/studentam/sovety/populyarnye',208,222,1,1),('/studentam/stati/novye',209,223,1,1),('/studentam/stati/populyarnye',210,224,1,1),('/otnosheniya/sovety/novye',211,225,1,1),('/otnosheniya/sovety/populyarnye',212,226,1,1),('/otnosheniya/stati/novye',213,227,1,1),('/otnosheniya/stati/populyarnye',214,228,1,1),('/233',219,233,1,1),('/234',220,234,1,1),('/!drafts/236',221,236,1,1),('/roditelyam/stati/novye/testovaya-statya',222,232,1,0),('/!drafts/237',223,237,1,1),('/!drafts/238',224,238,1,1),('/!trash/vse/second-test-page',225,239,1,1),('/!trash/vse/once-more',226,240,1,1),('/!trash/vse/some-third',229,243,1,1),('/!drafts/244',230,244,1,1),('/!trash/vse/nazvanie-stranichki',231,245,1,1),('/!trash/vse/novaya-statya-roditelyam',232,246,1,1),('/!drafts/247',233,247,1,1),('/248',234,248,1,1),('/!drafts/250',235,250,1,1),('/!drafts/251',236,251,1,1),('/roditelyam/stati/testovaya-statya',237,252,1,1),('/roditelyam/stati/nazvanie-stati',238,253,1,1);
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,71),(2,1,52),(144,1,48),(145,1,49),(150,1,50),(152,1,53),(153,1,51),(1,2,72),(152,2,54),(1,3,73),(152,3,55),(1,4,74),(152,4,56),(1,5,75),(152,5,57),(1,6,76),(152,6,58),(1,7,77),(152,7,59),(1,8,79),(152,8,61),(1,9,80),(152,9,62),(1,10,81),(152,10,63),(1,11,82),(152,11,64),(1,12,83),(152,12,65),(1,13,84),(152,13,66),(1,14,85),(152,14,67),(1,15,86),(152,15,68),(1,16,87),(152,16,69),(1,17,88),(152,17,70),(1,18,78),(152,18,60);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (141,'','Waiting for Me',NULL,'/dashboard/welcome/me','2017-08-29 12:45:48','2017-08-29 12:46:38',NULL,0),(1,'','Главная',NULL,NULL,'2017-08-29 12:42:34','2017-09-03 16:01:02',NULL,0),(163,'','Родителям','','/roditelyam','2017-09-02 12:30:00','2017-09-03 16:01:03',NULL,0),(164,'','Студентам','','/studentam','2017-09-02 12:35:00','2017-09-02 15:57:30',NULL,0),(144,'','Login','','/login','2017-08-29 12:46:40','2017-09-02 15:03:36',NULL,0),(168,'','Somesingle','','/somesingle','2017-09-02 15:12:00','2017-09-02 15:32:12',NULL,0),(170,'','Отношения',NULL,'/otnosheniya','2017-09-02 23:18:09','2017-09-02 23:18:49',NULL,0),(172,'','Советы','','/roditelyam/sovety','2017-09-02 23:19:19','2017-09-02 23:20:26',NULL,0),(174,'','mainmenu',NULL,'/!stacks/mainmenu','2017-09-02 23:43:44','2017-09-03 13:32:35',NULL,0),(176,'','Помощь студентам','','/studentam/pomosh-studentam','2017-09-03 13:17:57','2017-09-03 13:51:25',NULL,0),(178,'','subnav',NULL,'/!stacks/subnav','2017-09-03 13:31:30','2017-09-03 13:51:24',NULL,0),(179,'','Новые статьи','','/studentam/pomosh-studentam/novye-stati','2017-09-03 13:34:35','2017-09-03 13:34:47',NULL,0),(180,'','Статьи','','/studentam/stati','2017-09-03 13:48:36','2017-09-03 13:49:03',NULL,0),(181,'','Советы','','/studentam/sovety','2017-09-03 13:50:22','2017-09-03 13:51:21',NULL,0),(182,'','Новые советы','','/studentam/sovety/novye-sovety','2017-09-03 13:50:58','2017-09-03 13:51:21',NULL,0),(197,' Лэндинг для:  \"Помощь родителям\" \r\n ','Родителям',NULL,'/roditelyam','2017-09-03 16:17:17','2017-09-03 16:20:36',NULL,0),(198,' Лэндинг для:  Помощь Студентам \r\n ','Студентам',NULL,'/studentam','2017-09-03 16:17:58','2017-09-03 16:21:06',NULL,0),(199,' Лэндинг для:  помощь в отношениях \r\n ','Отношения',NULL,'/otnosheniya','2017-09-03 16:18:51','2017-09-03 16:21:41',NULL,0),(200,' Советы родителям Главная \r\n ','Советы',NULL,'/roditelyam/sovety','2017-09-03 16:24:29','2017-09-03 16:26:05',NULL,0),(201,' Советы Студентам - главная \r\n ','Советы',NULL,'/studentam/sovety','2017-09-03 16:24:44','2017-09-03 16:26:39',NULL,0),(202,' Советы в отношениях главная \r\n ','Советы',NULL,'/otnosheniya/sovety','2017-09-03 16:25:11','2017-09-03 16:27:07',NULL,0),(203,' Для страницы:  статьи родителям \r\n ','Статьи',NULL,'/roditelyam/stati','2017-09-03 16:30:24','2017-09-08 18:49:25',NULL,0),(204,' Для страницы:  статьи студентам \r\n ','Статьи',NULL,'/studentam/stati','2017-09-03 16:30:42','2017-09-03 16:44:06',NULL,0),(205,' Для страницы:  статьи отношения \r\n ','Статьи',NULL,'/otnosheniya/stati','2017-09-03 16:32:08','2017-09-03 16:45:45',NULL,0),(207,' Для страницы... вопрос-ответ родителям \r\n ','Вопрос-ответ',NULL,'/roditelyam/vopros-otvet','2017-09-03 16:34:34','2017-09-03 16:43:10',NULL,0),(208,' Для страницы... Вопрос-ответ студентам \r\n ','Вопрос-Ответ',NULL,'/studentam/vopros-otvet','2017-09-03 16:35:46','2017-09-03 16:44:30',NULL,0),(209,' Для страницы... Отношения-вопросОтвет \r\n ','Вопрос-Ответ',NULL,'/otnosheniya/vopros-otvet','2017-09-03 16:36:07','2017-09-03 16:47:22',NULL,0),(211,' Список психологов \r\n ','Помощь психолога',NULL,'/roditelyam/pomosh-psihologa','2017-09-03 16:39:54','2017-09-03 16:41:13',NULL,0),(216,'','Новые',NULL,'/roditelyam/sovety/novye','2017-09-03 16:52:22','2017-09-03 16:57:26',NULL,0),(217,'','Популярные',NULL,'/roditelyam/sovety/populyarnye','2017-09-03 16:52:38','2017-09-04 20:13:55',NULL,0),(218,'','Популярные',NULL,'/!trash/populyarnye','2017-09-03 16:52:40','2017-09-03 16:57:26',NULL,0),(245,' Введите текст страницы... \r\n ','Название Странички',NULL,'/roditelyam/stati/vse/nazvanie-stranichki','2017-09-08 15:14:53','2017-09-08 15:17:19',NULL,0),(220,'','Популярные',NULL,'/roditelyam/stati/populyarnye','2017-09-03 16:53:32','2017-09-04 20:13:55',NULL,0),(221,'','Новые',NULL,'/studentam/sovety/novye','2017-09-03 16:54:00','2017-09-03 16:57:26',NULL,0),(222,'','Популярные',NULL,'/studentam/sovety/populyarnye','2017-09-03 16:54:38','2017-09-04 20:13:55',NULL,0),(223,'','Новые',NULL,'/studentam/stati/novye','2017-09-03 16:55:03','2017-09-03 16:57:26',NULL,0),(224,'','Популярные',NULL,'/studentam/stati/populyarnye','2017-09-03 16:55:33','2017-09-04 20:13:55',NULL,0),(225,'','Новые',NULL,'/otnosheniya/sovety/novye','2017-09-03 16:56:13','2017-09-03 16:57:26',NULL,0),(226,'','Популярные',NULL,'/otnosheniya/sovety/populyarnye','2017-09-03 16:56:28','2017-09-04 20:13:55',NULL,0),(227,'','Новые',NULL,'/otnosheniya/stati/novye','2017-09-03 16:56:46','2017-09-03 16:57:26',NULL,0),(228,'','Популярные',NULL,'/otnosheniya/stati/populyarnye','2017-09-03 16:57:00','2017-09-04 20:13:55',NULL,0),(219,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(232,' Введите текст страницы... \r\n\r\nТут будет подзаголовок\r\n\r\n Тут что нибудь пишем \r\n\r\n \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n   \r\n\r\n Продолжаем писанину, все вроде хорошо получается \r\n ','Тестовая статья',NULL,'/roditelyam/stati/novye/testovaya-statya','2017-09-04 19:25:37','2017-09-06 19:12:57',NULL,0),(239,' Введите текст страницы... \r\n ','second_test_page',NULL,'/roditelyam/stati/vse/second-test-page','2017-09-04 20:47:37','2017-09-06 19:16:05',NULL,0),(240,' Введите текст страницы... \r\n ','once_more',NULL,'/roditelyam/stati/vse/once-more','2017-09-04 21:02:42','2017-09-08 15:56:50',NULL,0),(243,' Введите текст страницы... \r\n ','some third',NULL,'/roditelyam/stati/vse/some-third','2017-09-05 01:32:11','2017-09-06 14:04:42',NULL,0),(246,'Подзаголовок\r\n\r\n Введите текст страницы... \r\n\r\n фывафывафывафывафываыфыфвафыва \r\n\r\n фывафывафывафывафывафывафыва \r\n\r\n фывафывафывафывафывафывафыва \r\n\r\n\r\n фывафывафывафывафывафывафываыва \r\n\r\n   \r\n\r\n\r\nЧто то под картинкой\r\n\r\n\r\n\r\n ывафывафывафывафываывф фвафывафыва фвыафыва \r\n ','Новая статья родителям',NULL,'/roditelyam/stati/vse/novaya-statya-roditelyam','2017-09-08 15:17:34','2017-09-08 16:02:29',NULL,0),(252,' Введите текст сюда \r\n ','Тестовая статья',NULL,'/roditelyam/stati/testovaya-statya','2017-09-08 18:55:18','2017-09-08 18:57:09',NULL,0),(253,' Введите текст сюда \r\n ','Название статьи',NULL,'/roditelyam/stati/nazvanie-stati','2017-09-08 19:10:28','2017-09-08 19:17:55',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTemplates`
--

DROP TABLE IF EXISTS `PageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`pTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTemplates`
--

LOCK TABLES `PageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTemplates` DISABLE KEYS */;
INSERT INTO `PageTemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'desktop','','Desktop',1,0),(3,'dashboard_full','','Dashboard Full',1,0),(4,'article','right_list.png','Один совет или статья',0,0),(5,'articlelist','left_list.png','Список статей или советов',0,0),(6,'landing','full_list.png','Landing',0,0),(7,'second_level_two_column','two_column.png','Second Level Two Column',0,0),(8,'second_level_horizont','feature.png','Second Level Horizont',0,0),(9,'main','full.png','Main',0,0);
/*!40000 ALTER TABLE `PageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeCustomStyles`
--

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeCustomStyles`
--

LOCK TABLES `PageThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1),(2,'darum','Darum Concrete5 theme','',0,0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerControlTypes`
--

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

LOCK TABLES `PageTypeComposerControlTypes` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` DISABLE KEYS */;
INSERT INTO `PageTypeComposerControlTypes` VALUES (1,'core_page_property','Built-In Property',0),(2,'collection_attribute','Custom Attribute',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

LOCK TABLES `PageTypeComposerFormLayoutSetControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSetControls` VALUES (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,'Page Name',NULL,NULL,1),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',3,'','','',1),(13,5,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(14,5,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(15,5,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(16,6,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(17,6,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(18,6,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(19,7,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(20,7,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(21,7,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(22,8,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(23,8,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(24,8,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(25,9,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(26,9,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(27,9,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(28,10,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(29,10,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(30,10,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(31,11,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(32,11,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,1),(33,11,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(34,1,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:1;}',6,'','','',1),(35,1,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:2;}',7,'','','',1),(36,1,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:3;}',8,'','','',1),(37,12,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"28\";s:25:\"ptComposerFormLayoutSetID\";s:2:\"10\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"0\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',0,NULL,NULL,NULL,0),(38,12,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":13:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"29\";s:25:\"ptComposerFormLayoutSetID\";s:2:\"10\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"1\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',1,NULL,NULL,NULL,1),(39,12,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"30\";s:25:\"ptComposerFormLayoutSetID\";s:2:\"10\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"2\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',2,NULL,NULL,NULL,0),(40,13,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"31\";s:25:\"ptComposerFormLayoutSetID\";s:2:\"11\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"0\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',0,NULL,NULL,NULL,0),(41,13,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":13:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"32\";s:25:\"ptComposerFormLayoutSetID\";s:2:\"11\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"1\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',1,NULL,NULL,NULL,1),(42,13,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"33\";s:25:\"ptComposerFormLayoutSetID\";s:2:\"11\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"2\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',2,NULL,NULL,NULL,0),(44,1,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:11;}',4,'Популярная','','',0),(45,1,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:26;}',5,NULL,NULL,NULL,0),(49,1,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:30;}',1,NULL,NULL,NULL,0),(50,14,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:30;}',0,NULL,NULL,NULL,0),(51,14,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":13:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"1\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"1\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:9:\"Page Name\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',1,'Page Name',NULL,NULL,1),(52,14,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":13:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"3\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"1\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"2\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:0:\"\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";s:0:\"\";s:41:\"ptComposerFormLayoutSetControlDescription\";s:0:\"\";s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',2,'','','',1),(53,14,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:11;}',3,'Популярная','','',0),(54,14,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:26;}',4,NULL,NULL,NULL,0),(55,14,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:1;}',5,'','','',1),(56,14,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:2;}',6,'','','',1),(57,14,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:3;}',7,'','','',1),(58,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

LOCK TABLES `PageTypeComposerFormLayoutSets` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSets` VALUES (1,5,'Basics','',0),(5,14,'Параметры','',0),(6,6,'Параметры','',0),(7,10,'Параметры','',0),(8,11,'Параметры','',0),(9,12,'Параметры','',0),(10,7,'Параметры','',0),(11,8,'Параметры','',0),(12,16,'Параметры','',0),(13,17,'Параметры','',0),(14,18,'Basics','',0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

LOCK TABLES `PageTypeComposerOutputBlocks` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputBlocks` VALUES (2,171,1,'Main',0,6,22),(7,172,1,'Main',0,6,27),(8,172,2,'Main',0,6,28),(12,176,1,'Main',0,6,38),(14,179,1,'Main',0,6,43),(16,180,1,'Main',0,6,50),(18,181,1,'Main',0,6,52),(20,182,1,'Main',0,6,54),(29,238,1,'MainImage',0,43,85),(32,239,1,'MainImage',0,43,89),(36,240,1,'MainImage',0,43,95);
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputControls`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

LOCK TABLES `PageTypeComposerOutputControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

LOCK TABLES `PageTypePageTemplateDefaultPages` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplateDefaultPages` VALUES (5,7,183),(4,10,187),(8,6,188),(8,10,190),(8,11,191),(6,13,192),(9,15,195),(6,14,196),(7,11,206),(7,12,210),(5,8,215),(5,16,233),(5,17,234),(4,9,235),(4,18,248),(4,5,249);
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplates`
--

DROP TABLE IF EXISTS `PageTypePageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplates`
--

LOCK TABLES `PageTypePageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplates` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplates` VALUES (5,4),(7,5),(8,5),(16,5),(17,5),(14,6),(11,7),(12,7),(6,8),(10,8),(18,8),(15,9);
/*!40000 ALTER TABLE `PageTypePageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePermissionAssignments`
--

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

LOCK TABLES `PageTypePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PageTypePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PageTypePermissionAssignments` VALUES (1,60,9),(2,60,9),(3,60,9),(4,60,9),(5,60,9),(6,60,9),(7,60,9),(8,60,9),(9,60,9),(10,60,9),(11,60,9),(12,60,9),(13,60,9),(14,60,9),(15,60,9),(16,60,9),(17,60,9),(18,60,9),(1,61,9),(2,61,9),(3,61,9),(4,61,9),(5,61,9),(6,61,9),(7,61,9),(8,61,9),(9,61,9),(10,61,9),(11,61,9),(12,61,9),(13,61,9),(14,61,9),(15,61,9),(16,61,9),(17,61,9),(18,61,9),(1,62,9),(2,62,9),(3,62,9),(4,62,9),(5,62,9),(6,62,9),(7,62,9),(8,62,9),(9,62,9),(10,62,9),(11,62,9),(12,62,9),(13,62,9),(14,62,9),(15,62,9),(16,62,9),(17,62,9),(18,62,9),(1,63,9),(2,63,9),(3,63,9),(4,63,9),(5,63,9),(6,63,9),(7,63,9),(8,63,9),(9,63,9),(10,63,9),(11,63,9),(12,63,9),(13,63,9),(14,63,9),(15,63,9),(16,63,9),(17,63,9),(18,63,9),(1,64,31),(2,64,32),(3,64,33),(4,64,34),(5,64,36),(6,64,103),(7,64,104),(8,64,104),(9,64,36),(10,64,103),(11,64,103),(12,64,103),(13,64,110),(14,64,111),(15,64,112),(16,64,104),(17,64,104),(18,64,36);
/*!40000 ALTER TABLE `PageTypePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePublishTargetTypes`
--

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

LOCK TABLES `PageTypePublishTargetTypes` WRITE;
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` DISABLE KEYS */;
INSERT INTO `PageTypePublishTargetTypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  `siteTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `siteTypeID` (`siteTypeID`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(2,'Stack Category','core_stack_category',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(3,'Desktop','core_desktop',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(4,'Dashboard Full','dashboard_full',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(5,'Статья родителям','article_parents',2,4,'C',0,1,0,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":7:{s:7:\"\0*\0ptID\";s:2:\"18\";s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:20:\"\0*\0startingPointPage\";s:1:\"0\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}',1),(6,'Советы главная','advice_main',3,8,'C',0,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(7,'Список статей','article_list',3,5,'C',0,0,2,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(8,'Список советов','advice_list',3,5,'C',0,0,3,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(10,'Статьи главная','articles_main',3,8,'C',0,0,5,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(11,'Вопросы-ответы','q2a',3,7,'C',0,0,6,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(12,'Психологи','psyhology',3,7,'C',0,0,7,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(14,'Лэндинг','landing',3,6,'C',0,0,9,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:15:\"sitemap_in_page\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(15,'Главная','main',3,9,'C',0,0,9,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(16,'Список статей (по группе)','article_list_group',3,5,'C',0,0,10,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(17,'Список советов (по группе)','advice_group_list',3,5,'C',0,0,11,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}',1),(18,'Статьи родителям','parents_articles',1,8,'C',0,1,11,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"219\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}',1);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `siteTreeID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `siteTreeID` (`siteTreeID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,1,15,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,22,0,0,0,0,-1,'0',0,0),(2,0,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,11,0,0,0,0,-1,'0',0,1),(3,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,0,-1,'0',0,1),(4,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,0,-1,'0',0,1),(8,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,7,3,2,0,0,-1,'0',0,1),(13,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/express/view.php',0,NULL,0,1,1,4,2,0,0,-1,'0',0,1),(24,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/express/entries.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,3,5,2,0,0,-1,'0',0,1),(26,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,1,0,25,0,0,-1,'0',0,1),(27,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms/legacy.php',0,NULL,0,1,0,0,26,0,0,-1,'0',0,1),(28,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,25,0,0,-1,'0',0,1),(29,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,25,0,0,-1,'0',0,1),(30,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,6,6,2,0,0,-1,'0',0,1),(31,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,30,0,0,-1,'0',0,1),(32,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,31,0,0,-1,'0',0,1),(33,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,30,0,0,-1,'0',0,1),(34,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,33,0,0,-1,'0',0,1),(35,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,33,0,0,-1,'0',0,1),(36,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,33,0,0,-1,'0',0,1),(37,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,33,0,0,-1,'0',0,1),(38,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,33,0,0,-1,'0',0,1),(39,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,33,0,0,-1,'0',0,1),(40,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,30,0,0,-1,'0',0,1),(41,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,40,0,0,-1,'0',0,1),(42,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(43,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(44,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(45,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/view.php',0,NULL,0,1,1,7,2,0,0,-1,'0',0,1),(46,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,45,0,0,-1,'0',0,1),(47,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,8,2,0,0,-1,'0',0,1),(48,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,9,2,0,0,-1,'0',0,1),(53,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(54,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(55,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(56,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(57,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(58,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,13,10,2,0,0,-1,'0',0,1),(59,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,8,0,58,0,0,-1,'0',0,1),(60,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,59,0,0,-1,'0',0,1),(61,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,59,0,0,-1,'0',0,1),(62,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,59,0,0,-1,'0',0,1),(63,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,59,0,0,-1,'0',0,1),(64,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,59,0,0,-1,'0',0,1),(65,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,1,5,59,0,0,-1,'0',0,1),(66,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/update.php',0,NULL,0,1,0,0,65,0,0,-1,'0',0,1),(67,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,59,0,0,-1,'0',0,1),(68,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/attributes.php',0,NULL,0,1,0,7,59,0,0,-1,'0',0,1),(69,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/view.php',0,NULL,0,1,2,1,58,0,0,-1,'0',0,1),(70,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities.php',0,NULL,0,1,5,0,69,0,0,-1,'0',0,1),(71,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/attributes.php',0,NULL,0,1,0,0,70,0,0,-1,'0',0,1),(72,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/associations.php',0,NULL,0,1,0,1,70,0,0,-1,'0',0,1),(73,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/forms.php',0,NULL,0,1,0,2,70,0,0,-1,'0',0,1),(74,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/customize_search.php',0,NULL,0,1,0,3,70,0,0,-1,'0',0,1),(75,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/order_entries.php',0,NULL,0,1,0,4,70,0,0,-1,'0',0,1),(76,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entries.php',0,NULL,0,1,0,1,69,0,0,-1,'0',0,1),(77,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,2,58,0,0,-1,'0',0,1),(78,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,77,0,0,-1,'0',0,1),(79,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,1,77,0,0,-1,'0',0,1),(80,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,2,77,0,0,-1,'0',0,1),(81,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,3,77,0,0,-1,'0',0,1),(82,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,3,58,0,0,-1,'0',0,1),(83,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,82,0,0,-1,'0',0,1),(84,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,82,0,0,-1,'0',0,1),(85,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,82,0,0,-1,'0',0,1),(86,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,82,0,0,-1,'0',0,1),(87,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,82,0,0,-1,'0',0,1),(88,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,5,4,58,0,0,-1,'0',0,1),(89,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,0,88,0,0,-1,'0',0,1),(90,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,1,88,0,0,-1,'0',0,1),(91,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,1,2,88,0,0,-1,'0',0,1),(92,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails/options.php',0,NULL,0,1,0,0,91,0,0,-1,'0',0,1),(93,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/image_uploading.php',0,NULL,0,1,0,3,88,0,0,-1,'0',0,1),(94,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,4,88,0,0,-1,'0',0,1),(95,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,5,58,0,0,-1,'0',0,1),(96,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,95,0,0,-1,'0',0,1),(97,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,95,0,0,-1,'0',0,1),(98,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,95,0,0,-1,'0',0,1),(99,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,95,0,0,-1,'0',0,1),(100,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,9,6,58,0,0,-1,'0',0,1),(101,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,100,0,0,-1,'0',0,1),(102,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,100,0,0,-1,'0',0,1),(103,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,100,0,0,-1,'0',0,1),(104,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,100,0,0,-1,'0',0,1),(105,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/workflows.php',0,NULL,0,1,0,4,100,0,0,-1,'0',0,1),(106,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,1,5,100,0,0,-1,'0',0,1),(107,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist/range.php',0,NULL,0,1,0,0,106,0,0,-1,'0',0,1),(108,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,6,100,0,0,-1,'0',0,1),(109,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,7,100,0,0,-1,'0',0,1),(110,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,8,100,0,0,-1,'0',0,1),(111,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,6,7,58,0,0,-1,'0',0,1),(112,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,0,111,0,0,-1,'0',0,1),(113,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,1,111,0,0,-1,'0',0,1),(114,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,2,111,0,0,-1,'0',0,1),(115,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,111,0,0,-1,'0',0,1),(116,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/global_password_reset.php',0,NULL,0,1,0,4,111,0,0,-1,'0',0,1),(117,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/notification.php',0,NULL,0,1,0,5,111,0,0,-1,'0',0,1),(118,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,8,58,0,0,-1,'0',0,1),(119,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,118,0,0,-1,'0',0,1),(120,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,119,0,0,-1,'0',0,1),(121,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,118,0,0,-1,'0',0,1),(122,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,9,58,0,0,-1,'0',0,1),(123,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,122,0,0,-1,'0',0,1),(124,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,122,0,0,-1,'0',0,1),(125,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,122,0,0,-1,'0',0,1),(126,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,122,0,0,-1,'0',0,1),(127,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,10,58,0,0,-1,'0',0,1),(128,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,0,127,0,0,-1,'0',0,1),(129,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,1,127,0,0,-1,'0',0,1),(130,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,127,0,0,-1,'0',0,1),(131,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,130,0,0,-1,'0',0,1),(132,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,11,58,0,0,-1,'0',0,1),(133,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,132,0,0,-1,'0',0,1),(134,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,132,0,0,-1,'0',0,1),(135,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,132,0,0,-1,'0',0,1),(136,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,132,0,0,-1,'0',0,1),(137,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,132,0,0,-1,'0',0,1),(138,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/update/view.php',0,NULL,0,1,1,12,58,0,0,-1,'0',0,1),(139,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/update/update.php',0,NULL,0,1,0,0,138,0,0,-1,'0',0,1),(140,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/welcome.php',0,NULL,0,1,1,0,2,0,0,-1,'0',0,1),(141,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,0,140,0,0,-1,'0',0,1),(142,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,7,0,0,0,0,-1,'0',0,1),(143,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,8,0,0,0,0,-1,'0',0,1),(144,0,0,0,1,0,NULL,NULL,NULL,1,144,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(145,0,0,0,1,0,NULL,NULL,NULL,1,145,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(146,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(147,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,146,0,0,-1,'0',0,1),(148,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,146,0,0,-1,'0',0,1),(149,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages.php',0,NULL,0,1,0,2,146,0,0,-1,'0',0,1),(150,0,0,0,1,0,NULL,NULL,NULL,1,150,'OVERRIDE','/page_forbidden.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(151,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(152,1,0,0,1,0,NULL,NULL,NULL,1,152,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,9,0,0,0,0,-1,'0',0,1),(153,1,0,0,1,0,NULL,NULL,NULL,1,153,'OVERRIDE','/page_not_found.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(154,1,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/desktop.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(156,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,142,0,0,-1,'0',0,1),(157,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,142,0,0,-1,'0',0,1),(158,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,142,0,0,-1,'0',0,1),(159,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,142,0,0,-1,'0',0,1),(160,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,142,0,0,-1,'0',0,1),(163,0,14,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,1,8,143,0,1,-1,'0',0,1),(164,0,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,3,9,143,0,1,-1,'0',0,1),(167,1,6,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,0,152,0,1,-1,'0',0,1),(168,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','',0,NULL,0,0,0,5,143,0,0,-1,'0',0,1),(169,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','',0,NULL,0,0,0,6,143,0,0,-1,'0',0,1),(170,0,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,12,143,0,1,-1,'0',0,1),(171,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,1,152,0,0,-1,'0',0,1),(172,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,3,163,0,163,-1,'0',0,1),(174,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,142,0,0,-1,'0',0,1),(176,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,164,0,164,-1,'0',0,1),(178,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,142,0,0,-1,'0',0,1),(179,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,5,180,0,176,-1,'0',0,1),(180,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,1,2,164,0,164,-1,'0',0,1),(181,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,1,1,164,0,164,-1,'0',0,1),(182,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,4,181,0,181,-1,'0',0,1),(183,1,7,1,NULL,0,NULL,NULL,NULL,1,183,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(184,1,9,1,1,0,NULL,NULL,NULL,1,184,'OVERRIDE',NULL,0,NULL,0,1,0,4,0,0,0,-1,'0',0,0),(187,1,10,1,1,0,NULL,NULL,NULL,1,187,'OVERRIDE',NULL,0,NULL,0,1,0,4,0,0,0,-1,'0',0,0),(188,1,6,1,NULL,0,NULL,NULL,NULL,1,188,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(190,1,10,1,NULL,0,NULL,NULL,NULL,1,190,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(191,1,11,1,NULL,0,NULL,NULL,NULL,1,191,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(195,1,15,1,NULL,0,NULL,NULL,NULL,1,195,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(196,1,14,1,NULL,0,NULL,NULL,NULL,1,196,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(197,1,14,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,0,1,0,1,-1,'0',0,0),(198,1,14,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,2,1,0,1,-1,'0',0,0),(199,1,14,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,3,1,0,1,-1,'0',0,0),(200,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,0,197,0,197,-1,'0',0,0),(201,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,4,198,0,198,-1,'0',0,0),(202,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,4,199,0,199,-1,'0',0,0),(203,1,18,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,1,197,0,197,-1,'0',0,0),(204,1,10,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,5,198,0,198,-1,'0',0,0),(205,1,10,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,5,199,0,199,-1,'0',0,0),(206,1,11,1,NULL,0,NULL,NULL,NULL,1,206,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(207,1,11,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,197,0,197,-1,'0',0,0),(208,1,11,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,198,0,198,-1,'0',0,0),(209,1,11,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,199,0,199,-1,'0',0,0),(210,1,12,1,NULL,0,NULL,NULL,NULL,1,210,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(211,1,12,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,197,0,197,-1,'0',0,0),(212,1,0,0,1,0,NULL,NULL,NULL,1,0,'PARENT',NULL,211,NULL,0,1,0,7,198,0,0,-1,'0',0,0),(213,1,0,0,1,0,NULL,NULL,NULL,1,0,'PARENT',NULL,211,NULL,0,1,0,7,199,0,0,-1,'0',0,0),(215,1,8,1,NULL,0,NULL,NULL,NULL,1,215,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(216,1,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,200,0,200,-1,'0',0,0),(217,1,17,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,200,0,200,-1,'0',0,0),(218,0,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,13,143,0,200,-1,'0',0,1),(219,0,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,6,14,143,0,203,-1,'0',0,1),(220,0,16,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,15,143,0,203,-1,'0',0,1),(221,1,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,201,0,201,-1,'0',0,0),(222,1,17,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,201,0,201,-1,'0',0,0),(223,1,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,204,0,204,-1,'0',0,0),(224,1,16,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,204,0,204,-1,'0',0,0),(225,1,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,202,0,202,-1,'0',0,0),(226,1,17,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,202,0,202,-1,'0',0,0),(227,1,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,205,0,205,-1,'0',0,0),(228,1,16,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,205,0,205,-1,'0',0,0),(232,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,5,219,0,219,-1,'0',0,1),(233,1,16,1,1,0,NULL,NULL,NULL,1,233,'OVERRIDE',NULL,0,NULL,0,1,0,4,0,0,0,-1,'0',0,0),(234,1,17,1,1,0,NULL,NULL,NULL,1,234,'OVERRIDE',NULL,0,NULL,0,1,0,4,0,0,0,-1,'0',0,0),(236,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,2,152,0,0,-1,'0',0,1),(237,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,3,152,0,0,-1,'0',0,1),(238,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,4,152,0,0,-1,'0',0,1),(239,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,6,219,0,219,-1,'0',0,1),(240,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,7,219,0,219,-1,'0',0,1),(243,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,8,219,0,219,-1,'0',0,1),(244,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,5,152,0,219,-1,'0',0,1),(245,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,9,219,0,219,-1,'0',0,1),(246,0,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,10,219,0,219,-1,'0',0,1),(247,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,6,152,0,219,-1,'0',0,1),(248,1,18,1,1,0,NULL,NULL,NULL,1,248,'OVERRIDE',NULL,0,NULL,0,1,0,4,0,0,0,-1,'0',0,0),(249,1,5,1,NULL,0,NULL,NULL,NULL,1,249,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(250,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,7,152,0,203,-1,'0',0,1),(251,1,5,0,1,0,NULL,NULL,NULL,1,152,'PARENT',NULL,0,NULL,0,0,0,8,152,0,203,-1,'0',0,1),(252,1,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,10,203,0,203,-1,'0',0,0),(253,1,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,11,203,0,203,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(6,1),(7,2),(3,5),(4,6),(5,7);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,6,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,4),(2,4),(3,4),(4,4),(1,5),(2,5),(3,5),(4,5),(6,5),(1,6),(2,6),(3,6),(4,6),(6,6),(1,7),(2,7),(3,7),(4,7),(1,8),(2,8),(3,8),(4,8),(1,9),(2,9),(3,9),(4,9),(1,10),(2,10),(3,10),(4,10),(1,11),(2,11),(3,11),(4,11),(1,12),(2,12),(3,12),(4,12),(1,13),(2,13),(3,13),(4,13),(1,14),(2,14),(3,14),(4,14),(1,15),(2,15),(3,15),(4,15),(5,15),(1,16),(2,16),(3,16),(4,16),(1,17),(2,17),(3,17),(4,17),(1,18),(2,18),(3,18),(4,18),(1,19),(2,19),(3,19),(4,19),(1,20),(2,20),(3,20),(4,20),(1,21),(2,21),(3,21),(4,21),(7,21),(1,22),(2,22),(3,22),(4,22),(7,22),(1,23),(2,23),(4,23);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityUsers` VALUES (7,1);
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(27,2,0,10),(28,1,0,10),(28,2,0,10),(29,1,0,10),(30,1,0,10),(31,3,0,10),(32,3,0,10),(33,3,0,10),(34,3,0,10),(35,1,0,10),(36,3,0,10),(37,2,0,10),(38,1,0,10),(38,2,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,2,0,10),(49,2,0,10),(50,2,0,10),(51,2,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10),(69,1,0,10),(70,1,0,10),(71,2,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10),(80,1,0,10),(81,1,0,10),(82,1,0,10),(83,1,0,10),(84,1,0,10),(85,1,0,10),(86,1,0,10),(87,1,0,10),(88,1,0,10),(89,1,0,10),(90,1,0,10),(91,1,0,10),(92,1,0,10),(93,1,0,10),(94,2,0,10),(95,2,0,10),(96,1,0,10),(96,5,0,10),(97,1,0,10),(97,5,0,10),(98,1,0,10),(98,6,0,10),(99,1,0,10),(100,1,0,10),(101,1,0,10),(102,1,0,10),(102,7,0,10),(103,3,0,10),(104,3,0,10),(105,3,0,10),(106,3,0,10),(107,3,0,10),(108,3,0,10),(109,3,0,10),(110,3,0,10),(111,3,0,10),(112,3,0,10),(113,3,0,10),(114,3,0,10),(115,2,0,10),(116,2,0,10),(117,2,0,10),(118,2,0,10),(119,2,0,10),(120,2,0,10),(121,2,0,10),(122,2,0,10),(123,2,0,10),(124,3,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,19),(2,20),(3,75),(4,76),(5,77),(6,79),(7,80),(8,81),(102,82),(9,92),(10,94),(11,95),(12,96),(13,97),(14,98),(15,99),(16,100),(17,101),(18,102),(19,103),(20,104),(21,105),(22,106),(29,107),(30,108);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_folder',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'notification',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL),(15,'page_type',NULL),(16,'gathering',NULL),(17,'group_tree_node',NULL),(18,'express_tree_node',NULL),(19,'category_tree_node',NULL),(20,'topic_tree_node',NULL),(21,'conversation',NULL),(22,'conversation_message',NULL),(23,'multilingual_section',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_folder_file','View Files',0,0,'View files within folder in the site.',5,0),(40,'search_file_folder','Search File Folder',0,0,'See this file folder in the file manager',5,0),(41,'edit_file_folder','Edit File Folder',0,0,'Edit a file folder.',5,0),(42,'edit_file_folder_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(43,'edit_file_folder_file_contents','Edit File Contents',0,0,'Can edit or replace files in folder.',5,0),(44,'copy_file_folder_files','Copy File',0,0,'Can copy files in file folder.',5,0),(45,'edit_file_folder_permissions','Edit File Access',0,0,'Can edit access to file folder.',5,0),(46,'delete_file_folder','Delete File Set',0,0,'Can delete file folder.',5,0),(47,'delete_file_folder_files','Delete File',0,0,'Can delete files in folder.',5,0),(48,'add_file','Add File',0,1,'Can add files to folder.',5,0),(49,'view_file','View Files',0,0,'Can view and download files.',6,0),(50,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(51,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(52,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(53,'copy_file','Copy File',0,0,'Can copy file.',6,0),(54,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(55,'delete_file','Delete File',0,0,'Can delete file.',6,0),(56,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(57,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(58,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(59,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(60,'add_page_type','Add Pages of This Type',0,0,'',15,0),(61,'edit_page_type','Edit Page Type',0,0,'',15,0),(62,'delete_page_type','Delete Page Type',0,0,'',15,0),(63,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',15,0),(64,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',15,0),(65,'view_topic_tree_node','View Topic Tree Node',0,0,'',20,0),(66,'view_category_tree_node','View Category Tree Node',0,0,'',19,0),(67,'add_conversation_message','Add Message to Conversation',0,1,'',21,0),(68,'add_conversation_message_attachments','Add Message Attachments',0,0,'',21,0),(69,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',21,0),(70,'delete_conversation_message','Delete Message',0,0,'',21,0),(71,'edit_conversation_message','Edit Message',0,0,'',21,0),(72,'rate_conversation_message','Rate Message',0,0,'',21,0),(73,'flag_conversation_message','Flag Message',0,0,'',21,0),(74,'approve_conversation_message','Approve Message',0,0,'',21,0),(75,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(76,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(77,'activate_user','Activate/Deactivate User',1,0,NULL,4,0),(78,'sudo','Sign in as User',0,0,NULL,4,0),(79,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(80,'access_group_search','Access Group Search',0,0,NULL,4,0),(81,'delete_user','Delete User',1,0,NULL,4,0),(82,'notify_in_notification_center','Notify in Notification Center',0,1,'Controls who receives updates in the notification center.',11,0),(83,'view_express_entries','View Entries',0,0,NULL,18,0),(84,'add_express_entries','Add Entry',0,0,NULL,18,0),(85,'edit_express_entries','Edit Entry',0,0,NULL,18,0),(86,'delete_express_entries','Delete Entry',0,0,NULL,18,0),(87,'search_users_in_group','Search User Group',0,0,NULL,17,0),(88,'edit_group','Edit Group',0,0,NULL,17,0),(89,'assign_group','Assign Group',0,0,NULL,17,0),(90,'add_sub_group','Add Child Group',0,0,NULL,17,0),(91,'edit_group_permissions','Edit Group Permissions',0,0,NULL,17,0),(92,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(93,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(94,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(95,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(96,'customize_themes','Customize Themes',0,0,NULL,10,0),(97,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(98,'empty_trash','Empty Trash',0,0,NULL,10,0),(99,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(100,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(101,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(102,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(103,'install_packages','Install Packages',0,0,NULL,13,0),(104,'view_newsflow','View Newsflow',0,0,NULL,13,0),(105,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(106,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(107,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(108,'edit_gathering_items','Edit Gathering Items',0,0,'',16,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2017-08-30 18:46:48',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrivateMessageNotifications`
--

DROP TABLE IF EXISTS `PrivateMessageNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrivateMessageNotifications` (
  `msgID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrivateMessageNotifications`
--

LOCK TABLES `PrivateMessageNotifications` WRITE;
/*!40000 ALTER TABLE `PrivateMessageNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `PrivateMessageNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SavedFileSearchQueries`
--

DROP TABLE IF EXISTS `SavedFileSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedFileSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SavedFileSearchQueries`
--

LOCK TABLES `SavedFileSearchQueries` WRITE;
/*!40000 ALTER TABLE `SavedFileSearchQueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SavedFileSearchQueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SavedPageSearchQueries`
--

DROP TABLE IF EXISTS `SavedPageSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedPageSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SavedPageSearchQueries`
--

LOCK TABLES `SavedPageSearchQueries` WRITE;
/*!40000 ALTER TABLE `SavedPageSearchQueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SavedPageSearchQueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SavedUserSearchQueries`
--

DROP TABLE IF EXISTS `SavedUserSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedUserSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SavedUserSearchQueries`
--

LOCK TABLES `SavedUserSearchQueries` WRITE;
/*!40000 ALTER TABLE `SavedUserSearchQueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SavedUserSearchQueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  `sessionLifeTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiblingPageRelations`
--

DROP TABLE IF EXISTS `SiblingPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiblingPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiblingPageRelations`
--

LOCK TABLES `SiblingPageRelations` WRITE;
/*!40000 ALTER TABLE `SiblingPageRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiblingPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteAttributeKeys`
--

DROP TABLE IF EXISTS `SiteAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteAttributeKeys`
--

LOCK TABLES `SiteAttributeKeys` WRITE;
/*!40000 ALTER TABLE `SiteAttributeKeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteAttributeValues`
--

DROP TABLE IF EXISTS `SiteAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteAttributeValues` (
  `siteID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`,`akID`),
  KEY `IDX_67658AF7521D8435` (`siteID`),
  KEY `IDX_67658AF7B6561A7E` (`akID`),
  KEY `IDX_67658AF7A2A82A5D` (`avID`),
  CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteAttributeValues`
--

LOCK TABLES `SiteAttributeValues` WRITE;
/*!40000 ALTER TABLE `SiteAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteLocales`
--

DROP TABLE IF EXISTS `SiteLocales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteLocales` (
  `siteLocaleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `siteID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteLocaleID`),
  UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  KEY `IDX_2527AB2C521D8435` (`siteID`),
  CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTreeTrees` (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteLocales`
--

LOCK TABLES `SiteLocales` WRITE;
/*!40000 ALTER TABLE `SiteLocales` DISABLE KEYS */;
INSERT INTO `SiteLocales` VALUES (1,1,'ru','RU',3,'(n % 10 == 1 && n % 100 != 11) ? 0 : ((n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 12 || n % 100 > 14)) ? 1 : 2)','one@1, 21, 31, 41, 51, 61, 71, 81, 101, 1001, …\nfew@2~4, 22~24, 32~34, 42~44, 52~54, 62, 102, 1002, …\nother@0, 5~19, 100, 1000, 10000, 100000, 1000000, …',1,1);
/*!40000 ALTER TABLE `SiteLocales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteSearchIndexAttributes`
--

DROP TABLE IF EXISTS `SiteSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteSearchIndexAttributes` (
  `siteID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteSearchIndexAttributes`
--

LOCK TABLES `SiteSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `SiteSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTreeTrees`
--

DROP TABLE IF EXISTS `SiteTreeTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTreeTrees` (
  `siteLocaleID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`siteTreeID`),
  UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `SiteLocales` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTreeTrees`
--

LOCK TABLES `SiteTreeTrees` WRITE;
/*!40000 ALTER TABLE `SiteTreeTrees` DISABLE KEYS */;
INSERT INTO `SiteTreeTrees` VALUES (1,1);
/*!40000 ALTER TABLE `SiteTreeTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTrees`
--

DROP TABLE IF EXISTS `SiteTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTrees` (
  `siteTreeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteHomePageID` int(10) unsigned NOT NULL,
  `treeType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTrees`
--

LOCK TABLES `SiteTrees` WRITE;
/*!40000 ALTER TABLE `SiteTrees` DISABLE KEYS */;
INSERT INTO `SiteTrees` VALUES (1,1,'sitetree');
/*!40000 ALTER TABLE `SiteTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTypes`
--

DROP TABLE IF EXISTS `SiteTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTypes` (
  `siteTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteTypeID`),
  UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  KEY `IDX_7CBFE975CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTypes`
--

LOCK TABLES `SiteTypes` WRITE;
/*!40000 ALTER TABLE `SiteTypes` DISABLE KEYS */;
INSERT INTO `SiteTypes` VALUES (1,'default','Default Site Type',0,0,NULL);
/*!40000 ALTER TABLE `SiteTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sites`
--

DROP TABLE IF EXISTS `Sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sites` (
  `siteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeID` int(10) unsigned NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`),
  UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  KEY `IDX_7DC18567E9548DF7` (`siteTypeID`),
  CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sites`
--

LOCK TABLES `Sites` WRITE;
/*!40000 ALTER TABLE `Sites` DISABLE KEYS */;
INSERT INTO `Sites` VALUES (1,2,1,'default',1);
/*!40000 ALTER TABLE `Sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialLinks`
--

DROP TABLE IF EXISTS `SocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialLinks` (
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slID`),
  KEY `IDX_84EBA2B4521D8435` (`siteID`),
  CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialLinks`
--

LOCK TABLES `SocialLinks` WRITE;
/*!40000 ALTER TABLE `SocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StackUsageRecord`
--

DROP TABLE IF EXISTS `StackUsageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StackUsageRecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StackUsageRecord`
--

LOCK TABLES `StackUsageRecord` WRITE;
/*!40000 ALTER TABLE `StackUsageRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `StackUsageRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Site Title',20,156,0),(2,'Header Navigation',20,157,0),(3,'Footer Legal',20,158,0),(4,'Footer Navigation',20,159,0),(5,'Footer Contact',20,160,0),(6,'mainmenu',20,174,0),(7,'subnav',20,178,0);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerCustomCssRecords`
--

LOCK TABLES `StyleCustomizerCustomCssRecords` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStylePresets`
--

LOCK TABLES `StyleCustomizerInlineStylePresets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(11) NOT NULL AUTO_INCREMENT,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customElementAttribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

LOCK TABLES `StyleCustomizerInlineStyleSets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` DISABLE KEYS */;
INSERT INTO `StyleCustomizerInlineStyleSets` VALUES (1,'concrete5-org-stories','','','',0,'','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0),(2,NULL,NULL,NULL,NULL,0,'no-repeat','auto','0% 0%',NULL,NULL,NULL,NULL,'14px',NULL,'rgb(244, 52, 52)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(3,NULL,NULL,NULL,NULL,0,'no-repeat','auto','0% 0%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'134px',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(4,NULL,NULL,NULL,NULL,0,'no-repeat','auto','0% 0%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'134px',NULL,NULL,NULL,'114px',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0);
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValueLists`
--

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValueLists`
--

LOCK TABLES `StyleCustomizerValueLists` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValues`
--

DROP TABLE IF EXISTS `StyleCustomizerValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValues`
--

LOCK TABLES `StyleCustomizerValues` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemContentEditorSnippets`
--

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

LOCK TABLES `SystemContentEditorSnippets` WRITE;
/*!40000 ALTER TABLE `SystemContentEditorSnippets` DISABLE KEYS */;
INSERT INTO `SystemContentEditorSnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `SystemContentEditorSnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseMigrations`
--

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

LOCK TABLES `SystemDatabaseMigrations` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseMigrations` DISABLE KEYS */;
INSERT INTO `SystemDatabaseMigrations` VALUES ('20140919000000'),('20140930000000'),('20141017000000'),('20141024000000'),('20141113000000'),('20141219000000'),('20150109000000'),('20150504000000'),('20150515000000'),('20150610000000'),('20150612000000'),('20150615000000'),('20150616000000'),('20150619000000'),('20150622000000'),('20150623000000'),('20150713000000'),('20150731000000'),('20151221000000'),('20160107000000'),('20160213000000'),('20160314000000'),('20160412000000'),('20160615000000'),('20160725000000'),('20161109000000'),('20161203000000'),('20161208000000'),('20161216000000'),('20161216100000'),('20170118000000'),('20170123000000'),('20170201000000'),('20170202000000'),('20170227063249'),('20170313000000'),('20170316000000'),('20170404000000'),('20170406000000'),('20170407000001'),('20170412000000'),('20170418000000'),('20170420000000'),('20170421000000'),('20170424000000'),('20170505000000'),('20170512000000'),('20170519000000'),('20170608000000'),('20170608100000'),('20170609000000'),('20170609100000'),('20170610000000'),('20170611000000'),('20170613000000'),('20170614000000'),('20170626000000'),('20170711151953'),('20170731021618'),('20170802000000');
/*!40000 ALTER TABLE `SystemDatabaseMigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseQueryLog`
--

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseQueryLog`
--

LOCK TABLES `SystemDatabaseQueryLog` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TopicTrees`
--

DROP TABLE IF EXISTS `TopicTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TopicTrees`
--

LOCK TABLES `TopicTrees` WRITE;
/*!40000 ALTER TABLE `TopicTrees` DISABLE KEYS */;
INSERT INTO `TopicTrees` VALUES (11,'Категории статей родителям'),(12,'Категории статей студентам');
/*!40000 ALTER TABLE `TopicTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeFileNodes`
--

DROP TABLE IF EXISTS `TreeFileNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeFileNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeFileNodes`
--

LOCK TABLES `TreeFileNodes` WRITE;
/*!40000 ALTER TABLE `TreeFileNodes` DISABLE KEYS */;
INSERT INTO `TreeFileNodes` VALUES (8,1),(10,2),(12,3),(27,4),(28,5);
/*!40000 ALTER TABLE `TreeFileNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeGroupNodes`
--

DROP TABLE IF EXISTS `TreeGroupNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeGroupNodes`
--

LOCK TABLES `TreeGroupNodes` WRITE;
/*!40000 ALTER TABLE `TreeGroupNodes` DISABLE KEYS */;
INSERT INTO `TreeGroupNodes` VALUES (2,1),(3,2),(4,3);
/*!40000 ALTER TABLE `TreeGroupNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodePermissionAssignments`
--

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

LOCK TABLES `TreeNodePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` DISABLE KEYS */;
INSERT INTO `TreeNodePermissionAssignments` VALUES (7,39,38),(7,40,39),(7,41,40),(7,42,41),(7,43,42),(7,44,43),(7,45,44),(7,46,46),(7,47,45),(7,48,47),(7,66,35),(23,66,122),(26,66,123),(5,83,28),(6,83,23),(5,84,24),(6,84,27),(5,85,25),(6,85,25),(5,86,26),(6,86,26),(1,87,89),(1,88,90),(1,89,91),(1,90,92),(1,91,93);
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodeTypes`
--

DROP TABLE IF EXISTS `TreeNodeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodeTypes`
--

LOCK TABLES `TreeNodeTypes` WRITE;
/*!40000 ALTER TABLE `TreeNodeTypes` DISABLE KEYS */;
INSERT INTO `TreeNodeTypes` VALUES (1,'group',0),(2,'category',0),(3,'express_entry_category',0),(4,'express_entry_results',0),(5,'topic',0),(6,'file',0),(7,'file_folder',0),(8,'search_preset',0);
/*!40000 ALTER TABLE `TreeNodeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodes`
--

DROP TABLE IF EXISTS `TreeNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodes`
--

LOCK TABLES `TreeNodes` WRITE;
/*!40000 ALTER TABLE `TreeNodes` DISABLE KEYS */;
INSERT INTO `TreeNodes` VALUES (1,1,1,0,0,'','2017-08-29 12:42:09','2017-08-29 12:42:09',1,1),(2,1,1,1,0,'','2017-08-29 12:42:10','2017-08-29 12:42:10',0,1),(3,1,1,1,1,'','2017-08-29 12:42:10','2017-08-29 12:42:10',0,1),(4,1,1,1,2,'','2017-08-29 12:42:11','2017-08-29 12:42:11',0,1),(5,3,2,0,0,'','2017-08-29 12:42:31','2017-08-29 12:42:31',1,5),(6,3,2,5,0,'Forms','2017-08-29 12:42:32','2017-08-29 12:42:32',1,6),(7,7,3,0,0,'','2017-08-29 12:46:49','2017-08-29 12:46:49',1,7),(8,6,3,7,0,'','2017-09-02 15:23:28','2017-09-02 15:23:28',0,7),(9,7,3,7,1,'demo','2017-09-04 20:23:28','2017-09-04 20:23:28',0,7),(10,6,3,9,0,'','2017-09-04 20:24:30','2017-09-04 20:24:30',0,7),(11,7,3,7,2,'placeholder','2017-09-04 21:12:02','2017-09-04 21:12:02',0,7),(12,6,3,11,0,'','2017-09-05 00:41:27','2017-09-05 00:41:27',0,7),(21,4,2,5,1,'Data Object','2017-09-05 02:31:47','2017-09-05 02:31:47',0,5),(23,2,11,0,0,'','2017-09-06 19:04:50','2017-09-06 19:04:50',1,23),(24,5,11,23,0,'Детям до 3х лет','2017-09-06 19:05:02','2017-09-06 19:05:02',0,23),(25,5,11,23,1,'Детям школьникам','2017-09-06 19:05:11','2017-09-06 19:05:11',0,23),(26,2,12,0,0,'','2017-09-06 19:17:36','2017-09-06 19:17:36',1,26),(27,6,3,7,3,'','2017-09-08 15:27:08','2017-09-08 15:27:08',0,7),(28,6,3,7,4,'','2017-09-08 15:35:01','2017-09-08 15:35:01',0,7);
/*!40000 ALTER TABLE `TreeNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeSearchQueryNodes`
--

DROP TABLE IF EXISTS `TreeSearchQueryNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeSearchQueryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savedSearchID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`treeNodeID`),
  KEY `savedSearchID` (`savedSearchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeSearchQueryNodes`
--

LOCK TABLES `TreeSearchQueryNodes` WRITE;
/*!40000 ALTER TABLE `TreeSearchQueryNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeSearchQueryNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTypes`
--

DROP TABLE IF EXISTS `TreeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTypes`
--

LOCK TABLES `TreeTypes` WRITE;
/*!40000 ALTER TABLE `TreeTypes` DISABLE KEYS */;
INSERT INTO `TreeTypes` VALUES (1,'group',0),(2,'express_entry_results',0),(3,'topic',0),(4,'file_manager',0);
/*!40000 ALTER TABLE `TreeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trees`
--

DROP TABLE IF EXISTS `Trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trees`
--

LOCK TABLES `Trees` WRITE;
/*!40000 ALTER TABLE `Trees` DISABLE KEYS */;
INSERT INTO `Trees` VALUES (1,1,'2017-08-29 12:42:10',1),(2,2,'2017-08-29 12:42:31',5),(3,4,'2017-08-29 12:46:49',7),(11,3,'2017-09-06 19:04:50',23),(12,3,'2017-09-06 19:17:36',26);
/*!40000 ALTER TABLE `Trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (0,1,0,1,0,0,14),(0,1,0,1,0,0,15),(0,0,0,0,0,0,18);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uID`,`akID`),
  KEY `IDX_4DB68CA6FD71026C` (`uID`),
  KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  KEY `IDX_4DB68CA6A2A82A5D` (`avID`),
  CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointActions`
--

DROP TABLE IF EXISTS `UserPointActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointActions`
--

LOCK TABLES `UserPointActions` WRITE;
/*!40000 ALTER TABLE `UserPointActions` DISABLE KEYS */;
INSERT INTO `UserPointActions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `UserPointActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSignupNotifications`
--

DROP TABLE IF EXISTS `UserSignupNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSignupNotifications` (
  `usID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_7FB1DF5B7B18287E` (`usID`),
  CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `UserSignups` (`usID`),
  CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSignupNotifications`
--

LOCK TABLES `UserSignupNotifications` WRITE;
/*!40000 ALTER TABLE `UserSignupNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSignupNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSignups`
--

DROP TABLE IF EXISTS `UserSignups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSignups` (
  `usID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `createdBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`usID`),
  UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  KEY `IDX_FEB5D909D3564642` (`createdBy`),
  CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`uID`),
  CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSignups`
--

LOCK TABLES `UserSignups` WRITE;
/*!40000 ALTER TABLE `UserSignups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSignups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserWorkflowProgress`
--

DROP TABLE IF EXISTS `UserWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserWorkflowProgress` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserWorkflowProgress`
--

LOCK TABLES `UserWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `UserWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` longtext COLLATE utf8_unicode_ci,
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','wslapshin@gmail.com','$2a$12$WCpHTeugOVWb7nDR8dH7eefekdZT7dwDWR2Z0jJiBWZuvXtZYIZre',1,1,1,'2017-08-29 12:42:11','2017-08-29 12:42:11',0,1504894874,1504886955,1504713447,8,1,'7f000001',NULL,NULL,0);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2017-09-02 09:34:49','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"1\";}'),(2,2,'2017-09-02 09:41:58','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"2\";}'),(3,3,'2017-09-02 09:43:31','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"3\";}'),(4,4,'2017-09-02 09:53:59','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"1\";}'),(5,5,'2017-09-02 12:03:35','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"144\";s:4:\"cvID\";s:1:\"2\";}'),(6,6,'2017-09-02 12:28:20','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"2\";}'),(7,7,'2017-09-02 12:28:40','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"3\";}'),(8,8,'2017-09-02 12:32:11','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"4\";}'),(9,9,'2017-09-02 12:57:29','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"2\";}'),(10,10,'2017-09-02 13:17:38','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"164\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"168\";s:15:\"saveOldPagePath\";b:0;}'),(11,11,'2017-09-02 13:21:27','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:1:\"1\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"168\";s:15:\"saveOldPagePath\";N;}'),(12,12,'2017-09-02 13:27:39','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"168\";}'),(13,13,'2017-09-02 13:29:24','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"164\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"169\";s:15:\"saveOldPagePath\";s:1:\"1\";}'),(14,14,'2017-09-02 13:30:44','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:1:\"1\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"169\";s:15:\"saveOldPagePath\";N;}'),(15,15,'2017-09-02 13:30:52','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"163\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"169\";s:15:\"saveOldPagePath\";N;}'),(16,16,'2017-09-02 14:57:19','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"169\";}'),(17,17,'2017-09-02 18:19:18','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";}'),(18,18,'2017-09-02 18:22:44','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";}'),(19,19,'2017-09-02 20:18:46','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"1\";}'),(20,20,'2017-09-02 20:20:14','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"1\";}'),(21,21,'2017-09-02 20:20:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"2\";}'),(22,22,'2017-09-02 20:20:50','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";}'),(23,23,'2017-09-02 20:22:00','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";}'),(24,24,'2017-09-02 20:26:13','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"24\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";}'),(25,25,'2017-09-02 20:45:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"25\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";}'),(26,26,'2017-09-03 10:18:59','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"26\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"176\";s:4:\"cvID\";s:1:\"1\";}'),(27,27,'2017-09-03 10:32:11','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"27\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"176\";s:4:\"cvID\";s:1:\"2\";}'),(28,28,'2017-09-03 10:32:34','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"28\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"4\";}'),(29,29,'2017-09-03 10:34:37','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"29\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"179\";s:4:\"cvID\";s:1:\"1\";}'),(30,30,'2017-09-03 10:36:34','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"30\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"176\";s:4:\"cvID\";s:1:\"3\";}'),(31,31,'2017-09-03 10:37:49','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"31\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"176\";s:4:\"cvID\";s:1:\"4\";}'),(32,32,'2017-09-03 10:48:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"32\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"1\";}'),(33,33,'2017-09-03 10:49:24','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"180\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"33\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"179\";s:15:\"saveOldPagePath\";N;}'),(34,34,'2017-09-03 10:50:25','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"34\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"1\";}'),(35,35,'2017-09-03 10:51:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"35\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"1\";}'),(36,36,'2017-09-03 10:51:23','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"36\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"176\";s:4:\"cvID\";s:1:\"5\";}'),(37,37,'2017-09-03 12:58:46','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"37\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";}'),(38,38,'2017-09-03 12:59:20','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"38\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"5\";}'),(39,39,'2017-09-03 12:59:29','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"39\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"6\";}'),(40,40,'2017-09-03 13:04:45','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"40\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"163\";}'),(41,41,'2017-09-03 13:04:51','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"41\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"163\";}'),(42,42,'2017-09-03 13:05:21','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"42\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"164\";}'),(43,43,'2017-09-03 13:05:29','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"43\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"170\";}'),(44,44,'2017-09-03 13:05:30','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"44\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"170\";}'),(45,45,'2017-09-03 13:05:34','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"45\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"170\";}'),(46,46,'2017-09-03 13:17:18','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"46\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"1\";}'),(47,47,'2017-09-03 13:18:00','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"47\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"198\";s:4:\"cvID\";s:1:\"1\";}'),(48,48,'2017-09-03 13:18:52','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"48\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"1\";}'),(49,49,'2017-09-03 13:20:34','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"49\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"2\";}'),(50,50,'2017-09-03 13:21:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"50\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"198\";s:4:\"cvID\";s:1:\"2\";}'),(51,51,'2017-09-03 13:21:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"51\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"2\";}'),(52,52,'2017-09-03 13:24:31','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"52\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"200\";s:4:\"cvID\";s:1:\"1\";}'),(53,53,'2017-09-03 13:24:45','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"53\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"201\";s:4:\"cvID\";s:1:\"1\";}'),(54,54,'2017-09-03 13:25:12','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"54\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"1\";}'),(55,55,'2017-09-03 13:26:04','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"55\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"200\";s:4:\"cvID\";s:1:\"2\";}'),(56,56,'2017-09-03 13:26:38','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"56\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"201\";s:4:\"cvID\";s:1:\"2\";}'),(57,57,'2017-09-03 13:27:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"57\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"2\";}'),(58,58,'2017-09-03 13:30:25','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"58\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"203\";s:4:\"cvID\";s:1:\"1\";}'),(59,59,'2017-09-03 13:30:43','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"59\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"204\";s:4:\"cvID\";s:1:\"1\";}'),(60,60,'2017-09-03 13:32:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"60\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"205\";s:4:\"cvID\";s:1:\"1\";}'),(61,61,'2017-09-03 13:34:35','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"61\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"207\";s:4:\"cvID\";s:1:\"1\";}'),(62,62,'2017-09-03 13:35:48','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"62\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"208\";s:4:\"cvID\";s:1:\"1\";}'),(63,63,'2017-09-03 13:36:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"63\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"209\";s:4:\"cvID\";s:1:\"1\";}'),(64,64,'2017-09-03 13:39:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"64\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"211\";s:4:\"cvID\";s:1:\"1\";}'),(65,65,'2017-09-03 13:40:24','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"198\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"65\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"212\";s:15:\"saveOldPagePath\";N;}'),(66,66,'2017-09-03 13:42:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"66\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"203\";s:4:\"cvID\";s:1:\"2\";}'),(67,67,'2017-09-03 13:43:08','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"67\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"207\";s:4:\"cvID\";s:1:\"2\";}'),(68,68,'2017-09-03 13:44:04','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"68\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"204\";s:4:\"cvID\";s:1:\"2\";}'),(69,69,'2017-09-03 13:44:29','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"69\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"208\";s:4:\"cvID\";s:1:\"2\";}'),(70,70,'2017-09-03 13:45:43','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"70\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"205\";s:4:\"cvID\";s:1:\"2\";}'),(71,71,'2017-09-03 13:47:21','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"71\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"209\";s:4:\"cvID\";s:1:\"2\";}'),(72,72,'2017-09-03 13:52:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"72\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"216\";s:4:\"cvID\";s:1:\"1\";}'),(73,73,'2017-09-03 13:52:40','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"73\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"217\";s:4:\"cvID\";s:1:\"1\";}'),(74,74,'2017-09-03 13:52:42','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"74\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"218\";s:4:\"cvID\";s:1:\"1\";}'),(75,75,'2017-09-03 13:52:49','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"75\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"218\";}'),(76,76,'2017-09-03 13:53:19','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"76\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"1\";}'),(77,77,'2017-09-03 13:53:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"77\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"220\";s:4:\"cvID\";s:1:\"1\";}'),(78,78,'2017-09-03 13:54:02','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"78\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"221\";s:4:\"cvID\";s:1:\"1\";}'),(79,79,'2017-09-03 13:54:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"79\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"222\";s:4:\"cvID\";s:1:\"1\";}'),(80,80,'2017-09-03 13:55:04','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"80\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"223\";s:4:\"cvID\";s:1:\"1\";}'),(81,81,'2017-09-03 13:55:34','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"81\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"224\";s:4:\"cvID\";s:1:\"1\";}'),(82,82,'2017-09-03 13:56:14','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"82\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"225\";s:4:\"cvID\";s:1:\"1\";}'),(83,83,'2017-09-03 13:56:29','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"83\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"226\";s:4:\"cvID\";s:1:\"1\";}'),(84,84,'2017-09-03 13:56:47','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"84\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"227\";s:4:\"cvID\";s:1:\"1\";}'),(85,85,'2017-09-03 13:57:02','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"85\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"228\";s:4:\"cvID\";s:1:\"1\";}'),(86,1,'2017-09-04 16:31:22','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"1\";}'),(87,2,'2017-09-04 17:12:13','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"220\";s:4:\"cvID\";s:1:\"2\";}'),(88,3,'2017-09-04 17:12:40','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"224\";s:4:\"cvID\";s:1:\"2\";}'),(89,4,'2017-09-04 17:13:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"228\";s:4:\"cvID\";s:1:\"2\";}'),(90,5,'2017-09-04 17:13:12','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"226\";s:4:\"cvID\";s:1:\"2\";}'),(91,6,'2017-09-04 17:13:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"222\";s:4:\"cvID\";s:1:\"2\";}'),(92,7,'2017-09-04 17:13:38','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"217\";s:4:\"cvID\";s:1:\"2\";}'),(93,8,'2017-09-04 17:25:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"2\";}'),(94,9,'2017-09-04 17:26:46','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"208\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"232\";s:15:\"saveOldPagePath\";b:0;}'),(95,10,'2017-09-04 17:28:01','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"219\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"232\";s:15:\"saveOldPagePath\";N;}'),(96,11,'2017-09-04 17:47:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"3\";}'),(97,12,'2017-09-04 17:48:08','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"1\";}'),(98,13,'2017-09-04 17:58:29','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"2\";}'),(99,14,'2017-09-04 18:01:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"3\";}'),(100,15,'2017-09-04 18:02:28','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"4\";}'),(101,16,'2017-09-04 18:03:23','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"240\";s:4:\"cvID\";s:1:\"1\";}'),(102,17,'2017-09-04 18:08:00','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"240\";s:4:\"cvID\";s:1:\"2\";}'),(103,1,'2017-09-04 22:32:30','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"1\";}'),(104,2,'2017-09-04 22:32:42','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"2\";}'),(105,3,'2017-09-04 22:34:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"2\";}'),(106,4,'2017-09-04 22:37:48','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"3\";}'),(107,5,'2017-09-04 22:38:50','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"4\";}'),(108,6,'2017-09-04 23:03:44','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"3\";}'),(109,7,'2017-09-04 23:03:53','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"4\";}'),(110,8,'2017-09-04 23:22:46','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"5\";}'),(111,9,'2017-09-04 23:25:14','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"6\";}'),(112,10,'2017-09-04 23:26:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"7\";}'),(113,11,'2017-09-06 07:50:53','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"8\";}'),(114,12,'2017-09-06 07:50:59','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"8\";}'),(115,13,'2017-09-06 11:01:48','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"4\";}'),(116,14,'2017-09-06 11:01:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"5\";}'),(117,15,'2017-09-06 11:02:20','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"5\";}'),(118,16,'2017-09-06 11:02:28','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"6\";}'),(119,17,'2017-09-06 11:02:54','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"240\";s:4:\"cvID\";s:1:\"3\";}'),(120,18,'2017-09-06 11:03:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"240\";s:4:\"cvID\";s:1:\"4\";}'),(121,19,'2017-09-06 11:04:14','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"5\";}'),(122,20,'2017-09-06 11:04:30','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"6\";}'),(123,21,'2017-09-06 11:04:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"243\";s:4:\"cvID\";s:1:\"7\";}'),(124,22,'2017-09-06 16:12:43','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"6\";}'),(125,23,'2017-09-06 16:12:54','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"232\";s:4:\"cvID\";s:1:\"7\";}'),(126,24,'2017-09-06 16:15:53','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"24\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"7\";}'),(127,25,'2017-09-06 16:16:02','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"25\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"239\";s:4:\"cvID\";s:1:\"8\";}'),(128,26,'2017-09-08 12:16:04','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"26\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"245\";s:4:\"cvID\";s:1:\"1\";}'),(129,27,'2017-09-08 12:17:00','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"27\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"245\";s:4:\"cvID\";s:1:\"2\";}'),(130,28,'2017-09-08 12:17:13','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"28\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"245\";s:4:\"cvID\";s:1:\"3\";}'),(131,29,'2017-09-08 12:20:10','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"29\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"1\";}'),(132,30,'2017-09-08 12:21:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"30\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"2\";}'),(133,31,'2017-09-08 12:31:12','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"31\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"3\";}'),(134,32,'2017-09-08 12:37:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"32\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"4\";}'),(135,33,'2017-09-08 12:43:17','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"33\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"5\";}'),(136,34,'2017-09-08 12:56:32','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"34\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"240\";s:4:\"cvID\";s:1:\"5\";}'),(137,35,'2017-09-08 12:56:37','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"35\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"240\";s:4:\"cvID\";s:1:\"6\";}'),(138,36,'2017-09-08 12:59:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"36\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"6\";}'),(139,37,'2017-09-08 13:00:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"37\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"7\";}'),(140,38,'2017-09-08 13:02:23','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"38\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"246\";s:4:\"cvID\";s:1:\"8\";}'),(141,39,'2017-09-08 15:45:40','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"39\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"203\";s:4:\"cvID\";s:1:\"3\";}'),(142,40,'2017-09-08 15:46:18','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"40\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"219\";}'),(143,41,'2017-09-08 15:48:34','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"41\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"220\";}'),(144,42,'2017-09-08 15:48:58','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"42\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"203\";s:4:\"cvID\";s:1:\"4\";}'),(145,43,'2017-09-08 15:49:11','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"43\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"203\";s:4:\"cvID\";s:1:\"5\";}'),(146,44,'2017-09-08 15:56:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"44\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"252\";s:4:\"cvID\";s:1:\"1\";}'),(147,45,'2017-09-08 15:57:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"45\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"252\";s:4:\"cvID\";s:1:\"2\";}'),(148,46,'2017-09-08 16:13:42','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"46\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"253\";s:4:\"cvID\";s:1:\"1\";}'),(149,47,'2017-09-08 16:17:06','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"47\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"253\";s:4:\"cvID\";s:1:\"2\";}'),(150,48,'2017-09-08 16:17:49','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":10:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0scheduleDatetime\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"48\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"253\";s:4:\"cvID\";s:1:\"3\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressNotifications`
--

DROP TABLE IF EXISTS `WorkflowProgressNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressNotifications` (
  `wpID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressNotifications`
--

LOCK TABLES `WorkflowProgressNotifications` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgressNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (1,9),(1,16),(1,18),(1,24),(1,25),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,43),(1,44),(1,51),(1,62),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,88),(0,99),(1,120),(1,128),(0,129),(1,135),(1,136),(0,155),(0,163),(0,167),(1,239),(0,240),(0,257),(0,258),(1,262),(1,263),(1,264),(0,650),(0,651),(0,662),(0,663),(0,674),(0,675),(0,686),(0,687),(0,698),(0,699),(0,709),(0,710),(0,721),(0,722),(0,753),(0,754),(1,804),(1,805),(1,809),(1,810),(1,834),(1,835),(1,840),(1,841),(1,846),(1,847),(1,858),(1,859),(1,864),(1,865),(1,870),(1,871),(0,886),(0,887);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (0,NULL,5),(0,'Exclude Page from Navigation',7),(0,'Exclude Page from Page List Blocks',8),(0,'Сделать популярной',11),(0,NULL,12),(0,NULL,13),(1,NULL,14),(1,NULL,15),(0,'Топ 10',26);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akTimeResolution` int(10) unsigned NOT NULL DEFAULT '60' COMMENT 'Time resolution (in seconds)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `value` longtext COLLATE utf8_unicode_ci,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES ('fa fa-th-large',1),('pages, add page, delete page, copy, move, alias',2),('pages, add page, delete page, copy, move, alias',3),('pages, add page, delete page, copy, move, alias, bulk',4),('find page, search page, search, find, pages, sitemap',5),('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',6),('file, file attributes, title, attribute, description, rename',7),('files, category, categories',8),('new file set',10),('users, groups, people, find, delete user, remove user, change password, password',11),('find, search, people, delete user, remove user, change password, password',12),('user, group, people, permissions, expire, badges',13),('user attributes, user data, gather data, registration data',14),('new user, create',15),('new user group, new group, group, create',17),('group set',19),('community, points, karma',20),('action, community actions',21),('forms, log, error, email, mysql, exception, survey',22),('forms, questions, response, data',23),('questions, quiz, response',26),('forms, log, error, email, mysql, exception, survey, history',27),('new theme, theme, active theme, change theme, template, css',28),('page types',29),('page attributes, custom',38),('single, page, custom, application',39),('atom, rss, feed, syndication',40),('icon-bullhorn',41),('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',42),('edit stacks, view stacks, all stacks',45),('block, refresh, custom',46),('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',47),('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',48),('update, upgrade',49),('concrete5.org, my account, marketplace',50),('buy theme, new theme, marketplace, template',52),('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',53),('dashboard, configuration',54),('website name, title',55),('accessibility, easy mode',56),('sharing, facebook, twitter',57),('logo, favicon, iphone, icon, bookmark',58),('tinymce, content block, fonts, editor, content, overlay',59),('translate, translation, internationalization, multilingual',60),('languages, update, gettext, translation, translate',61),('timezone, profile, locale',63),('site attributes',64),('multilingual, localization, internationalization, i18n',79),('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',80),('bulk, seo, change keywords, engine, optimization, search',81),('traffic, statistics, google analytics, quant, pageviews, hits',82),('pretty, slug',83),('configure search, site search, search option',84),('security, files, media, extension, manager, upload',85),('file options, file manager, upload, modify',86),('images, picture, responsive, retina',87),('thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency',89),('uploading, upload, images, image, resizing, manager',90),('security, alternate storage, hide files',91),('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',92),('cache option, turn off cache, no cache, page cache, caching',93),('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',94),('queries, database, mysql',95),('editors, hide site, offline, private, public, access',96),('security, actions, administrator, admin, package, marketplace, search',97),('security, lock ip, lock out, block ip, address, restrict, access',98),('security, registration',100),('antispam, block spam, security',101),('lock site, under construction, hide, hidden',102),('signup, new user, community, public registration, public, registration',103),('profile, login, redirect, specific, dashboard, administrators',104),('member profile, member page, community, forums, social, avatar',105),('auth, authentication, types, oauth, facebook, login, registration',106),('global, password, reset, change password, force, sign out',107),('smtp, mail settings',108),('email server, mail settings, mail configuration, external, internal',109),('test smtp, test mail',110),('email server, mail settings, mail configuration, private message, message system, import, email, message',111),('conversations',112),('conversations',113),('conversations ratings, ratings, community, community points',114),('conversations bad words, banned words, banned, bad words, bad, words, list',115),('attribute configuration',116),('attributes, types',117),('attributes, sets',118),('topics, tags, taxonomy',119),('overrides, system info, debug, support, help',121),('errors, exceptions, develop, support, help',122),('email, logging, logs, smtp, pop, errors, mysql, log',123),('network, proxy server',124),('database, entities, doctrine, orm',125),('upgrade, new version, update',126),('fa fa-th',130),('fa fa-trash-o',131),('fa fa-briefcase',132),('fa fa-edit',133),('',139),('мета заголовок',152),('мета описание 2',153),('',154),('ывафываыфва',156),('Мета описание',159),('',160),('',161),('',162),('',164),('',165),('',166),('Введите заголовок статьи',170),('Тестовая статья про что нибудь',181),('Мета описание тестовой статьи про что нибудь',182),('что-нибудь, слово, тест',183),('Введите заголовок статьи',184),('Введите заголовок статьи',187),('Введите заголовок статьи',188),('Тестовая статья про что нибудь',189),('Мета описание тестовой статьи про что нибудь',190),('что-нибудь, слово, тест',191),('Введите заголовок статьи',196),('Введите заголовок статьи',197),('Введите заголовок статьи',198),('Введите заголовок статьи',207),('Введите заголовок статьи',208),('Введите заголовок статьи',209),('Введите заголовок статьи',217),('som descr',218),('key1,key2,key3',219),('Введите заголовок статьи',232),('sdf',233),('sadf',234),('Введите заголовок статьи',236),('sdf',237),('sadf',238),('Введите заголовок статьи',242),('sdf',243),('sadf',244),('Введите заголовок статьи',246),('sdf',247),('sadf',248),('Введите заголовок статьи',259),('',260),('',261),('Введите заголовок статьи',652),('sdf',653),('sadf',654),('Тестовая статья про что нибудь',658),('Мета описание тестовой статьи про что нибудь',659),('что-нибудь, слово, тест',660),('Тестовая статья про что нибудь',664),('Мета описание тестовой статьи про что нибудь',665),('что-нибудь, слово, тест',666),('Введите заголовок статьи',670),('Введите заголовок статьи',671),('Введите заголовок статьи',672),('Введите заголовок статьи',676),('Введите заголовок статьи',677),('Введите заголовок статьи',678),('Введите заголовок статьи',682),('som descr',683),('key1,key2,key3',684),('Введите заголовок статьи',688),('som descr',689),('key1,key2,key3',690),('Введите заголовок статьи',694),('sdf',695),('sadf',696),('Введите заголовок статьи',700),('sdf',701),('sadf',702),('Тестовая статья про что нибудь',705),('Мета описание тестовой статьи про что нибудь',706),('что-нибудь, слово, тест',707),('Тестовая статья про что нибудь',711),('Мета описание тестовой статьи про что нибудь',712),('что-нибудь, слово, тест',713),('Введите заголовок статьи',717),('Введите заголовок статьи',718),('Введите заголовок статьи',719),('Введите заголовок статьи',723),('Введите заголовок статьи',724),('Введите заголовок статьи',725),('Введите заголовок статьи',740),('Мета дескрипшн',741),('Кейворды',742),('Новая страничка',750),('Мета дескрипшн',751),('Кейворды',752),('Новая страничка',755),('Мета дескрипшн',756),('Кейворды',757),('Новая статья родителям',806),('Здесь пишем дескрипшн',807),('ключевое1, ключевое2',808),('Новая статья родителям',811),('Здесь пишем дескрипшн',812),('ключевое1, ключевое2',813),('Введите заголовок статьи',816),('Введите заголовок статьи',836),('som descr',837),('key1,key2,key3',838),('Введите заголовок статьи',842),('som descr',843),('key1,key2,key3',844),('Введите заголовок статьи',848),('som descr',849),('key1,key2,key3',850),('Новая статья родителям',860),('Здесь пишем дескрипшн',861),('ключевое1, ключевое2',862),('Новая родителям',866),('Здесь пишем дескрипшн',867),('ключевое1, ключевое2',868),('Новая родителям',872),('Здесь пишем дескрипшн',873),('ключевое1, ключевое2',874),('Тестовая',888),('',889),('',890),('Заголовок статьи',906),('descr',907),('keywords',908),('Название статьи',936),('Дескрипшн',937),('фывавыбб, фвафыва',938);
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atEmptySettings`
--

DROP TABLE IF EXISTS `atEmptySettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atEmptySettings` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atEmptySettings`
--

LOCK TABLES `atEmptySettings` WRITE;
/*!40000 ALTER TABLE `atEmptySettings` DISABLE KEYS */;
INSERT INTO `atEmptySettings` VALUES (4),(16),(17),(18),(19);
/*!40000 ALTER TABLE `atEmptySettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atExpress`
--

DROP TABLE IF EXISTS `atExpress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpress` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atExpress`
--

LOCK TABLES `atExpress` WRITE;
/*!40000 ALTER TABLE `atExpress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atExpress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atExpressSelectedEntries`
--

DROP TABLE IF EXISTS `atExpressSelectedEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpressSelectedEntries` (
  `avID` int(10) unsigned NOT NULL,
  `exEntryID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`exEntryID`),
  KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  KEY `IDX_C9D404BB6DCB6296` (`exEntryID`),
  CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atExpress` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atExpressSelectedEntries`
--

LOCK TABLES `atExpressSelectedEntries` WRITE;
/*!40000 ALTER TABLE `atExpressSelectedEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atExpressSelectedEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atExpressSettings`
--

DROP TABLE IF EXISTS `atExpressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpressSettings` (
  `exEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`),
  CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atExpressSettings`
--

LOCK TABLES `atExpressSettings` WRITE;
/*!40000 ALTER TABLE `atExpressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atExpressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `fID` int(10) unsigned DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_73D17D61E3111F45` (`fID`),
  CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE,
  CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFileSettings`
--

DROP TABLE IF EXISTS `atFileSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFileSettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFileSettings`
--

LOCK TABLES `atFileSettings` WRITE;
/*!40000 ALTER TABLE `atFileSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFileSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (2.0000,127),(1.0000,134),(1280.0000,157),(861.0000,158),(750.0000,185),(420.0000,186),(525.0000,199),(294.0000,200),(750.0000,201),(504.0000,202),(48.0000,203),(48.0000,204),(48.0000,205),(48.0000,206),(750.0000,220),(419.0000,221),(456.0000,222),(324.0000,223),(750.0000,224),(532.0000,225),(750.0000,226),(420.0000,227),(6000.0000,814),(4000.0000,815),(750.0000,817),(500.0000,818),(630.0000,819),(420.0000,820),(2304.0000,821),(1530.0000,822),(750.0000,823),(498.0000,824),(750.0000,825),(420.0000,826),(6000.0000,875),(4000.0000,876),(1537.0000,877),(1025.0000,878);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelect`
--

DROP TABLE IF EXISTS `atSelect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelect` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelect`
--

LOCK TABLES `atSelect` WRITE;
/*!40000 ALTER TABLE `atSelect` DISABLE KEYS */;
INSERT INTO `atSelect` VALUES (833),(839),(845),(857),(863),(869),(885);
/*!40000 ALTER TABLE `atSelect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionLists`
--

DROP TABLE IF EXISTS `atSelectOptionLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionLists` (
  `avSelectOptionListID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionLists`
--

LOCK TABLES `atSelectOptionLists` WRITE;
/*!40000 ALTER TABLE `atSelectOptionLists` DISABLE KEYS */;
INSERT INTO `atSelectOptionLists` VALUES (1),(3);
/*!40000 ALTER TABLE `atSelectOptionLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `avSelectOptionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avSelectOptionID`),
  KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
INSERT INTO `atSelectOptions` VALUES (3,1,0,0,'Детям до трёх лет',3),(4,1,0,1,'Школьникам',3);
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `avSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`avSelectOptionID`),
  KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`),
  CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSelect` (`avID`),
  CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atSelectOptions` (`avSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
INSERT INTO `atSelectOptionsSelected` VALUES (833,3),(833,4),(839,3),(839,4),(845,3),(845,4),(857,4),(863,4),(869,4);
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  `akSelectGenerateSlug` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`),
  UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (1,1,'display_asc',1,10,1),(1,1,'display_asc',3,30,1);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedSocialLinks`
--

DROP TABLE IF EXISTS `atSelectedSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `IDX_10743709A2A82A5D` (`avID`),
  CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSocialLinks` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedSocialLinks`
--

LOCK TABLES `atSelectedSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSelectedSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectedSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedTopics`
--

DROP TABLE IF EXISTS `atSelectedTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedTopics` (
  `avTreeTopicNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avTreeTopicNodeID`),
  KEY `IDX_E42A7D5BA2A82A5D` (`avID`),
  CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atTopic` (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedTopics`
--

LOCK TABLES `atSelectedTopics` WRITE;
/*!40000 ALTER TABLE `atSelectedTopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectedTopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSocialLinks`
--

DROP TABLE IF EXISTS `atSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSocialLinks` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSocialLinks`
--

LOCK TABLES `atSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextSettings`
--

DROP TABLE IF EXISTS `atTextSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextSettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextSettings`
--

LOCK TABLES `atTextSettings` WRITE;
/*!40000 ALTER TABLE `atTextSettings` DISABLE KEYS */;
INSERT INTO `atTextSettings` VALUES ('',1);
/*!40000 ALTER TABLE `atTextSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES ('',2),('',3),('',6),('',9);
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopic`
--

DROP TABLE IF EXISTS `atTopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopic` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopic`
--

LOCK TABLES `atTopic` WRITE;
/*!40000 ALTER TABLE `atTopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `atTopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopicSettings`
--

DROP TABLE IF EXISTS `atTopicSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopicSettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '1',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopicSettings`
--

LOCK TABLES `atTopicSettings` WRITE;
/*!40000 ALTER TABLE `atTopicSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atTopicSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authTypeConcreteCookieMap`
--

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authTypeConcreteCookieMap`
--

LOCK TABLES `authTypeConcreteCookieMap` WRITE;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `cropImage` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `fileLinkID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
INSERT INTO `btContentImage` VALUES (18,1,0,0,0,0,'',0,0,'',''),(19,1,0,0,400,0,'',0,0,'',''),(82,2,0,0,0,0,'',0,0,'some_alt','some_head'),(85,0,0,0,0,0,'',0,0,NULL,NULL),(89,2,0,0,0,0,'',0,0,NULL,NULL),(90,1,0,0,0,0,'',0,0,'',''),(91,1,0,0,0,0,'',0,0,'',''),(95,2,0,0,0,0,'',0,0,NULL,NULL),(96,2,0,0,0,0,'',0,0,'',''),(98,4,0,0,0,0,'',0,0,'Введите описание изображения','Введите тайтл изображения'),(99,5,0,0,0,0,'',0,0,'Введите описание изображения','Введите тайтл изображения'),(101,3,0,0,0,0,'',0,0,'',''),(105,3,0,0,0,0,'',0,0,'','Заголовок');
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (22,NULL),(27,''),(28,''),(38,''),(43,''),(50,''),(52,''),(54,''),(55,'<p>Лэндинг для:&nbsp;</p>\r\n'),(56,'<p>Лэндинг для: &nbsp;&quot;Помощь родителям&quot;</p>\r\n'),(57,'<p>Лэндинг для: &nbsp;Помощь Студентам</p>\r\n'),(58,'<p>Лэндинг для: &nbsp;помощь в отношениях</p>\r\n'),(59,'<p>Советы родителям Главная</p>\r\n'),(60,'<p>Советы Студентам - главная</p>\r\n'),(61,'<p>Советы в отношениях главная</p>\r\n'),(62,'<p>Для страницы:&nbsp;</p>\r\n'),(63,'<p>Для страницы...</p>\r\n'),(64,'<p>Список психологов</p>\r\n'),(65,'<p>Для страницы: &nbsp;статьи родителям</p>\r\n'),(66,'<p>Для страницы... вопрос-ответ родителям</p>\r\n'),(67,'<p>Для страницы: &nbsp;статьи студентам</p>\r\n'),(68,'<p>Для страницы... Вопрос-ответ студентам</p>\r\n'),(69,'<p>Для страницы: &nbsp;статьи отношения</p>\r\n'),(70,'<p>Для страницы... Отношения-вопросОтвет</p>\r\n'),(81,'<p>Введите текст страницы...</p>\r\n\r\n<h2 style=\"text-align: center;\">Тут будет подзаголовок</h2>\r\n\r\n<p>Тут что нибудь пишем</p>\r\n\r\n<p style=\"margin-left: 160px;\"><concrete-picture fID=\"1\" alt=\"14 поиск.jpg\" style=\"width: 400px; height: 269px; float: left;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Продолжаем писанину, все вроде хорошо получается</p>\r\n'),(100,'<h2>Подзаголовок</h2>\r\n\r\n<p>Введите текст страницы...</p>\r\n\r\n<p>фывафывафывафывафываыфыфвафыва</p>\r\n\r\n<p>фывафывафывафывафывафывафыва</p>\r\n\r\n<p>фывафывафывафывафывафывафыва</p>\r\n\r\n<blockquote>\r\n<p>фывафывафывафывафывафывафываыва</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"content-editor-image-captioned\"><concrete-picture fID=\"4\" alt=\"033.jpg\" height=\"285\" width=\"292\" />\r\n<figcaption>Что то под картинкой</figcaption>\r\n</figure>\r\n</blockquote>\r\n\r\n<p>ывафывафывафывафываывф фвафывафыва фвыафыва</p>\r\n'),(102,'<p>Введите текст сюда</p>\r\n'),(103,'<p>Введите текст сюда</p>\r\n'),(104,'<p>Введите текст сюда</p>\r\n');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreAreaLayout`
--

DROP TABLE IF EXISTS `btCoreAreaLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreAreaLayout`
--

LOCK TABLES `btCoreAreaLayout` WRITE;
/*!40000 ALTER TABLE `btCoreAreaLayout` DISABLE KEYS */;
INSERT INTO `btCoreAreaLayout` VALUES (2,1),(6,2),(9,3);
/*!40000 ALTER TABLE `btCoreAreaLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreConversation`
--

DROP TABLE IF EXISTS `btCoreConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `enableTopCommentReviews` tinyint(1) NOT NULL DEFAULT '0',
  `reviewAggregateAttributeKey` int(11) DEFAULT NULL,
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreConversation`
--

LOCK TABLES `btCoreConversation` WRITE;
/*!40000 ALTER TABLE `btCoreConversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreConversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

LOCK TABLES `btCorePageTypeComposerControlOutput` WRITE;
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNavigation`
--

DROP TABLE IF EXISTS `btDateNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNavigation`
--

LOCK TABLES `btDateNavigation` WRITE;
/*!40000 ALTER TABLE `btDateNavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDesktopNewsflowLatest`
--

DROP TABLE IF EXISTS `btDesktopNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDesktopNewsflowLatest`
--

LOCK TABLES `btDesktopNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDesktopNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDesktopNewsflowLatest` VALUES (10,'A'),(11,'B'),(12,'C');
/*!40000 ALTER TABLE `btDesktopNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDesktopSiteActivity`
--

DROP TABLE IF EXISTS `btDesktopSiteActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopSiteActivity` (
  `bID` int(10) unsigned NOT NULL,
  `types` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDesktopSiteActivity`
--

LOCK TABLES `btDesktopSiteActivity` WRITE;
/*!40000 ALTER TABLE `btDesktopSiteActivity` DISABLE KEYS */;
INSERT INTO `btDesktopSiteActivity` VALUES (5,'[\"form_submissions\",\"survey_results\",\"signups\",\"conversation_messages\",\"workflow\"]');
/*!40000 ALTER TABLE `btDesktopSiteActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExpressEntryDetail`
--

DROP TABLE IF EXISTS `btExpressEntryDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressEntryDetail` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) unsigned DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExpressEntryDetail`
--

LOCK TABLES `btExpressEntryDetail` WRITE;
/*!40000 ALTER TABLE `btExpressEntryDetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExpressEntryDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExpressEntryList`
--

DROP TABLE IF EXISTS `btExpressEntryList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressEntryList` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detailPage` int(10) unsigned NOT NULL DEFAULT '0',
  `linkedProperties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `columns` longtext COLLATE utf8_unicode_ci,
  `displayLimit` int(11) DEFAULT '20',
  `enableSearch` int(11) DEFAULT '0',
  `enableKeywordSearch` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExpressEntryList`
--

LOCK TABLES `btExpressEntryList` WRITE;
/*!40000 ALTER TABLE `btExpressEntryList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExpressEntryList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExpressForm`
--

DROP TABLE IF EXISTS `btExpressForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressForm` (
  `bID` int(10) unsigned NOT NULL,
  `exFormID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `submitLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `replyToEmailControlID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT '0',
  `addFilesToFolder` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExpressForm`
--

LOCK TABLES `btExpressForm` WRITE;
/*!40000 ALTER TABLE `btExpressForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExpressForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaq`
--

DROP TABLE IF EXISTS `btFaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaq`
--

LOCK TABLES `btFaq` WRITE;
/*!40000 ALTER TABLE `btFaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaqEntries`
--

DROP TABLE IF EXISTS `btFaqEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaqEntries`
--

LOCK TABLES `btFaqEntries` WRITE;
/*!40000 ALTER TABLE `btFaqEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaqEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFeature`
--

DROP TABLE IF EXISTS `btFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFeature`
--

LOCK TABLES `btFeature` WRITE;
/*!40000 ALTER TABLE `btFeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSlider`
--

DROP TABLE IF EXISTS `btImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSlider`
--

LOCK TABLES `btImageSlider` WRITE;
/*!40000 ALTER TABLE `btImageSlider` DISABLE KEYS */;
/*!40000 ALTER TABLE `btImageSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSliderEntries`
--

DROP TABLE IF EXISTS `btImageSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSliderEntries`
--

LOCK TABLES `btImageSliderEntries` WRITE;
/*!40000 ALTER TABLE `btImageSliderEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btImageSliderEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (21,'display_asc','top',0,0,'none','enough',0,0),(29,'display_asc','top',0,0,'relevant','enough',0,0),(31,'display_asc','top',0,0,'none','enough',0,0),(33,'display_asc','second_level',0,0,'none','enough',0,0),(34,'display_asc','top',0,0,'none','enough',0,0),(39,'display_asc','second_level',0,0,'none','enough',0,0),(40,'display_asc','top',0,0,'none','enough',0,0),(41,'display_asc','second_level',0,0,'none','enough',0,0),(44,'display_asc','second_level',0,0,'all','enough',0,0),(45,'display_asc','second_level',0,0,'all','all',0,0),(46,'display_asc','second_level',0,0,'all','custom',1,0),(47,'display_asc','second_level',0,0,'all','custom',1,0),(48,'display_asc','second_level',0,0,'all','custom',1,0),(79,'display_asc','second_level',0,0,'all','custom',1,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageAttributeDisplay`
--

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageAttributeDisplay`
--

LOCK TABLES `btPageAttributeDisplay` WRITE;
/*!40000 ALTER TABLE `btPageAttributeDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageAttributeDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `cThisParent` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageTitle`
--

DROP TABLE IF EXISTS `btPageTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `useFilterTitle` int(10) unsigned DEFAULT '0',
  `useFilterTopic` int(10) unsigned DEFAULT '0',
  `useFilterTag` int(10) unsigned DEFAULT '0',
  `useFilterDate` int(10) unsigned DEFAULT '0',
  `topicTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageTitle`
--

LOCK TABLES `btPageTitle` WRITE;
/*!40000 ALTER TABLE `btPageTitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
INSERT INTO `btRssDisplay` VALUES (7,'Tutorials','http://documentation.concrete5.org/rss/tutorials','',1,1,1),(13,'News from concrete5.org','http://www.concrete5.org/rss/blog','',3,1,1);
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btShareThisPage`
--

DROP TABLE IF EXISTS `btShareThisPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btShareThisPage`
--

LOCK TABLES `btShareThisPage` WRITE;
/*!40000 ALTER TABLE `btShareThisPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btShareThisPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSocialLinks`
--

DROP TABLE IF EXISTS `btSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSocialLinks`
--

LOCK TABLES `btSocialLinks` WRITE;
/*!40000 ALTER TABLE `btSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSwitchLanguage`
--

DROP TABLE IF EXISTS `btSwitchLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSwitchLanguage`
--

LOCK TABLES `btSwitchLanguage` WRITE;
/*!40000 ALTER TABLE `btSwitchLanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSwitchLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTestimonial`
--

DROP TABLE IF EXISTS `btTestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTestimonial`
--

LOCK TABLES `btTestimonial` WRITE;
/*!40000 ALTER TABLE `btTestimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTopicList`
--

DROP TABLE IF EXISTS `btTopicList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTopicList`
--

LOCK TABLES `btTopicList` WRITE;
/*!40000 ALTER TABLE `btTopicList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTopicList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `videoSize` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaPage`
--

DROP TABLE IF EXISTS `gaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaPage`
--

LOCK TABLES `gaPage` WRITE;
/*!40000 ALTER TABLE `gaPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gaPage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-08 21:23:56
