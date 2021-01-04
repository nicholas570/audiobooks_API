-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: audiobook
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(45) DEFAULT NULL,
  `released_year` year(4) NOT NULL,
  `is_borrowed` tinyint(4) NOT NULL,
  `interpreter` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_interpreter_idx` (`interpreter`),
  CONSTRAINT `fk_book_interpreter` FOREIGN KEY (`interpreter`) REFERENCES `interpreter` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (31,'purus.','Natalie Gilbert',1953,1,10),(32,'vitae, orci.','Devin Donovan',2018,0,6),(33,'enim. Etiam gravida molestie','Zachery Ingram',2011,1,2),(34,'enim nec tempus','Amelia Bush',2001,0,8),(35,'Sed et libero. Proin mi.','Leonard Hooper',1990,1,5),(36,'Curae; Phasellus','Mark Cook',2004,1,3),(37,'dis parturient montes, nascetur ridiculus','Rylee Leblanc',2000,0,4),(38,'mus. Aenean eget','Brendan Cervantes',1996,0,7),(39,'cursus.','Boris Daniels',1960,1,3),(40,'eget nisi dictum augue malesuada','Bradley Joseph',1915,1,9),(41,'sit amet lorem','Yeo Dawson',1984,0,6),(42,'Aenean eget','Jakeem Albert',2011,1,8),(43,'sed orci','Kyle Delaney',1989,0,6),(44,'dolor dapibus gravida. Aliquam tincidunt,','Victor Wall',1920,0,2),(45,'in','Channing Winters',1924,0,8),(46,'malesuada malesuada. Integer id','Audra Pugh',2012,0,1),(47,'feugiat. Lorem ipsum','Carly Martinez',2020,1,7),(48,'ullamcorper magna.','Wylie Malone',1994,0,9),(49,'egestas, urna justo faucibus','Brett Christian',2010,0,6),(50,'Integer mollis. Integer tincidunt','Samson Gallagher',1980,1,7),(51,'eget laoreet posuere, enim','McKenzie Orr',1998,1,6),(52,'Nunc ullamcorper, velit in aliquet','Flynn Rutledge',1952,1,1),(53,'adipiscing elit. Etiam laoreet, libero','Yvette Hinton',1947,1,5),(54,'non, bibendum sed, est. Nunc','Candace Singleton',1948,1,3),(55,'Fusce diam nunc,','Nigel Jackson',1951,0,4),(56,'risus a','Madonna Mayo',1956,0,5),(57,'quis accumsan','Natalie Horne',1956,1,2),(58,'semper. Nam tempor','Kane Faulkner',1947,1,8),(59,'purus gravida','Freya Bryant',1995,0,3),(60,'euismod in,','Paloma Lester',1982,0,5),(61,'lacus. Aliquam','Edan Cain',2012,0,6),(62,'neque sed sem egestas','Lisandra Trujillo',1993,0,3),(63,'Aliquam erat volutpat.','Courtney Leonard',1938,0,4),(64,'per inceptos hymenaeos. Mauris ut','Penelope Faulkner',2010,1,6),(65,'leo elementum sem,','Keane Powell',1943,0,8),(66,'gravida non,','Nicole Hurley',1985,1,8),(67,'et,','Brielle Kennedy',1976,1,9),(68,'eros non','Jonas Bullock',1928,0,1),(69,'Donec luctus aliquet odio.','Larissa Dudley',1999,0,7),(70,'a, magna. Lorem','Irene Vega',2013,1,6),(71,'neque. Nullam nisl. Maecenas','Micah Garner',1982,1,3),(72,'enim consequat','Lael Greer',1963,1,7),(73,'parturient','Jasper Richardson',1999,1,4),(74,'eget, dictum placerat, augue.','Regan Guy',2021,0,10),(75,'massa. Quisque porttitor','Blossom Jimenez',1959,0,4),(76,'Sed nulla ante, iaculis','Hashim Britt',1999,1,10),(77,'Nullam ut nisi a odio','Xerxes Mayo',1976,1,9),(78,'Suspendisse dui. Fusce diam','Stacey Burch',1966,0,5),(79,'sit amet nulla. Donec non','Zachery Michael',1990,0,1),(80,'in consequat enim diam','Bruce Floyd',1974,0,2),(81,'quis, tristique ac, eleifend vitae,','Patrick Mercado',1976,0,5),(82,'ut','Sloane Benton',2004,1,3),(83,'Aliquam ultrices iaculis odio.','Emmanuel Holman',1960,0,8),(84,'in molestie tortor','Cassidy Strong',1951,0,4),(85,'Proin vel arcu eu','Tyler Curtis',1932,0,7),(86,'malesuada. Integer id magna','Buckminster Turner',1927,0,7),(87,'purus sapien, gravida non,','Jessamine Osborn',1937,0,9),(88,'Donec luctus','Charles Leon',2006,0,9),(89,'magna. Phasellus dolor elit, pellentesque','Lars Bauer',2010,1,6),(90,'dui lectus rutrum urna,','Reese Dale',1969,0,8),(91,'amet, dapibus id, blandit','Germaine Gomez',1944,1,4),(92,'aliquet.','Odysseus Bonner',2005,0,7),(93,'laoreet, libero et','Hiram Rowland',1949,1,9),(94,'nec,','Dale Huff',1922,0,6),(95,'massa. Mauris vestibulum, neque','Gavin Weiss',1923,0,2),(96,'vel','Gray Aguirre',1969,1,9),(97,'urna. Vivamus molestie dapibus ligula.','Garth Ryan',1969,0,10),(98,'ultricies dignissim lacus. Aliquam','Wyoming Garcia',2013,1,2),(99,'a odio semper cursus. Integer','Marah Decker',1943,1,10),(100,'luctus lobortis. Class','Illiana Mcbride',1916,1,3),(101,'lorem. Donec elementum, lorem','Flynn Howard',1939,0,4),(102,'in felis.','Hakeem Clark',1988,1,7),(103,'Integer in magna. Phasellus dolor','Ursula Moses',2013,0,6),(104,'Curabitur consequat,','Mary Parrish',1986,1,10),(105,'erat volutpat. Nulla dignissim. Maecenas','Cheyenne Dyer',1988,1,2),(106,'Vestibulum ut','Gisela Lowery',1960,0,6),(107,'est ac facilisis facilisis,','Malik Irwin',2016,1,2),(108,'ac','Yardley Holden',2000,1,10),(109,'arcu. Morbi sit amet','Owen Dennis',1987,0,10),(110,'Integer vitae','Clementine Johnson',2006,0,9),(111,'sed dictum eleifend, nunc','Cassidy Robinson',1987,0,8),(112,'leo.','Reece Boone',1918,1,2),(113,'Cras lorem lorem, luctus','Cora Barron',1983,1,1),(114,'porttitor eros','Andrew Coffey',1920,0,10),(115,'urna et arcu imperdiet ullamcorper.','Cora Kemp',1936,0,7),(116,'Nunc mauris sapien, cursus','Ulla Gillespie',1967,0,7),(117,'non, hendrerit id, ante. Nunc','Quail Ballard',1955,1,3),(118,'ac ipsum. Phasellus','Chastity Small',1924,0,10),(119,'volutpat. Nulla dignissim. Maecenas ornare','Destiny Slater',1921,0,6),(120,'non, dapibus rutrum, justo.','Julian Abbott',2011,1,2),(121,'ultricies sem magna nec quam.','Malachi Sears',1921,0,10),(122,'convallis dolor. Quisque tincidunt','Fritz Berg',1976,0,10),(123,'semper et, lacinia','Hedwig Orr',2011,0,8),(124,'neque. Sed','Magee Gillespie',1917,0,3),(125,'malesuada fringilla est.','Sacha Ellis',1984,0,9),(126,'augue eu tellus.','Mohammad French',2013,1,10),(127,'sem,','Brianna Webster',1937,0,7),(128,'tempor erat','Charity Mcclure',1988,0,4),(129,'augue eu','Bruce Alston',1958,0,10),(130,'tempus scelerisque, lorem ipsum sodales','Lani Hampton',1968,0,2),(131,'penatibus et magnis dis','Craig Lott',1978,1,9),(132,'cursus et, eros. Proin ultrices.','Jelani Madden',1912,1,3),(133,'vitae','Jack Leon',1927,1,6),(134,'penatibus et magnis dis','Iliana Hurley',1923,1,5),(135,'mi pede, nonummy','Rafael Osborn',1928,0,6),(136,'habitant morbi tristique senectus','Kimberley Farmer',1942,0,6),(137,'eu lacus. Quisque imperdiet, erat','Ivan Herrera',1975,0,1),(138,'amet risus. Donec','Alden Cochran',1978,1,2),(139,'sapien molestie orci tincidunt adipiscing.','Dylan Gilliam',1998,0,6),(140,'fringilla purus mauris a nunc.','Joelle Hill',1961,1,9),(141,'mollis','Sean Dotson',1983,1,5),(142,'a sollicitudin orci','Lyle Boyd',1998,0,2),(143,'eu','Gregory Berry',1995,1,4),(144,'ipsum. Donec','Desiree Hartman',1965,1,5),(145,'Mauris','Kylan Chaney',1923,1,2),(146,'nibh lacinia orci, consectetuer','Kristen Wilcox',1940,1,6),(147,'eleifend non, dapibus rutrum,','Evelyn Reynolds',1965,1,3),(148,'ut, pellentesque eget, dictum','Eugenia Pratt',1976,0,6),(149,'Mauris molestie pharetra nibh.','Cole Ellison',1951,1,9),(150,'porttitor tellus','Willow Moran',2018,1,7),(151,'mus. Proin vel arcu eu','Gregory Kelley',2013,1,1),(152,'odio.','Lunea Newman',1950,0,2),(153,'Donec','Grady Hammond',1935,1,9),(154,'orci. Ut','Lareina Mathews',1946,1,2),(155,'nibh','Craig Meyers',2005,1,5),(156,'orci tincidunt','Cameron Anderson',1945,1,10),(157,'lacus. Mauris non dui','Riley Rich',1963,0,7),(158,'laoreet ipsum. Curabitur consequat,','Shaeleigh Lewis',1932,0,4),(159,'consequat nec, mollis vitae, posuere','Francis Schultz',1955,1,5),(160,'sit amet, faucibus ut, nulla.','Constance Jennings',2006,1,3),(161,'Mauris quis','Arthur Galloway',1958,1,7),(162,'Proin ultrices. Duis volutpat','Orla Kidd',1926,1,2),(163,'eros nec tellus. Nunc','Minerva Jenkins',1980,1,2),(164,'at, velit. Cras','Levi Brady',1998,0,6),(165,'vitae erat','Xaviera Gilbert',1921,1,9),(166,'semper pretium neque.','Zahir Berg',1968,1,9),(167,'Praesent eu nulla at sem','Josiah Walls',2008,1,1),(168,'auctor quis, tristique','Graiden Avery',1942,1,6),(169,'vel nisl.','Clarke Nielsen',1929,0,9),(170,'magna et ipsum cursus vestibulum.','Ferdinand Scott',1951,1,8),(171,'non enim. Mauris quis','Keiko Waters',2017,0,1),(172,'ornare, facilisis','Garrett Oneil',2015,1,10),(173,'metus. In','Arsenio Fuentes',2010,1,10),(174,'interdum. Curabitur dictum. Phasellus in','Alice Wells',1994,0,4),(175,'sollicitudin','David Williams',1949,1,7),(176,'Aenean gravida nunc sed','Sasha Blake',2011,0,4),(177,'Mauris','Phoebe Wallace',1914,0,6),(178,'non','Harlan Salazar',1922,0,8),(179,'orci sem','Tallulah Cohen',1972,1,8),(180,'sem, vitae','Mari Clay',1961,1,9),(181,'et netus et','Hop Barry',1992,0,1),(182,'nisi a odio semper','Rooney Dorsey',1945,1,5),(183,'ligula. Aenean euismod','Mia Preston',1924,1,8),(184,'justo. Praesent luctus. Curabitur egestas','MacKensie Vinson',1911,1,7),(185,'vestibulum nec, euismod in, dolor.','Summer Barron',1964,0,5),(186,'in sodales elit','Chloe Barton',1974,1,1),(187,'Curabitur dictum. Phasellus','Hanna Colon',1928,0,9),(188,'montes, nascetur ridiculus mus. Proin','Honorato Figueroa',1930,0,8),(189,'in','Sarah Holman',1971,0,1),(190,'Morbi sit amet massa. Quisque','Lenore Heath',1977,0,2),(191,'risus. In mi pede, nonummy','Bert Weiss',1915,1,9),(192,'enim, gravida','Lois Gilbert',1959,0,2),(193,'dui, semper et, lacinia','Kelsie Pace',1977,1,2),(194,'Donec feugiat metus sit','Macey Livingston',1984,0,2),(195,'urna. Ut tincidunt vehicula risus.','Elvis Benjamin',1986,1,5),(196,'ut ipsum ac','Keiko Huffman',1966,1,3),(197,'enim, condimentum eget, volutpat ornare,','Daria Salas',1957,0,9),(198,'pede. Cum sociis natoque','Basil Mueller',1925,1,4),(199,'at, nisi. Cum sociis','Jameson Baxter',1961,1,7),(200,'ridiculus','Ingrid Morse',1993,1,10),(201,'convallis dolor. Quisque tincidunt','Kyra Mann',1989,0,4),(202,'et libero.','Yardley Thomas',2014,1,3),(203,'eget laoreet posuere,','Lars Atkins',2000,0,2),(204,'senectus et','Lester Fry',1972,0,2),(205,'gravida sit amet, dapibus id,','Quail Shelton',1984,0,10),(206,'et risus. Quisque libero lacus,','Yen Dorsey',1980,0,2),(207,'justo.','Kibo Leach',2008,0,1),(208,'pede sagittis','Dustin Ellis',2019,1,1),(209,'semper tellus','Colorado Goodman',2007,0,5),(210,'quis, tristique ac, eleifend vitae,','Kyra Brooks',1950,0,3),(211,'massa lobortis ultrices. Vivamus','Shelly Ray',1979,1,8),(212,'mauris ut mi. Duis','Alan Hester',1963,1,1),(213,'dictum. Phasellus in felis.','Odette Davis',1948,1,5),(214,'sagittis','Emerald Page',1973,0,3),(215,'arcu. Nunc','Keith Perkins',2021,1,4),(216,'sit','Dorian Noel',1936,0,5),(217,'dui nec urna','Richard Watts',1994,0,7),(218,'Maecenas mi felis,','Marshall Bolton',1944,0,3),(219,'ullamcorper. Duis cursus,','Omar Solis',1989,1,7),(220,'ac nulla.','Melinda Cross',1976,1,7),(221,'urna.','Wynter Lambert',1988,1,3),(222,'purus. Nullam scelerisque neque sed','Hilda Holder',1915,0,5),(223,'a nunc.','Marcia Baxter',1996,0,4),(224,'sollicitudin commodo ipsum. Suspendisse','Talon Charles',2014,1,7),(225,'malesuada','Jasmine Prince',2006,1,8),(226,'semper','Kay Mcmillan',1993,0,1),(227,'iaculis','Shay Kirk',1997,0,2),(228,'malesuada','Kato Davidson',2015,0,9),(229,'velit egestas lacinia. Sed congue,','Samantha Britt',1965,1,2),(230,'Duis mi enim, condimentum','Talon Stevens',2003,0,2);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interpreter`
