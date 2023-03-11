-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `MEMBER` int DEFAULT NULL,
  `PRICE` bigint DEFAULT NULL,
  `PLACE` varchar(200) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `adm_code` int DEFAULT NULL,
  KEY `position_ibfk_1` (`adm_code`),
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`adm_code`) REFERENCES `subcityposition` (`admcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (111,'2022-02-03',5,84000,'약초마을','서울 동작구 노량진로 26 1층 102호',37.50530974,126.9129035,200),(162,'2022-02-09',6,108500,'희래등','서울 동작구 등용로 123',37.51202109,126.9317282,200),(18,'2022-02-18',4,51500,'귀일교자','서울 동작구 노량진로 166',37.51178245,126.9319489,200),(68,'2022-02-18',5,60000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(100,'2022-02-21',5,60000,'순천집','서울 동작구 노량진로 80 큐브스테이트 2층',37.51286519,126.9346626,200),(101,'2022-02-22',6,120000,'순천집','서울 동작구 노량진로 80 큐브스테이트 3층',37.51286519,126.9346626,200),(71,'2022-02-25',6,410000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(96,'2022-02-10',6,60000,'순 칼국수','서울 동작구 등용로14길 66 1층',37.51224377,126.9351551,200),(70,'2022-02-24',6,150000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(9,'2022-01-03',4,72000,'국수사','서울 동작구 상도로30길 63-5 1층 101호',37.50474767,126.9445091,200),(119,'2022-01-05',4,99000,'움프（Ｏｏｍｐｈ）','서울 동작구 상도로 341-2 1층',37.49804768,126.9525262,200),(105,'2022-01-06',4,120000,'신방통통　낙지','서울 동작구 상도로26길 12',37.50387071,126.9384817,200),(151,'2022-01-06',4,20600,'헤븐리가든','서울 동작구 상도로34길 11 1층',37.50416267,126.9459232,200),(10,'2022-01-10',4,92000,'국수사','서울 동작구 상도로30길 63-5 1층 101호',37.50474767,126.9445147,200),(38,'2022-01-11',4,44000,'두부마을','서울 동작구 상도로 65',37.49994531,126.9278376,200),(132,'2022-01-11',4,72000,'지호한방삼계탕','서울 동작구 상도로26길 18 창조빌딩 2층',37.50380782,126.9388267,200),(1,'2022-01-12',15,200000,'PHO HONG','서울 동작구 상도로30길 40 1층 103호',37.5043097,126.9424624,200),(59,'2022-01-13',4,37000,'브레드제이','서울 동작구 상도로 192 1층',37.50493924,126.9401123,200),(133,'2022-01-14',4,69000,'지호한방삼계탕','서울 동작구 상도로26길 18 창조빌딩 2층',37.50380782,126.9388267,200),(11,'2022-01-17',6,108000,'국수사','서울 동작구 상도로30길 63-5 1층 101호',37.50474767,126.9445147,200),(147,'2022-01-17',4,56500,'프랭크버거 상도역점','서울 동작구 만양로 6 상가동 101호',37.5049784,126.9466153,200),(61,'2022-01-19',5,90000,'산골안','서울 관악구 봉천로 392 1층',37.48290671,126.9433578,200),(106,'2022-01-19',6,76000,'신방통통　낙지','서울 동작구 상도로26길 12',37.50387071,126.9384817,200),(39,'2022-01-20',4,151000,'두부마을','서울 동작구 상도로 65',37.49994531,126.9278376,200),(32,'2022-01-21',6,120000,'대방회집','서울 동작구 여의대방로 134-1',37.49897218,126.9207338,200),(108,'2022-01-21',6,100000,'신짱스시','서울 동작구 상도로30길 8 2층',37.50477768,126.9413452,200),(73,'2022-01-21',10,180000,'석춘해물칼국수','서울 동작구 장승배기로10길 23 2층',37.50484928,126.9403894,200),(107,'2022-01-22',4,46000,'신방통통　낙지','서울 동작구 상도로26길 12',37.50387071,126.9384817,200),(62,'2022-01-24',5,108000,'상도　늘보리','서울 동작구 상도로26길 19',37.50415466,126.9387388,200),(126,'2022-01-24',6,99000,'원할머니보쌈　이수역','서울 동작구 동작대로27나길 22 1층',37.48677501,126.9805888,200),(74,'2022-01-25',4,60000,'석춘해물칼국수','서울 동작구 장승배기로10길 23 2층',37.50484928,126.9403894,200),(45,'2022-01-26',20,300000,'명동찌개마을','서울 동작구 동작대로27길 6',37.487746,126.9815185,200),(148,'2022-01-26',10,87600,'프랭크버거　상도역점','서울 동작구 만양로 6 상가동 101호',37.5049784,126.9466153,200),(42,'2022-01-26',6,50000,'만리장성','서울 동작구 상도로15길 110',37.50449378,126.9368215,200),(43,'2022-01-27',10,300000,'만리장성','서울 동작구 상도로15길 110',37.50449378,126.9368215,200),(145,'2022-01-28',17,100000,'파리바게뜨（상도점）','울 동작구 만양로 12 은혜빌딩 103~105호',37.50574902,126.9472029,200),(22,'2022-01-28',17,200000,'낙지한마리수제비상도','서울 동작구 상도로31길 19 브라운스톤상가 B207호',37.50556739,26.94409,200),(136,'2022-01-28',5,95000,'차이싱','서울 동작구 장승배기로11가길 11 2층',37.50573389,126.9391673,200),(157,'2022-01-28',18,312000,'홍루이젠 대방점','서울 동작구 대방동23길 44',37.50415217,126.9229393,200),(158,'2022-01-31',20,325000,'홍루이젠 대방점','서울 동작구 대방동23길 44',37.50415217,126.9229393,200),(63,'2022-01-07',4,36000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(114,'2022-01-14',4,35000,'어수지락','서울 동작구 등용로 122',37.51198309,126.9322344,200),(140,'2022-01-17',3,26000,'취복루','서울 동작구 노량진로 96',37.51305757,126.9363336,200),(95,'2022-01-19',2,14000,'순 칼국수','서울 동작구 등용로14길 66 1층',37.51224377,126.9351551,200),(64,'2022-01-20',6,80000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(97,'2022-01-24',6,68000,'순천집','서울 동작구 노량진로 80 큐브스테이트 2층',37.51286519,126.9346626,200),(141,'2022-01-26',4,42000,'취복루','서울 동작구 노량진로 96',37.51305757,126.9363336,200),(16,'2022-01-27',5,60000,'궁중순대보쌈','서울 동작구 등용로14길 60',37.51224361,126.9348724,200),(161,'2022-01-25',5,120000,'희래등','서울 동작구 등용로 123',37.51202109,126.9317282,200),(6,'2022-01-20',4,40000,'고흥회수산','서울 동작구 등용로 124',37.51227134,126.9321125,200),(34,'2022-01-13',4,48500,'돌쇠와석쇠','서울 동작구 솔밭로 110',37.48569351,126.9687084,200),(134,'2022-01-18',4,46000,'차녕식당','서울 동작구 사당로16가길 87 1층',37.48467997,126.9690763,200),(146,'2022-01-20',5,64000,'파파디파스타','서울 동작구 사당로 169 102호',37.48681509,126.9680578,200),(35,'2022-01-21',6,80000,'돌쇠와석쇠','서울 동작구 솔밭로 110',37.48569351,126.9687084,200),(120,'2022-01-25',6,85000,'원일이정육식당','서울 동작구 사당로2차길 78',37.48681509,126.9680578,200),(8,'2022-01-25',4,34000,'국수가','서울 동작구 사당로16가길 18',37.48311305,126.9724745,200),(48,'2022-01-26',6,80000,'명품청기와감자탕남성역점','서울 동작구 사당로8길 4',37.48496391,126.9695398,200),(33,'2022-01-27',4,51000,'도담','서울 동작구 사당로16가길 90 1층',37.48485568,126.9691384,200),(115,'2022-01-28',2,39000,'어촌','서울 동작구 상도로 122',37.50130711,126.9338697,200),(94,'2022-01-14',6,180000,'수정싱싱회','서울 동작구 상도로12길 20',37.49919161,126.9293028,200),(76,'2022-01-17',6,96000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50809059,126.9402766,200),(44,'2022-01-18',5,71000,'맛의명가','서울 동작구 사당로16가길 106',37.48536907,126.9684485,200),(77,'2022-01-19',5,180000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50809059,126.9402766,200),(78,'2022-01-24',3,42000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50809059,126.9402766,200),(23,'2022-01-28',4,60000,'남도미식(사당로16길 17)','서울 동작구 사당로16길 17 2층',37.482629,126.9735036,200),(24,'2022-02-03',4,75000,'남도미식(사당로16길 17)','서울 동작구 사당로16길 17 2층',37.482629,126.9735036,200),(25,'2022-02-07',4,76000,'남도미식(사당로16길 17)','서울 동작구 사당로16길 17 2층',37.482629,126.9735036,200),(30,'2022-02-10',4,44700,'다채(상도로166)','서울 동작구 알마타길 6 하늘마루타운 1층',37.50964489,126.9246444,200),(118,'2022-02-17',4,75000,'옥이네순두부(사당로 224-1)','서울 동작구 사당로 224-1',37.48362217,126.9726807,200),(129,'2022-02-18',28,228000,'자금성(사당동 224-49)','서울 동작구 사당로16가길 97',37.48495918,126.9686748,200),(20,'2022-02-26',10,150000,'김재운초밥사랑','서울 동작구 동작대로 69 1층',37.48268909,126.9815509,200),(55,'2022-02-14',16,210300,'본도시락   사당점','서울 관악구 남부순환로 2044 동해빌딩 1층',37.47625038,126.9759506,200),(56,'2022-02-23',2,13200,'본도시락   사당점','서울 관악구 남부순환로 2044 동해빌딩 1층',37.47625038,126.9759506,200),(21,'2022-02-28',5,51000,'김재운초밥사랑','서울 동작구 동작대로 69 1층',37.48268909,126.9815509,200),(17,'2022-02-25',4,32000,'궁중순대보쌈','서울 동작구 등용로14길 60',37.51224361,126.9348724,200),(99,'2022-02-16',4,52000,'순천집','서울 동작구 노량진로 80 큐브스테이트 2층',37.51286519,126.9346626,200),(7,'2022-02-14',4,31000,'고흥회수산','서울 동작구 등용로 124',37.51227134,126.9321125,200),(98,'2022-02-08',3,36000,'순천집','서울 동작구 노량진로 80 큐브스테이트 2층',37.51286519,126.9346626,200),(142,'2022-02-03',4,53600,'카츠진   노량진점','서울 동작구 노량진로8길 21 1층',37.51276715,126.9366336,200),(66,'2022-02-07',3,30000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(112,'2022-02-04',3,28000,'약초마을','서울 동작구 노량진로 26 1층 102호',37.50530974,126.9129035,200),(156,'2022-02-03',5,50000,'홍도','서울 동작구 노량진로6길 6-3',37.51277343,126.9357513,200),(80,'2022-02-04',6,112000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50808608,126.9402822,200),(79,'2022-01-26',3,35000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50808608,126.9402822,200),(130,'2022-01-27',5,135000,'장수촌','서울 동작구 사당로17가길 16',37.48400969,126.9730367,200),(4,'2022-02-04',4,40000,'강촌민물매운탕','서울 동작구 여의대방로 126',37.49808471,126.9207743,200),(86,'2022-02-09',6,174000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(82,'2022-02-11',3,42000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50808608,126.9402822,200),(83,'2022-02-16',5,72000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50808608,126.9402822,200),(84,'2022-02-17',6,42000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50808608,126.9402822,200),(80,'2022-02-04',5,35000,'성림식당','서울 동작구 장승배기로 118-1 1층',37.50808608,126.9402822,200),(121,'2022-02-08',6,80000,'원일이정육식당','서울 동작구 사당로2차길 78',37.48681509,126.9680578,200),(49,'2022-02-17',6,79000,'명품청기와감자탕남성역점','서울 동작구 사당로8길 4',37.48496391,126.9695398,200),(116,'2022-02-21',20,101600,'에그드랍   서울대입구','서울 관악구 관악로 168 1층',37.48021913,126.952871,200),(31,'2022-02-22',4,32000,'담쟁이','서울 동작구 사당로 168',37.48676766,126.9676027,200),(122,'2022-02-23',5,45000,'원일이정육식당','서울 동작구 사당로2차길 78',37.48681509,126.9680578,200),(36,'2022-02-25',4,37000,'두꺼비부대찌개','서울 동작구 노량진로8길 58',37.51220048,126.9384438,200),(47,'2022-02-25',4,56000,'명성식당','서울 동작구 장승배기로 157-2',37.51170341,126.9398778,200),(72,'2022-02-28',4,72000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(12,'2022-01-11',6,129000,'국풍','서울 동작구 등용로14길 82 2층',37.51263618,126.9360342,200),(27,'2022-01-18',5,45000,'남월골추어탕','서울 동작구 노량진로8길 34',37.51263618,126.9360342,200),(15,'2022-01-19',6,50000,'궁중순대보쌈','서울 동작구 등용로14길 60',37.51224361,126.9348724,200),(19,'2022-01-20',6,43000,'금옥이네','서울 동작구 노량진로6길 18',37.51263618,126.9360342,200),(46,'2022-01-21',4,90000,'명성식당','서울 동작구 장승배기로 157-2',37.51263618,126.9360342,200),(154,'2022-01-24',4,18600,'헤븐리가든','서울 동작구 상도로34길 11 1층',37.50416267,126.9459232,200),(40,'2022-01-26',4,76000,'두부마을','서울 동작구 상도로 65',37.51263618,126.9360342,200),(152,'2022-01-14',4,8800,'헤븐리가든','서울 동작구 상도로34길 11 1층',37.50416267,126.9459232,200),(150,'2022-01-04',3,17500,'헤븐리가든','서울 동작구 상도로34길 11 1층',37.50416267,126.9459232,200),(37,'2022-01-06',6,77000,'두부마을','서울 동작구 상도로 65',37.51263618,126.9360342,200),(59,'2022-01-13',6,100000,'브레드제이','서울 동작구 상도로 192 1층',37.50493924,126.9401123,200),(153,'2022-01-18',3,12600,'헤븐리가든','서울 동작구 상도로34길 11 1층',37.50416267,126.9459232,200),(135,'2022-01-19',6,100000,'차이싱','서울 동작구 장승배기로11가길 11 2층',37.50573389,126.9391673,200),(128,'2022-01-21',14,38000,'원할머니보쌈흑석점','서울 동작구 현충로 100-1',37.50759136,126.9647577,200),(160,'2022-01-26',10,108000,'황토정','서울 동작구 서달로13길 5-23',37.50759136,126.9647577,200),(131,'2022-01-27',14,99000,'전주해물콩나물국밥','서울 동작구 흑석로9길 4 지하1층',37.50765741,126.9599848,200),(149,'2022-01-26',6,59500,'피맥하우스 흑석점','서울 동작구 현충로 96',37.50790656,126.9642514,200),(3,'2022-01-19',6,49000,'㈜안동장','서울 동작구 흑석로 105-1',37.50818034,126.9610166,200),(51,'2022-01-20',4,37500,'백소정 중앙대점','서울 동작구 흑석로9길 2 2층',37.50818034,126.9610166,200),(104,'2022-01-21',4,44000,'신방통통 낙지','서울 동작구 상도로26길 12',37.50387071,126.9384817,200),(102,'2022-01-22',4,79000,'시래불고기 화풍정','서울 동작구 상도로 102',37.50818034,126.9610166,200),(103,'2022-01-28',3,79000,'시래불고기 화풍정','서울 동작구 상도로 102',37.50818034,126.9610166,200),(29,'2021-01-06',5,135000,'농실가','서울 동작구 상도로 142',37.50818034,126.9610166,200),(53,'2022-01-12',4,64000,'복어마을','서울 동작구 상도로 103 1층',37.50818034,126.9610166,200),(163,'2022-01-20',4,34900,'（주）써브웨이노량진','서울 동작구 노량진로 166',37.51301009,126.9449526,200),(65,'2022-01-27',6,105000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(117,'2022-02-03',4,52500,'오유미당노량진점','서울 동작구 만양로18길 14',37.5130101,126.944978,200),(143,'2022-02-10',4,75200,'카츠진   노량진점','서울 동작구 노량진로8길 21 1층',37.51275589,126.9366279,200),(28,'2022-02-17',5,73400,'네이버후드   버거락','서울 동작구 노량진로 157 1층',37.51393736,126.9433316,200),(67,'2022-02-17',5,120000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(50,'2022-02-18',6,105000,'밋투데이（ＭＥＡＴ','서울 동작구 장승배기로24길 6 1층',37.51393736,126.9433316,200),(69,'2022-02-21',4,60000,'서울가든','서울 동작구 노량진로6길 6-5',37.51282975,126.9357484,200),(92,'2022-02-22',6,151000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(93,'2022-02-24',6,180000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(5,'2022-02-07',6,131000,'거구회관','서울 동작구 등용로14길 76',37.51244002,126.9356724,200),(85,'2022-02-08',6,160000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(87,'2022-02-10',6,180000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(88,'2022-02-14',6,180000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(88,'2022-02-14',6,176000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(90,'2022-02-15',6,180000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(91,'2022-02-17',6,180000,'수산식당','서울 동작구 노들로2길 9-8',37.51437259,126.9397909,200),(52,'2022-02-21',6,171800,'벚꽃스시','서울 동작구 상도로30길 40 두산위브트레지움 B동 상가 1층 114호',37.5041749,126.9431891,200),(127,'2022-02-22',23,230000,'원할머니보쌈족발   상도배달점','서울 동작구 상도로15길 104 1층',37.5041749,126.9431891,200),(57,'2022-02-23',4,58000,'봉추찜닭   여의도주택건설회관점','서울 영등포구 국제금융로8길 25 주택건설회관빌딩 지하1층 B108호',37.5041749,126.9431891,200),(54,'2022-02-09',6,80700,'본도시락   동작구청점','서울 동작구 장승배기로 143-1 1층',37.5103745,126.9400146,200),(13,'2022-02-13',6,73000,'국풍','서울 동작구 등용로14길 82 2층',37.51263618,126.9360342,200),(110,'2022-02-15',6,133000,'아빠맘명품스시','서울 동작구 장승배기로19길 29 1층',37.51261367,126.9360455,200),(155,'2022-02-22',6,98600,'홍대돈부리','서울 관악구 청림6길 3',37.51261367,126.9360455,200),(125,'2022-02-24',6,167000,'원조마포갈비','서울 동작구 노량진로8길 35 1층',37.51261367,126.9360455,200),(138,'2022-02-25',5,61000,'천년약속','서울 동작구 노량진로 124 지층',37.51327102,126.9396108,200),(139,'2022-02-28',6,120000,'청와대소금구이','서울 동작구 사당로 233',37.48354586,126.9738679,200),(159,'2022-02-28',3,22500,'황비홍마라탕','서울 동작구 상도로30길 40 상도2차두산위브트레지움아파트 1층 108호',37.50448986,126.9423774,200),(137,'2022-02-07',5,83000,'차이싱','서울 동작구 장승배기로11가길 11 2층',37.50573389,126.9391673,200),(75,'2022-02-11',3,30000,'섬마을','서울 동작구 노량진로6길 17',37.50448986,126.9423774,200),(58,'2022-02-03',4,50000,'봉평산골메밀촌','서울 영등포구 도림로61길 5',37.49752861,126.9030119,200),(144,'2022-02-11',5,120000,'카츠진노량진점','서울 동작구 노량진로8길 21 1층',37.51276715,126.9366336,200),(109,'2022-02-25',5,75000,'신짱스시','서울 동작구 상도로30길 8 2층',37.50477768,126.9413452,200),(14,'2022-02-25',3,73000,'국풍','서울 동작구 등용로14길 82 2층',37.51263618,126.9360342,200),(26,'2022-02-10',12,143000,'남원골추어탕','서울 동작구 노량진로8길 34',37.51247238,126.9371965,200),(113,'2022-02-17',20,115000,'얌샘노량진점','서울 동작구 노량진로 110',37.51319147,126.9382196,200),(124,'2022-02-21',6,162000,'원조마포갈비','서울 동작구 노량진로8길 35 1층',37.51261367,126.9360455,200),(2,'2022-02-04',6,69100,'SaigonLee(사이공리)','서울 동작구 장승배기로 151-1 1층',37.51319147,126.9382196,200),(41,'2022-02-09',5,52900,'딘딘향 노량진역점','서울 동작구 노량진로 144 1층',37.51343433,126.941853,200),(123,'2022-02-11',6,176000,'원조마포갈비','서울 동작구 노량진로8길 35 1층',37.51261367,126.9360455,200),(164,'2022-01-06',4,39000,'삼포가는길','서울 영등포구 당산로 139 장한빌딩 2층',37.52708537,126.8974133,190),(165,'2022-01-07',4,62000,'마포서서갈비','서울 영등포구 당산로30길 6',37.52547059,126.8972073,190),(166,'2022-01-07',4,38800,'브레드컴퍼니쉐프조','서울 영등포구 당산로31길 20 1층',37.52690989,126.8945943,190),(167,'2022-01-10',4,45000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(168,'2022-01-12',3,53000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(169,'2022-01-12',4,102000,'한우진곰탕','서울 영등포구 당산로31길 18',37.52689203,126.8947708,190),(170,'2022-01-13',10,150000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(171,'2022-01-14',3,53000,'참치광','서울 영등포구 당산로30길 9',37.52567286,126.8977184,190),(172,'2022-01-17',4,115000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(173,'2022-01-17',6,53000,'단비떡','서울 영등포구 문래로 89 문래비즈타워 105호',37.51964902,126.8919394,190),(174,'2022-01-18',5,73500,'무이커피','서울 영등포구 선유로 176 1층',37.52860619,126.893266,190),(175,'2022-01-19',4,40000,'더함한우골','서울 영등포구 양산로19길 7',37.52505403,126.8948187,190),(176,'2022-01-20',6,50000,'맨디（ＭＡＮＤＹ）','서울 영등포구 당산로33길 17 For J빌딩 1층',37.5274941,126.8949962,190),(177,'2022-01-20',6,175000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(178,'2022-01-21',4,32000,'부뚜막청국장','서울 영등포구 당산로31길 17',37.52672981,126.8947213,190),(179,'2022-01-24',4,60000,'사조참치','서울 영등포구 당산로 133 서림빌딩',37.52671339,126.8965359,190),(180,'2022-01-24',4,67000,'참치광','서울 영등포구 당산로30길 9',37.52567286,126.8977184,190),(181,'2022-01-24',4,14800,'유스（ＹＯＵＴＨ）','서울 영등포구 당산로30길 7',37.5256187,126.8976008,190),(182,'2022-01-24',4,82000,'르포르테','서울 영등포구 양평로 68 DN빌딩 12층',37.53535474,126.8994928,190),(183,'2022-01-25',10,98000,'원할머니보쌈족발 영등포구청점','서울 영등포구 국회대로28길 13-1',37.52742512,126.8944262,190),(184,'2022-01-27',3,66000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(185,'2022-01-27',4,98500,'데미그라스','서울 영등포구 당산로31길 13 1층 데미그라스',37.52661492,126.8952192,190),(186,'2022-01-27',4,36000,'호밀호두','서울 영등포구 당산로32길 1-15',37.52716813,126.8972638,190),(187,'2022-01-27',6,155000,'마포서서갈비','서울 영등포구 당산로30길 6',37.52547059,126.8972073,190),(188,'2022-01-27',20,110000,'모네의정원','서울 영등포구 선유동1로 50 1층',37.5265158,126.8931966,190),(189,'2022-01-27',6,54500,'소울드립','서울 영등포구 당산로 135',37.5268937,126.8966669,190),(190,'2022-01-28',4,67000,'참치광','서울 영등포구 당산로30길 9',37.52567286,126.8977184,190),(191,'2022-01-28',10,80000,'원할머니보쌈족발 영등포구청점','서울 영등포구 국회대로28길 13-1',37.52742512,126.8944262,190),(192,'2022-01-03',4,117000,'해어락','서울 영등포구 국회대로30길 10 1층 해어락',37.52729258,126.895345,190),(193,'2022-01-07',4,52000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(194,'2022-01-13',5,29000,'영등포롯데백화점 로컬스티치','서울 영등포구 경인로 846 롯데백화점 영등포점 1층',37.51566191,126.9076634,190),(195,'2022-01-14',4,88000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(196,'2022-01-17',6,172000,'사조참치','서울 영등포구 당산로 133 서림빌딩',37.52671339,126.8965359,190),(197,'2022-01-26',6,144000,'더함한우골','서울 영등포구 양산로19길 7',37.52505403,126.8948187,190),(198,'2022-01-06',3,34000,'문래돼지불백','서울 영등포구 영중로 77 1층',37.52321368,126.9048441,190),(199,'2022-01-10',3,20000,'방화골순대보쌈','서울 영등포구 영등포로84길 18',37.51164278,126.9217298,190),(200,'2022-01-17',6,67000,'중국관','서울 영등포구 당산로31길 22 태성빌딩',37.52696368,126.8942911,190),(201,'2022-01-01',13,296000,'김밥처럼','서울 영등포구 양평로22길 7-1',37.53862621,126.8942655,190),(202,'2022-01-03',3,53600,'동해도스시','서울 영등포구 은행로 25 안원빌딩 지하1층',37.52868951,126.9213772,190),(203,'2022-01-03',23,400000,'쑥떡쑥떡','서울 영등포구 당산로28길 8',37.52462377,126.8973488,190),(204,'2022-01-04',4,160000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(205,'2022-01-06',4,160000,'진성한우촌','서울 영등포구 문래로4길 20 현대1차아파트상가동 105호',37.51910374,126.8832392,190),(206,'2022-01-07',4,84000,'영신반점','서울 영등포구 도영로 54',37.51030971,126.8985944,190),(207,'2022-01-10',3,19200,'엄마손칼국수','서울 영등포구 국회대로74길 12 남중빌딩',37.53008405,126.9210589,190),(208,'2022-01-10',4,63000,'왕가설농탕','서울 영등포구 양산로19길 3 학교법인영도의숙',37.52462865,126.8947016,190),(209,'2022-01-10',4,76000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(210,'2022-01-12',3,57000,'유가네해장국전문점','서울 영등포구 당산로31길 14',37.52682039,126.8952642,190),(211,'2022-01-12',4,72000,'맨날먹는 김치찌개','서울 영등포구 당산로31길 19 1층',37.52675472,126.8943728,190),(212,'2022-01-13',3,69000,'우의정한우전문점','서울 영등포구 대림로 180',37.49692139,126.8993091,190),(213,'2022-01-17',4,130000,'호정','서울 영등포구 영신로24길 18-1',37.51623606,126.9045317,190),(214,'2022-01-18',6,225000,'덕순네장어랑메기랑','서울 영등포구 당산로28길 6 행당빌딩',37.52461641,126.8971678,190),(215,'2022-01-19',6,233000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(216,'2022-01-19',2,31000,'사보텐','서울 영등포구 영중로 15 타임스퀘어 B1 B142',37.5172301,126.903716,190),(217,'2022-01-20',6,75000,'오곰커피','서울 영등포구 버드나루로7길 3 106,107호',37.52297651,126.9103377,190),(218,'2022-01-21',15,230000,'장군주먹고기','서울 영등포구 당산로 53',37.5195039,126.8948672,190),(219,'2022-01-24',4,19200,'오가닉','서울 영등포구 은행로 37 기계회관 본관1층',37.52945438,126.9226163,190),(220,'2022-01-24',6,210000,'장군주먹고기','서울 영등포구 당산로 53',37.5195039,126.8948672,190),(221,'2022-01-25',6,235000,'여의도루나미엘레','서울 영등포구 여의공원로 101 CCMM빌딩 12F',37.52926844,126.9248882,190),(222,'2022-01-25',6,180000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(223,'2022-01-26',6,240000,'은성회관','서울 영등포구 여의대방로65길 12 에리트빌딩',37.51962367,126.930029,190),(224,'2022-01-26',53,530000,'마포서서갈비','서울 영등포구 당산로30길 6',37.52547059,126.8972073,190),(225,'2022-01-26',52,624000,'한성삼계탕','서울 영등포구 국회대로36길 14 한성삼계탕',37.52614508,126.8978218,190),(226,'2022-01-26',54,400400,'샐러디선유도역점','서울 영등포구 양평로21길 3',37.53740404,126.8938056,190),(227,'2022-01-26',71,639000,'장군주먹고기','서울 영등포구 당산로 53',37.5195039,126.8948672,190),(228,'2022-01-27',103,1545000,'길맨참치','서울 영등포구 영중로4길 4',37.51704878,126.9068065,190),(229,'2022-01-06',6,240000,'은성회관','서울 영등포구 여의대방로65길 12 에리트빌딩',37.51962367,126.930029,190),(230,'2022-01-07',4,82000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(231,'2022-01-07',4,89300,'뚜스뚜스베이커리카페','서울 영등포구 양평로 132',37.53851368,126.8933696,190),(232,'2022-01-13',25,97500,'일심당','서울 영등포구 도림로 144',37.49333084,126.8982103,190),(233,'2022-01-18',4,24600,'앤티크커피','서울 영등포구 국회대로29길 6 1층 앤티크커피 영등포구청점',37.52867779,126.8967866,190),(234,'2022-01-20',5,96000,'오선채','서울 서초구 남부순환로 2634-8 단성빌딩',37.48456012,127.0386325,190),(235,'2022-01-20',5,132000,'경복궁 당산점','서울 영등포구 국회대로 539',37.52930681,126.8948806,190),(236,'2022-01-21',5,16500,'앤티크커피','서울 영등포구 국회대로29길 6 1층 앤티크커피 영등포구청점',37.52867779,126.8967866,190),(237,'2022-01-21',4,77000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(238,'2022-01-21',4,14000,'앤티크커피','서울 영등포구 국회대로29길 6 1층 앤티크커피 영등포구청점',37.52867779,126.8967866,190),(239,'2022-01-24',5,149000,'중화복춘골드','서울 마포구 월드컵북로6길 42 101호',37.55875368,126.9208204,190),(240,'2022-01-24',2,42000,'라메흐까도','서울 영등포구 선유로17길 24 신일아르디세 1층',37.52112208,126.8870369,190),(241,'2022-01-28',4,95000,'영등포복집','서울 영등포구 영등포로42길 10-1 영등포복집',37.5185587,126.9066101,190),(242,'2022-01-03',6,96000,'한성삼계탕','서울 영등포구 국회대로36길 14 한성삼계탕',37.52614508,126.8978218,190),(243,'2022-01-03',3,36000,'더함한우골','서울 영등포구 양산로19길 7',37.52505403,126.8948187,190),(244,'2022-01-07',3,62900,'마라도아구찜','서울 영등포구 당산로31길 25',37.52684431,126.8938025,190),(245,'2022-01-10',4,85000,'온계','서울 영등포구 당산로37길 1 1층',37.52941038,126.8979079,190),(246,'2022-01-18',4,97000,'바다사랑','서울 영등포구 도영로 20 인수빌딩',37.5081628,126.8957019,190),(247,'2022-01-19',4,86000,'마포식당','서울 영등포구 국제금융로6길 33 여의도백화점 B1',37.52078947,126.9269057,190),(248,'2022-01-24',3,30000,'왕가설농탕','서울 영등포구 양산로19길 3 학교법인영도의숙',37.52462865,126.8947016,190),(249,'2022-01-27',5,150000,'어사출또','서울 영등포구 영중로 22',37.51834194,126.9059452,190),(250,'2022-01-28',6,155000,'어사출또','서울 영등포구 영중로 22',37.51834194,126.9059452,190),(251,'2022-01-04',6,219000,'은성회관','서울 영등포구 여의대방로65길 12 에리트빌딩',37.51962367,126.930029,190),(252,'2022-01-05',4,100000,'여의도루나미엘레','서울 영등포구 여의공원로 101 CCMM빌딩 12F',37.52926844,126.9248882,190),(253,'2022-01-10',4,128000,'두툼한고깃집','서울 영등포구 여의대방로 79 1층',37.49697728,126.9154395,190),(254,'2022-01-14',4,160000,'진성한우촌','서울 영등포구 문래로4길 20 현대1차아파트상가동 105호',37.51910374,126.8832392,190),(255,'2022-01-18',4,120000,'장군주먹고기','서울 영등포구 당산로 53',37.5195039,126.8948672,190),(256,'2022-01-20',2,18000,'신토불이소머리국밥','서울 영등포구 경인로79길 9-1',37.51299091,126.8942655,190),(257,'2022-01-20',4,114000,'강릉수산','서울 영등포구 당산로32길 9',37.52640843,126.8981201,190),(258,'2022-01-21',3,75000,'이도','서울 영등포구 당산로31길 4 1층',37.52669511,126.8962418,190),(259,'2022-01-25',3,56000,'왕가설농탕','서울 영등포구 양산로19길 3 학교법인영도의숙',37.52462865,126.8947016,190),(260,'2022-01-25',2,40500,'호연','서울 영등포구 양평로17길 9 경남아너스빌',37.53566905,126.8962113,190),(261,'2022-01-26',6,170000,'가화','서울 영등포구 국회대로34길 4',37.52720793,126.8974493,190),(262,'2022-01-27',4,49000,'짬뽕의신화','서울 영등포구 양산로 97',37.52458458,126.8937785,190),(263,'2022-01-27',6,197000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(264,'2022-01-28',6,170000,'삼도회집','서울 영등포구 국회대로 750 금산빌딩 지하 1층',37.52826805,126.9164315,190),(265,'2022-01-28',4,100000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(266,'2022-01-04',3,46000,'메이탄(영등포)','서울 영등포구 선유로 252',37.53484139,126.8976561,190),(267,'2022-01-21',4,114000,'화담','서울 영등포구 국회대로 800 지하 1층',37.53093101,126.9210806,190),(268,'2022-01-27',14,125000,'홍당무김밥','서울 영등포구 문래로 180 영등포 센트럴 푸르지오 시티',37.5179639,126.9019821,190),(271,'2022-01-04',5,74000,'송죽장','서울 영등포구 문래로 203',37.51825083,126.9046965,190),(272,'2022-01-06',12,88000,'오곰커피','서울 영등포구 버드나루로7길 3 106,107호',37.52297651,126.9103377,190),(273,'2022-01-20',4,159000,'삼씨오화','서울 영등포구 의사당대로 83 오투타워 3층',37.52336415,126.9234461,190),(274,'2022-01-21',5,131000,'털보네꼼장어','서울 영등포구 당산로45길 4',37.53338822,126.9009889,190),(275,'2022-01-24',4,120000,'호정','서울 영등포구 영신로24길 18-1',37.51623606,126.9045317,190),(276,'2022-01-25',6,179000,'수라','서울 영등포구 당산로 124',37.5257226,126.8968993,190),(277,'2022-01-25',6,100000,'차이나쿡','서울 영등포구 양산로 53 월드메르디앙비즈센터',37.52562887,126.8889171,190),(278,'2022-01-26',4,47000,'당산허브족발','서울 영등포구 당산로 232 2층 허브족발',37.53425088,126.9025627,190),(279,'2022-01-26',6,170000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(280,'2022-01-27',5,138000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(281,'2022-01-27',6,67500,'소정담','서울 영등포구 당산로40길 16 보성빌딩 1층 101호',37.52920346,126.9003881,190),(282,'2022-01-28',6,175000,'홍당무김밥','서울 영등포구 문래로 180 영등포 센트럴 푸르지오 시티',37.5179639,126.9019821,190),(283,'2022-01-04',6,164000,'마포서서갈비','서울 영등포구 당산로30길 6',37.52547059,126.8972073,190),(284,'2022-01-05',4,85000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(285,'2022-01-10',4,56200,'소정담','서울 영등포구 당산로40길 16 보성빌딩 1층 101호',37.52920346,126.9003881,190),(286,'2022-01-17',4,160000,'덕순네장어랑메기랑','서울 영등포구 당산로28길 6 행당빌딩',37.52461641,126.8971678,190),(287,'2022-01-19',6,212000,'참치광','서울 영등포구 당산로30길 9',37.52567286,126.8977184,190),(288,'2022-01-25',6,170000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(289,'2022-01-28',6,180000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(290,'2022-01-07',6,120000,'고기명가','서울 영등포구 영등포로 168-1',37.52051762,126.9001734,190),(291,'2022-01-12',5,70000,'차호로록','서울 영등포구 국회대로36길 3',37.52701401,126.8982505,190),(292,'2021-01-21',4,60000,'우리설농탕','서울 영등포구 양산로19길 23',37.52633739,126.895197,190),(293,'2022-01-25',6,135000,'사조참치','서울 영등포구 당산로 133 서림빌딩',37.52671339,126.8965359,190),(294,'2021-01-27',6,180000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(295,'2022-01-03',4,29700,'당산분식','서울 영등포구 당산로28길 9',37.52477164,126.8974662,190),(296,'2022-01-05',6,150000,'금풍떡방','서울 영등포구 영등포로25길 17',37.5225522,126.8981933,190),(297,'2022-01-12',4,74000,'백원','서울 영등포구 여의공원로 101 CCMM빌딩 12F',37.52926844,126.9248882,190),(298,'2022-01-17',4,39000,'삼포가는길','서울 영등포구 당산로 139 장한빌딩 2층',37.52708537,126.8974133,190),(299,'2022-01-20',6,230000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(300,'2022-01-26',5,63000,'삼포가는길','서울 영등포구 당산로 139 장한빌딩 2층',37.52708537,126.8974133,190),(301,'2022-01-06',6,170000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(302,'2022-01-11',3,45000,'해남진성옥','서울 영등포구 선유로33길 30 경남아너스빌',37.52713071,126.8878243,190),(303,'2022-01-13',3,14800,'시즌커피앤베이크','서울 영등포구 양산로9길 12-1',37.5263857,126.8889069,190),(304,'2022-01-14',3,14500,'까페비','서울 영등포구 영등포로5길 31 1층 Cafe B',37.52464798,126.8845337,190),(305,'2022-01-14',4,18400,'시즌커피앤베이크','서울 영등포구 양산로9길 12-1',37.5263857,126.8889069,190),(306,'2022-01-19',4,64000,'횡성생고기','서울 영등포구 양산로 53',37.52562887,126.8889171,190),(307,'2022-01-20',4,30500,'긴자료코','서울 영등포구 선유서로24길 6 중흥S-CLASS 118호',37.52358632,126.8861056,190),(308,'2022-01-21',23,100000,'금풍떡방','서울 영등포구 영등포로25길 17',37.5225522,126.8981933,190),(309,'2022-01-25',4,60000,'쁘띠문래','서울 영등포구 선유로17길 24 신일아르디세 1층 쁘띠문래',37.52112208,126.8870369,190),(310,'2022-01-26',4,36000,'본설렁탕','서울 영등포구 양산로 53 105호',37.52562887,126.8889171,190),(311,'2022-01-26',23,120000,'시즌커피앤베이크','서울 영등포구 양산로9길 12-1',37.5263857,126.8889069,190),(312,'2022-01-03',4,68000,'산고을','서울 영등포구 선유서로25길 5-1',37.52435308,126.8851768,190),(313,'2022-01-03',4,65000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(314,'2022-01-05',4,60000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(315,'2022-01-13',4,64000,'경복궁 당산점','서울 영등포구 국회대로 539',37.52930681,126.8948806,190),(316,'2022-01-13',4,49000,'자매네','서울 영등포구 국회대로30길 12',37.52716283,126.8953361,190),(317,'2022-01-17',4,84000,'르포르테','서울 영등포구 양평로 68 DN빌딩 12층',37.53535474,126.8994928,190),(318,'2022-01-17',6,150000,'참치광','서울 영등포구 당산로30길 9',37.52567286,126.8977184,190),(319,'2022-01-19',6,120000,'밀프랩','서울 영등포구 당산로 163 보라빌딩 106호',37.52918688,126.8978539,190),(320,'2022-01-21',5,66000,'삼포가는길','서울 영등포구 당산로 139 장한빌딩 2층',37.52708537,126.8974133,190),(321,'2021-01-05',6,170000,'수라','서울 영등포구 당산로 124',37.5257226,126.8968993,190),(322,'2022-01-04',4,120000,'설쭈','서울 영등포구 양산로17길 22 당산동 2차 어울림',37.52639775,126.8941787,190),(323,'2022-01-05',4,120000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(324,'2022-01-07',4,52000,'당산 고구려','서울 영등포구 국회대로 539 동양 TCC센터 2층',37.52930681,126.8948806,190),(325,'2022-01-12',4,80000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(326,'2022-01-13',4,37000,'차호로록','서울 영등포구 국회대로36길 3',37.52701401,126.8982505,190),(327,'2022-01-13',3,36000,'순수카츠','서울 영등포구 양산로23길 1-2 1층',37.52413722,126.8973313,190),(328,'2022-01-14',4,120000,'당산 삿뽀로','서울 영등포구 국회대로 539',37.52930681,126.8948806,190),(329,'2022-01-17',3,45000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(330,'2022-01-17',5,125000,'사조참치','서울 영등포구 당산로 133 서림빌딩',37.52671339,126.8965359,190),(331,'2022-01-18',2,19800,'부여집','서울 영등포구 선유동1로 24',37.52427676,126.8921454,190),(332,'2022-01-19',5,85000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(333,'2022-01-19',6,126000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(334,'2022-01-21',6,177000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(335,'2022-01-21',4,52000,'밀프랩','서울 영등포구 당산로 163 보라빌딩 106호',37.52918688,126.8978539,190),(336,'2022-01-21',2,34000,'화수목','서울 영등포구 선유로 49 미주프라자아파트',37.51829094,126.8887424,190),(337,'2022-01-26',6,180000,'육영한우전문점','서울 영등포구 당산로 160',37.52866814,126.8981261,190),(338,'2022-01-26',5,106000,'당산 삿뽀로','서울 영등포구 국회대로 539',37.52930681,126.8948806,190),(339,'2022-01-27',5,119000,'당산숯불구이','서울 영등포구 선유동1로 50 THE PARK 365',37.5265158,126.8931966,190),(340,'2022-01-27',4,56000,'호랑이초밥','서울 영등포구 당산로31길 33 당산골프클럽',37.52692627,126.8927752,190),(341,'2022-01-28',6,75800,'데세르마리','서울 영등포구 당산로 122 우미빌딩 118호',37.52540548,126.8969314,190),(342,'2022-01-06',3,54000,'부여집','서울 영등포구 선유동1로 24',37.52930681,126.8948806,190),(343,'2022-01-10',4,44500,'하정밀방','서울 영등포구 당산로28길 7 하정밀방 행복칼국수',37.52476794,126.8973576,190),(344,'2022-01-11',4,108000,'복먹고복받고','서울 영등포구 양산로19길 8',37.52486691,126.8951402,190),(345,'2022-01-11',4,90000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(346,'2022-01-11',4,120000,'해어락','서울 영등포구 국회대로30길 10 1층 해어락',37.52729258,126.895345,190),(347,'2022-01-12',4,120000,'당산숯불구이','서울 영등포구 선유동1로 50 THE PARK 365',37.5265158,126.8931966,190),(348,'2022-01-17',4,120000,'대관원','서울 영등포구 당산로37길 1',37.52977041,126.8974865,190),(349,'2022-01-17',6,48000,'덕순네장어랑메기랑','서울 영등포구 당산로28길 6 행당빌딩',37.52461641,126.8971678,190),(350,'2022-01-20',4,77000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(351,'2022-01-21',5,48000,'평창도토리매운칼국수','서울 영등포구 국회대로28길 15',37.52731695,126.8943811,190),(352,'2022-01-21',6,150000,'무교소호정','서울 중구 무교로 17-25',37.56742785,126.9785434,190),(353,'2022-01-25',4,82000,'원양참치','서울 영등포구 당산로32길 5 2층',37.52647273,126.8974639,190),(354,'2022-01-28',4,48000,'평창도토리매운칼국수','서울 영등포구 국회대로28길 15',37.52731695,126.8943811,190),(355,'2022-01-07',4,46000,'돌복이네 꼬막','서울 영등포구 당산로31길 33 당산골프클럽',37.52692627,126.8927752,190);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcityposition`
--

DROP TABLE IF EXISTS `subcityposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcityposition` (
  `admcode` int NOT NULL,
  `maincity` varchar(45) DEFAULT NULL,
  `subcity` varchar(45) DEFAULT NULL,
  `sub_lat` double DEFAULT NULL,
  `sub_lng` double DEFAULT NULL,
  PRIMARY KEY (`admcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcityposition`
--

LOCK TABLES `subcityposition` WRITE;
/*!40000 ALTER TABLE `subcityposition` DISABLE KEYS */;
INSERT INTO `subcityposition` VALUES (10,'서울','종로구',37.57303222888823,126.97960136658695),(20,'서울','중구',37.5638438106874,126.99757781832659),(30,'서울','용산구',37.53252473271856,126.9904510926435),(40,'서울','성동구',37.563459686436104,127.03678527981444),(50,'서울','광진구',37.53860519089066,127.08234903371472),(60,'서울','동대문구',37.57452299388159,127.03962077638961),(70,'서울','중랑구',37.606316402711855,127.09254820430253),(80,'서울','성북구',37.589394853812166,127.01671197168382),(90,'서울','강북구',37.6397405353625,127.02544742728027),(100,'서울','도봉구',37.6687635210691,127.04712893649568),(110,'서울','노원구',37.65434373490075,127.05643499450917),(120,'서울','은평구',37.60278151189403,126.92913126724083),(130,'서울','서대문구',37.579215894494574,126.9367612742744),(140,'서울','마포구',37.56630747889764,126.90145698395764),(150,'서울','양천구',37.51700662308344,126.86661449253153),(160,'서울','강서구',37.55091785018458,126.84960175337068),(170,'서울','구로구',37.49545831451429,126.88750527666815),(180,'서울','금천구',37.457064795124346,126.8956779974878),(190,'서울','영등포구',37.52642456789933,126.89596612713845),(200,'서울','동작구',37.5124532868516,126.93946438269933),(210,'서울','관악구',37.47814849465852,126.95147607271858),(220,'서울','서초구',37.4835600255583,127.03256267279318),(230,'서울','강남구',37.51730666325693,127.0474633603628),(240,'서울','송파구',37.514511375176596,127.10621169622706),(250,'서울','강동구',37.530117683099085,127.12374712224671);
/*!40000 ALTER TABLE `subcityposition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 23:52:27
