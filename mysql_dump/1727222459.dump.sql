-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (arm64)
--
-- Host: localhost    Database: ss-corpse-db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ss-corpse-db`
--

/*!40000 DROP DATABASE IF EXISTS `ss-corpse-db`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ss-corpse-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ss-corpse-db`;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Messages` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `text` varchar(255) DEFAULT '',
  `imageUrl` varchar(255) DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'unseen',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `senderId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `receiverId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `thumbnailUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `senderId` (`senderId`),
  KEY `receiverId` (`receiverId`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`senderId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiverId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES ('00c97c13-1d97-49c8-a6c3-c7721b6bdb14','Another image','','seen','2024-09-24 01:32:41','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('0417ea80-963d-4c88-abf9-0d02908061b4','Send message w/ image','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/barroco-musical.jpg','seen','2024-09-22 02:34:14','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('04eee5fd-7413-4c4c-a93b-fe4be381af4a','Ok works','','seen','2024-09-22 02:34:15','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('05bc6dcd-3a2b-4731-80b9-09edd52d5a0e','Hello','','seen','2024-09-22 02:34:16','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('076537eb-3d39-4960-9ba7-72df7577e094','Aloh','','seen','2024-09-22 02:34:16','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('07955d99-1f2a-475d-9847-f16321e07311','Padrisimo','','seen','2024-09-22 02:34:16','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('0a8b9871-01cd-4757-a3e2-f791dc177408','Pan to Max','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('0ee86890-6030-44bd-b3f9-5171857536c4','Another img','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('0f8057ae-40b2-427a-8e7b-38fab609d2f0','Ahora si ?','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('112cb726-7596-4a2c-b3a4-8cb6eff8e021','Sup','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('11d319f1-5d3e-4720-a0ca-73f025846ebb','Next image','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/sr_panquesito_message_6d037586-4c1c-4e36-bc85-af6e41901f87.jpeg','seen','2024-09-24 01:44:25','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('11fe8357-8e03-4bcb-81f9-b34971f4bfb4','pan sent','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('1286641f-433b-4c6d-9e31-8bf677eb68eb','Vamos a crear varios','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('1779e4fa-71f3-4f71-86dc-8e3422ca500c','Messssageeeee','','unseen','2024-09-22 02:34:17','2024-09-22 02:34:17',NULL,NULL,''),('1aba19db-1085-49e9-9e3c-929b283f5c58','Crayoli','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('1b893cd4-996f-4463-b6c5-6ef7ac6bb5d9','3','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('1c121e68-dd15-47a0-84ae-9ebc8722a716','E we, este eres tu','undefined','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('1dd44b5e-2303-4ac4-80a9-5d29ea65ff46','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('1f877fb9-2cd4-420a-a5bd-5d4e877e5529','Before sending data to the socket','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('22cc922d-b776-4eec-82eb-af153979b3b5','Fuc','','seen','2024-09-22 02:34:17','2024-09-22 02:34:17','74f033c9-9f7f-473d-afd0-1e57b37a4584','d69a4bd6-d3d5-4eab-891e-ba69af21d56c',''),('24bae4ec-a7da-4350-ac18-35b1b0d40986','Spammmm','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('25380a81-fee4-4262-bc71-348b634aa38a','','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('2c140953-b403-456d-8f66-6abe76aebbdf','Fat fucc','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('2d5ba059-3544-4388-9cda-8e96f9fe4229','>>','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('2ddbbc95-60c1-4870-8c8d-586e234a4f85','Alooh?','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('2f24e454-5415-4f34-be73-6c4e48cc8241','Max sent','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('31f80687-0205-49e0-93b5-5a50c33f7d38','De Max hacia pan','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('358310e8-ee2f-4c9c-ae0f-f9876daa727c','asdasdsad','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('37f9afae-0978-40ab-8752-975ef453a6d9','De Max hacia pan','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('3875a943-1ebd-45d2-8c8c-45a3ddd964a2','Hey','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('3c0e8934-52b6-4027-9520-91d00f59cb82','Dinamico 😁😁😁','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('4094f66e-d7fd-4958-aef1-9f1596df9fca','Or the actual Database','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('43192a57-45d3-4798-b35f-43335d2a22c5','Live image sending','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/room.jpg','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('49559a0a-bf2f-4e44-b0ae-2ec95f6eb33d','Sendmmsss','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/adoracion-de-los-reyes.jpg','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('4f16b089-a585-4764-b351-9fb8640571f1',':)','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('51908452-d2a4-44d2-b86a-14c69101f8e2','New message','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('5281c58d-8829-4584-b515-478b4e8705b4','Limpiate 😁','','seen','2024-09-22 02:34:17','2024-09-24 23:59:37','74f033c9-9f7f-473d-afd0-1e57b37a4584','cdf427d2-ffc1-4561-8479-b84f8bbd0945',''),('52c6084d-249c-4672-b6ff-d55e64031057','Holi?','','seen','2024-09-22 02:34:17','2024-09-22 02:34:17','74f033c9-9f7f-473d-afd0-1e57b37a4584','d69a4bd6-d3d5-4eab-891e-ba69af21d56c',''),('56029813-8f29-4f71-ae1d-bc288e6cab8c','Others will','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5705b496-bdab-46e1-94aa-3143f395c12f','No se como funciona pero funciona','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5732d0f5-2014-4a0e-a248-07320299319a','Panque','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5828441e-7880-4bc5-9445-15883dedf95e','He','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('595f28e2-26aa-4064-b583-9f3ffab47f56','Ughhh','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('5ac7141d-ebcb-4ab1-96e1-a3a05cc31d9c','Un desmadre','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5b2093de-678b-418e-8e37-282ba5692763','A verrr','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5dca3213-1272-4a6e-a014-4671600cd0d2','Foobar message','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5defb7b4-30d0-4816-8438-eda58e958a05','Wow such cool','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/adoracion-de-los-reyes.jpg','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('5f44c03f-5cd7-48d3-8ca1-d0e444e83429','Para que exista el scroll','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('5f5c8599-e467-493e-8cc6-b0807636083f','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('604e8eef-6173-4d52-aa13-88dc128a7cdd','Multiple messages test','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('67f34930-7e99-4578-b5fa-12e625a22c9d','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('697ac482-24f9-457f-ae86-8a6dfa114dca','Ya lo fregue','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('6b58ced7-8762-4aa9-8c37-bae28f349e91','Sup','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('6d840d0b-7636-41c0-9259-e6eb89fb250e','Holi','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('706c8140-dd00-43c3-a5a6-1ec9b15291d5','asdasdsad','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('70898179-c2d0-482a-bdf7-ebd0b4ddddc9','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('74963e47-6dc3-4d03-9f6a-972576e902d7','Creo','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('7525da4f-d232-4bac-9214-ec366e1b76f0','Mensaje a max','','seen','2024-09-22 02:34:17','2024-09-24 23:59:12','cdf427d2-ffc1-4561-8479-b84f8bbd0945','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('76c32eb2-4531-4dbe-b369-c1fae70d52a6','Asdasdsadsad','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('79247ccb-3bd5-41d8-9f33-62ad1077a894','Mande?\r\n','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('7a8149d7-cd3b-4d2d-aa92-d05d4220f421','??','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('7b22d615-4488-4853-9513-e6f61eb9a459','Hey','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('7b5bde01-2a86-4038-9470-561f45969ed4','Empty;;;; P','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('7cc4d995-c966-4643-8433-88f3b81375c3','Sending message','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('7cf12817-3d63-441a-922b-a1c041aa60c6','Luis to Max','','seen','2024-09-22 02:34:17','2024-09-24 23:59:12','cdf427d2-ffc1-4561-8479-b84f8bbd0945','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('7d2b019b-cc61-4a25-ad67-851b981a96a8','Hola hola','','seen','2024-09-22 02:34:17','2024-09-24 23:59:37','cdf427d2-ffc1-4561-8479-b84f8bbd0945','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('7e926bb9-bce7-4c47-90ec-8af2d131c473','???','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/3d1c8e01-3bbe-4a0f-a05c-5d1792d043a0_message_sr_panquesito','seen','2024-09-24 01:18:51','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('82a8859c-b957-4f02-b47f-730c36f8d13c','Que pedo','','seen','2024-09-22 02:34:17','2024-09-24 23:59:37','cdf427d2-ffc1-4561-8479-b84f8bbd0945','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('894ece13-b4e9-442a-9419-7bca37c00d65','sadasdasdasdasd','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('89553459-de81-441b-9ed6-7758be932896','Image testing lambda destination','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/7468060d-a878-4179-896a-55a8cc7a6062_message_sr_panquesito','seen','2024-09-24 01:14:50','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('8cac95a1-1941-4a0f-82cf-7cef909983da','','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('927f30ff-f834-4d2b-8026-dba3826c54bb','?','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('9417c83e-11ae-4a69-817a-f87405e10ca3','mmm','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('94d64713-efcd-48fe-87bd-6665e37371a6','A ver pedazo de baboso','','seen','2024-09-24 23:59:27','2024-09-24 23:59:37','cdf427d2-ffc1-4561-8479-b84f8bbd0945','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('9a89d271-cc66-49b9-a6e5-3e89b8c0b88f','Maaaxxx','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('9b2ed5cf-cc78-4f41-a965-66af4fb01051','2','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('9f5edf03-fcec-41de-9d5f-a3215b917036','Yo','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('a270dd94-d608-4dad-bb85-7a6fb9caed44','Maxxxxx','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('a696d0ef-05e9-419f-b637-a0a9f4c6b67a','Oki doki','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/Screenshot%202024-07-26%20at%206.57.53%C3%A2%C2%80%C2%AFp.m..png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('a812a798-8d89-400a-bb51-0e25cc0abee3','Pan to max','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('a938056b-e838-4552-ae27-ec3b7b32de5f','Holi','','seen','2024-09-22 02:34:17','2024-09-22 02:34:17','74f033c9-9f7f-473d-afd0-1e57b37a4584','d69a4bd6-d3d5-4eab-891e-ba69af21d56c',''),('ab15718b-d0ce-44c6-b4b5-4e9003d76a03','Maxxxxxx','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('abc95c3d-d7f1-47a5-8bb6-c95812e20e61','Sep','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('ac07598a-ba48-470f-a5b2-3103fa05d358','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('ac408303-d769-4b2f-b60e-613c64c13e2f','Others will','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('ae924bda-2438-4245-b592-2175f97e293f','Max','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('af891575-da00-40c7-ae78-a8def3df3e50','Some message from the UI😁','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('b1263d1b-1ded-46eb-8dde-88a8861ec286','Simon :3','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('b1ab6c4a-cb8f-4f49-940d-df54dbdbedb9','Cool','','seen','2024-09-22 02:34:17','2024-09-24 23:59:37','74f033c9-9f7f-473d-afd0-1e57b37a4584','cdf427d2-ffc1-4561-8479-b84f8bbd0945',''),('b4dc9bf3-8ede-4840-a6b8-2d242e2b82b0','Aqui te va una bien puerca','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/Bring_Me_The_Horizon_-_Lost.jpeg','seen','2024-09-22 02:34:17','2024-09-24 23:59:37','cdf427d2-ffc1-4561-8479-b84f8bbd0945','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('b6eef8f9-a3ad-4cbd-94b7-35f6d3fb85c7','Asdasdasd','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('b789a3e6-d079-4eb7-aced-2d8fc823b421','Hi','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('b7f1260e-0c65-488c-beda-2d208a5d0c6a','Pan to Luis','','seen','2024-09-22 02:34:17','2024-09-24 23:59:37','74f033c9-9f7f-473d-afd0-1e57b37a4584','cdf427d2-ffc1-4561-8479-b84f8bbd0945',''),('b8006037-423f-4875-af2c-806bc0f82fbb','another img','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/sr_panquesito_message_7e3c26b7-f91b-4237-a802-2c8fa1500c2f.jpg','seen','2024-09-24 01:33:57','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('b97b0963-7b10-464a-8f2f-703231854439','??','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('b9ec8c61-301c-493f-a8d4-d8e87220eec9','Mensaje a max','','seen','2024-09-22 02:34:17','2024-09-24 23:59:12','cdf427d2-ffc1-4561-8479-b84f8bbd0945','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('ba3b37a1-4ffd-4deb-b889-3113baceffeb','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('ba611752-85cd-478f-ad9a-6a3e98c85648','Not this one','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('be418b03-2c32-4af1-9140-fa056b95a572','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('bf762ab0-0a54-41a3-bcdc-19e7421074f6','Hey','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('c1810f22-0bf7-4193-80b4-117f265b188a','Others will','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('c4592245-9dd5-4d09-944d-f2e553aaaf17','De maaaaax haci p','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('c9773518-6993-4c88-8dff-100193a247ff','asdasdasdsa','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('cafc42e1-5b38-4a35-80d0-9001ada7f714','Hello?','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('ccd03ffd-38d3-407d-bd82-b2c1446c673c','???','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('cd4c18b3-784d-49d7-90cd-4f8f46652764','Hello','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d0414a5e-651e-4633-a310-f1ce2ae73a21','','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d0616a87-d5e4-4d93-85dd-aaadaa0ba085','De pan hacia max','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d0de18e4-fb15-4a06-8a54-d8dbf669ee79','Others will','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('d28df1bd-0b74-4076-ac6e-dcd9ff255457','Luis to max','','seen','2024-09-22 02:34:17','2024-09-24 23:59:12','cdf427d2-ffc1-4561-8479-b84f8bbd0945','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d519bea8-2155-404e-89a6-14e4b6ab2df5','De Max para Something. Wof 🐶 !','','seen','2024-09-22 02:34:17','2024-09-22 02:34:17','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',NULL,''),('d53ec396-6468-4d6c-b60d-0db23c606d5a','Hey','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d67567b6-62d9-4011-af7a-862287fb8ef4','Geeeeeee','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d77e8c97-7030-4a7c-b2d6-f1c1a4610453','','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('d7ec03ac-2527-4c8b-b782-9e9534fa983a','Others will','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('db49551f-e974-4eaa-861a-77aec4dc431a','Max to pan','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('db96456c-e4cf-476c-85cc-522cbb818457','Yo envio mensaje','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('dc48940c-95ff-4276-9290-7a2588cda538','Luis to max','','seen','2024-09-22 02:34:17','2024-09-24 23:59:12','cdf427d2-ffc1-4561-8479-b84f8bbd0945','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('dd6cb824-e59f-4387-9858-19e8afcc2ce3','sadawdasd','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e090c264-22a0-4ddf-80bb-cfbffd60dbae','','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e0995792-3fb3-44ca-b9f5-70f8ce06a48d','Mmmm','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e102c0f6-709c-4411-b913-0c1d9c6b528f','Hey','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e1b784c9-222d-449b-a75a-4b693ef0cb99','Caravaggio ','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/cena-de-emaus-caravaggio.jpg','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e1cef2ea-7c1d-491d-adc1-0845ab59def9','Aloh','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('e308b137-823f-433d-a37b-458ce2375a26','Ni decir','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e341e826-e056-4c71-afc9-8ec73382b286','FormdataFoobar!','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/BG_SS_3.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('e58888c7-e4f3-448d-8485-a29bd31cdc51','dsadsad','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e6c2935f-7805-4db4-92c8-87d726b90a2e','Others will','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('e70bbe16-9f45-4941-acb1-7f7237c63831','It uploads the image to s3 first\r\n','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('e7ea5680-7b35-4f85-81e3-c51e0ee465df','Holi','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('eafe1ad8-484b-4a7e-9d41-ce538de8817d','Maaxxxx','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('ece9e814-9c09-422c-8430-ec6e04bc279c','Aloh','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('eedd844e-4d9c-47ed-9c7c-60a598a34068','???','','seen','2024-09-22 02:34:17','2024-09-22 02:34:17','74f033c9-9f7f-473d-afd0-1e57b37a4584','d69a4bd6-d3d5-4eab-891e-ba69af21d56c',''),('ef869b4e-ab8f-4e2d-ac16-e67a6d947be9','Fuck','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('f075f136-a847-45cb-adeb-23fe9f2aa1cc','Luis to max','','seen','2024-09-22 02:34:17','2024-09-24 23:59:12','cdf427d2-ffc1-4561-8479-b84f8bbd0945','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('f292bf61-4c8f-4278-9e11-328b10369ee4','Otro new','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('f350e519-57e9-43fd-8978-eb1428bd08c8','Max','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('f500f206-cdb2-4827-8e66-808261f90fd1','Some images wont','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','74f033c9-9f7f-473d-afd0-1e57b37a4584',''),('f5a03618-9dc7-4a54-af25-5cef84ca6dc9','1','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('fba3d48d-656c-419b-a48f-a1edaae2cf58','Yo mando mensaje','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e',''),('fcca8a07-531d-469a-98b5-7b4a3991a486','?????','','seen','2024-09-22 02:34:17','2024-09-24 23:58:39','74f033c9-9f7f-473d-afd0-1e57b37a4584','014ef7c6-b10a-4bb3-8678-b7eec8dec27e','');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES ('018c8066-8049-44ae-8576-41b5e0e25894','Title_User2','FormDataContent6','assets/images/3164eada-d5aa-411b-af1e-df54009ebb83-maximiliano.png','2024-07-11 07:36:10','2024-07-11 07:36:10',NULL),('fd3895c9-3b39-44cf-85f9-0943d3ed6a5b','FormTitle6','FormDataContent6','assets/images/1a3dcb82-f2a6-44f9-8c01-201b278aea0e-maximiliano.png','2024-07-11 07:20:50','2024-07-11 07:20:50',NULL);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `profilePictureUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `profilePictureThumbnailUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('014ef7c6-b10a-4bb3-8678-b7eec8dec27e','Maximiliano','max@gmail.com','$2b$12$e/Lh/mi6gaZXmZg6XllXcOW6FsWGvm33dO8EVmh4iwYDjnEcpyKUm','ACTIVE','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/maximiliano.png','2024-07-26 01:42:38','2024-07-26 01:42:38',NULL),('3950adcc-c94d-4e2b-9460-17f0731f3693','SkyFalling','sky@gmail.com','$2b$12$9Vf0a6eTcr/cR7cVPJDBAeCSTEQ59nrc57V5l3ILpF5OTpGJX/rii','ACTIVE','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/four-seasons-mucha-copy-1.jpg','2024-08-09 06:11:19','2024-08-09 06:11:19',NULL),('74f033c9-9f7f-473d-afd0-1e57b37a4584','sr_panquesito','thenightmaretower@gmail.com','$2b$12$TLvSMnAUn/Pn1VIsqZFs8.1Kwd7MtuzHeTT1g8Fxeg7uPaXHcSVly','ACTIVE','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/room.jpg','2024-07-26 01:41:48','2024-07-26 01:41:48',NULL),('7bc70617-c6e3-4f7d-a28f-52bd8bfa99d8','Anthropocene','anthro@mail.com','$2b$12$RPK4QwwfILyJgoQiUSF5MOHGzmdBHt1Jfy.006V582TPtwghbDG1e','ACTIVE','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/00358-1860780574-_lora_Alphonse%20Mucha%20Style_1_Alphonse%20Mucha%20Style%20-%20a%20portrait%20of%20persephone%20in%20stained%20glass%20alphonse%20mucha%20art%20style.jpeg','2024-08-09 05:51:00','2024-08-09 05:51:00',NULL),('bca3332f-746c-44c5-ade0-f4919087c596','LuisDiazRey','mailss@gmail.com','$2b$12$r/rRRb2qxbOrTaTnZOzeK.CkpPNV0za6yl9Iq1ob5owws1WMTqjka','ACTIVE','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/profilePicture-Screenshot%202024-08-08%20at%2011.01.07%E2%80%AFp.m..png','2024-09-23 23:37:17','2024-09-23 23:37:17',NULL),('cdf427d2-ffc1-4561-8479-b84f8bbd0945','LuisDiazRey','mail@gmail.com','$2b$12$j4a9mB624c6Q7WTMZPDUXupCOrY5esrXfYxf1rC/ksEwA4M5ejXCC','ACTIVE','','2024-07-26 02:05:48','2024-07-26 02:05:48',NULL),('d69a4bd6-d3d5-4eab-891e-ba69af21d56c','luis','luisgdiazreynoso@gmail.com','$2b$12$qUj7tEJdzAlrw1lJ1z5xhenwNqZXSmVBzVs09g0Z5XQaYQTtfcT82','ACTIVE','https://ss-corpse-chat-general-bucket.s3.us-west-2.amazonaws.com/car.png','2024-07-26 01:35:52','2024-07-26 01:35:52',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSettings`
--

DROP TABLE IF EXISTS `UserSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserSettings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `isDarkmode` tinyint(1) DEFAULT '0',
  `isPrivate` tinyint(1) DEFAULT '0',
  `isDeleted` tinyint(1) DEFAULT '0',
  `isReported` tinyint(1) DEFAULT '0',
  `isBanned` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `usersettings_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSettings`
--

LOCK TABLES `UserSettings` WRITE;
/*!40000 ALTER TABLE `UserSettings` DISABLE KEYS */;
INSERT INTO `UserSettings` VALUES ('160b525a-70df-11ef-99e1-59caeb3c6a60',0,0,0,0,0,'2024-09-12 01:14:52','2024-09-12 01:14:52','014ef7c6-b10a-4bb3-8678-b7eec8dec27e'),('17385718-70df-11ef-99e1-59caeb3c6a60',0,0,0,0,0,'2024-09-12 01:14:54','2024-09-12 01:14:54','3950adcc-c94d-4e2b-9460-17f0731f3693'),('17c21962-70df-11ef-99e1-59caeb3c6a60',0,0,0,0,0,'2024-09-12 01:14:55','2024-09-12 01:14:55','74f033c9-9f7f-473d-afd0-1e57b37a4584'),('18449ab8-70df-11ef-99e1-59caeb3c6a60',0,0,0,0,0,'2024-09-12 01:14:56','2024-09-12 01:14:56','7bc70617-c6e3-4f7d-a28f-52bd8bfa99d8'),('18c67614-70df-11ef-99e1-59caeb3c6a60',0,0,0,0,0,'2024-09-12 01:14:57','2024-09-12 01:14:57','cdf427d2-ffc1-4561-8479-b84f8bbd0945'),('194e6fba-70df-11ef-99e1-59caeb3c6a60',0,0,0,0,0,'2024-09-12 01:14:58','2024-09-12 01:14:58','d69a4bd6-d3d5-4eab-891e-ba69af21d56c');
/*!40000 ALTER TABLE `UserSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserVerification`
--

DROP TABLE IF EXISTS `UserVerification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserVerification` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `verificationMethod` varchar(255) NOT NULL,
  `verificationCode` varchar(255) NOT NULL,
  `isVerified` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `userverification_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserVerification`
--

LOCK TABLES `UserVerification` WRITE;
/*!40000 ALTER TABLE `UserVerification` DISABLE KEYS */;
INSERT INTO `UserVerification` VALUES ('28158c9a-70df-11ef-99e1-59caeb3c6a60','email','none',1,'2024-09-12 01:15:22','2024-09-12 01:15:22','014ef7c6-b10a-4bb3-8678-b7eec8dec27e'),('2815f4a0-70df-11ef-99e1-59caeb3c6a60','email','none',1,'2024-09-12 01:15:22','2024-09-12 01:15:22','3950adcc-c94d-4e2b-9460-17f0731f3693'),('28165742-70df-11ef-99e1-59caeb3c6a60','email','none',1,'2024-09-12 01:15:22','2024-09-12 01:15:22','74f033c9-9f7f-473d-afd0-1e57b37a4584'),('28168f64-70df-11ef-99e1-59caeb3c6a60','email','none',1,'2024-09-12 01:15:22','2024-09-12 01:15:22','7bc70617-c6e3-4f7d-a28f-52bd8bfa99d8'),('2816bbf6-70df-11ef-99e1-59caeb3c6a60','email','none',1,'2024-09-12 01:15:22','2024-09-12 01:15:22','cdf427d2-ffc1-4561-8479-b84f8bbd0945'),('2816e4b4-70df-11ef-99e1-59caeb3c6a60','email','none',1,'2024-09-12 01:15:22','2024-09-12 01:15:22','d69a4bd6-d3d5-4eab-891e-ba69af21d56c');
/*!40000 ALTER TABLE `UserVerification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-24 17:00:59