--

DROP TABLE IF EXISTS `interpreter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interpreter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`full_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interpreter`
--

LOCK TABLES `interpreter` WRITE;
/*!40000 ALTER TABLE `interpreter` DISABLE KEYS */;
INSERT INTO `interpreter` VALUES (96,'Abbot Keller'),(70,'Abbot Padilla'),(58,'Adena Franco'),(53,'Aladdin Barry'),(74,'Aline Combs'),(98,'Ann Mcgee'),(95,'Asher Rowe'),(87,'Avye Joyce'),(37,'Ayanna Holt'),(66,'Brandon Giles'),(7,'Britanney Young'),(89,'Brock Beasley'),(78,'Brock Kirkland'),(77,'Callum Ayala'),(94,'Callum Mcdaniel'),(10,'Chaim Duke'),(65,'Chase Dean'),(15,'Cherokee Adkins'),(28,'Chiquita Parks'),(46,'Chloe Singleton'),(60,'Christian Santos'),(80,'Curran Fulton'),(30,'Dante Mclean'),(64,'Daquan Skinner'),(72,'Daria Walter'),(57,'Darius Lindsay'),(51,'Darrel Ramirez'),(97,'Deirdre Hurley'),(49,'Dennis Mayo'),(38,'Devin Mercado'),(82,'Dominique Gallagher'),(6,'Echo Herring'),(35,'Elliott Merrill'),(92,'Emma Crosby'),(67,'Gay Koch'),(24,'Grant Cooper'),(69,'Gray Gomez'),(4,'Hedda Jacobson'),(32,'Hermione Welch'),(26,'Holly Cook'),(75,'Hunter Kelley'),(90,'Hunter Rutledge'),(25,'Irma Robinson'),(1,'Ivor Herring'),(5,'Jack Gaines'),(33,'Jana Page'),(9,'Jason Sandoval'),(43,'Joshua Peterson'),(93,'Kadeem Jacobs'),(8,'Kadeem Mullins'),(16,'Kamal Bradshaw'),(62,'Kevyn Tillman'),(79,'Kiayada Mays'),(31,'Kristen Pace'),(18,'Kuame Wolfe'),(88,'Lana Bentley'),(22,'Laura Lamb'),(100,'Leroy Nieves'),(2,'Logan Solomon'),(52,'Madeson Wilkins'),(44,'Malachi Salazar'),(40,'Mannix Weeks'),(85,'Margaret Welch'),(29,'Martha Ayers'),(86,'Meghan Park'),(55,'Merrill Buckley'),(17,'Micah Mathews'),(3,'Natalie Holman'),(36,'Nelle Rojas'),(27,'Noah Meadows'),(11,'Nola Benson'),(21,'Nola King'),(42,'Norman Delacruz'),(56,'Olivia Horne'),(13,'Olympia Bean'),(19,'Orli Munoz'),(14,'Patrick Payne'),(23,'Peter Whitaker'),(99,'Portia Osborn'),(39,'Price Contreras'),(61,'Priscilla Chase'),(73,'Quincy Mcguire'),(20,'Quon Strickland'),(76,'Rae Melton'),(68,'Rahim Black'),(41,'Rebekah Mullins'),(12,'Renee Farrell'),(91,'Ronan Glass'),(84,'Rowan English'),(81,'Ruby Franks'),(34,'Shellie Avery'),(54,'Simone Pollard'),(71,'Stewart Caldwell'),(59,'Tad Pierce'),(45,'Tanisha Leach'),(47,'Teegan Riddle'),(50,'Tyrone Brennan'),(48,'Ulric Brennan'),(83,'Uriel Cline'),(63,'Vincent Patton');
/*!40000 ALTER TABLE `interpreter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 13:52:07
