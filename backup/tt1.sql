-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: myblog_development
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

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
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_user_id` (`user_id`),
  KEY `index_blogs_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (3,NULL,NULL,'dasdasd','&lt;script&gt;alert(111)&lt;/script&gt;','2013-05-26 12:50:00','2013-05-31 15:44:02'),(4,NULL,NULL,'dad','<pre class=\"prettyprint lang-rb\">redirect_to :action =&gt; \"show\", :id =&gt; 5\r\nredirect_to post\r\nredirect_to \"http://www.rubyonrails.org\"\r\nredirect_to \"/images/screenshot.jpg\"\r\nredirect_to articles_url\r\nredirect_to :back\r\nredirect_to proc { edit_post_url(@post) }</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span id=\"__kindeditor_bookmark_start_1__\"></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','2013-05-26 13:22:25','2013-05-26 13:22:25'),(5,NULL,NULL,'dasddsad','<pre class=\"prettyprint lang-rb\">redirect_to :action =&gt; \"show\", :id =&gt; 5\r\n&nbsp;redirect_to post \r\nredirect_to \"http://www.rubyonrails.org\"\r\n&nbsp;redirect_to \"/images/screenshot.jpg\"\r\n&nbsp;redirect_to articles_url\r\n&nbsp;redirect_to :back \r\nredirect_to proc { edit_post_url(@post) }\r\n\r\n</pre>\r\n<br />','2013-05-26 14:51:46','2013-05-30 11:47:18'),(6,NULL,NULL,'dasd','<pre class=\"prettyprint lang-rb\">def to_s\r\n  column_width = properties.names.map {|name| name.length}.max\r\n  info = properties.map do |name, value|\r\n    value = value.join(\", \") if value.is_a?(Array)\r\n    \"%-#{column_width}s   %s\" % [name, value]\r\n  end\r\n  info.unshift \"About your application\'s environment\"\r\n  info * \"\\n\"\r\nend</pre>','2013-05-26 15:00:50','2013-05-26 15:00:50'),(7,NULL,NULL,'DSAD','<pre class=\"prettyprint lang-rb\">redirect_to :action =&gt; \"show\", :id =&gt; 5\r\nredirect_to post\r\nredirect_to \"http://www.rubyonrails.org\"\r\nredirect_to \"/images/screenshot.jpg\"\r\nredirect_to articles_url\r\nredirect_to :back\r\nredirect_to proc { edit_post_url(@post) }</pre>','2013-05-26 15:06:59','2013-05-26 15:06:59'),(8,NULL,NULL,'<div>','<pre class=\"prettyprint lang-rb\">redirect_to :action =&gt; \"show\", :id =&gt; 5\r\nredirect_to post\r\nredirect_to \"http://www.rubyonrails.org\"\r\nredirect_to \"/images/screenshot.jpg\"\r\nredirect_to articles_url\r\nredirect_to :back\r\nredirect_to proc { edit_post_url(@post) }</pre>','2013-05-26 15:24:07','2013-05-26 15:24:07'),(9,NULL,NULL,'<div>dsad','dcsadasdasdasdas','2013-05-26 15:36:25','2013-06-01 14:37:07'),(10,NULL,NULL,'dasdas','<pre class=\"prettyprint lang-js\">funtion Test(){}</pre>','2013-05-27 02:52:37','2013-05-27 02:52:37'),(11,NULL,NULL,'dasdasdasdas','<pre class=\"prettyprint lang-rb\">class test\r\nend</pre>','2013-05-27 03:14:03','2013-06-05 09:22:53'),(14,NULL,NULL,'dasda','fes','2013-05-27 10:09:38','2013-05-28 15:32:55'),(15,NULL,NULL,'dsad','<pre class=\"prettyprint lang-rb\">def test\r\n    @blogs.each do |b|\r\n    end\r\nend</pre>','2013-05-27 12:33:25','2013-05-27 12:33:25'),(16,NULL,NULL,'asdas','dasd','2013-05-27 14:21:15','2013-05-27 14:21:15'),(17,NULL,NULL,'ttt','<pre class=\"prettyprint lang-rb\"> module Controller\r\n    def self.included(base)\r\n      base.prepend_before_filter :assign_current_user_to_models\r\n    end\r\n\r\n    def assign_current_user_to_models\r\n      ActiveRecord::Base.current_user_proc = proc{send(:get_logged_admin)}\r\n      ActiveRecord::Base.session_uniq_key_proc = proc{send(:get_session_uniq_key)}\r\n      ActiveRecord::Base.mobile_user_proc = proc{send(:get_mobile_user)}\r\n    end\r\n  end</pre>','2013-05-28 02:26:49','2013-05-28 02:26:49'),(18,1,NULL,'csds','<p>\r\n	dasadasd\r\n</p>\r\n<p>\r\n	dasdasd<img src=\"/uploads/image/201306/19fd8ceef082.jpg\" alt=\"\" align=\"left\" height=\"150\" width=\"200\" />\r\n</p>\r\n<p>\r\n	dasdas\r\n</p>\r\n<p>\r\n	da\r\n</p>\r\n<p>\r\n	sd\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	das\r\n</p>','2013-06-02 05:42:07','2013-06-02 05:52:00'),(19,1,NULL,'dsaddasdadasdx','asddas','2013-06-02 09:38:37','2013-06-05 09:42:03'),(20,1,NULL,'dasddsadas','dasdas','2013-06-05 02:26:01','2013-06-07 05:45:16'),(21,1,NULL,'dasdasdsaaaaaaa','dasd','2013-06-05 05:06:09','2013-06-05 05:06:09'),(22,1,NULL,'dasdassssssssssssssssss','dsadas','2013-06-05 05:06:24','2013-06-05 05:06:24'),(23,1,NULL,'大三大四的大三大四岁','大三大四的大三大四岁大三大四的大三大四岁大三大四的大三大四岁大三大四的大三大四岁','2013-06-05 11:25:00','2013-06-05 13:35:47'),(26,1,NULL,'ttttttt','<img src=\"http://zhusan.qiniudn.com/das1541af827b7c.jpg\" alt=\"\" height=\"225\" width=\"300\" />werewfdasdasdasd<img src=\"http://zhusan.qiniudn.com/das7f9bad87a67c.jpg\" alt=\"\" height=\"225\" width=\"300\" />dasdasd','2013-06-08 15:41:11','2013-06-09 03:03:56'),(27,1,NULL,'dasdddfgjk','dasd','2013-06-08 15:44:09','2013-06-08 15:44:09'),(28,1,NULL,'dasdasddasdas','dasdas','2013-06-08 15:44:33','2013-06-08 15:44:33'),(29,1,NULL,'dassssfasf','dasdasd<img src=\"/uploads/image/201306/66686eed1530.jpg\" alt=\"\" height=\"150\" width=\"200\" />','2013-06-08 15:45:17','2013-06-08 15:45:17'),(30,1,NULL,'dasdasdasdasdas','dasd','2013-06-08 15:45:57','2013-06-08 15:45:57'),(39,1,NULL,'dasdasdasgfhjkl','das','2013-06-08 15:58:58','2013-06-08 15:58:58'),(40,1,NULL,'dasdasddasdasdassssss','<img src=\"http://zhusan.qiniudn.com/9bd6c87db268.jpg\" alt=\"\" />','2013-06-09 03:14:20','2013-06-09 03:14:20'),(41,1,NULL,'出现再次自行车','<img src=\"http://zhusan.qiniudn.com/e7e87eded998.jpg?token=aWtMOlR4a40Vh4mLPfs2z8g9MK3fBfvvcdGU_E-R:ryi4uHQu82p8nErfSvQ9DMrXy14=:eyJTIjoiKi8qIiwiRSI6MTM3MDc5MzIwOX0=\" alt=\"\" height=\"225\" width=\"300\" />','2013-06-09 09:42:46','2013-06-09 14:56:01');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_blog_id` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,NULL,'','','','2013-06-01 06:13:48','2013-06-01 06:13:48'),(2,NULL,'','','','2013-06-01 06:14:21','2013-06-01 06:14:21'),(3,NULL,'','','','2013-06-01 06:14:36','2013-06-01 06:14:36'),(4,NULL,'','','','2013-06-01 06:21:29','2013-06-01 06:21:29'),(5,NULL,'','','','2013-06-01 07:56:14','2013-06-01 07:56:14'),(6,5,'das','dasd','dasd','2013-06-01 09:04:02','2013-06-01 09:04:02'),(7,5,'das','dasda',' asd','2013-06-01 09:52:21','2013-06-01 09:52:21'),(8,5,'das','das','d','2013-06-01 10:54:53','2013-06-01 10:54:53'),(9,5,'dasdasdas','dasdasd','asdasd','2013-06-01 10:59:18','2013-06-01 10:59:18'),(10,3,'das','da','sdas','2013-06-01 11:41:42','2013-06-01 11:41:42'),(11,3,'dasd','das','das','2013-06-01 13:51:39','2013-06-01 13:51:39'),(12,3,'gyu','dasd','','2013-06-01 13:53:43','2013-06-01 13:53:43'),(13,18,'dsa','asdas','das','2013-06-02 05:46:17','2013-06-02 05:46:17');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kindeditor_assets`
