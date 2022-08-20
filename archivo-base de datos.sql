-- MySQL dump 10.19  Distrib 10.3.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: srwong_base23er
-- ------------------------------------------------------
-- Server version	10.3.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `add_ons`
--

DROP TABLE IF EXISTS `add_ons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_ons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_ons`
--

LOCK TABLES `add_ons` WRITE;
/*!40000 ALTER TABLE `add_ons` DISABLE KEYS */;
INSERT INTO `add_ons` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES (2,'3 Wantanes con salsa tamarindo +S/4.90',4.90,'2022-08-04 20:06:50','2022-08-04 20:06:50'),(3,'6 Wantanes con salsa tamarindo +S/7.90',7.90,'2022-08-06 17:46:34','2022-08-06 17:46:34'),(4,'3 Piernitas al Limón con salsa limón y canela china +S/9.90',9.90,'2022-08-06 17:46:53','2022-08-06 17:46:53'),(5,'3 Chicharrón Orientales con salsa limón y canela china. +S/12.90',12.90,'2022-08-06 17:47:07','2022-08-06 17:47:07'),(6,'Salsa Limón y Canela China +S/1.20',1.20,'2022-08-06 17:48:10','2022-08-06 17:48:10'),(7,'Salsa Sillao +S/1.20',1.20,'2022-08-06 17:48:21','2022-08-06 17:48:21'),(8,'Salsa Tamarindo +S/1.20',1.20,'2022-08-06 17:48:30','2022-08-06 17:48:30'),(9,'3 Sobres de Ají +S/1.00',1.00,'2022-08-06 17:48:39','2022-08-06 17:48:39'),(10,'3 Sobres de Mayonesa +S/1.00',1.00,'2022-08-06 17:48:48','2022-08-06 17:48:48'),(11,'Cubiertos Para Dos +S/0.50',0.50,'2022-08-06 17:48:59','2022-08-06 17:48:59'),(12,'Arroz Chaufa de Pollo Individual +S/12.90',12.90,'2022-08-06 19:09:35','2022-08-06 19:09:35'),(13,'Honey Chicken +S/20.90',20.90,'2022-08-06 19:09:42','2022-08-06 19:09:42'),(14,'Arroz Chaufa de Pollo Grande +S/24.90',24.90,'2022-08-06 19:09:50','2022-08-06 19:09:50');
/*!40000 ALTER TABLE `add_ons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_access` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES (1,'Master Admin',NULL,1,'2022-06-07 10:59:59','2022-06-07 10:59:59');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`, `admin_role_id`, `status`) VALUES (1,'webmaster2022',NULL,'938123459','webmaster@srwong.pe',NULL,'$2y$10$d3MLuPHXZHlreudHYUmr1.0yBh6JibPeYK7eBGaPZCUWSKG//YInK','niZ90L2dCKtP5B0xf9Njo1iTwgQuKlSzQPmxWact8oSGFDdPtIjI7IzbqOlX','2022-07-28 08:00:52','2022-07-28 08:00:52',NULL,1,1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES (2,'Inca Kola Sabor Original 500 ml','2022-08-04 20:06:15','2022-08-04 20:06:15');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `title`, `image`, `product_id`, `status`, `created_at`, `updated_at`, `category_id`) VALUES (6,'CHAUFA DE POLLO','2022-08-19-63004f253d4a6.png',10,1,'2022-08-20 03:04:05','2022-08-20 03:04:05',NULL),(7,'SOPA SAHOFAN DE CARNE','2022-08-19-63004f6f9d970.png',5,1,'2022-08-20 03:05:19','2022-08-20 03:05:19',NULL);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`) VALUES (1,NULL,'Srwong','ventas@srwong.pe','$2y$10$IJh5FtRw4HKl6XbrNqc83OZCaJmZMjE5Zq1yjnnG18tZPPEgCqWh6','-11.983959','-77.007172','Hazi osman gani lane',1,'2021-02-24 09:45:49','2022-08-20 12:40:38',3,NULL,'2022-08-20-6300d646638c5.png');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_settings`
--

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES (1,'restaurant_open_time',NULL,'2021-01-06 05:55:51','2021-01-06 05:55:51'),(2,'restaurant_close_time',NULL,NULL,NULL),(3,'restaurant_name','Srwong',NULL,NULL),(4,'currency','PEN',NULL,NULL),(5,'logo','2022-08-04-62ec2e45e90d1.png',NULL,NULL),(6,'mail_config','{\"status\":0,\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}',NULL,'2022-06-07 10:59:59'),(7,'delivery_charge','0',NULL,NULL),(8,'ssl_commerz_payment','{\"status\":\"0\",\"store_id\":null,\"store_password\":null}',NULL,'2021-07-25 14:38:25'),(9,'paypal','{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}',NULL,'2021-07-25 14:38:48'),(10,'stripe','{\"status\":\"0\",\"api_key\":null,\"published_key\":null}',NULL,'2021-07-25 14:38:57'),(11,'phone','016802680',NULL,NULL),(13,'footer_text','copyright',NULL,NULL),(14,'address','San Juan de lurigancho',NULL,NULL),(15,'email_address','ventas@srwong.pe',NULL,NULL),(16,'cash_on_delivery','{\"status\":\"1\"}',NULL,'2022-07-31 02:41:06'),(17,'email_verification','0',NULL,NULL),(18,'digital_payment','{\"status\":\"1\"}','2021-01-30 19:38:54','2021-01-30 19:38:58'),(19,'terms_and_conditions','<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\"><h1>Terms and Condition</h1><p><br></p><ol><li>Hello, terms and conditions.......</li><li>Hello</li></ol></div><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>',NULL,'2021-02-11 18:31:50'),(20,'fcm_topic','',NULL,NULL),(21,'fcm_project_id','3f34f34',NULL,NULL),(22,'push_notification_key','AAAAiso7J2Y:APA91bFtVGPVdhu0pvmFFLGev3_A6bV82FO3pvPg_IW5AL_zm0Dvbk8cESE9C9oYhAEnJI_REaPvTONvG-uGAmxlJeJYrInQwPeahVeOnVx6dTRoV-FU_xVbgCTErpUOSqblZkYhjv6C',NULL,NULL),(24,'order_pending_message','{\"status\":1,\"message\":\"Su pedido ha sido realizado con \\u00e9xito.\"}',NULL,NULL),(25,'order_processing_message','{\"status\":1,\"message\":\"Tu pedido va al cocinero\"}',NULL,NULL),(26,'out_for_delivery_message','{\"status\":0,\"message\":\"Ordene para la entrega.\"}',NULL,NULL),(27,'order_delivered_message','{\"status\":1,\"message\":\"entregado\"}',NULL,NULL),(28,'delivery_boy_assign_message','{\"status\":1,\"message\":\"chico asignado\"}',NULL,NULL),(29,'delivery_boy_start_message','{\"status\":1,\"message\":\"comenzar la entrega\"}',NULL,NULL),(30,'delivery_boy_delivered_message','{\"status\":1,\"message\":\"chico entregado\"}',NULL,NULL),(32,'order_confirmation_msg','{\"status\":1,\"message\":\"Su pedido ha sido confirmado.\"}',NULL,NULL),(33,'razor_pay','{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}','2021-02-14 10:15:12','2021-07-25 14:38:34'),(34,'location_coverage','{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}',NULL,NULL),(35,'minimum_order_value','50',NULL,NULL),(36,'point_per_currency','50',NULL,NULL),(37,'internal_point','{\"status\":null}','2021-04-24 01:50:19','2021-04-24 01:50:19'),(38,'senang_pay','{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}','2021-04-24 01:58:21','2021-07-25 14:39:23'),(39,'privacy_policy','<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\" spellcheck=\"false\"><p>privacy policy</p></div><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>',NULL,'2021-04-28 03:36:02'),(40,'about_us','<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\" spellcheck=\"false\"><p><strong><em>hello world </em></strong></p><p><strong><em>nice </em></strong></p></div><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"mix-blend-mode: darken; position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>',NULL,'2021-05-23 18:29:52'),(42,'paystack','{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}','2021-05-04 14:38:35','2021-07-25 14:39:12'),(43,'time_zone','America/Lima',NULL,NULL),(44,'maintenance_mode','0',NULL,NULL),(45,'currency_symbol_position','left',NULL,NULL),(46,'language','[{\"id\":1,\"name\":\"en\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true}]',NULL,'2022-08-04 20:01:47'),(47,'self_pickup','1',NULL,NULL),(48,'delivery','1',NULL,NULL),(49,'phone_verification','0',NULL,NULL),(50,'msg91_sms','{\"status\":0,\"template_id\":null,\"authkey\":null}',NULL,NULL),(51,'2factor_sms','{\"status\":\"0\",\"api_key\":null}',NULL,NULL),(52,'nexmo_sms','{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}',NULL,NULL),(53,'twilio_sms','{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}',NULL,NULL),(54,'pagination_limit','10',NULL,NULL),(55,'map_api_key','AIzaSyALdpb3H-fsQrLq3JrJt61jp3cG7vtnYaU',NULL,NULL),(56,'delivery_management','{\"status\":\"0\",\"min_shipping_charge\":0,\"shipping_per_km\":0}',NULL,NULL),(57,'bkash','{\"status\":\"0\",\"api_key\":null,\"api_secret\":null,\"username\":null,\"password\":null}',NULL,NULL),(58,'paymob','{\"status\":\"0\",\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}',NULL,NULL),(59,'flutterwave','{\"status\":\"0\",\"public_key\":null,\"secret_key\":null,\"hash\":null}',NULL,NULL),(60,'mercadopago','{\"status\":\"1\",\"public_key\":\"TEST-f5b337e6-b542-4a37-9297-a146d0416894\",\"access_token\":\"TEST-6580744873358354-051822-d04e7ddaf4ef40d530cb72577066c02b-194605672\"}',NULL,NULL),(61,'returned_message','{\"status\":0,\"message\":null}',NULL,NULL),(62,'failed_message','{\"status\":0,\"message\":null}',NULL,NULL),(63,'canceled_message','{\"status\":0,\"message\":null}',NULL,NULL),(64,'recaptcha','{\"status\":\"0\",\"site_key\":\"\",\"secret_key\":\"\"}',NULL,NULL),(65,'firestore_db','{\"apiKey\":\"\",\"authDomain\":\"\",\"projectId\":\"\",\"storageBucket\":\"\",\"messagingSenderId\":\"\",\"appId\":\"\"}',NULL,NULL),(66,'play_store_config','{\"status\":\"1\",\"link\":\"#\",\"min_version\":\"1\"}',NULL,NULL),(67,'app_store_config','{\"status\":\"1\",\"link\":\"#\",\"min_version\":\"1\"}',NULL,NULL),(68,'default_preparation_time','30',NULL,NULL),(69,'decimal_point_settings','2',NULL,NULL),(70,'schedule_order_slot_duration','1',NULL,NULL),(71,'time_format','24',NULL,NULL),(72,'customer_notify_message','{\"status\":0,\"message\":null}',NULL,NULL),(73,'customer_notify_message_for_time_change','{\"status\":0,\"message\":null}',NULL,NULL),(74,'firebase_message_config','{\"apiKey\":\"AIzaSyALdpb3H-fsQrLq3JrJt61jp3cG7vtnYaU\",\"authDomain\":\"srwong-app.firebaseapp.com\",\"projectId\":\"srwong-app\",\"storageBucket\":\"srwong-app.appspot.com\",\"messagingSenderId\":\"596098361190\",\"appId\":\"1:596098361190:web:e37db47ed624672f3c0aa7\"}','2022-07-28 08:34:49','2022-07-28 08:34:49'),(75,'country','PE',NULL,NULL);
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `image`, `banner_image`) VALUES (15,'ENTRADAS',0,0,1,'2022-08-20 05:06:36','2022-08-20 07:26:50','2022-08-20-63008b6b17601.png','2022-08-20-63008cbaa5353.png'),(16,'ASADOS',0,0,1,'2022-08-20 05:07:54','2022-08-20 11:40:01','2022-08-20-6300c8110c768.png','2022-08-20-6300c8110ce18.png'),(17,'CHAUFAS',0,0,1,'2022-08-20 05:09:23','2022-08-20 11:39:00','2022-08-20-6300c7d44670c.png','2022-08-20-6300c7d446c6c.png'),(18,'AEROPUERTO',0,0,1,'2022-08-20 05:12:02','2022-08-20 11:38:11','2022-08-20-6300c7a32e341.png','2022-08-20-6300c7a32e64e.png'),(19,'SOPAS',0,0,1,'2022-08-20 05:13:38','2022-08-20 11:36:39','2022-08-20-6300c74744dfb.png','2022-08-20-6300c7474519a.png'),(20,'TALLARINES',0,0,1,'2022-08-20 05:14:45','2022-08-20 11:35:27','2022-08-20-6300c6ff615fc.png','2022-08-20-6300c6ff61ab6.png'),(21,'TALLARINES DE ARROZ',0,0,1,'2022-08-20 05:25:50','2022-08-20 11:34:30','2022-08-20-6300c6c65d462.png','2022-08-20-6300c6c65d7a7.png'),(22,'CHANCHO ASADO',0,0,1,'2022-08-20 05:27:08','2022-08-20 11:32:42','2022-08-20-6300c65ad1251.png','2022-08-20-6300c65ad1691.png'),(23,'CARNE DE RES',0,0,1,'2022-08-20 05:28:13','2022-08-20 11:31:46','2022-08-20-6300c622a0010.png','2022-08-20-6300c622a054f.png'),(24,'POLLO',0,0,1,'2022-08-20 05:29:44','2022-08-20 11:30:39','2022-08-20-6300c5df291fa.png','2022-08-20-6300c5df295cd.png'),(25,'PATO ASADO',0,0,1,'2022-08-20 05:33:05','2022-08-20 11:29:39','2022-08-20-6300c5a30b6d0.png','2022-08-20-6300c5a30ba54.png'),(26,'ALITAS FRITAS',0,0,1,'2022-08-20 05:33:43','2022-08-20 11:28:27','2022-08-20-6300c55b2c2c6.png','2022-08-20-6300c55b2c61c.png'),(27,'A LA PLANCHA',0,0,1,'2022-08-20 05:34:37','2022-08-20 11:27:31','2022-08-20-6300c523b8fe2.png','2022-08-20-6300c523b95ae.png'),(28,'TRIOS',0,0,1,'2022-08-20 05:35:52','2022-08-20 07:41:03','2022-08-20-6300900fa50ee.png','2022-08-20-6300900fa5529.png'),(29,'PLATOS FAMILIARES',0,0,1,'2022-08-20 05:36:49','2022-08-20 07:37:53','2022-08-20-63008f5111523.png','2022-08-20-63008f5111cf9.png'),(30,'ESPECIALIDADES A LA CARTA',0,0,1,'2022-08-20 05:38:35','2022-08-20 07:35:57','2022-08-20-63008edd45bbe.png','2022-08-20-63008edd46145.png'),(31,'MENU FAMILIAR',0,0,1,'2022-08-20 05:39:40','2022-08-20 07:32:31','2022-08-20-63008e0fee4b3.png','2022-08-20-63008e0fee9de.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES (1,'IndianRed','#CD5C5C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(2,'LightCoral','#F08080','2018-11-05 02:12:26','2018-11-05 02:12:26'),(3,'Salmon','#FA8072','2018-11-05 02:12:26','2018-11-05 02:12:26'),(4,'DarkSalmon','#E9967A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(5,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(6,'Crimson','#DC143C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(7,'Red','#FF0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(8,'FireBrick','#B22222','2018-11-05 02:12:26','2018-11-05 02:12:26'),(9,'DarkRed','#8B0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(10,'Pink','#FFC0CB','2018-11-05 02:12:26','2018-11-05 02:12:26'),(11,'LightPink','#FFB6C1','2018-11-05 02:12:26','2018-11-05 02:12:26'),(12,'HotPink','#FF69B4','2018-11-05 02:12:26','2018-11-05 02:12:26'),(13,'DeepPink','#FF1493','2018-11-05 02:12:26','2018-11-05 02:12:26'),(14,'MediumVioletRed','#C71585','2018-11-05 02:12:26','2018-11-05 02:12:26'),(15,'PaleVioletRed','#DB7093','2018-11-05 02:12:26','2018-11-05 02:12:26'),(16,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(17,'Coral','#FF7F50','2018-11-05 02:12:26','2018-11-05 02:12:26'),(18,'Tomato','#FF6347','2018-11-05 02:12:26','2018-11-05 02:12:26'),(19,'OrangeRed','#FF4500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(20,'DarkOrange','#FF8C00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(21,'Orange','#FFA500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(22,'Gold','#FFD700','2018-11-05 02:12:26','2018-11-05 02:12:26'),(23,'Yellow','#FFFF00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(24,'LightYellow','#FFFFE0','2018-11-05 02:12:26','2018-11-05 02:12:26'),(25,'LemonChiffon','#FFFACD','2018-11-05 02:12:26','2018-11-05 02:12:26'),(26,'LightGoldenrodYellow','#FAFAD2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(27,'PapayaWhip','#FFEFD5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(28,'Moccasin','#FFE4B5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(29,'PeachPuff','#FFDAB9','2018-11-05 02:12:27','2018-11-05 02:12:27'),(30,'PaleGoldenrod','#EEE8AA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(31,'Khaki','#F0E68C','2018-11-05 02:12:27','2018-11-05 02:12:27'),(32,'DarkKhaki','#BDB76B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(33,'Lavender','#E6E6FA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(34,'Thistle','#D8BFD8','2018-11-05 02:12:27','2018-11-05 02:12:27'),(35,'Plum','#DDA0DD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(36,'Violet','#EE82EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(37,'Orchid','#DA70D6','2018-11-05 02:12:27','2018-11-05 02:12:27'),(38,'Fuchsia','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(39,'Magenta','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(40,'MediumOrchid','#BA55D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(41,'MediumPurple','#9370DB','2018-11-05 02:12:27','2018-11-05 02:12:27'),(42,'Amethyst','#9966CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(43,'BlueViolet','#8A2BE2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(44,'DarkViolet','#9400D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(45,'DarkOrchid','#9932CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(46,'DarkMagenta','#8B008B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(47,'Purple','#800080','2018-11-05 02:12:27','2018-11-05 02:12:27'),(48,'Indigo','#4B0082','2018-11-05 02:12:27','2018-11-05 02:12:27'),(49,'SlateBlue','#6A5ACD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(50,'DarkSlateBlue','#483D8B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(51,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(52,'GreenYellow','#ADFF2F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(53,'Chartreuse','#7FFF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(54,'LawnGreen','#7CFC00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(55,'Lime','#00FF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(56,'LimeGreen','#32CD32','2018-11-05 02:12:27','2018-11-05 02:12:27'),(57,'PaleGreen','#98FB98','2018-11-05 02:12:27','2018-11-05 02:12:27'),(58,'LightGreen','#90EE90','2018-11-05 02:12:27','2018-11-05 02:12:27'),(59,'MediumSpringGreen','#00FA9A','2018-11-05 02:12:27','2018-11-05 02:12:27'),(60,'SpringGreen','#00FF7F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(61,'MediumSeaGreen','#3CB371','2018-11-05 02:12:27','2018-11-05 02:12:27'),(62,'SeaGreen','#2E8B57','2018-11-05 02:12:27','2018-11-05 02:12:27'),(63,'ForestGreen','#228B22','2018-11-05 02:12:28','2018-11-05 02:12:28'),(64,'Green','#008000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(65,'DarkGreen','#006400','2018-11-05 02:12:28','2018-11-05 02:12:28'),(66,'YellowGreen','#9ACD32','2018-11-05 02:12:28','2018-11-05 02:12:28'),(67,'OliveDrab','#6B8E23','2018-11-05 02:12:28','2018-11-05 02:12:28'),(68,'Olive','#808000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(69,'DarkOliveGreen','#556B2F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(70,'MediumAquamarine','#66CDAA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(71,'DarkSeaGreen','#8FBC8F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(72,'LightSeaGreen','#20B2AA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(73,'DarkCyan','#008B8B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(74,'Teal','#008080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(75,'Aqua','#00FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(76,'Cyan','#00FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(77,'LightCyan','#E0FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(78,'PaleTurquoise','#AFEEEE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(79,'Aquamarine','#7FFFD4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(80,'Turquoise','#40E0D0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(81,'MediumTurquoise','#48D1CC','2018-11-05 02:12:28','2018-11-05 02:12:28'),(82,'DarkTurquoise','#00CED1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(83,'CadetBlue','#5F9EA0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(84,'SteelBlue','#4682B4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(85,'LightSteelBlue','#B0C4DE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(86,'PowderBlue','#B0E0E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(87,'LightBlue','#ADD8E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(88,'SkyBlue','#87CEEB','2018-11-05 02:12:28','2018-11-05 02:12:28'),(89,'LightSkyBlue','#87CEFA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(90,'DeepSkyBlue','#00BFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(91,'DodgerBlue','#1E90FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(92,'CornflowerBlue','#6495ED','2018-11-05 02:12:28','2018-11-05 02:12:28'),(93,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(94,'RoyalBlue','#4169E1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(95,'Blue','#0000FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(96,'MediumBlue','#0000CD','2018-11-05 02:12:28','2018-11-05 02:12:28'),(97,'DarkBlue','#00008B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(98,'Navy','#000080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(99,'MidnightBlue','#191970','2018-11-05 02:12:29','2018-11-05 02:12:29'),(100,'Cornsilk','#FFF8DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(101,'BlanchedAlmond','#FFEBCD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(102,'Bisque','#FFE4C4','2018-11-05 02:12:29','2018-11-05 02:12:29'),(103,'NavajoWhite','#FFDEAD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(104,'Wheat','#F5DEB3','2018-11-05 02:12:29','2018-11-05 02:12:29'),(105,'BurlyWood','#DEB887','2018-11-05 02:12:29','2018-11-05 02:12:29'),(106,'Tan','#D2B48C','2018-11-05 02:12:29','2018-11-05 02:12:29'),(107,'RosyBrown','#BC8F8F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(108,'SandyBrown','#F4A460','2018-11-05 02:12:29','2018-11-05 02:12:29'),(109,'Goldenrod','#DAA520','2018-11-05 02:12:29','2018-11-05 02:12:29'),(110,'DarkGoldenrod','#B8860B','2018-11-05 02:12:29','2018-11-05 02:12:29'),(111,'Peru','#CD853F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(112,'Chocolate','#D2691E','2018-11-05 02:12:29','2018-11-05 02:12:29'),(113,'SaddleBrown','#8B4513','2018-11-05 02:12:29','2018-11-05 02:12:29'),(114,'Sienna','#A0522D','2018-11-05 02:12:29','2018-11-05 02:12:29'),(115,'Brown','#A52A2A','2018-11-05 02:12:29','2018-11-05 02:12:29'),(116,'Maroon','#800000','2018-11-05 02:12:29','2018-11-05 02:12:29'),(117,'White','#FFFFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(118,'Snow','#FFFAFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(119,'Honeydew','#F0FFF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(120,'MintCream','#F5FFFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(121,'Azure','#F0FFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(122,'AliceBlue','#F0F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(123,'GhostWhite','#F8F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(124,'WhiteSmoke','#F5F5F5','2018-11-05 02:12:29','2018-11-05 02:12:29'),(125,'Seashell','#FFF5EE','2018-11-05 02:12:29','2018-11-05 02:12:29'),(126,'Beige','#F5F5DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(127,'OldLace','#FDF5E6','2018-11-05 02:12:29','2018-11-05 02:12:29'),(128,'FloralWhite','#FFFAF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(129,'Ivory','#FFFFF0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(130,'AntiqueWhite','#FAEBD7','2018-11-05 02:12:30','2018-11-05 02:12:30'),(131,'Linen','#FAF0E6','2018-11-05 02:12:30','2018-11-05 02:12:30'),(132,'LavenderBlush','#FFF0F5','2018-11-05 02:12:30','2018-11-05 02:12:30'),(133,'MistyRose','#FFE4E1','2018-11-05 02:12:30','2018-11-05 02:12:30'),(134,'Gainsboro','#DCDCDC','2018-11-05 02:12:30','2018-11-05 02:12:30'),(135,'LightGrey','#D3D3D3','2018-11-05 02:12:30','2018-11-05 02:12:30'),(136,'Silver','#C0C0C0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(137,'DarkGray','#A9A9A9','2018-11-05 02:12:30','2018-11-05 02:12:30'),(138,'Gray','#808080','2018-11-05 02:12:30','2018-11-05 02:12:30'),(139,'DimGray','#696969','2018-11-05 02:12:30','2018-11-05 02:12:30'),(140,'LightSlateGray','#778899','2018-11-05 02:12:30','2018-11-05 02:12:30'),(141,'SlateGray','#708090','2018-11-05 02:12:30','2018-11-05 02:12:30'),(142,'DarkSlateGray','#2F4F4F','2018-11-05 02:12:30','2018-11-05 02:12:30'),(143,'Black','#000000','2018-11-05 02:12:30','2018-11-05 02:12:30');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES (1,'US Dollar','USD','$',1.00,NULL,NULL),(2,'Canadian Dollar','CAD','CA$',1.00,NULL,NULL),(3,'Euro','EUR','€',1.00,NULL,NULL),(4,'United Arab Emirates Dirham','AED','د.إ.‏',1.00,NULL,NULL),(5,'Afghan Afghani','AFN','؋',1.00,NULL,NULL),(6,'Albanian Lek','ALL','L',1.00,NULL,NULL),(7,'Armenian Dram','AMD','֏',1.00,NULL,NULL),(8,'Argentine Peso','ARS','$',1.00,NULL,NULL),(9,'Australian Dollar','AUD','$',1.00,NULL,NULL),(10,'Azerbaijani Manat','AZN','₼',1.00,NULL,NULL),(11,'Bosnia-Herzegovina Convertible Mark','BAM','KM',1.00,NULL,NULL),(12,'Bangladeshi Taka','BDT','৳',1.00,NULL,NULL),(13,'Bulgarian Lev','BGN','лв.',1.00,NULL,NULL),(14,'Bahraini Dinar','BHD','د.ب.‏',1.00,NULL,NULL),(15,'Burundian Franc','BIF','FBu',1.00,NULL,NULL),(16,'Brunei Dollar','BND','B$',1.00,NULL,NULL),(17,'Bolivian Boliviano','BOB','Bs',1.00,NULL,NULL),(18,'Brazilian Real','BRL','R$',1.00,NULL,NULL),(19,'Botswanan Pula','BWP','P',1.00,NULL,NULL),(20,'Belarusian Ruble','BYN','Br',1.00,NULL,NULL),(21,'Belize Dollar','BZD','$',1.00,NULL,NULL),(22,'Congolese Franc','CDF','FC',1.00,NULL,NULL),(23,'Swiss Franc','CHF','CHf',1.00,NULL,NULL),(24,'Chilean Peso','CLP','$',1.00,NULL,NULL),(25,'Chinese Yuan','CNY','¥',1.00,NULL,NULL),(26,'Colombian Peso','COP','$',1.00,NULL,NULL),(27,'Costa Rican Colón','CRC','₡',1.00,NULL,NULL),(28,'Cape Verdean Escudo','CVE','$',1.00,NULL,NULL),(29,'Czech Republic Koruna','CZK','Kč',1.00,NULL,NULL),(30,'Djiboutian Franc','DJF','Fdj',1.00,NULL,NULL),(31,'Danish Krone','DKK','Kr.',1.00,NULL,NULL),(32,'Dominican Peso','DOP','RD$',1.00,NULL,NULL),(33,'Algerian Dinar','DZD','د.ج.‏',1.00,NULL,NULL),(34,'Estonian Kroon','EEK','kr',1.00,NULL,NULL),(35,'Egyptian Pound','EGP','E£‏',1.00,NULL,NULL),(36,'Eritrean Nakfa','ERN','Nfk',1.00,NULL,NULL),(37,'Ethiopian Birr','ETB','Br',1.00,NULL,NULL),(38,'British Pound Sterling','GBP','£',1.00,NULL,NULL),(39,'Georgian Lari','GEL','GEL',1.00,NULL,NULL),(40,'Ghanaian Cedi','GHS','GH¢',1.00,NULL,NULL),(41,'Guinean Franc','GNF','FG',1.00,NULL,NULL),(42,'Guatemalan Quetzal','GTQ','Q',1.00,NULL,NULL),(43,'Hong Kong Dollar','HKD','HK$',1.00,NULL,NULL),(44,'Honduran Lempira','HNL','L',1.00,NULL,NULL),(45,'Croatian Kuna','HRK','kn',1.00,NULL,NULL),(46,'Hungarian Forint','HUF','Ft',1.00,NULL,NULL),(47,'Indonesian Rupiah','IDR','Rp',1.00,NULL,NULL),(48,'Israeli New Sheqel','ILS','₪',1.00,NULL,NULL),(49,'Indian Rupee','INR','₹',1.00,NULL,NULL),(50,'Iraqi Dinar','IQD','ع.د',1.00,NULL,NULL),(51,'Iranian Rial','IRR','﷼',1.00,NULL,NULL),(52,'Icelandic Króna','ISK','kr',1.00,NULL,NULL),(53,'Jamaican Dollar','JMD','$',1.00,NULL,NULL),(54,'Jordanian Dinar','JOD','د.ا‏',1.00,NULL,NULL),(55,'Japanese Yen','JPY','¥',1.00,NULL,NULL),(56,'Kenyan Shilling','KES','Ksh',1.00,NULL,NULL),(57,'Cambodian Riel','KHR','៛',1.00,NULL,NULL),(58,'Comorian Franc','KMF','FC',1.00,NULL,NULL),(59,'South Korean Won','KRW','CF',1.00,NULL,NULL),(60,'Kuwaiti Dinar','KWD','د.ك.‏',1.00,NULL,NULL),(61,'Kazakhstani Tenge','KZT','₸.',1.00,NULL,NULL),(62,'Lebanese Pound','LBP','ل.ل.‏',1.00,NULL,NULL),(63,'Sri Lankan Rupee','LKR','Rs',1.00,NULL,NULL),(64,'Lithuanian Litas','LTL','Lt',1.00,NULL,NULL),(65,'Latvian Lats','LVL','Ls',1.00,NULL,NULL),(66,'Libyan Dinar','LYD','د.ل.‏',1.00,NULL,NULL),(67,'Moroccan Dirham','MAD','د.م.‏',1.00,NULL,NULL),(68,'Moldovan Leu','MDL','L',1.00,NULL,NULL),(69,'Malagasy Ariary','MGA','Ar',1.00,NULL,NULL),(70,'Macedonian Denar','MKD','Ден',1.00,NULL,NULL),(71,'Myanma Kyat','MMK','K',1.00,NULL,NULL),(72,'Macanese Pataca','MOP','MOP$',1.00,NULL,NULL),(73,'Mauritian Rupee','MUR','Rs',1.00,NULL,NULL),(74,'Mexican Peso','MXN','$',1.00,NULL,NULL),(75,'Malaysian Ringgit','MYR','RM',1.00,NULL,NULL),(76,'Mozambican Metical','MZN','MT',1.00,NULL,NULL),(77,'Namibian Dollar','NAD','N$',1.00,NULL,NULL),(78,'Nigerian Naira','NGN','₦',1.00,NULL,NULL),(79,'Nicaraguan Córdoba','NIO','C$',1.00,NULL,NULL),(80,'Norwegian Krone','NOK','kr',1.00,NULL,NULL),(81,'Nepalese Rupee','NPR','Re.',1.00,NULL,NULL),(82,'New Zealand Dollar','NZD','$',1.00,NULL,NULL),(83,'Omani Rial','OMR','ر.ع.‏',1.00,NULL,NULL),(84,'Panamanian Balboa','PAB','B/.',1.00,NULL,NULL),(85,'Peruvian Nuevo Sol','PEN','S/',1.00,NULL,NULL),(86,'Philippine Peso','PHP','₱',1.00,NULL,NULL),(87,'Pakistani Rupee','PKR','Rs',1.00,NULL,NULL),(88,'Polish Zloty','PLN','zł',1.00,NULL,NULL),(89,'Paraguayan Guarani','PYG','₲',1.00,NULL,NULL),(90,'Qatari Rial','QAR','ر.ق.‏',1.00,NULL,NULL),(91,'Romanian Leu','RON','lei',1.00,NULL,NULL),(92,'Serbian Dinar','RSD','din.',1.00,NULL,NULL),(93,'Russian Ruble','RUB','₽.',1.00,NULL,NULL),(94,'Rwandan Franc','RWF','FRw',1.00,NULL,NULL),(95,'Saudi Riyal','SAR','ر.س.‏',1.00,NULL,NULL),(96,'Sudanese Pound','SDG','ج.س.',1.00,NULL,NULL),(97,'Swedish Krona','SEK','kr',1.00,NULL,NULL),(98,'Singapore Dollar','SGD','$',1.00,NULL,NULL),(99,'Somali Shilling','SOS','Sh.so.',1.00,NULL,NULL),(100,'Syrian Pound','SYP','LS‏',1.00,NULL,NULL),(101,'Thai Baht','THB','฿',1.00,NULL,NULL),(102,'Tunisian Dinar','TND','د.ت‏',1.00,NULL,NULL),(103,'Tongan Paʻanga','TOP','T$',1.00,NULL,NULL),(104,'Turkish Lira','TRY','₺',1.00,NULL,NULL),(105,'Trinidad and Tobago Dollar','TTD','$',1.00,NULL,NULL),(106,'New Taiwan Dollar','TWD','NT$',1.00,NULL,NULL),(107,'Tanzanian Shilling','TZS','TSh',1.00,NULL,NULL),(108,'Ukrainian Hryvnia','UAH','₴',1.00,NULL,NULL),(109,'Ugandan Shilling','UGX','USh',1.00,NULL,NULL),(110,'Uruguayan Peso','UYU','$',1.00,NULL,NULL),(111,'Uzbekistan Som','UZS','so\'m',1.00,NULL,NULL),(112,'Venezuelan Bolívar','VEF','Bs.F.',1.00,NULL,NULL),(113,'Vietnamese Dong','VND','₫',1.00,NULL,NULL),(114,'CFA Franc BEAC','XAF','FCFA',1.00,NULL,NULL),(115,'CFA Franc BCEAO','XOF','CFA',1.00,NULL,NULL),(116,'Yemeni Rial','YER','﷼‏',1.00,NULL,NULL),(117,'South African Rand','ZAR','R',1.00,NULL,NULL),(118,'Zambian Kwacha','ZMK','ZK',1.00,NULL,NULL),(119,'Zimbabwean Dollar','ZWL','Z$',1.00,NULL,NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_addresses`
--

LOCK TABLES `customer_addresses` WRITE;
/*!40000 ALTER TABLE `customer_addresses` DISABLE KEYS */;
INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`, `user_id`, `contact_person_name`) VALUES (1,'Home','+51921554650','Las Dunas Provincia de Lima PE','-12.164960021516949','-76.98525600135326','2022-07-31 02:30:52','2022-07-31 02:30:52',2,'Anibal Cieza'),(2,'Home','+51921554650','jr las aguilas','-12.158776296775715','-77.00732608266328','2022-08-04 20:43:58','2022-08-04 20:43:58',3,'Anibal Cieza'),(3,'Other','+51921554650','820 Provincia de Lima PE','-12.083629524086607','-77.04311728477478','2022-08-08 16:40:28','2022-08-08 16:40:28',3,'Anibal Cieza'),(4,'Home','+51980535490','lince Joaquín Bernal 339','-12.087531208068052','-77.03633800148964','2022-08-08 22:57:04','2022-08-08 22:57:04',5,'Edwin Maravi'),(5,'Workplace','+51921554650','San Juan de lurigancho','-11.96892184550184','-77.00824558727285','2022-08-20 13:08:40','2022-08-20 13:08:40',8,'Anibal Cieza');
/*!40000 ALTER TABLE `customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_m_reviews`
--

DROP TABLE IF EXISTS `d_m_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_m_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_m_reviews`
--

LOCK TABLES `d_m_reviews` WRITE;
/*!40000 ALTER TABLE `d_m_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_m_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_conversations`
--

DROP TABLE IF EXISTS `dc_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_conversations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_conversations`
--

LOCK TABLES `dc_conversations` WRITE;
/*!40000 ALTER TABLE `dc_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `dc_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_histories`
--

