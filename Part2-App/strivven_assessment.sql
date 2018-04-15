-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: strivven
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `assessment_answers`
--

DROP TABLE IF EXISTS `assessment_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment_answers` (
  `user_id` int(10) unsigned DEFAULT NULL,
  `question_id` int(10) unsigned DEFAULT NULL,
  `weight` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_answers`
--

LOCK TABLES `assessment_answers` WRITE;
/*!40000 ALTER TABLE `assessment_answers` DISABLE KEYS */;
INSERT INTO `assessment_answers` VALUES (1,207,5),(1,208,4),(1,209,3),(1,210,3),(1,211,3),(1,212,1),(1,213,4),(1,214,4),(1,215,4),(1,216,3),(1,217,3),(1,218,5),(1,219,3),(1,220,3),(1,221,3),(1,222,3),(1,223,3),(1,224,3),(1,225,3),(1,226,3),(1,227,3),(1,228,3),(1,229,3),(1,230,3),(1,231,3),(1,232,3),(1,233,3),(1,234,3),(1,235,3),(1,236,3),(1,237,3),(1,238,3),(1,239,3),(1,240,3),(1,241,3),(1,242,5),(1,243,5),(1,244,5),(1,245,5),(1,246,3),(1,247,3),(1,248,3),(1,249,3),(1,250,3),(1,251,3),(1,252,3),(1,253,3),(1,254,3),(1,255,3),(1,256,3),(1,257,3),(1,258,3),(1,259,3),(1,260,3),(1,261,3),(1,262,3),(1,263,3),(1,264,3),(1,265,3),(1,266,3),(1,267,3),(1,268,3),(1,269,3),(1,270,3),(1,271,3),(1,272,3),(1,273,3),(1,274,3),(1,275,3),(1,316,3),(1,276,5),(1,277,5),(1,278,5),(1,279,5),(1,280,5),(1,281,5),(1,282,5),(1,283,3),(1,284,3),(1,285,3),(1,286,3),(1,287,3),(1,288,3),(1,317,3),(1,289,3),(1,290,3),(1,291,3),(1,292,3),(1,293,3),(1,294,3),(1,295,3),(1,296,3),(1,297,3),(1,298,3),(1,299,3),(1,300,3),(1,301,3),(1,302,3),(1,303,3),(1,304,3),(1,305,3),(1,306,3),(1,307,3),(1,308,3),(1,309,3),(1,310,3),(1,311,3),(1,312,3),(1,313,3),(1,314,3),(1,315,3),(1,318,3),(2,207,5),(2,208,4),(2,209,3),(2,210,2),(2,211,1),(2,212,1),(2,213,1),(2,214,1),(2,215,2),(2,216,2),(2,217,3),(2,218,3),(2,219,3),(2,220,3),(2,221,5),(2,222,3),(2,223,3),(2,224,3),(2,225,3),(2,226,3),(2,227,3),(2,228,3),(2,229,3),(2,230,3),(2,231,3),(2,232,3),(2,233,3),(2,234,3),(2,235,3),(2,236,3),(2,237,3),(2,238,3),(2,239,3),(2,240,3),(2,241,3),(2,242,3),(2,243,3),(2,244,3),(2,245,3),(2,246,3),(2,247,3),(2,248,3),(2,249,3),(2,250,3),(2,251,3),(2,252,3),(2,253,3),(2,254,3),(2,255,3),(2,256,3),(2,257,3),(2,258,3),(2,259,3),(2,260,3),(2,261,3),(2,262,3),(2,263,3),(2,264,3),(2,265,3),(2,266,3),(2,267,3),(2,268,3),(2,269,3),(2,270,3),(2,271,3),(2,272,3),(2,273,3),(2,274,3),(2,275,3),(2,316,3),(2,276,3),(2,277,3),(2,278,3),(2,279,3),(2,280,3),(2,281,3),(2,282,3),(2,283,3),(2,284,3),(2,285,3),(2,286,3),(2,287,3),(2,288,3),(2,317,3),(2,289,3),(2,290,3),(2,291,3),(2,292,3),(2,293,3),(2,294,3),(2,295,3),(2,296,3),(2,297,3),(2,298,3),(2,299,3),(2,300,3),(2,301,3),(2,302,3),(2,303,3),(2,304,3),(2,305,3),(2,306,3),(2,307,3),(2,308,3),(2,309,3),(2,310,3),(2,311,3),(2,312,3),(2,313,3),(2,314,3),(2,315,3),(2,318,3);
/*!40000 ALTER TABLE `assessment_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_questions`
--

DROP TABLE IF EXISTS `assessment_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `area_id` int(10) unsigned DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_questions`
--

LOCK TABLES `assessment_questions` WRITE;
/*!40000 ALTER TABLE `assessment_questions` DISABLE KEYS */;
INSERT INTO `assessment_questions` VALUES (207,'Learning how things grow and stay alive.',1,'Agriculture, Food & Natural Resources'),(208,'Making the best use of the earth\'s natural resources.',1,'Agriculture, Food & Natural Resources'),(209,'Hunting or fishing.',1,'Agriculture, Food & Natural Resources'),(210,'Protecting the environment or taking care of animals.',1,'Agriculture, Food & Natural Resources'),(211,'Being outdoors.',1,'Agriculture, Food & Natural Resources'),(212,'Planning, budgeting, and keeping records.',1,'Agriculture, Food & Natural Resources'),(213,'Operating and/or repairing machines.',1,'Agriculture, Food & Natural Resources'),(214,'Reading and following blueprints and/or instructions.',2,'Architecture & Construction'),(215,'Picturing in my mind what a finished product will look like.',2,'Architecture & Construction'),(216,'Working with my hands.',2,'Architecture & Construction'),(217,'Performing work that requires precise steps.',2,'Architecture & Construction'),(218,'Solving technical problems.',2,'Architecture & Construction'),(219,'Visiting and learning from historical or beautiful buildings.',2,'Architecture & Construction'),(220,'Following logical step-by-step procedures.',2,'Architecture & Construction'),(221,'Using my imagination to communicate new information to others.',3,'Arts, A/V Technology & Communications'),(222,'Performing in front of others.',3,'Arts, A/V Technology & Communications'),(223,'Reading and writing.',3,'Arts, A/V Technology & Communications'),(224,'Playing a musical instrument.',3,'Arts, A/V Technology & Communications'),(225,'Performing creative, artistic activities.',3,'Arts, A/V Technology & Communications'),(226,'Using video and recording technology.',3,'Arts, A/V Technology & Communications'),(227,'Designing brochures and posters.',3,'Arts, A/V Technology & Communications'),(228,'Performing routine, organized activities but can be flexible.',4,'Business Management & Administration'),(229,'Working with numbers and detailed information.',4,'Business Management & Administration'),(230,'Being the leader in a group.',4,'Business Management & Administration'),(231,'Making business contact with people.',4,'Business Management & Administration'),(232,'Working with computer programs.',4,'Business Management & Administration'),(233,'Creating reports and communicating ideas.',4,'Business Management & Administration'),(234,'Planning my work and follow instructions without close supervision.',4,'Business Management & Administration'),(235,'Communicating with different types of people.',5,'Education & Training'),(236,'Help others with their homework or to learn new things.',5,'Education & Training'),(237,'Going to school.',5,'Education & Training'),(238,'Directing and planning activities for others.',5,'Education & Training'),(239,'Handling several responsibilities at once.',5,'Education & Training'),(240,'Acquiring new information.',5,'Education & Training'),(241,'Helping people overcome their challenges.',5,'Education & Training'),(242,'Working with numbers.',6,'Finance'),(243,'Working to meet a deadline.',6,'Finance'),(244,'Making predictions based on existing facts.',6,'Finance'),(245,'Having a framework of rules by which to operate.',6,'Finance'),(246,'Analyzing financial information and interpret it to others.',6,'Finance'),(247,'Handling money with accuracy and reliability.',6,'Finance'),(248,'Taking pride in the way I dress and look.',6,'Finance'),(249,'Being involved in politics.',7,'Government & Public Administration'),(250,'Negotiating, defending, and debating ideas and topics.',7,'Government & Public Administration'),(251,'Planning activities and working cooperatively with others.',7,'Government & Public Administration'),(252,'Working with details.',7,'Government & Public Administration'),(253,'Performing a variety of duties that may change often.',7,'Government & Public Administration'),(254,'Analyzing information and interpreting it to others.',7,'Government & Public Administration'),(255,'Traveling and seeing things that are new to me.',7,'Government & Public Administration'),(256,'Working under pressure.',8,'Health Science'),(257,'Helping sick people and animals.',8,'Health Science'),(258,'Making decisions based on logic and information.',8,'Health Science'),(259,'Participating in health and science classes.',8,'Health Science'),(260,'Responding quickly and calmly in emergencies.',8,'Health Science'),(261,'Working as a member of a team.',8,'Health Science'),(262,'Following guidelines precisely and meet strict standards of accuracy.',8,'Health Science'),(263,'Investigating new places and activities.',9,'Hospitality & Tourism'),(264,'Working with all ages and types of people.',9,'Hospitality & Tourism'),(265,'Organizing activities in which other people enjoy themselves.',9,'Hospitality & Tourism'),(266,'Having a flexible schedule.',9,'Hospitality & Tourism'),(267,'Helping people make up their minds.',9,'Hospitality & Tourism'),(268,'Communicating easily, tactfully, and courteously.',9,'Hospitality & Tourism'),(269,'Learning about other cultures.',9,'Hospitality & Tourism'),(270,'Caring about people, their needs, and their problems.',10,'Human Services'),(271,'Participating in community services and/or volunteering.',10,'Human Services'),(272,'Listening to other people\'s viewpoints.',10,'Human Services'),(273,'Working with people from preschool age to old age.',10,'Human Services'),(274,'Thinking of new ways to do things.',10,'Human Services'),(275,'Making friends with different kinds of people.',10,'Human Services'),(276,'Reasoning clearly and logically to solve complex problems.',11,'Information Technology'),(277,'Using machines, techniques, and processes.',11,'Information Technology'),(278,'Reading technical materials and/or diagrams.',11,'Information Technology'),(279,'Solving technical problems.',11,'Information Technology'),(280,'Adapting to change.',11,'Information Technology'),(281,'Playing video games and figure out how they work.',11,'Information Technology'),(282,'Concentrating for long periods without being distracted.',11,'Information Technology'),(283,'Working under pressure or in the face of danger.',12,'Law, Public Safety, Corrections & Security'),(284,'Making decisions based on my own observations.',12,'Law, Public Safety, Corrections & Security'),(285,'Interacting with other people.',12,'Law, Public Safety, Corrections & Security'),(286,'Respecting rules and regulations.',12,'Law, Public Safety, Corrections & Security'),(287,'Debating and winning arguments.',12,'Law, Public Safety, Corrections & Security'),(288,'Observing and analyzing people\'s behavior.',12,'Law, Public Safety, Corrections & Security'),(289,'Working with my hands.',13,'Manufacturing'),(290,'Putting things together.',13,'Manufacturing'),(291,'Doing routine, organized and accurate work.',13,'Manufacturing'),(292,'Performing activities that produce tangible results.',13,'Manufacturing'),(293,'Applying math to work out solutions.',13,'Manufacturing'),(294,'Using hand and power tools and operate equipment/machinery.',13,'Manufacturing'),(295,'Visualizing objects in three dimensions from flat drawings.',13,'Manufacturing'),(296,'Shopping and going to the mall.',14,'Marketing, Sales & Service'),(297,'Being in charge.',14,'Marketing, Sales & Service'),(298,'Making displays and promote ideas.',14,'Marketing, Sales & Service'),(299,'Giving presentations and enjoy public speaking.',14,'Marketing, Sales & Service'),(300,'Persuading people to buy products or to participate in activities.',14,'Marketing, Sales & Service'),(301,'Communicating my ideas to other people.',14,'Marketing, Sales & Service'),(302,'Taking advantage of opportunities to make extra money.',14,'Marketing, Sales & Service'),(303,'Interpreting formulas.',15,'Science, Technology, Engineering & Mathematics'),(304,'Finding the answers to questions.',15,'Science, Technology, Engineering & Mathematics'),(305,'Working in a laboratory.',15,'Science, Technology, Engineering & Mathematics'),(306,'Figuring out how things work and investigate new things.',15,'Science, Technology, Engineering & Mathematics'),(307,'Exploring new technology.',15,'Science, Technology, Engineering & Mathematics'),(308,'Experimenting to find the best way to do something.',15,'Science, Technology, Engineering & Mathematics'),(309,'Paying attention to details and help things be precise.',15,'Science, Technology, Engineering & Mathematics'),(310,'Traveling.',16,'Transportation, Distribution & Logistics'),(311,'Seeing well and having quick reflexes.',16,'Transportation, Distribution & Logistics'),(312,'Designing efficient processes.',16,'Transportation, Distribution & Logistics'),(313,'Anticipating needs and preparing to meet them.',16,'Transportation, Distribution & Logistics'),(314,'Driving or riding.',16,'Transportation, Distribution & Logistics'),(315,'Moving things from one place to another.',16,'Transportation, Distribution & Logistics'),(316,'Being socially aware or advocating for the rights of others.',10,'Human Services'),(317,'Helping people in need or standing up for the rights of others',12,'Law, Public Safety, Corrections & Security'),(318,'Working with machines or automotive technology.',16,'Transportation, Distribution & Logistics');
/*!40000 ALTER TABLE `assessment_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_admins`
--

DROP TABLE IF EXISTS `user_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admin` (`user_id`),
  CONSTRAINT `fk_admin` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_admins`
--

LOCK TABLES `user_admins` WRITE;
/*!40000 ALTER TABLE `user_admins` DISABLE KEYS */;
INSERT INTO `user_admins` VALUES (1,2),(4,4),(2,5),(3,7);
/*!40000 ALTER TABLE `user_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_emails`
--

DROP TABLE IF EXISTS `user_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `primary_email` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_email` (`user_id`),
  CONSTRAINT `fk_email` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_emails`
--

LOCK TABLES `user_emails` WRITE;
/*!40000 ALTER TABLE `user_emails` DISABLE KEYS */;
INSERT INTO `user_emails` VALUES (2,1,'elon.musk@tesla.com',1,'2018-03-30 12:09:56'),(3,1,'elon.musk@spacex.com',0,'2018-03-30 12:10:28'),(4,2,'bill@microsoft.com',1,'2018-03-30 12:11:38'),(5,3,'woz@apple.com',1,'2018-03-30 12:12:16'),(6,4,'bezos@amazon.com',1,'2018-03-30 12:12:39'),(7,5,'markz@facebook.com',1,'2018-03-30 12:12:58'),(8,4,'bezos@blueorigin.com',0,'2018-03-30 12:14:35');
/*!40000 ALTER TABLE `user_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_usage_logs`
--

DROP TABLE IF EXISTS `user_usage_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_usage_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(128) DEFAULT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log` (`user_id`),
  CONSTRAINT `fk_log` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_usage_logs`
--

LOCK TABLES `user_usage_logs` WRITE;
/*!40000 ALTER TABLE `user_usage_logs` DISABLE KEYS */;
INSERT INTO `user_usage_logs` VALUES (1,1,'100','2018-03-21 09:00:00','2018-03-21 09:30:00'),(2,1,'101','2018-03-22 09:00:00','2018-03-22 09:30:00'),(3,1,'102','2018-03-22 11:30:00','2018-03-22 12:45:00'),(4,2,'103','2018-03-25 04:30:00','2018-03-25 17:45:00'),(5,7,'104','2018-03-27 11:30:00',NULL),(6,2,'opn20k8tcnpkq9h1uplvsebgq3','2018-04-15 13:51:04',NULL),(7,2,'hqfsrq71odn40o5ti7mkmf3uu7','2018-04-15 14:02:22',NULL),(8,2,'t302e436d3m71h7e9ac2rkvp43','2018-04-15 14:06:34',NULL),(9,2,'2vi5mosg0ch3m0bqvcss9p1vp0','2018-04-15 14:19:31',NULL),(10,2,'dmgcvv3hnq7qodbq7ptf0ocpq0','2018-04-15 14:25:11',NULL),(11,2,'rjmvv1pj2to87nhql0egcb2m95','2018-04-15 14:25:56',NULL),(12,2,'si7sbuucplckmoqg759dcmals0','2018-04-15 14:26:09','2018-04-15 14:27:34'),(13,2,'pnam0i6mv3saojkcf1f0h6a637','2018-04-15 14:27:58','2018-04-15 14:28:06'),(14,2,'qh1r0e5fja97abnf1pt6doqf35','2018-04-15 14:35:06','2018-04-15 14:56:55'),(15,1,'k0iv2tb2869oo5l136jcrs7kh3','2018-04-15 14:57:59','2018-04-15 14:59:33'),(16,1,'606slqfmoc158vk39dofkkr510','2018-04-15 14:59:40','2018-04-15 15:02:37'),(17,2,'8rfg0qaj8jehcs391rt5208106','2018-04-15 15:06:16','2018-04-15 15:11:09'),(18,2,'ph4tok1ll4ice134sqg6kuei15','2018-04-15 15:12:42','2018-04-15 15:24:17'),(19,2,'c0f80u6vmr77al1qne3utqqgo6','2018-04-15 15:30:49','2018-04-15 15:35:30'),(20,2,'r4q4ttjdbmf3frrm0m4khqfjh3','2018-04-15 15:35:39','2018-04-15 15:42:29'),(21,2,'ijuhfa2cmspvmgpevaba9pnt03','2018-04-15 15:42:35','2018-04-15 15:46:57');
/*!40000 ALTER TABLE `user_usage_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'emusk','9df55ae7885487eff5622254c9fab777','Elon','Musk',46,'2018-03-30 11:59:05'),(2,'wgates','b001fde13da01f2d7447b386c70fc49d','Bill','Gates',62,'2018-03-30 12:00:00'),(3,NULL,NULL,'Steve','Wozniak',67,'2018-03-30 12:01:06'),(4,NULL,NULL,'Jeff','Bezos',54,'2018-03-30 12:06:11'),(5,NULL,NULL,'Mark','Zuckerberg',33,'2018-03-30 12:06:42'),(6,NULL,NULL,'Larry','Page',45,'2018-03-30 12:21:32'),(7,NULL,NULL,'Sergey','Brin',44,'2018-03-30 13:13:18');
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

-- Dump completed on 2018-04-15 15:50:25