--

DROP TABLE IF EXISTS `kindeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kindeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kindeditor_assets`
--

LOCK TABLES `kindeditor_assets` WRITE;
/*!40000 ALTER TABLE `kindeditor_assets` DISABLE KEYS */;
INSERT INTO `kindeditor_assets` VALUES (1,'22fbebc589db.jpg',845941,'image/jpeg','2013-05-26 15:36:22','2013-05-26 15:36:22'),(2,'d939f3789780.jpg',775702,'image/jpeg','2013-05-31 14:09:47','2013-05-31 14:09:47'),(3,'19fd8ceef082.jpg',775702,'image/jpeg','2013-06-02 05:41:23','2013-06-02 05:41:23'),(4,'4a28db492268.jpg',775702,'image/jpeg','2013-06-04 12:30:48','2013-06-04 12:30:48'),(5,'1541af827b7c.jpg',620888,'image/jpeg','2013-06-08 15:27:15','2013-06-08 15:27:15'),(6,'66686eed1530.jpg',775702,'image/jpeg','2013-06-08 15:45:04','2013-06-08 15:45:04'),(7,'7f9bad87a67c.jpg',510645,'image/jpeg','2013-06-09 01:08:47','2013-06-09 01:08:47'),(8,'9bd6c87db268.jpg',490572,'image/jpeg','2013-06-09 03:12:46','2013-06-09 03:12:46'),(9,'e7e87eded998.jpg',490572,'image/jpeg','2013-06-09 09:42:19','2013-06-09 09:42:19');
/*!40000 ALTER TABLE `kindeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130523084335'),('20130525095137'),('20130525154238'),('20130530141442'),('20130605014450');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,20,'Blog',NULL,NULL,'tags','2013-06-05 02:26:01'),(2,2,20,'Blog',NULL,NULL,'tags','2013-06-05 02:26:01'),(3,2,21,'Blog',NULL,NULL,'tags','2013-06-05 05:06:09'),(4,1,21,'Blog',NULL,NULL,'tags','2013-06-05 05:06:09'),(5,3,22,'Blog',NULL,NULL,'tags','2013-06-05 05:06:24'),(6,4,11,'Blog',NULL,NULL,'tags','2013-06-05 09:22:53'),(7,5,23,'Blog',NULL,NULL,'tags','2013-06-05 11:25:00'),(8,3,23,'Blog',NULL,NULL,'tags','2013-06-05 11:43:57'),(9,2,23,'Blog',NULL,NULL,'tags','2013-06-05 11:43:57'),(10,4,23,'Blog',NULL,NULL,'tags','2013-06-05 13:35:47'),(11,1,23,'Blog',NULL,NULL,'tags','2013-06-05 13:35:47'),(12,5,20,'Blog',NULL,NULL,'tags','2013-06-07 05:45:16'),(13,6,26,'Blog',NULL,NULL,'tags','2013-06-08 15:41:11'),(14,5,26,'Blog',NULL,NULL,'tags','2013-06-08 15:41:11'),(15,1,27,'Blog',NULL,NULL,'tags','2013-06-08 15:44:09'),(16,2,27,'Blog',NULL,NULL,'tags','2013-06-08 15:44:09'),(17,5,27,'Blog',NULL,NULL,'tags','2013-06-08 15:44:09'),(18,7,28,'Blog',NULL,NULL,'tags','2013-06-08 15:44:34'),(19,6,28,'Blog',NULL,NULL,'tags','2013-06-08 15:44:34'),(20,7,29,'Blog',NULL,NULL,'tags','2013-06-08 15:45:17'),(21,6,29,'Blog',NULL,NULL,'tags','2013-06-08 15:45:17'),(22,8,30,'Blog',NULL,NULL,'tags','2013-06-08 15:45:57'),(23,7,39,'Blog',NULL,NULL,'tags','2013-06-08 15:58:58'),(24,9,40,'Blog',NULL,NULL,'tags','2013-06-09 03:14:20'),(25,2,40,'Blog',NULL,NULL,'tags','2013-06-09 03:14:20'),(26,5,40,'Blog',NULL,NULL,'tags','2013-06-09 03:14:20'),(27,10,41,'Blog',NULL,NULL,'tags','2013-06-09 09:42:46'),(28,5,41,'Blog',NULL,NULL,'tags','2013-06-09 09:42:46'),(29,1,41,'Blog',NULL,NULL,'tags','2013-06-09 09:42:46');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'adas'),(2,'test'),(3,'dasdasddddd'),(4,'dasdas'),(5,'测试'),(6,'tttttttttttttt'),(7,'dasd'),(8,'asdas'),(9,'dsadas'),(10,'撒');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hashed_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'zhusan','abc7d822d856d56ff0d9ba9da5b5aaaef5e57e2ae42e8b1206945f633e3fd92f','f1j1ihmxs4lnoiengy6f','zhusan','2013-05-25 10:02:41','2013-05-25 10:02:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-11 23:04:21
