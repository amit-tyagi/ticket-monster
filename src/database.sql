-- MySQL dump 10.13  Distrib 5.5.32, for Win64 (x86)
--
-- Host: localhost    Database: ticket-monster
-- ------------------------------------------------------
-- Server version	5.5.32-log

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `mediaItem_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK403827A28772A4E` (`mediaItem_id`),
  KEY `FK403827A9D6DF788` (`category_id`),
  CONSTRAINT `FK403827A9D6DF788` FOREIGN KEY (`category_id`) REFERENCES `eventcategory` (`id`),
  CONSTRAINT `FK403827A28772A4E` FOREIGN KEY (`mediaItem_id`) REFERENCES `mediaitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Get ready to rock your night away with this megaconcert extravaganza from 10 of the biggest rock stars of the 80\'s','Rock concert of the decade',1,1),(2,'This critically acclaimed masterpiece will take you on an emotional rollercoaster the likes of which you\'ve never experienced.','Shane\'s Sock Puppets',2,2),(3,'A friendly replay of the famous World Cup final.','Brazil vs. Italy',4,6),(4,'Show your colors in Friday Night Lights! Come see the Red Hot Scorpions put the sting on the winners of Sunday\'s Coastal Quarterfinals for all state bragging rights. Fans entering the stadium in team color face paint will receive a $5 voucher redeemable with any on-site vendor. Body paint in lieu of clothing will not be permitted for this family friendly event.','All State Football Championship',4,7),(5,'Every tennis enthusiast will want to see Wimbledon legend Chris Lewis as he meets archrival Deuce Wild in the quarterfinals of one of the top U.S. tournaments. Finals are already sold out, so do not miss your chance to see the real action in play on the eve of the big day!','Chris Lewis Quarterfinals',4,11),(6,'Join your fellow crew junkies and snarky, self-important collegiate know-it-alls from the nations snobbiest schools to see which team is in fact the fastest show on oars. (Or, if you like, just purchase a ticket and sport a t-shirt from your local community college just to tick them off -- this event promises to be SO much fun!)','Crew You',4,12),(7,'What else is there to say? There\'s snow and sun and the bravest (or craziest) guys ever to strap two feet to a board and fly off a four-story ramp of ice and snow. Who would not want to see how aerial acrobatics are being redefined by the world\'s top adrenaline junkies?','Extreme Snowboarding Finals',4,13),(8,'Hear the sounds that have the critics abuzz. Be one of the first American audiences to experience Portuguese phenomenon Arrhythmia play all the tracks from their recently-released \'Graffiti\' -- the show includes a cameo with world-famous activist and graffiti artist Bansky.','Arrhythmia: Graffiti',1,8),(9,'That\'s right -- they\'ve blown into town! Join the annual tri-state Battle of the Brass Bands and watch them \'gild\' the winning band\'s Most Valuable Blower (MVB) -- don\'t worry (and don\'t inhale!); it\'s only spray paint!  Vote for your best band and revel in a day of high-energy rhythms!','Battle of the Brass Bands',1,9),(10,'Sit center stage as Harlequin Ayes gives another groundbreaking theater performance in the critically acclaimed Carnival Comes to Town, a monologue re-enactment of one-woman\'s despair at not being chosen to join the carnival she\'s spent her entire life preparing for.','Carnival Comes to Town',2,10),(11,'Get in touch with the stunning staccato and your inner Andalusian -- and put on your dancing shoes even if you\'re just in the audience! It\'s down to this one night of competition for the eight mesmerizing couples from around the globe that made it this far. Purchase VIP tickets to experience the competition and revel in the after-hours cabaret party with the world\'s most alluring dancers!','Flamenco Finale',2,14),(12,'It\'s one night only for this once-in-a-lifetime concert-in-the-round with Grammy winning folk and blues legend Jesse Lewis. Entirely stripped of elaborate recording production, Lewis\' music stands entirely on its own and has audiences raving it\'s his best work ever. With limited seating this final concert, don\'t dare to miss this classic you can tell your grandkids about when they develop some real taste in music.','Jesse Lewis Unplugged',1,15),(13,'Make way for Puccini\'s opera in three acts and wear waterproof mascara for the dramatic tearjerker of the season. Let the voice of renowned soprano Rosino Storchio and tenor Giovanni Zenatello envelop you under the stars while you sob quietly into your handkerchief! Wine and hard liquor will be available during intermission and after the show for those seeking to drown their sorrows.','Madame Butterfly',2,16),(14,'Join in the region\'s largest and most revered demonstration of one of the most mocked arts forms of all time. Stand in stunned silence while the masters of Mime Mania thrill with dramatic gestures that far surpass the now passé \"Woman in a Glass Box.\" See the famous, \"I have 10 fingers, don\'t make me give you one!\" and other favorites and be sure to enjoy the post-show silent auction.','Mime Mania!',2,17),(15,'This show is for all those who traded in Hemingway for the poetry of the Doors, but really can\'t remember why.  Come see a dead ringer for Jim Morrison and let the despair envelop your soul as he quotes from his tragic mentor, \"I believe in a prolonged derangement of the senses in order to obtain the unknown.\" But be advised: Leave your ganja at home, or leave with the Po-Po','Almost (Mostly) Morrison',1,18),(16,'Join your fellow ballet enthusiasts for the National Ballet Company\'s presentation of Tutu Tchai, a tribute to Pyotr Tchaikovsky\'s and the expressive intensity revealed in his three most famous ballets: The Nutcracker, Swan Lake, and The Sleeping Beauty.','Tutu Tchai',2,19),(17,'They\'re out to prove it\'s not all about the fights! Join your favorite members of the Canadian Women\'s Hockey League as they compete for the title \"Queen of the Slap Shot.\" Commonly believed to be hockey\'s toughest shot to execute, the speed and accuracy of slap shots will be measured on the ice. Fan participation and response will determine any ties. Proceeds will benefit local area domestic violence shelters.','Slap Shot',4,20),(18,'Your votes are in and the teams are assembled and coming to a stadium near you! Join Brendan \'Biceps\' Owen and the rest of the NBA\'s leading players for this blockbuster East versus West all-star game. Who will join the rarefied air with past MVP greats like Shaquille O\'Neal, LeBron James, and Kobe Bryant? Don\'t wait to see the highlights when you can experience it live!','Giants of the Game',4,21),(19,'You may not be at a British seaside but you heard right! Bring your family to witness a new twist on this traditional classic dating back to the 1600s ... only this time, Mr. Punch (and his stick) have met \"The 1%.\" Cheer (or jeer) from the crowd when you think Punch should use his stick on Mr. 1%. Fans agree, \"It\'s the best way to release your outrage at the wealthiest 1% without  being arrested!\".','Punch and Judy (with a Twist)',2,22);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventcategory`
