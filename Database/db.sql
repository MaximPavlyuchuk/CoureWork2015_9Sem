﻿DROP DATABASE IF EXISTS `find_path`;
CREATE DATABASE  IF NOT EXISTS `find_path` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `find_path`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: find_path
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `bus_routes`
--

DROP TABLE IF EXISTS `bus_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stops` varchar(500) NOT NULL,
  `fk_buses_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_buses_id_idx` (`fk_buses_id`),
  CONSTRAINT `fk_buses_id` FOREIGN KEY (`fk_buses_id`) REFERENCES `buses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_routes`
--

LOCK TABLES `bus_routes` WRITE;
/*!40000 ALTER TABLE `bus_routes` DISABLE KEYS */;
INSERT INTO `bus_routes` VALUES (1,'94;96;97;103;476;312;108;110;112;114;116;118;121;366;123;401;400',31),(2,'400;402;122;367;119;117;115;113;111;109;107;90;385;477;104;98;95;93;92',30),(3,'92;94;96;97;103;476;312;108;110;112;114;116;118;120;125;127;482;129;133',32),(4,'133;130;128;126;124;119;117;115;113;111;109;107;90;385;477;104;98;95;93;92',33),(5,'138;136;135;133;132;322;320;327;329;331;315;313;247;249;251;254;272;277;280;285;403',66),(6,'403;404;284;279;278;276;273;253;252;250;147;314;316;330;328;326;319;323;131;73;134;137;138',67),(7,'403;404;284;279;278;276;273;253;252;250;147;314;316;330;328;326;319;323;130;128;126;124;121;366;123;401;400',69),(8,'400;402;122;367;120;125;127;482;129;133;132;322;320;327;329;331;315;313;247;249;251;254;272;277;280;285;403',68),(9,'202;201;87;89;91;154;155;158;174;176;177',99),(10,'177;175;172;157;156;93;88;85;202',98),(11,'92;88;85;453;451;446;71;68;67',115),(12,'67;69;70;447;452;454;82;86;89;92',114),(13,'368;203;201;84;81;79;102;101;332;153;151;148;247;249;362;277;280;281;435;424;434;422;406;403',116),(14,'403;410;405;409;467;433;423;282;279;278;276;274;250;248;149;150;152;99;100;78;80;82;83;202;200;198;196;515;518;368',117),(15,'92;88;85;200;198;196;192;189;187;184;185',118),(16,'185;186;188;190;191;370;197;199;201;86;89;92',119),(17,'92;88;85;202;204;205;207;210;211;193;194',120),(18,'194;195;359;209;372;206;368;203;201;86;89;92',121),(19,'133;131;73;139;142;144;479;477;104;99;100;78;80;82;83;31;32;22;18;20;8;7;4;2;1',122),(20,'1;3;5;6;9;21;19;23;33;30;84;81;79;102;101;103;476;478;145;141;140;133',123),(21,'92;94;96;97;153;165;163;162;159;173;216;218;220;221',1),(22,'221;219;217;214;172;160;161;164;166;152;98;95;93;92',0),(23,'92;88;85;81;79;102;101;332;153;167;169;170;216;218;220;223;225;471;473;412',3),(24,'412;481;472;226;224;222;221;219;217;214;171;168;149;150;152;99;100;78;80;82;86;89;92',2),(25,'92;94;96;97;153;167;169;170;216;218;220;223;225;471;473;230;232;234;235',4),(26,'235;233;231;481;472;226;224;222;219;217;214;171;168;149;150;152;98;95;93;92',5),(27,'202;201;84;81;79;102;101;103;476;478;380;448;382;474;383;136;135;133',7),(28,'133;131;73;134;524;143;469;381;479;477;104;99;100;78;80;82;83;202',6),(29,'368;203;201;84;81;79;102;101;103;476;421;465;408;141;140;134;137;530;529',8),(30,'529;138;136;135;139;468;407;466;477;104;99;100;78;80;82;83;202;200;198;196;515;518;368',9),(31,'92;88;85;200;198;196;192;189;187;369;333;339;341;342',10),(32,'342;340;338;360;182;188;190;191;370;197;199;201;87;89;92',11),(33,'92;88;85;200;198;196;192;189;187;369;333;339;394;395',12),(34,'395;340;338;360;182;188;190;191;370;197;199;201;87;89;92',13),(35,'92;94;96;97;103;476;478;146;448',15),(36,'448;381;479;477;104;98;95;93;92',14),(37,'324;327;329;331;315;313;149;150;152;99;100;78;80;82;83;31;32;34;488;37;40;42;43;45;47;49;50',17),(38,'50;48;46;44;41;39;36;487;35;33;30;84;81;79;102;101;332;153;151;148;147;314;316;330;328;326;324',16),(39,'324;327;329;331;315;313;149;150;152;99;100;78;80;82;83;31;32;34;488;37;40;42;43;45;47;49;371;350;348;397;52;51',19),(40,'51;53;347;349;50;48;46;44;41;39;36;487;35;33;30;84;81;79;102;101;332;153;151;148;147;314;316;330;328;326;324',18),(41,'324;327;329;331;315;313;149;150;152;99;100;78;80;82;83;31;32;34;488;37;40;42;43;45;47;49;371;350;348;397;51;346;345',21),(42,'345;53;347;349;50;48;46;44;41;39;36;487;35;33;30;84;81;79;102;101;332;153;151;148;147;314;316;330;328;326;324',20),(43,'92;154;155;158;173;171;246;244;241;238;237;257;255;252;362;273',22),(44,'273;270;236;239;240;243;245;170;172;157;156;93;92',23),(45,'242;243;245;149;150;152;99;100;78;76;501;74;71;68;67',24),(46,'67;69;70;75;502;77;102;101;332;153;167;246;244;242',25),(47,'283;282;470;288;289;266;268;272;293;294;296;299;363;365;327;329;331;318;319;323;131;73;139;142;144;479;477;104;98;95;93;92',27),(48,'92;94;96;97;103;476;478;145;141;140;133;132;322;320;317;330;328;325;364;298;297;295;273;269;267;290;287;286;281;283',26),(49,'242;243;245;170;178;527;181;182;188;190;191;370;515;518;368;202',28),(50,'202;517;519;516;192;189;187;183;180;528;179;171;246;244;242',29),(51,'133;130;128;126;124;119;117;115;113;111;109;107;90;385;477;104;99;100;78;80;82;83;31;32;24;28;27;376;399;16;15;13',35),(52,'13;525;526;18;375;26;29;25;33;30;85;444;357;358;101;103;476;312;108;110;112;114;116;118;120;125;127;482;129;133',34),(53,'92;88;85;31;32;34;488;38;489;66;64;61;491;60;58;56;54',37),(54,'54;55;57;59;492;62;63;65;490;487;35;33;30;86;89;92',36),(55,'92;88;85;31;32;34;488;38;489;66;64;61;491;60;58;56;344;345;52;51',38),(56,'51;346;373;379;54;55;57;59;492;62;63;65;490;487;35;33;30;86;89;92',39),(57,'92;88;85;31;32;34;488;38;489;66;64;61;491;60;58;56;343;416;498;414;411',40),(58,'411;415;499;417;379;55;57;59;492;62;63;65;490;487;35;33;30;86;89;92',41),(59,'92;88;83;31;32;24;28;355;5;6;10;12;352;354;495;418;420',42),(60,'420;419;496;353;351;11;8;7;356;29;25;33;30;86;89;92',43),(61,'92;94;96;97;153;151;148;147;314;316;330;328;326;324',44),(62,'324;327;329;331;315;313;149;150;152;98;95;93;92',45),(63,'92;94;96;97;153;151;148;147;314;316;330;328;325;475;484;485;361',47),(64,'361;275;480;483;327;329;331;315;313;149;150;152;98;95;93;92',46),(65,'54;55;57;59;492;62;63;65;490;487;35;33;30;86;89',48),(66,'88;85;31;32;34;488;38;489;66;64;61;491;60;58;56;54',49),(67,'92;88;85;202;204;205;208;215;218;220;223;225;471;473;229;228;292;263;265;280;281;283',50),(68,'283;282;279;264;262;291;227;481;472;226;224;222;219;217;213;212;372;206;368;203;201;86;89;92',51),(69,'283;282;279;264;262;291;227;481;472;226;224;222;221',53),(70,'221;223;225;471;473;229;228;292;263;265;280;281;283',52),(71,'92;88;85;202;200;198;196;192;189;187;183;500;450',55),(72,'450;181;182;188;190;191;370;197;199;201;86;89;92',54),(73,'92;94;96;97;103;377;384;145;141;140;130;128;482;374;393;387;443;388;389',56),(74,'389;390;391;386;392;482;129;131;73;139;142;144;146;104;98;95;93;92',57),(75,'92;94;96;97;153;151;148;247;249;251;256;259;261;291;227;230;232;234;235',58),(76,'235;233;231;229;228;292;260;258;257;255;252;250;248;149;150;152;98;95;93;92',59),(77,'92;94;96;97;153;151;148;247;249;251;256;259;261;291;227;230;232;234;235;514',60),(78,'514;235;233;231;229;228;292;260;258;257;255;252;250;248;149;150;152;98;95;93;92',61),(79,'242;241;238;237;259;261;263;266;268;272;293;294;296;299;363;365;327;329;331;318;319;321',62),(80,'321;320;317;330;328;325;364;298;297;295;273;269;267;262;260;258;236;239;240;242',63),(81,'138;136;135;133;132;322;320;327;329;331;315;313;247;249;251;256;259;261;291;227;230;232;234;235',64),(82,'235;233;231;229;228;292;260;258;257;255;252;250;147;314;316;330;328;326;319;323;131;73;134;137;138',65),(83,'92;94;96;97;153;151;148;147;310;308;300;302;304;305;425;427;429;431',70),(84,'431;430;428;426;306;304;303;301;307;309;311;313;149;150;152;98;95;93;92',71),(85,'92;94;96;97;153;151;148;147;310;308;300;302;304;305;425;427;429;431;430;428;432',72),(86,'432;426;306;304;303;301;307;309;311;313;149;150;152;98;95;93;92',73),(87,'283;282;470;288;289;262;260;258;236;239;240;243;245;149;150;152;99;100;78;80;82;83;31;32;34;520;521;42;43;45;47;49;50',75),(88,'50;48;46;44;41;522;523;487;35;33;30;86;444;357;358;101;332;153;167;246;244;241;238;237;259;261;263;290;287;286;281;283',74),(89,'92;154;155;158;173;171;246;244;241;238;237;271;269;267;265;280;281;424;434;422;406;404;439;445',76),(90,'445;449;455;410;405;409;467;433;423;282;279;264;266;268;270;236;239;240;243;245;170;172;157;156;93;92',77),(91,'92;94;96;97;99;100;78;76;501;74;71;68;67',79),(92,'67;69;70;75;502;77;102;101;103;104;98;95;93;92',78),(93,'133;132;322;320;317;330;328;325;364;298;297;295;273;270;236;239;240;243;245;170;178;527;181;378;497;54;55;57;59;492;62;63;65;490;487;35;33;30;86;89;92',81),(94,'92;88;85;31;32;34;488;38;489;66;64;61;491;60;58;56;54;183;180;528;179;171;246;244;241;238;237;271;272;293;294;296;299;363;365;327;329;331;318;319;323;131',80),(95,'529;138;136;135;133;132;322;320;317;330;328;325;364;298;297;295;273;270;236;239;240;243;245;170;178;527;181;378;497;54;344;345',82),(96,'345;373;379;54;183;180;528;179;171;246;244;241;238;237;271;272;293;294;296;299;363;365;327;329;331;318;319;323;131;73;134;137;530;529',83),(97,'283;282;279;264;266;268;270;236;239;240;243;245;170;178;527;181;378;497;54;344;345;52;51;53;347;349;50',85),(98,'50;350;348;397;52;51;346;373;379;54;183;180;528;179;171;246;244;241;238;237;271;269;267;265;280;281;283',84),(99,'283;282;470;288;289;266;268;253;252;250;248;149;150;152;98;95;93;88;83;31;32;22;18;375;26;355;5;6;10;12;13',87),(100,'13;11;8;7;356;27;376;19;23;33;30;86;89;91;94;96;97;153;151;148;247;249;251;254;269;267;290;287;286;281;283',86),(101,'283;282;470;288;289;266;268;253;252;250;248;149;150;152;98;95;93;88;83;31;32;22;18;375;26;355;4;2;1',89),(102,'1;3;356;27;376;19;23;33;30;86;89;91;94;96;97;153;151;148;247;249;251;254;269;267;290;287;286;281;283',88),(103,'283;282;470;288;289;266;268;253;252;250;248;149;150;152;98;95;93;88;83;31;32;34;488;37;40;42;43;45;47;49;50',91),(104,'50;48;46;44;41;39;36;487;35;33;30;86;89;91;94;96;97;153;151;148;247;249;251;254;269;267;290;287;286;281;283',90),(105,'283;282;279;278;276;273;270;236;239;240;243;245;170;178;527;181;334;337;441;440;436',93),(106,'436;437;438;396;442;336;335;183;180;528;179;171;246;244;241;238;237;271;272;277;280;281;283',92),(107,'283;282;279;278;276;274;250;248;167;169;170;178;527;181;334;337;441;440;17;72;436',95),(108,'436;437;438;396;442;336;335;183;180;528;179;171;168;247;249;362;277;280;281;283',94),(109,'92;88;85;202;517;519;516;192;189;187;184;185;186;334;337;441;440;436',96),(110,'436;437;438;396;442;336;182;184;185;186;188;190;191;370;515;518;368;203;201;87;89;92',97),(111,'92;94;96;97;103;476;478;145;141;140;130;460;464;458',100),(112,'458;459;463;461;129;131;73;139;142;144;479;477;104;98;95;93;92',101),(113,'133;131;73;134;524;143;381;479;312;74;452;454;82;83;202;200;198;196;515;518;368',103),(114,'368;203;201;84;453;398;75;90;385;478;380;382;474;383;136;135;133',102),(115,'202;204;205;208;214;171;168;147;384;380;382;474;383;136;135;133',105),(116,'133;131;73;134;524;143;381;146;313;167;169;170;216;213;212;372;206;368;202',104),(117,'403;404;284;279;264;266;268;270;236;239;240;243;245;170;178;527;181;182;188;190;191;370;197;199;201;31;32;24;28;27;376;20;10;12;13',107),(118,'13;11;9;21;375;26;29;25;33;200;198;196;192;189;187;183;180;528;179;171;246;244;241;238;237;271;269;267;265;280;285;403',106),(119,'92;88;85;31;32;24;28;27;376;20;10;12;13',109),(120,'13;11;9;21;375;26;29;25;33;30;86;89;92',108),(121,'92;94;96;97;153;148;362;299;365;503;505;507;509;511;513',110),(122,'513;512;510;508;506;504;413;298;274;248;149;152;98;95;93;92',111),(123,'138;136;135;133;132;322;320;327;329;331;315;313;167;246;244;241;238;237;271;269;267;290;287;286;281;283',112),(124,'283;282;470;288;289;266;268;270;236;239;240;243;245;147;314;316;330;328;326;319;323;131;73;134;137;138',113);
/*!40000 ALTER TABLE `bus_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buses` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `fk_routes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_routes_id_idx` (`fk_routes_id`),
  CONSTRAINT `fk_routes_id` FOREIGN KEY (`fk_routes_id`) REFERENCES `routes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (0,'10',5),(1,'10',25),(2,'11',19),(3,'11',31),(4,'11А',35),(5,'11А',59),(6,'12',76),(7,'12',88),(8,'12А',54),(9,'12А',70),(10,'13',45),(11,'13',85),(12,'13А',37),(13,'13А',62),(14,'14',20),(15,'14',32),(16,'15А',67),(17,'15А',105),(18,'15Б',96),(19,'15Б',107),(20,'15В',93),(21,'15В',106),(22,'16',44),(23,'16',84),(24,'17',0),(25,'17',13),(26,'18',51),(27,'18',100),(28,'19',2),(29,'19',86),(30,'1',10),(31,'1',28),(32,'1А',42),(33,'1А',73),(34,'20',16),(35,'20',72),(36,'21',4),(37,'21',24),(38,'21А',50),(39,'21А',95),(40,'21Б',40),(41,'21Б',68),(42,'22',41),(43,'22',69),(44,'23',52),(45,'23',104),(46,'23А',8),(47,'23А',26),(48,'23Б',3),(49,'23Б',7),(50,'24',51),(51,'24',100),(52,'24А',6),(53,'24А',97),(54,'25',9),(55,'25',27),(56,'26',47),(57,'26',90),(58,'27',35),(59,'27',59),(60,'27A',48),(61,'27A',91),(62,'28',1),(63,'28',61),(64,'29',21),(65,'29',58),(66,'2',22),(67,'2',81),(68,'2А',11),(69,'2А',79),(70,'30',39),(71,'30',65),(72,'30А',36),(73,'30А',60),(74,'31',66),(75,'31',102),(76,'32',49),(77,'32',94),(78,'33',14),(79,'33',29),(80,'34',42),(81,'34',73),(82,'35',71),(83,'35',92),(84,'36',66),(85,'36',102),(86,'37',18),(87,'37',98),(88,'37А',78),(89,'37А',103),(90,'38',66),(91,'38',102),(92,'39',64),(93,'39',101),(94,'39А',64),(95,'39А',101),(96,'39Б',38),(97,'39Б',63),(98,'3',12),(99,'3',87),(100,'40',33),(101,'40',53),(102,'41',55),(103,'41',74),(104,'42',76),(105,'42',88),(106,'44',17),(107,'44',80),(108,'44А',15),(109,'44А',30),(110,'45',46),(111,'45',89),(112,'46',23),(113,'46',99),(114,'5',14),(115,'5',29),(116,'6',56),(117,'6',82),(118,'7',43),(119,'7',83),(120,'8',34),(121,'8',57),(122,'9',75),(123,'9',77);
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (0,'АП-Брест Западный'),(1,'АП-Ж/д Южный'),(2,'АП-Пригородный вокзал'),(3,'БОАТ-Березовая Роща'),(4,'БОАТ-Газоаппарат'),(5,'БЭТЗ-Газоаппарат'),(6,'БЭТЗ-ЦГБ'),(7,'Березовая Роща-БОАТ'),(8,'Березовая Роща-Газоаппарат'),(9,'Березовка-Газоаппарат'),(10,'Бернады-Газоаппарат'),(11,'Бернады-Областная больница'),(12,'Брест Восточный-Пригородный вокзал'),(13,'Брест Западный-АП'),(14,'Брест Западный-Газоаппарат'),(15,'Брестское пиво-Газоаппаратарат'),(16,'Брестское пиво-Микрорайон Южный'),(17,'Брестское пиво-Областная больница'),(18,'Брестское пиво-ЦГБ'),(19,'ВамРад-Газоаппарат'),(20,'Варшавский рынок-Газоаппарат'),(21,'Вулька-Гостиница Дружба'),(22,'Вулька-Областная больница'),(23,'Вулька-ЦГБ'),(24,'Газоаппарат-БОАТ'),(25,'Газоаппарат-БЭТЗ'),(26,'Газоаппарат-Березовая Роща'),(27,'Газоаппарат-Березовка'),(28,'Газоаппарат-Бернады'),(29,'Газоаппарат-Брест Западный'),(30,'Газоаппарат-Брестское пиво'),(31,'Газоаппарат-ВамРад'),(32,'Газоаппарат-Варшавский рынок'),(33,'Газоаппарат-Гвардейская'),(34,'Газоаппарат-Гортоп'),(35,'Газоаппарат-Гостиница Дружба'),(36,'Газоаппарат-Дорожник'),(37,'Газоаппарат-Инвалюкс'),(38,'Газоаппарат-Калиновая'),(39,'Газоаппарат-Картодром'),(40,'Газоаппарат-Кладбище Северное'),(41,'Газоаппарат-Клейники'),(42,'Газоаппарат-Микрорайон Южный'),(43,'Газоаппарат-ППВ'),(44,'Газоаппарат-Партизанский проспект'),(45,'Газоаппарат-Плоска'),(46,'Газоаппарат-Радуга'),(47,'Газоаппарат-С/т Жемчужина'),(48,'Газоаппарат-С/т Суница'),(49,'Газоаппарат-Тельмы'),(50,'Газоаппарат-Торговый дом Идеал'),(51,'Газоаппарат-ЦГБ'),(52,'Газоаппарат-Цветотрон'),(53,'Гвардейская-Газоаппарат'),(54,'Городская больница №1-Криштофовича'),(55,'Городская больница №1-Микрорайон Южный'),(56,'Городская больница №1-Областная больница'),(57,'Гортоп-Газоаппарат'),(58,'Гостиница Дружба-Вулька'),(59,'Гостиница Дружба-Газоаппарат'),(60,'Дорожник-Газоаппарат'),(61,'Ж/д Южный-АП'),(62,'Инвалюкс-Газоаппарат'),(63,'Калиновая-Газоаппарат'),(64,'Калиновая-ЦГБ'),(65,'Картодром-Газоаппарат'),(66,'Катин Бор-ЦГБ'),(67,'Катин Бор-Цветотрон'),(68,'Кладбище Северное-Газоаппарат'),(69,'Клейники-Газоаппарат'),(70,'Криштофовича-Городская больница №1'),(71,'Криштофовича-Санта Бремор'),(72,'Микрорайон Южный-Брестское пиво'),(73,'Микрорайон Южный-Газоаппарат'),(74,'Микрорайон Южный-Городская больница №1'),(75,'Микрорайон Южный-Мясокомбинат'),(76,'Микрорайон Южный-Пригородный вокзал'),(77,'Мясокомбинат-Микрорайон Южный'),(78,'Мясокомбинат-ЦГБ'),(79,'Областная больница-Бернады'),(80,'Областная больница-Брестское пиво'),(81,'Областная больница-Вулька'),(82,'Областная больница-Городская больница №1'),(83,'ППВ-Газоаппарат'),(84,'Партизанский проспект-Газоаппарат'),(85,'Плоска-Газоаппарат'),(86,'Пригородный вокзал-АП'),(87,'Пригородный вокзал-Брест Восточный'),(88,'Пригородный вокзал-Микрорайон Южный'),(89,'Радуга-Газоаппарат'),(90,'С/т Жемчужина-Газоаппарат'),(91,'С/т Суница-Газоаппарат'),(92,'Санта Бремор-Криштофовича'),(93,'Санта Бремор-Цветотрон'),(94,'Тельмы-Газоаппарат'),(95,'Торговый дом Идеал-Газоаппарат'),(96,'Торговый дом Идеал-Цветотрон'),(97,'ЦГБ-БЭТЗ'),(98,'ЦГБ-Брестское пиво'),(99,'ЦГБ-Вулька'),(100,'ЦГБ-Газоаппарат'),(101,'ЦГБ-Калиновая'),(102,'ЦГБ-Катин Бор'),(103,'ЦГБ-Мясокомбинат'),(104,'Цветотрон-Газоаппарат'),(105,'Цветотрон-Катин Бор'),(106,'Цветотрон-Санта Бремор'),(107,'Цветотрон-Торговый дом Идеал');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trafic_stops`
--

DROP TABLE IF EXISTS `trafic_stops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trafic_stops` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trafic_stops`
--

LOCK TABLES `trafic_stops` WRITE;
/*!40000 ALTER TABLE `trafic_stops` DISABLE KEYS */;
INSERT INTO `trafic_stops` VALUES (1,'Мясокомбинат'),(2,'База «Рыбторг»'),(3,'База «Рыбторг»'),(4,'Агротранс'),(5,'Агротранс'),(6,'Школа'),(7,'Школа'),(8,'Хлебпром'),(9,'Хлебпром'),(10,'Хлебпром'),(11,'Бауманская'),(12,'Бауманская'),(13,'Брестское пиво'),(15,'Вторцветмет'),(16,'Дворникова'),(17,'Переулок'),(18,'Лейтенанта Акимочкина'),(19,'Лейтенанта Акимочкина'),(20,'Речицкая'),(21,'Речицкая'),(22,'Летная'),(23,'Летная'),(24,'Веселая'),(25,'Веселая'),(26,'Адамковская'),(27,'Адамковская'),(28,'Пригородная'),(29,'Пригородная'),(30,'Мостовая'),(31,'Мостовая'),(32,'Брестских дивизий'),(33,'Брестских дивизий'),(34,'Аэроклуб'),(35,'Аэроклуб'),(36,'Белорусская'),(37,'Белорусская'),(38,'Белорусская'),(39,'Лысая гора'),(40,'Лысая Гора'),(41,'Завод бытовой химии'),(42,'Завод бытовой химии'),(43,'Магазин «Продтовары»'),(44,'Дубровка'),(45,'Дубровка'),(46,'Внештранс'),(47,'Внештранс'),(48,'Инко Фуд'),(49,'Инко Фуд'),(50,'Катин бор'),(51,'Торговый дом Идеал'),(52,'Брестглавснаб'),(53,'Брестглавснаб'),(54,'Брестоблавтотранс'),(55,'Промтехника'),(56,'Промтехника'),(57,'Строительная'),(58,'Строительная'),(59,'Интертранс'),(60,'Интертранс'),(61,'Славнефть'),(62,'Славнефть'),(63,'Лейтенанта Рябцева'),(64,'Лейтенанта Рябцева'),(65,'ПСО'),(66,'ПСО'),(67,'Брест Западный'),(68,'Колледж торговли'),(69,'Колледж торговли'),(70,'Зубачёва'),(71,'Зубачёва'),(72,'Озеро'),(73,'Санта-54'),(74,'Крепость'),(75,'Крепость'),(76,'ТЭЦ'),(77,'ТЭЦ'),(78,'Ленина'),(79,'Музей спасенных ценностей'),(80,'Сквер Иконникова'),(81,'Театр'),(82,'Площадь Ленина'),(83,'Парк 1 МАЯ'),(84,'Парк 1 МАЯ'),(85,'Мицкевича'),(86,'Мицкевича'),(87,'Профсоюзная'),(88,'Автовокзал'),(89,'Советская'),(90,'Грибоедова'),(91,'Завод Газоаппарат'),(92,'Завод Газоаппарат'),(93,'Университет'),(94,'Университет'),(95,'Гоголя'),(96,'Гоголя'),(97,'Бульвар Космонавтов'),(98,'Бульвар Космонавтов'),(99,'Проспект Машерова'),(100,'ЦУМ'),(101,'ЦУМ'),(102,'Интурист'),(103,'Бульвар Шевченко'),(104,'Гостиница Беларусь'),(107,'Подсобное хозяйство'),(108,'Подсобное хозяйство'),(109,'Прибужская'),(110,'Прибужская'),(111,'Волынка'),(112,'Волынка'),(113,'Форт'),(114,'Форт'),(115,'Аркадия'),(116,'Аркадия'),(117,'Сиреневая'),(118,'Сиреневая'),(119,'Гершоны'),(120,'Гершоны'),(121,'Гершоны'),(122,'Митьки'),(123,'Митьки'),(124,'Озёрная'),(125,'Озёрная'),(126,'Кирпичная'),(127,'Кирпичная'),(128,'Жукова'),(129,'Жукова'),(130,'Микрорайон Южный'),(131,'Микрорайон Южный'),(132,'Микрорайон Южный'),(133,'Д.П. «Южный городок»'),(134,'Рябиновая'),(135,'Рябиновая'),(136,'Вульковская'),(137,'Вульковская'),(138,'Микрорайон Вулька'),(139,'4-й Форт'),(140,'4-й Форт'),(141,'Кольцевая'),(142,'Кольцевая'),(143,'Магазин'),(144,'Подгородская'),(145,'Колесника'),(146,'Колесника'),(147,'Беларусбанк'),(148,'ЦМТ'),(149,'ЦМТ'),(150,'Зеленая'),(151,'Зеленая'),(152,'МОПРа'),(153,'МОПРа'),(154,'Пушкинская'),(155,'Ж/д техникум'),(156,'Ж/д техникум'),(157,'Стадион Локомотив'),(158,'Стадион Локомотив'),(159,'Станция юннатов'),(160,'Станция юннатов'),(161,'Гастелло'),(162,'Гастелло'),(163,'Дворцовая'),(164,'Дворцовая'),(165,'Сикорского'),(166,'Сикорского'),(167,'Беларусбанк'),(168,'Янки Купалы'),(169,'Янки Купалы'),(170,'Киевская'),(171,'Киевская'),(172,'Пионерская'),(173,'Пионерская'),(174,'Пионерская'),(175,'Скрипникова'),(176,'Скрипникова'),(177,'Брест Восточный'),(178,'Березовка'),(179,'Березовка'),(180,'Новосельская'),(181,'Новосельская'),(182,'Красногвардейская'),(183,'Красногвардейская'),(184,'Брестсельстрой'),(185,'Пункт подготовки вагонов'),(186,'Брестсельстрой'),(187,'Водоканал'),(188,'Водоканал'),(189,'Автобаза связи'),(190,'Автобаза связи'),(191,'Чернинская'),(192,'Чернинская'),(193,'Электросети'),(194,'ГОРТОП'),(195,'Электросети'),(196,'Карасева'),(197,'Карасева'),(198,'Боброва'),(199,'Боброва'),(200,'Республиканская'),(201,'Республиканская'),(202,'Пригородный вокзал'),(203,'Пригородный вокзал'),(204,'Городская больница №1'),(205,'Клары Цеткин'),(206,'Клары Цеткин'),(207,'Овощебаза'),(208,'Овощебаза'),(209,'Загороднего'),(210,'Загороднего'),(211,'Автомагазин'),(212,'Гаражи ОПC'),(213,'Шоссейная'),(214,'Шоссейная'),(215,'Шоссейная'),(216,'Шоссейная'),(217,'Гагарина'),(218,'Гагарина'),(219,'Магазин'),(220,'Магазин'),(221,'БЭТЗ'),(222,'БЭТЗ'),(223,'БЭТЗ'),(224,'Мошенского'),(225,'Мошенского'),(226,'БТК'),(227,'Троллейбусный парк'),(228,'Троллейбусный парк'),(229,'Новые Задворцы'),(230,'Новые Задворцы'),(231,'Старые Задворцы'),(232,'Старые Задворцы'),(233,'Авторынок'),(234,'Авторынок'),(235,'Гостиница Дружба'),(236,'Пожарное депо'),(237,'Пожарное депо'),(238,'Автошкола'),(239,'Автошкола'),(240,'Рембыттехника'),(241,'Рембыттехника'),(242,'АП'),(243,'Чулочный комбинат'),(244,'Чулочный комбинат'),(245,'Ковры Бреста'),(246,'Ковры Бреста'),(247,'Завод'),(248,'Завод'),(249,'Богданчука'),(250,'Богданчука'),(251,'Поликлиника'),(252,'Поликлиника'),(253,'Молодёжная'),(254,'Молодёжная'),(255,'Гостиница Юность'),(256,'Гостиница Юность'),(257,'Советской конституции'),(258,'Стадион Строитель'),(259,'Стадион Строитель'),(260,'Ленинградская'),(261,'Ленинградская'),(262,'Гаврилова'),(263,'Гаврилова'),(264,'ФОК'),(265,'ФОК'),(266,'Школьная'),(267,'Школьная'),(268,'Орловская'),(269,'Орловская'),(270,'Торговый центр Восток'),(271,'Торговый центр Восток'),(272,'Партизанский проспект'),(273,'Партизанский проспект'),(274,'Технический университет'),(275,'Строительный рынок'),(276,'Парк Воинов-интернационалистов'),(277,'Парк Воинов-интернационалистов'),(278,'Детский городок'),(279,'Восточный микрорайон'),(280,'Восточный микрорайон'),(281,'Стафеева'),(282,'Стафеева'),(283,'ЦГБ'),(284,'СТО-2'),(285,'СТО-2'),(286,'Дом ветеранов'),(287,'Лицей'),(288,'Лицей'),(289,'Восточная'),(290,'Восточная'),(291,'Дворец спорта Виктория'),(292,'Дворец спорта Виктория'),(293,'Проспект Республики'),(294,'Крушинская'),(295,'Крушинская'),(296,'Гузнянская'),(297,'Гузнянская'),(298,'Заречная'),(299,'Заречная'),(300,'Тенистая'),(301,'Тенистая'),(302,'Абрикосовая'),(303,'Абрикосовая'),(304,'Красный двор'),(305,'Мухавецкая'),(306,'Мухавецкая'),(307,'Заречная'),(308,'Волгоградская'),(309,'Волгоградская'),(310,'Октябрьской революции'),(311,'Октябрьской революции'),(312,'Сальникова'),(313,'Гребной канал'),(314,'Гребной канал'),(315,'28 июля'),(316,'28 июля'),(317,'Центральная'),(318,'Центральная'),(319,'Завод Цветотрон'),(320,'Завод Цветотрон'),(321,'Ж/д Южный'),(322,'Машино строительный завод'),(323,'Машино строительный завод'),(324,'Завод Цветотрон'),(325,'Ковалево'),(326,'Ковалево'),(327,'Ковалево'),(328,'Рынок «ЛАГУНА»'),(329,'Рынок «ЛАГУНА»'),(330,'Луцкая'),(331,'Луцкая'),(332,'Проспект Машерова'),(333,'деревня Плоска'),(334,'Городская'),(335,'Городская'),(336,'Купальская'),(337,'Купальская'),(338,'Гагарина'),(339,'Гагарина'),(340,'Сосновая'),(341,'Сосновая'),(342,'Кладбище Плоска'),(343,'Рыньковка'),(344,'Безымянная'),(345,'Санта Бремор'),(346,'Брестглавснаб'),(347,'Белтранс Ойл'),(348,'Белтранс Ойл'),(349,'Гефест-Кварц'),(350,'Гефест-Кварц'),(351,'Поворот Козловичи'),(352,'Поворот Козловичи'),(353,'Приграничная'),(354,'Приграничная'),(355,'Училище олимпийского резерва'),(356,'Училище олимпийского резерва'),(357,'Маяковского'),(358,'Спортшкола'),(359,'Автомагазин'),(360,'деревня Плоска'),(361,'Березовая роща'),(362,'Технический университет'),(363,'Светлая'),(364,'Пугачево'),(365,'Пугачево'),(366,'Учительская'),(367,'Учительская'),(368,'Городская больница №1'),(369,'Городская'),(370,'Обсерватория'),(371,'Катин бор'),(372,'Овощебаза'),(373,'Безымянная'),(374,'Перекресток'),(375,'Почта'),(376,'Почта'),(377,'Варшавское шоссе'),(378,'Красногвардейская'),(379,'Рыньковка'),(380,'Колесника'),(381,'Средняя Школа №1'),(382,'Средняя Школа №1'),(383,'Магазин'),(384,'Краснознамённая'),(385,'Сальникова'),(386,'С/т Южное 2'),(387,'С/т Южное 2'),(388,'Поворот Жемчужина'),(389,'С/т Жемчужинаина'),(390,'Поворот Жемчужина'),(391,'С/т Светлячок'),(392,'С/т Южное 1'),(393,'С/т Южное 1'),(394,'Сосновая'),(395,'Инволюкс'),(396,'Вересковая'),(397,'СЭЗ Брест'),(398,'БТИ'),(399,'Лейтенанта Акимочкина'),(400,'Бернады'),(401,'Котельня Боярская'),(402,'Котельня Боярская'),(403,'Областная больницаица'),(404,'Московское шоссе'),(405,'Медицинская'),(406,'Медицинская'),(407,'Екельчика'),(408,'Екельчика'),(409,'Есенина'),(410,'Областная больницаица'),(411,'Кладбище Северное'),(412,'ВамРад'),(413,'Пугачево'),(414,'Поворот Ковердяки'),(415,'Поворот Ковердяки'),(416,'Тюхиничи'),(417,'Тюхиничи'),(418,'Садовая'),(419,'Садовая'),(420,'Клейники'),(421,'Махновича'),(422,'Есенина'),(423,'Ландшафтная'),(424,'Ландшафтная'),(425,'Водозабор'),(426,'Водозабор'),(427,'Загородная'),(428,'Загородная'),(429,'Зона отдыха'),(430,'Зона отдыха'),(431,'Картодром'),(432,'С/т Дорожник'),(433,'Георгиевская'),(434,'Переулок Есенина'),(435,'Лактионова'),(436,'Калиновая'),(437,'Переулок Калиновый'),(438,'Тихая'),(439,'Тельмы'),(440,'Вересковая'),(441,'Магазин «Северный»'),(442,'Магазин «Северный»'),(443,'С/т Светлячок'),(444,'Комсомольская'),(445,'Костюшко'),(446,'Фомина'),(447,'Фомина'),(448,'Варшавский рынок'),(449,'Стимово'),(450,'Богдановича'),(451,'БТИ'),(452,'БТИ'),(453,'Стадион Брестский'),(454,'Стадион Брестский'),(455,'Тельмы'),(458,'Гвардейская'),(459,'Пронягина'),(460,'Жукова'),(461,'Рокоссовского'),(463,'Защитников Отечества'),(464,'Защитников Отечества'),(465,'Кладбище'),(466,'Перекресток'),(467,'Переулок Есенина'),(468,'Кольцевая'),(469,'Варшавский рынок'),(470,'Дом ветеранов'),(471,'БТК'),(472,'Автолюбителей'),(473,'Автолюбителей'),(474,'Ветренная'),(475,'Ясеневая'),(476,'Варшавское шоссе'),(477,'Махновича'),(478,'Махновича'),(479,'Колесника'),(480,'Каръерная'),(481,'Новые Задворцы'),(482,'Ковельская'),(483,'Ясеневая'),(484,'Каръерная'),(485,'Строительный рынок'),(487,'Аэродромная'),(488,'Аэродромная'),(489,'Транспортная'),(490,'Транспортная'),(491,'Трудовая'),(492,'Трудовая'),(495,'Смирнова'),(496,'Смирнова'),(497,'Северное Кольцо'),(498,'Амбулатория'),(499,'Амбулатория'),(500,'Новосельская'),(501,'Музей Ж/д техники'),(502,'Музей Ж/д техники'),(503,'С/т Сябры'),(504,'С/т Сябры'),(505,'С/т Березка'),(506,'С/т Березка'),(507,'С/т Флора'),(508,'С/т Флора'),(509,'С/т Росинка'),(510,'С/т Росинка'),(511,'С/т Заречье'),(512,'С/т Заречье'),(513,'С/т Радуга'),(514,'С/т Суница'),(515,'Осипенко'),(516,'Осипенко'),(517,'Городская больница №1'),(518,'Добрая'),(519,'Добрая'),(520,'Аэродромная'),(521,'Юбилейная'),(522,'Юбилейная'),(523,'Беловежская'),(524,'Вульковская'),(525,'Вторцветмет'),(526,'Дворникова'),(527,'Радужная'),(528,'Радужная'),(529,'Криштофовича'),(530,'Микрорайон Вулька');
/*!40000 ALTER TABLE `trafic_stops` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER $$
USE `find_path`$$

CREATE PROCEDURE `find_path`.`get_stops` ()
BEGIN
	SELECT id, name FROM trafic_stops;
END $$

CREATE PROCEDURE `find_path`.`get_stop_by_id` (anId INT)
BEGIN
	SELECT name FROM trafic_stops WHERE id = anId;
END $$

CREATE PROCEDURE `find_path`.`get_routes` ()
BEGIN
	SELECT id, name FROM routes;
END $$

CREATE PROCEDURE `find_path`.`get_rout_by_id` (anId INT)
BEGIN
	SELECT name FROM routes WHERE id = anId;
END $$

CREATE PROCEDURE `find_path`.`get_buses` ()
BEGIN
	SELECT id, name, fk_routes_id FROM buses;
END $$


CREATE PROCEDURE `find_path`.`get_bus_by_id` (anId INT)
BEGIN
	SELECT name, fk_routes_id FROM buses WHERE id = anId;
END $$

CREATE PROCEDURE `find_path`.`get_buses_routes` ()
BEGIN
	SELECT id, stops, fk_buses_id FROM bus_routes;
END $$

DELIMITER ;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-29 15:11:15