DROP TABLE IF EXISTS `delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_histories`
--

LOCK TABLES `delivery_histories` WRITE;
/*!40000 ALTER TABLE `delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_men` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_men_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_men`
--

LOCK TABLES `delivery_men` WRITE;
/*!40000 ALTER TABLE `delivery_men` DISABLE KEYS */;
INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `created_at`, `updated_at`, `auth_token`, `fcm_token`, `branch_id`) VALUES (1,'delivery','carlos','938104993','webmaster@demo-piloto.ml','45676545','passport','[\"2022-07-27-62e215bf72f72.png\",\"2022-07-27-62e215bf7cee3.png\"]','2022-07-27-62e215bf7d398.png','$2y$10$yX42o0jISMZp7lYa6PI7fe82Hrk01pMe5VICqekg1yLwC1AlYbByq','2022-07-28 04:51:11','2022-07-28 04:51:11',NULL,NULL,0);
/*!40000 ALTER TABLE `delivery_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_verifications`
--

DROP TABLE IF EXISTS `email_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_verifications`
--

LOCK TABLES `email_verifications` WRITE;
/*!40000 ALTER TABLE `email_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_28_082729_create_admins_table',1),(5,'2020_12_28_083059_create_delivery_men_table',1),(6,'2020_12_28_085055_create_attributes_table',1),(7,'2020_12_28_085146_create_add_ons_table',1),(8,'2020_12_28_085255_create_categories_table',1),(9,'2020_12_28_085511_create_business_settings_table',1),(10,'2020_12_28_085733_create_customer_addresses_table',1),(11,'2020_12_28_090037_create_orders_table',1),(12,'2020_12_28_090551_create_order_details_table',1),(13,'2020_12_28_091214_create_order_delivery_histories_table',1),(14,'2020_12_28_092607_create_banners_table',1),(15,'2020_12_28_092747_create_notifications_table',1),(16,'2020_12_28_092933_create_coupons_table',1),(17,'2020_12_28_093409_create_track_deliverymen_table',1),(18,'2020_12_28_093637_create_conversations_table',1),(19,'2020_12_28_093812_create_reviews_table',1),(20,'2020_12_28_093937_create_products_table',1),(21,'2016_06_01_000001_create_oauth_auth_codes_table',2),(22,'2016_06_01_000002_create_oauth_access_tokens_table',2),(23,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(24,'2016_06_01_000004_create_oauth_clients_table',2),(25,'2016_06_01_000005_create_oauth_personal_access_clients_table',2),(26,'2021_01_02_053131_add_products_column_attributes',2),(27,'2021_01_02_062050_add_products_table_column_discount_tax',2),(28,'2021_01_03_083314_add_column_to_order_details',3),(29,'2021_01_03_084318_add_another_column_to_order_details',3),(30,'2021_01_05_133023_add_columns_to_customer_addressess',4),(31,'2021_01_07_142644_add_column_to_conversation',5),(32,'2021_01_09_145939_add_column_to_order_table',6),(33,'2021_01_09_180439_add_column_to_product_table',7),(34,'2021_01_09_182458_add_image_column_to_category',7),(35,'2021_01_10_144352_create_wishlists_table',8),(36,'2021_01_16_182939_add_column_to_order_table1',9),(37,'2021_01_18_124153_add_column_to_cono_table',10),(38,'2021_01_18_132026_add_column_to_deliveryman_table',11),(39,'2021_01_18_135107_create_delivery_histories_table',11),(40,'2021_01_23_102525_add_col_to_banner_category_id',12),(41,'2021_01_26_133423_add_delivery_charge_order_table',13),(42,'2021_01_27_111644_add_email_token_to_user_table',13),(43,'2021_01_27_112309_create_email_verifications_table',13),(44,'2021_01_27_120054_remove_column_from_users',13),(45,'2021_01_27_120306_add_column_tousers',13),(46,'2021_01_28_152556_create_currencies_table',14),(47,'2021_02_07_140951_add_firebase_token_to_users_table',15),(48,'2021_02_07_141134_add_order_note_to_orders_table',15),(49,'2021_02_11_125439_add_fcm_to_delivery_man',16),(50,'2021_02_15_094227_add_orderid_to_reviews_table',17),(51,'2021_02_18_085112_add_coupon_type_column_in_coupons',18),(52,'2021_02_18_095103_add_coupon_code_to_order_table',18),(53,'2021_02_20_051812_create_d_m_reviews_table',19),(54,'2021_02_20_070636_add_addon_qtys_order_table',19),(55,'2021_02_22_084240_add_order_type',20),(56,'2021_02_23_053203_create_branches_table',21),(57,'2021_02_23_093537_add_branch_in_order',21),(58,'2021_02_24_055406_add_coverage_in_branch',21),(59,'2021_02_25_063013_add_branch_to_delivery_man',22),(60,'2021_02_28_080406_add_remember_token_to_branch',23),(61,'2021_03_01_112807_change_poduct_table_column_change',24),(62,'2021_03_22_055801_add_branch_id_to_product',25),(63,'2021_03_24_055957_add_image_table_in_branch',26),(64,'2021_04_05_144520_update_product_image_column',27),(65,'2021_04_06_040409_create_colors_table',28),(66,'2021_04_10_141505_add_colors_column_products',28),(67,'2021_04_17_054600_add_point_to_users',29),(68,'2021_04_17_084426_create_point_transitions',29),(69,'2021_04_11_140138_create_phone_verifications_table',30),(70,'2021_04_12_144205_add_column_password_resets',30),(71,'2021_05_03_160034_add_callback_to_order',31),(72,'2021_05_04_203143_add_delivery_date_to_order',32),(73,'2021_05_06_144650_change_business_value_col_type',33),(74,'2021_06_17_054551_create_soft_credentials_table',34),(75,'2021_09_01_133521_create_phone_verifications_table',35),(76,'2021_09_03_194551_create_translations_table',35),(77,'2021_09_04_082220_rename_email_col',35),(78,'2021_10_12_164428_add_temporary_token_to_users_table',36),(79,'2021_11_07_165323_add_extra_discount_to_order_table',37),(80,'2022_02_03_092647_add_fcm_token_to_admins_table',38),(81,'2022_02_03_175558_create_dc_conversations_table',38),(82,'2022_02_03_175826_create_messages_table',38),(83,'2022_02_05_161313_add_sender_column_to_conversations_table',38),(84,'2022_02_10_163707_change_banner_title_length',38),(85,'2022_02_10_172126_change_name_length_to_attributes_table',38),(86,'2022_02_10_173534_change_name_length_to_add_ons_table',38),(87,'2022_02_10_175418_change_name_length_to_categories_table',38),(88,'2022_02_12_154555_create_social_media_table',38),(89,'2022_02_13_102927_create_newsletters_table',38),(90,'2022_02_14_115413_chnage_message_data_type_in_conversations_table',38),(91,'2022_02_15_133410_change_attachment_column_type_to_messages_table',38),(92,'2022_02_15_133618_change_image_colum_type_to_conversations_table',38),(93,'2022_03_18_102843_add_delivery_address_to_order_table',39),(94,'2022_03_18_151825_add_cover_image_to_category_table',39),(95,'2022_05_16_171116_preparation_time_add_in_order_table',40),(96,'2022_05_26_102619_create_admin_roles_table',40),(97,'2022_05_26_113238_add_admin_role_id_to_admin_table',40),(98,'2022_05_26_123911_add_status_column_to_admin_table',40),(99,'2022_05_26_163239_add_popularity_count_in_product_table',40),(100,'2022_05_28_101608_create_time_schedules_table',40);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES ('14ec6f8380bef1e3806afad5ef241b09fd03eac1c904e824a1546b512c71d76e4dc5a3620c01b1cf',8,3,'RestaurantCustomerAuth','[]',0,'2022-08-20 13:04:32','2022-08-20 13:04:32','2023-08-20 08:04:32'),('1bddbb6d9607274b3486c73918361f9f39a537483eedeccdfd00c882c2c358ee661a4c2cd4ee6f80',3,3,'RestaurantCustomerAuth','[]',0,'2022-08-08 16:39:31','2022-08-08 16:39:31','2023-08-08 11:39:31'),('207482c3b541dc4df6f57adfe8d9b901a50ef49e2c6d4d850c41eef4e58c1583d47a113c9627f364',2,3,'RestaurantCustomerAuth','[]',0,'2022-07-31 02:29:24','2022-07-31 02:29:24','2023-07-30 21:29:24'),('696ef6c7476771caf29fb04b198518a2eb465b91762d781108909132d1650c8f35e12e6e718a167f',6,3,'RestaurantCustomerAuth','[]',0,'2022-08-10 18:07:16','2022-08-10 18:07:16','2023-08-10 13:07:16'),('81a6de14c8648a9f7961ea4f85b639c94cd414e7f3003dea1283b3220c2cfa6a93a11ee21bce7d21',5,3,'RestaurantCustomerAuth','[]',0,'2022-08-08 22:51:39','2022-08-08 22:51:39','2023-08-08 17:51:39'),('8321f4df3cecab86996c4f511427ff5cfded84cf50e1f2b78930c97f9b4667da2e497509d59651b5',3,3,'RestaurantCustomerAuth','[]',0,'2022-08-08 23:40:38','2022-08-08 23:40:38','2023-08-08 18:40:38'),('856c2c4dbe21286648667c65ca743bec5cbfb0810607ad41d7b90353158df53e54aee703342bea4f',8,3,'RestaurantCustomerAuth','[]',0,'2022-08-20 13:37:16','2022-08-20 13:37:16','2023-08-20 08:37:16'),('86f142aacf465e601cf7b854d5fdcb9d87ac5623fec4521f36f6d1917040e4456c6d938b72ae0b58',4,3,'RestaurantCustomerAuth','[]',0,'2022-08-08 17:22:32','2022-08-08 17:22:32','2023-08-08 12:22:32'),('881ef477f294b578029958f1aed695732144e7fc77d67134ef48f8a822a086ce4b4fe579fe80500d',2,3,'RestaurantCustomerAuth','[]',0,'2022-07-31 00:34:42','2022-07-31 00:34:42','2023-07-30 19:34:42'),('9eccf6695aa652a3f12a12673fb0fe709eac22984a50f1134370de957e19264531968fe9adc29d5a',1,3,'RestaurantCustomerAuth','[]',0,'2022-07-28 06:49:10','2022-07-28 06:49:10','2023-07-28 01:49:10'),('bb322d9851187ec2c5495414d87d6c9e481d82d983946a2b599e773628439df112d90dac0b9f0c95',3,3,'RestaurantCustomerAuth','[]',0,'2022-08-05 17:10:20','2022-08-05 17:10:20','2023-08-05 12:10:20'),('c815bd9d499438f6ff1c13cb83194ec4ca457bf353ed609275cf5ee60a61865c9ef3acf0ab356438',2,3,'RestaurantCustomerAuth','[]',0,'2022-07-30 21:45:04','2022-07-30 21:45:04','2023-07-30 16:45:04'),('c89d6ed854840a55c5373a789cf21a70b4549c14130dc306bc9cc16d140ec4cf3e14a99ffbc9e6eb',2,3,'RestaurantCustomerAuth','[]',0,'2022-07-30 21:36:07','2022-07-30 21:36:07','2023-07-30 16:36:07'),('e04060daa2dec6bb21274d7d24848654d1adf95e836c1f618cf1918659db80aea0c1eda57e487cd8',3,3,'RestaurantCustomerAuth','[]',0,'2022-08-04 20:43:04','2022-08-04 20:43:04','2023-08-04 15:43:04'),('e78ccd0d515a4192408192de1332cd56c27604d79bb558ca3648de7ecfd0817bd8e4c8ed526ac6be',7,3,'RestaurantCustomerAuth','[]',0,'2022-08-20 05:31:00','2022-08-20 05:31:00','2023-08-20 00:31:00'),('edbfa6c45dc09b0d460c75e7c5149ade9c789281a556b2ec670ec1ec980e3d8402844165eecace28',3,3,'RestaurantCustomerAuth','[]',0,'2022-08-08 16:34:48','2022-08-08 16:34:48','2023-08-08 11:34:48');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES (1,NULL,'Laravel Personal Access Client','z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt',NULL,'http://localhost',1,0,0,'2021-01-05 18:07:29','2021-01-05 18:07:29'),(2,NULL,'Laravel Password Grant Client','clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk','users','http://localhost',0,1,0,'2021-01-05 18:07:29','2021-01-05 18:07:29'),(3,NULL,'Laravel Personal Access Client','wDHtyTifyKZ422juudaKc8LW6ZSmE9YEovXIWTSM',NULL,'http://localhost',1,0,0,'2021-04-10 17:00:21','2021-04-10 17:00:21'),(4,NULL,'Laravel Password Grant Client','YWRRgYEydgmaZKctc0yO7hA3IiEMYvPZbYDrl8YD','users','http://localhost',0,1,0,'2021-04-10 17:00:21','2021-04-10 17:00:21');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES (1,1,'2021-01-05 18:07:29','2021-01-05 18:07:29'),(2,3,'2021-04-10 17:00:21','2021-04-10 17:00:21');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery_histories`
--

DROP TABLE IF EXISTS `order_delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery_histories`
--

LOCK TABLES `order_delivery_histories` WRITE;
/*!40000 ALTER TABLE `order_delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `add_on_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_on_qtys` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `add_on_ids`, `variant`, `add_on_qtys`) VALUES (1,1,100001,10.00,'{\"id\":1,\"name\":\"demo\",\"description\":\"dwwdwd\",\"image\":\"2022-07-28-62e1a84bb93c8.png\",\"price\":10,\"variations\":[{\"type\":\"12\",\"price\":10}],\"add_ons\":[{\"id\":1,\"name\":\"modelo 1\",\"price\":100,\"created_at\":\"2022-07-28T15:47:49.000000Z\",\"updated_at\":\"2022-07-28T15:47:49.000000Z\",\"translations\":[]}],\"tax\":0,\"available_time_starts\":\"01:30:00\",\"available_time_ends\":\"23:30:00\",\"status\":1,\"created_at\":\"2022-07-28T08:04:11.000000Z\",\"updated_at\":\"2022-07-28T15:48:26.000000Z\",\"attributes\":[\"1\"],\"category_ids\":[{\"id\":\"1\",\"position\":1}],\"choice_options\":[{\"name\":\"choice_1\",\"title\":\"modelo1\",\"options\":[\"12\"]}],\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":0,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"modelo1\":\"12\"}]',0.00,'discount_on_product',1,0.00,'2022-07-30 21:33:23','2022-07-30 21:33:23','[1]','\"12\"','[\"1\"]'),(2,1,100002,10.00,'{\"id\":1,\"name\":\"demo\",\"description\":\"dwwdwd\",\"image\":\"2022-07-28-62e1a84bb93c8.png\",\"price\":10,\"variations\":\"[{\\\"type\\\":\\\"12\\\",\\\"price\\\":10}]\",\"add_ons\":\"[\\\"1\\\"]\",\"tax\":0,\"available_time_starts\":\"01:30:00\",\"available_time_ends\":\"23:30:00\",\"status\":1,\"created_at\":\"2022-07-28T08:04:11.000000Z\",\"updated_at\":\"2022-07-28T15:48:26.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"modelo1\\\",\\\"options\\\":[\\\"12\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":0,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"type\":\"12\",\"price\":10}]',0.00,'discount_on_product',1,0.00,'2022-07-30 21:46:10','2022-07-30 21:46:10','[1]','null','[1]'),(3,3,100003,100.00,'{\"id\":3,\"name\":\"demo\",\"description\":\"demo\",\"image\":\"2022-08-05-62ed5c96a129d.png\",\"price\":100,\"variations\":\"[]\",\"add_ons\":\"[\\\"2\\\"]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-05T18:08:22.000000Z\",\"updated_at\":\"2022-08-06T18:00:39.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":0,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-08 16:41:00','2022-08-08 16:41:00','[2]','null','[1]'),(4,2,100003,19.90,'{\"id\":2,\"name\":\"Combo Enc\\u00e1jate Chicken Teriyaki\",\"description\":\"1 Enc\\u00e1jate Chicken Teriyaki, 1 Gaseosa 500ml\",\"image\":\"2022-08-04-62ec2896a056d.png\",\"price\":19.89999999999999857891452847979962825775146484375,\"variations\":\"[]\",\"add_ons\":\"[\\\"2\\\"]\",\"tax\":0,\"available_time_starts\":\"08:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-04T20:14:14.000000Z\",\"updated_at\":\"2022-08-06T18:00:23.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-08 16:41:00','2022-08-08 16:41:00','[2]','null','[1]'),(5,13,100004,4.90,'{\"id\":13,\"name\":\"Coca Cola Sabor Original 500 ml\",\"description\":\"Coca Cola Sabor Original 500 ml\",\"image\":\"2022-08-06-62eebe5ca3d1f.png\",\"price\":4.9000000000000003552713678800500929355621337890625,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"00:30:00\",\"available_time_ends\":\"23:00:00\",\"status\":1,\"created_at\":\"2022-08-06T19:17:48.000000Z\",\"updated_at\":\"2022-08-06T19:17:48.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',3,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[]','null','[]'),(6,13,100004,4.90,'{\"id\":13,\"name\":\"Coca Cola Sabor Original 500 ml\",\"description\":\"Coca Cola Sabor Original 500 ml\",\"image\":\"2022-08-06-62eebe5ca3d1f.png\",\"price\":4.9000000000000003552713678800500929355621337890625,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"00:30:00\",\"available_time_ends\":\"23:00:00\",\"status\":1,\"created_at\":\"2022-08-06T19:17:48.000000Z\",\"updated_at\":\"2022-08-09T21:16:27.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',2,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[]','null','[]'),(7,2,100004,19.90,'{\"id\":2,\"name\":\"Combo Enc\\u00e1jate Chicken Teriyaki\",\"description\":\"1 Enc\\u00e1jate Chicken Teriyaki, 1 Gaseosa 500ml\",\"image\":\"2022-08-04-62ec2896a056d.png\",\"price\":19.89999999999999857891452847979962825775146484375,\"variations\":\"[]\",\"add_ons\":\"[\\\"2\\\"]\",\"tax\":0,\"available_time_starts\":\"08:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-04T20:14:14.000000Z\",\"updated_at\":\"2022-08-08T16:41:00.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',2,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[2]','null','[1]'),(8,14,100004,4.90,'{\"id\":14,\"name\":\"Inca Kola Sabor Original 500 ml\",\"description\":\"Inca Kola Sabor Original 500 ml\",\"image\":\"2022-08-06-62eec03ecfb86.png\",\"price\":4.9000000000000003552713678800500929355621337890625,\"variations\":\"[]\",\"add_ons\":\"[]\",\"tax\":0,\"available_time_starts\":\"00:30:00\",\"available_time_ends\":\"23:00:00\",\"status\":1,\"created_at\":\"2022-08-06T19:25:50.000000Z\",\"updated_at\":\"2022-08-06T19:25:50.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"12\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":0,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[]','null','[]'),(9,2,100004,19.90,'{\"id\":2,\"name\":\"Combo Enc\\u00e1jate Chicken Teriyaki\",\"description\":\"1 Enc\\u00e1jate Chicken Teriyaki, 1 Gaseosa 500ml\",\"image\":\"2022-08-04-62ec2896a056d.png\",\"price\":19.89999999999999857891452847979962825775146484375,\"variations\":\"[]\",\"add_ons\":\"[\\\"2\\\"]\",\"tax\":0,\"available_time_starts\":\"08:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-04T20:14:14.000000Z\",\"updated_at\":\"2022-08-09T21:16:27.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":2,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',2,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[2]','null','[1]'),(10,3,100004,100.00,'{\"id\":3,\"name\":\"demo\",\"description\":\"demo\",\"image\":\"2022-08-05-62ed5c96a129d.png\",\"price\":100,\"variations\":\"[]\",\"add_ons\":\"[\\\"2\\\"]\",\"tax\":0,\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-05T18:08:22.000000Z\",\"updated_at\":\"2022-08-08T16:41:00.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":0,\"branch_id\":1,\"colors\":null,\"popularity_count\":1,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',1,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[]','null','[]'),(11,2,100004,19.90,'{\"id\":2,\"name\":\"Combo Enc\\u00e1jate Chicken Teriyaki\",\"description\":\"1 Enc\\u00e1jate Chicken Teriyaki, 1 Gaseosa 500ml\",\"image\":\"2022-08-04-62ec2896a056d.png\",\"price\":19.89999999999999857891452847979962825775146484375,\"variations\":\"[]\",\"add_ons\":\"[\\\"2\\\"]\",\"tax\":0,\"available_time_starts\":\"08:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-04T20:14:14.000000Z\",\"updated_at\":\"2022-08-09T21:16:27.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":3,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',2,0.00,'2022-08-09 21:16:27','2022-08-09 21:16:27','[2]','null','[1]'),(12,23,100005,25.00,'{\"id\":23,\"name\":\"CHAUFA DE POLLO\",\"description\":\"Plato de comida\",\"image\":\"2022-08-20-6300cc761f910.png\",\"price\":25,\"variations\":\"[]\",\"add_ons\":\"[\\\"5\\\"]\",\"tax\":0,\"available_time_starts\":\"06:30:00\",\"available_time_ends\":\"19:30:00\",\"status\":1,\"created_at\":\"2022-08-20T06:05:42.000000Z\",\"updated_at\":\"2022-08-20T12:15:53.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"17\\\",\\\"position\\\":1},{\\\"id\\\":\\\"40\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"set_menu\":1,\"branch_id\":1,\"colors\":null,\"popularity_count\":0,\"translations\":[]}','[{\"type\":null,\"price\":null}]',0.00,'discount_on_product',3,0.00,'2022-08-20 13:37:29','2022-08-20 13:37:29','[5]','null','[1]');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `callback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preparation_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `created_at`, `updated_at`, `checked`, `delivery_man_id`, `delivery_charge`, `order_note`, `coupon_code`, `order_type`, `branch_id`, `callback`, `delivery_date`, `delivery_time`, `extra_discount`, `delivery_address`, `preparation_time`) VALUES (100001,1,110.00,0.00,NULL,'paid','delivered',0.00,'card',NULL,NULL,'2022-07-30 21:33:23','2022-07-30 21:33:23',1,NULL,0.00,NULL,NULL,'pos',1,NULL,'2022-07-30','16:33:23',0.00,NULL,NULL),(100002,2,110.00,0.00,NULL,'paid','out_for_delivery',0.00,'cash_on_delivery',NULL,0,'2022-07-30 21:46:10','2022-07-30 21:47:02',1,NULL,0.00,NULL,NULL,'take_away',1,NULL,'2022-07-30','16:46:10',0.00,'null',30),(100003,3,129.70,0.00,NULL,'unpaid','pending',0.00,'cash_on_delivery',NULL,0,'2022-08-08 16:41:00','2022-08-08 16:43:10',1,NULL,0.00,NULL,NULL,'take_away',1,NULL,'2022-08-08','11:41:00',0.00,'null',30),(100004,3,263.50,0.00,NULL,'paid','pending',0.00,'cash_on_delivery',NULL,3,'2022-08-09 21:16:27','2022-08-09 21:17:31',1,1,0.00,NULL,NULL,'delivery',1,NULL,'2022-08-09','16:16:27',0.00,'{\"id\":3,\"address_type\":\"Other\",\"contact_person_number\":\"+51921554650\",\"address\":\"820 Provincia de Lima PE\",\"latitude\":\"-12.083629524086607\",\"longitude\":\"-77.04311728477478\",\"created_at\":\"2022-08-08T16:40:28.000000Z\",\"updated_at\":\"2022-08-08T16:40:28.000000Z\",\"user_id\":3,\"contact_person_name\":\"Anibal Cieza\"}',30),(100005,8,87.90,0.00,NULL,'unpaid','pending',0.00,'cash_on_delivery',NULL,5,'2022-08-20 13:37:29','2022-08-20 13:37:29',0,NULL,0.00,NULL,NULL,'delivery',1,NULL,'2022-08-20','08:40',0.00,'{\"id\":5,\"address_type\":\"Workplace\",\"contact_person_number\":\"+51921554650\",\"address\":\"San Juan de lurigancho\",\"latitude\":\"-11.96892184550184\",\"longitude\":\"-77.00824558727285\",\"created_at\":\"2022-08-20T13:08:40.000000Z\",\"updated_at\":\"2022-08-20T13:08:40.000000Z\",\"user_id\":8,\"contact_person_name\":\"Anibal Cieza\"}',30);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `password_resets_email_index` (`email_or_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email_or_phone`, `token`, `created_at`, `phone`) VALUES ('anibalcieza@gmail.com','3441','2022-08-20 06:25:26',NULL);
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_verifications`
--

DROP TABLE IF EXISTS `phone_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_verifications`
--

LOCK TABLES `phone_verifications` WRITE;
/*!40000 ALTER TABLE `phone_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_transitions`
--

DROP TABLE IF EXISTS `point_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_transitions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_transitions`
--

LOCK TABLES `point_transitions` WRITE;
/*!40000 ALTER TABLE `point_transitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `point_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `variations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_ons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `set_menu` tinyint(1) NOT NULL DEFAULT 0,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `colors` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popularity_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `add_ons`, `tax`, `available_time_starts`, `available_time_ends`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `set_menu`, `branch_id`, `colors`, `popularity_count`) VALUES (15,'NAVO ENCURTIDO','Plato de comida','2022-08-20-6300c984ea41a.png',20.00,'[]','[\"5\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 05:52:33','2022-08-20 12:11:00','[]','[{\"id\":\"15\",\"position\":1},{\"id\":\"32\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(16,'MEDIA DOC WANTAN FRITO','Plato de comida','2022-08-20-6300c94e9a262.png',20.00,'[]','[\"4\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 05:56:05','2022-08-20 12:10:54','[]','[{\"id\":\"15\",\"position\":1},{\"id\":\"33\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(17,'DOC WANTAN FRITO','Plato de comida','2022-08-20-6300c8f419b89.png',25.00,'[]','[\"4\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 05:57:43','2022-08-20 12:10:46','[]','[{\"id\":\"15\",\"position\":1},{\"id\":\"34\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(18,'ENROLLADO DE PRIMAVERA','Plato de comida','2022-08-20-6300c8abf0f2c.png',30.00,'[]','[\"5\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 05:59:49','2022-08-20 12:10:38','[]','[{\"id\":\"15\",\"position\":1},{\"id\":\"35\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(19,'SIU KAO FRITO','Plato de comida','2022-08-20-6300cdb83139f.png',24.00,'[]','[\"9\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:01:00','2022-08-20 12:14:59','[]','[{\"id\":\"15\",\"position\":1},{\"id\":\"36\",\"position\":2}]','[]',0.00,'percent','percent',1,1,NULL,0),(20,'SIU MAI','Plato de comida','2022-08-20-6300cd7473868.png',23.00,'[]','[\"9\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:02:46','2022-08-20 12:15:10','[]','[{\"id\":\"15\",\"position\":1},{\"id\":\"37\",\"position\":2}]','[]',0.00,'percent','percent',1,1,NULL,0),(21,'CHANCHO ASADO','Plato de comida','2022-08-20-6300cd27adbba.png',40.00,'[]','[\"5\"]',0.00,'10:30:00','19:30:00',1,'2022-08-20 06:03:43','2022-08-20 12:15:36','[]','[{\"id\":\"16\",\"position\":1},{\"id\":\"38\",\"position\":2}]','[]',0.00,'percent','percent',1,1,NULL,0),(22,'PATO ASADO','Plato de comida','2022-08-20-6300cce11db82.png',35.00,'[]','[\"4\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:04:25','2022-08-20 12:15:43','[]','[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2}]','[]',0.00,'percent','percent',1,1,NULL,0),(23,'CHAUFA DE POLLO','Plato de comida','2022-08-20-6300cc761f910.png',25.00,'[]','[\"5\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:05:42','2022-08-20 13:37:29','[]','[{\"id\":\"17\",\"position\":1},{\"id\":\"40\",\"position\":2}]','[]',0.00,'percent','percent',1,1,NULL,1),(24,'CHAUFA SALVAJE','Plato de comida','2022-08-20-6300cc2cbb20a.png',34.00,'[]','[\"7\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:07:03','2022-08-20 12:09:29','[]','[{\"id\":\"17\",\"position\":1},{\"id\":\"41\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(25,'CHAUFA PRIMAVERA','Plato de comida','2022-08-20-6300cbbe3c16a.png',35.00,'[]','[\"5\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:08:07','2022-08-20 12:09:40','[]','[{\"id\":\"17\",\"position\":1},{\"id\":\"42\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(26,'CHAUFA DE CHANCHO','Plato de comida','2022-08-20-6300cb830302d.png',40.00,'[]','[\"4\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:09:12','2022-08-20 12:09:48','[]','[{\"id\":\"17\",\"position\":1},{\"id\":\"43\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(27,'CHAUFA HAWAIANO','Plato de comida','2022-08-20-6300cb395d9c6.png',34.00,'[]','[\"5\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:10:41','2022-08-20 12:09:56','[]','[{\"id\":\"17\",\"position\":1},{\"id\":\"44\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0),(28,'CHAUFA CUBANA','Plato de comida','2022-08-20-6300cadb1516b.png',35.00,'[]','[\"4\"]',0.00,'06:30:00','19:30:00',1,'2022-08-20 06:11:44','2022-08-20 12:10:04','[]','[{\"id\":\"17\",\"position\":1},{\"id\":\"45\",\"position\":2}]','[]',0.00,'percent','percent',0,1,NULL,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_medias`
--

DROP TABLE IF EXISTS `social_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_medias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_medias`
--

LOCK TABLES `social_medias` WRITE;
/*!40000 ALTER TABLE `social_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_credentials`
--

DROP TABLE IF EXISTS `soft_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_credentials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_credentials`
--

LOCK TABLES `soft_credentials` WRITE;
/*!40000 ALTER TABLE `soft_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_schedules`
--

DROP TABLE IF EXISTS `time_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_schedules`
--

LOCK TABLES `time_schedules` WRITE;
/*!40000 ALTER TABLE `time_schedules` DISABLE KEYS */;
INSERT INTO `time_schedules` (`id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES (1,1,'00:00:00','23:59:00',NULL,NULL),(2,2,'00:00:00','23:59:00',NULL,NULL),(3,3,'00:00:00','23:59:00',NULL,NULL),(4,4,'00:00:00','23:59:00',NULL,NULL),(5,5,'00:00:00','23:59:00',NULL,NULL),(6,6,'00:00:00','23:59:00',NULL,NULL),(7,0,'00:00:00','23:59:00',NULL,NULL);
/*!40000 ALTER TABLE `time_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_deliverymen`
--

DROP TABLE IF EXISTS `track_deliverymen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_deliverymen` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_deliverymen`
--

LOCK TABLES `track_deliverymen` WRITE;
/*!40000 ALTER TABLE `track_deliverymen` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_deliverymen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `translationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` decimal(8,2) NOT NULL DEFAULT 0.00,
  `temporary_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `point`, `temporary_token`) VALUES (8,'Anibal','Cieza','anibalcieza@gmail.com',NULL,0,NULL,'$2y$10$86k8XSOnlqPUKici.yj8P.VyXSwUsUyn47jKP4cuTeZW8kYohaKsG',NULL,'2022-08-20 13:04:32','2022-08-20 13:37:16',NULL,'+51921554650',NULL,0.00,'xsyZAKdroKrN1OXC0PWz5AJFQ4GCBEOpPK7bFrcX');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES (1,2,1,'2022-07-31 00:34:56','2022-07-31 00:34:56'),(2,3,2,'2022-08-05 17:10:53','2022-08-05 17:10:53'),(3,5,14,'2022-08-08 22:52:05','2022-08-08 22:52:05');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'srwong_base23er'
--

--
-- Dumping routines for database 'srwong_base23er'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-20 10:51:10