--

DROP TABLE IF EXISTS `eventcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventcategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventcategory`
--

LOCK TABLES `eventcategory` WRITE;
/*!40000 ALTER TABLE `eventcategory` DISABLE KEYS */;
INSERT INTO `eventcategory` VALUES (5,'Comedy'),(1,'Concert'),(3,'Musical'),(4,'Sporting'),(2,'Theatre');
/*!40000 ALTER TABLE `eventcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediaitem`
--

DROP TABLE IF EXISTS `mediaitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediaitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mediaType` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediaitem`
--

LOCK TABLES `mediaitem` WRITE;
/*!40000 ALTER TABLE `mediaitem` DISABLE KEYS */;
INSERT INTO `mediaitem` VALUES (1,'IMAGE','http://dl.dropbox.com/u/65660684/640px-Weir%2C_Bob_(2007)_2.jpg'),(2,'IMAGE','http://dl.dropbox.com/u/65660684/640px-Carnival_Puppets.jpg'),(3,'IMAGE','http://dl.dropbox.com/u/65660684/640px-Opera_House_with_Sydney.jpg'),(4,'IMAGE','http://dl.dropbox.com/u/65660684/640px-Roy_Thomson_Hall_Toronto.jpg'),(5,'IMAGE','http://dl.dropbox.com/u/65660684/640px-West-stand-bmo-field.jpg'),(6,'IMAGE','http://dl.dropbox.com/u/65660684/640px-Brazil_national_football_team_training_at_Dobsonville_Stadium_2010-06-03_13.jpg'),(7,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/AllStateFootballChampionship.png'),(8,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/ARhythmia.png'),(9,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/BattleoftheBrassBands.png'),(10,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/CarnivalComestoTown.png'),(11,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/ChrisLewisQuarterfinals.png'),(12,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/CrewYou.png'),(13,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/ExtremeSnowboardingFinals.png'),(14,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/FlamencoFinale.png'),(15,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/JesseLewisUnplugged.png'),(16,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/MadameButterfly.png'),(17,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/MimeMania.png'),(18,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/MorrisonCover.png'),(19,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/TutuTchai.png'),(20,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/SlapShot.png'),(21,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/Giantsofthegame.png'),(22,'IMAGE','http://dl.dropbox.com/u/8625587/ticketmonster/Punch%26Judy.png');
/*!40000 ALTER TABLE `mediaitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numberOfRows` int(11) NOT NULL,
  `rowCapacity` int(11) NOT NULL,
  `venue_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`venue_id`),
  KEY `FKD8A816C5ED55AD2E` (`venue_id`),
  CONSTRAINT `FKD8A816C5ED55AD2E` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Premier platinum reserve','A',20,100,1),(2,'Premier gold reserve','B',20,100,1),(3,'Premier silver reserve','C',30,100,1),(4,'General','D',40,100,1),(5,'Front left','S1',50,50,2),(6,'Front centre','S2',50,50,2),(7,'Front right','S3',50,50,2),(8,'Rear left','S4',50,50,2),(9,'Rear centre','S5',50,50,2),(10,'Rear right','S6',50,50,2),(11,'Balcony','S7',1,30,2),(12,'Premier platinum reserve','A',40,100,3),(13,'Premier gold reserve','B',40,100,3),(14,'Premier silver reserve','C',30,200,3),(15,'General','D',80,200,3);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `ticketCategory_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK954D572C84282A46` (`ticketCategory_id`),
  CONSTRAINT `FK954D572C84282A46` FOREIGN KEY (`ticketCategory_id`) REFERENCES `ticketcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketcategory`
--

DROP TABLE IF EXISTS `ticketcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketcategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketcategory`
--

LOCK TABLES `ticketcategory` WRITE;
/*!40000 ALTER TABLE `ticketcategory` DISABLE KEYS */;
INSERT INTO `ticketcategory` VALUES (1,'Adult'),(2,'Child 0-14yrs');
/*!40000 ALTER TABLE `ticketcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mediaItem_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK4EB7A4F28772A4E` (`mediaItem_id`),
  CONSTRAINT `FK4EB7A4F28772A4E` FOREIGN KEY (`mediaItem_id`) REFERENCES `mediaitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,'Toronto','Canada','60 Simcoe Street',11000,'Roy Thomson Hall is the home of the Toronto Symphony Orchestra and the Toronto Mendelssohn Choir.','Roy Thomson Hall',4),(2,'Sydney','Australia','Bennelong point',15030,'The Sydney Opera House is a multi-venue performing arts centre in Sydney, New South Wales, Australia','Sydney Opera House',3),(3,'Toronto','Canada','170 Princes Boulevard',30000,'BMO Field is a Canadian soccer stadium located in Exhibition Place in the city of Toronto.','BMO Field',5);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-30 17:42:27
