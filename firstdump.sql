-- MySQL dump 10.13  Distrib 9.0.1, for Linux (aarch64)
--
-- Host: localhost    Database: soluRH_test
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(150) NOT NULL,
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Gerencia'),(2,'RRHH');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
                                          `id` bigint NOT NULL AUTO_INCREMENT,
                                          `group_id` int NOT NULL,
                                          `permission_id` int NOT NULL,
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
                                          KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
                                          CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
                                          CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (28,1,57),(29,1,60),(5,2,29),(6,2,30),(7,2,31),(8,2,32),(9,2,33),(10,2,34),(11,2,35),(12,2,36),(13,2,37),(14,2,38),(15,2,39),(16,2,40),(17,2,41),(18,2,42),(19,2,43),(20,2,44),(21,2,53),(22,2,54),(23,2,55),(24,2,56);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
                                   `id` int NOT NULL AUTO_INCREMENT,
                                   `name` varchar(255) NOT NULL,
                                   `content_type_id` int NOT NULL,
                                   `codename` varchar(100) NOT NULL,
                                   PRIMARY KEY (`id`),
                                   UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
                                   CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add modelo_nomina',7,'add_modelo_nomina'),(26,'Can change modelo_nomina',7,'change_modelo_nomina'),(27,'Can delete modelo_nomina',7,'delete_modelo_nomina'),(28,'Can view modelo_nomina',7,'view_modelo_nomina'),(29,'Can add contrato_model',8,'add_contrato_model'),(30,'Can change contrato_model',8,'change_contrato_model'),(31,'Can delete contrato_model',8,'delete_contrato_model'),(32,'Can view contrato_model',8,'view_contrato_model'),(33,'Can add employee_model',9,'add_employee_model'),(34,'Can change employee_model',9,'change_employee_model'),(35,'Can delete employee_model',9,'delete_employee_model'),(36,'Can view employee_model',9,'view_employee_model'),(37,'Can add type incident model',10,'add_typeincidentmodel'),(38,'Can change type incident model',10,'change_typeincidentmodel'),(39,'Can delete type incident model',10,'delete_typeincidentmodel'),(40,'Can view type incident model',10,'view_typeincidentmodel'),(41,'Can add incident model',11,'add_incidentmodel'),(42,'Can change incident model',11,'change_incidentmodel'),(43,'Can delete incident model',11,'delete_incidentmodel'),(44,'Can view incident model',11,'view_incidentmodel'),(45,'Can add sucursal_model',12,'add_sucursal_model'),(46,'Can change sucursal_model',12,'change_sucursal_model'),(47,'Can delete sucursal_model',12,'delete_sucursal_model'),(48,'Can view sucursal_model',12,'view_sucursal_model'),(49,'Can add empresa_model',13,'add_empresa_model'),(50,'Can change empresa_model',13,'change_empresa_model'),(51,'Can delete empresa_model',13,'delete_empresa_model'),(52,'Can view empresa_model',13,'view_empresa_model'),(53,'Can add position model',14,'add_positionmodel'),(54,'Can change position model',14,'change_positionmodel'),(55,'Can delete position model',14,'delete_positionmodel'),(56,'Can view position model',14,'view_positionmodel'),(57,'Can add Registrar_Incidencia',15,'add_incidencias_proxy'),(58,'Can change Registrar_Incidencia',15,'change_incidencias_proxy'),(59,'Can delete Registrar_Incidencia',15,'delete_incidencias_proxy'),(60,'Can view Registrar_Incidencia',15,'view_incidencias_proxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `password` varchar(128) NOT NULL,
                             `last_login` datetime(6) DEFAULT NULL,
                             `is_superuser` tinyint(1) NOT NULL,
                             `username` varchar(150) NOT NULL,
                             `first_name` varchar(150) NOT NULL,
                             `last_name` varchar(150) NOT NULL,
                             `email` varchar(254) NOT NULL,
                             `is_staff` tinyint(1) NOT NULL,
                             `is_active` tinyint(1) NOT NULL,
                             `date_joined` datetime(6) NOT NULL,
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$bIeAfO7Z8rhqt4gcBOv34q$IL9aedGbMLktSn8Y/zApvV5hKI0WG+WrSeeCAUNH5uw=','2024-09-02 16:56:58.086984',1,'lmsuarez','Luis Mario','Cervantes Suárez','lmcsuarez.sistemas@gmail.com',1,1,'2024-09-02 15:14:46.000000'),(2,'pbkdf2_sha256$870000$sl3QK83FLDxn9IGc3oyD5d$FUu+ZYlboA5xqt1c6w0fS+y6H7vsNHd4IsCURoGZgWs=','2024-09-02 16:50:02.232438',0,'test-gerencia','Test','Gerencia','',1,1,'2024-09-02 15:36:21.000000'),(3,'pbkdf2_sha256$870000$Hi15JPrBrdxvWM16pwUNDh$2rOFFfsviRZEoUSjm4NpJvvOQqj/C/kB+bywL1H7We8=','2024-09-02 15:47:38.939063',0,'test-rrhh','Test','RRHH','',1,1,'2024-09-02 15:36:33.000000'),(4,'pbkdf2_sha256$870000$yNAhs6G2FYj4tHrjSXW4IT$sHCyZITN9rCXjoZn7IITD5zwsriemMEUU/zvkrBZ0Zk=','2024-09-02 16:37:10.427510',0,'celenerh','Celene','Cortés Montano','recursoshumanosflorcatorce@gmail.com',1,1,'2024-09-02 16:32:55.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
                                    `id` bigint NOT NULL AUTO_INCREMENT,
                                    `user_id` int NOT NULL,
                                    `group_id` int NOT NULL,
                                    PRIMARY KEY (`id`),
                                    UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
                                    KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
                                    CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
                                    CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,1,2),(3,2,1),(5,3,1),(4,3,2),(7,4,1),(6,4,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
                                              `id` bigint NOT NULL AUTO_INCREMENT,
                                              `user_id` int NOT NULL,
                                              `permission_id` int NOT NULL,
                                              PRIMARY KEY (`id`),
                                              UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
                                              KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
                                              CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
                                              CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_empresa_model`
--

DROP TABLE IF EXISTS `branch_empresa_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_empresa_model` (
                                        `id` bigint NOT NULL AUTO_INCREMENT,
                                        `nombre` varchar(100) NOT NULL,
                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_empresa_model`
--

LOCK TABLES `branch_empresa_model` WRITE;
/*!40000 ALTER TABLE `branch_empresa_model` DISABLE KEYS */;
INSERT INTO `branch_empresa_model` VALUES (1,'Flor Catorce');
/*!40000 ALTER TABLE `branch_empresa_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_sucursal_model`
--

DROP TABLE IF EXISTS `company_sucursal_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_sucursal_model` (
                                          `id` bigint NOT NULL AUTO_INCREMENT,
                                          `nombre` varchar(100) NOT NULL,
                                          `direccion` varchar(100) DEFAULT NULL,
                                          `empresa_id` bigint NOT NULL,
                                          PRIMARY KEY (`id`),
                                          KEY `company_companymodel_empresa_id_37edd486_fk_branch_em` (`empresa_id`),
                                          CONSTRAINT `company_companymodel_empresa_id_37edd486_fk_branch_em` FOREIGN KEY (`empresa_id`) REFERENCES `branch_empresa_model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_sucursal_model`
--

LOCK TABLES `company_sucursal_model` WRITE;
/*!40000 ALTER TABLE `company_sucursal_model` DISABLE KEYS */;
INSERT INTO `company_sucursal_model` VALUES (1,'CEDIS',NULL,1),(2,'Araucarias',NULL,1),(3,'Centro',NULL,1);
/*!40000 ALTER TABLE `company_sucursal_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_contrato_model`
--

DROP TABLE IF EXISTS `contract_contrato_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract_contrato_model` (
                                           `id` bigint NOT NULL AUTO_INCREMENT,
                                           `fechaInicio` date NOT NULL,
                                           `fechaFin` date NOT NULL,
                                           `salarioDiario` decimal(10,2) NOT NULL,
                                           `tipoContrato` varchar(100) NOT NULL,
                                           `empleado_id` bigint NOT NULL,
                                           PRIMARY KEY (`id`),
                                           KEY `contract_contractmod_empleado_id_5f1a9901_fk_employee_` (`empleado_id`),
                                           CONSTRAINT `contract_contractmod_empleado_id_5f1a9901_fk_employee_` FOREIGN KEY (`empleado_id`) REFERENCES `employee_employee_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_contrato_model`
--

LOCK TABLES `contract_contrato_model` WRITE;
/*!40000 ALTER TABLE `contract_contrato_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_contrato_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
                                    `id` int NOT NULL AUTO_INCREMENT,
                                    `action_time` datetime(6) NOT NULL,
                                    `object_id` longtext,
                                    `object_repr` varchar(200) NOT NULL,
                                    `action_flag` smallint unsigned NOT NULL,
                                    `change_message` longtext NOT NULL,
                                    `content_type_id` int DEFAULT NULL,
                                    `user_id` int NOT NULL,
                                    PRIMARY KEY (`id`),
                                    KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
                                    KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
                                    CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
                                    CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
                                    CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-09-02 15:15:51.513044','1','lmsuarez',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(2,'2024-09-02 15:15:59.352613','1','Gerencia',1,'[{\"added\": {}}]',3,1),(3,'2024-09-02 15:16:03.467005','2','RRHH',1,'[{\"added\": {}}]',3,1),(4,'2024-09-02 15:16:13.091957','1','lmsuarez',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(5,'2024-09-02 15:17:32.192207','1','Administrador de sistemas',1,'[{\"added\": {}}]',14,1),(6,'2024-09-02 15:17:38.153508','2','Lavaloza',1,'[{\"added\": {}}]',14,1),(7,'2024-09-02 15:17:48.143157','3','Cajero/a',1,'[{\"added\": {}}]',14,1),(8,'2024-09-02 15:17:52.699957','4','Mesero/a',1,'[{\"added\": {}}]',14,1),(9,'2024-09-02 15:19:00.876166','1','Flor Catorce',1,'[{\"added\": {}}]',13,1),(10,'2024-09-02 15:19:51.564506','1','CEDIS',1,'[{\"added\": {}}]',12,1),(11,'2024-09-02 15:20:04.597993','2','Araucarias',1,'[{\"added\": {}}]',12,1),(12,'2024-09-02 15:20:10.386973','3','Centro',1,'[{\"added\": {}}]',12,1),(13,'2024-09-02 15:27:15.749227','5','Aux. Almacen',1,'[{\"added\": {}}]',14,1),(14,'2024-09-02 15:27:53.201290','6','Jefe/a de cocina',1,'[{\"added\": {}}]',14,1),(15,'2024-09-02 15:28:11.863480','7','Chofer',1,'[{\"added\": {}}]',14,1),(16,'2024-09-02 15:28:44.823407','8','Gerente de turno',1,'[{\"added\": {}}]',14,1),(17,'2024-09-02 15:28:53.720587','9','Aux. Contable',1,'[{\"added\": {}}]',14,1),(18,'2024-09-02 15:29:02.224881','10','Chef',1,'[{\"added\": {}}]',14,1),(19,'2024-09-02 15:29:19.340730','11','Almacenista',1,'[{\"added\": {}}]',14,1),(20,'2024-09-02 15:30:27.694005','1','Luis Mario Suárez Cervantes',1,'[{\"added\": {}}]',9,1),(21,'2024-09-02 15:31:00.561988','1','Luis Mario Cervantes Suárez',2,'[{\"changed\": {\"fields\": [\"Apellido materno\", \"Apellido paterno\"]}}]',9,1),(22,'2024-09-02 15:34:12.700679','2','RRHH',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(23,'2024-09-02 15:36:02.870679','1','Gerencia',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(24,'2024-09-02 15:36:21.366265','2','test-gerencia',1,'[{\"added\": {}}]',4,1),(25,'2024-09-02 15:36:33.572044','3','test-rrhh',1,'[{\"added\": {}}]',4,1),(26,'2024-09-02 15:37:16.386139','2','test-gerencia',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"Groups\"]}}]',4,1),(27,'2024-09-02 15:37:32.135787','3','test-rrhh',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"Groups\"]}}]',4,1),(28,'2024-09-02 15:42:35.462532','1','Incidencia prueba',1,'[{\"added\": {}}]',10,3),(29,'2024-09-02 15:42:46.012119','1','Luis Mario Cervantes Suárez Incidencia prueba',1,'[{\"added\": {}}]',11,3),(30,'2024-09-02 15:45:11.079012','1','Luis Mario Cervantes Suárez Incidencia prueba',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',11,3),(31,'2024-09-02 15:45:14.643717','1','Luis Mario Cervantes Suárez Incidencia prueba',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',11,3),(32,'2024-09-02 15:47:25.687903','3','test-rrhh',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(33,'2024-09-02 15:48:45.587550','2','RRHH',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(34,'2024-09-02 15:50:02.134945','1','Gerencia',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(35,'2024-09-02 16:29:02.370310','1','Gerencia',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(36,'2024-09-02 16:32:55.956515','4','celenerh',1,'[{\"added\": {}}]',4,1),(37,'2024-09-02 16:35:54.941065','4','celenerh',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\"]}}]',4,1),(38,'2024-09-02 16:37:09.196656','4','celenerh',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(39,'2024-09-02 16:40:53.264212','2','Luis Mario Cervantes Suárez Incidencia prueba',1,'[{\"added\": {}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `app_label` varchar(100) NOT NULL,
                                       `model` varchar(100) NOT NULL,
                                       PRIMARY KEY (`id`),
                                       UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'branch','empresa_model'),(12,'company','sucursal_model'),(5,'contenttypes','contenttype'),(8,'contract','contrato_model'),(9,'employee','employee_model'),(15,'incident','incidencias_proxy'),(11,'incident','incidentmodel'),(10,'incident','typeincidentmodel'),(7,'payroll','modelo_nomina'),(14,'positon','positionmodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
                                     `id` bigint NOT NULL AUTO_INCREMENT,
                                     `app` varchar(255) NOT NULL,
                                     `name` varchar(255) NOT NULL,
                                     `applied` datetime(6) NOT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-02 06:42:47.614261'),(2,'auth','0001_initial','2024-09-02 06:42:47.850065'),(3,'admin','0001_initial','2024-09-02 06:42:47.898777'),(4,'admin','0002_logentry_remove_auto_add','2024-09-02 06:42:47.902419'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-02 06:42:47.905096'),(6,'contenttypes','0002_remove_content_type_name','2024-09-02 06:42:47.929348'),(7,'auth','0002_alter_permission_name_max_length','2024-09-02 06:42:47.947623'),(8,'auth','0003_alter_user_email_max_length','2024-09-02 06:42:47.956863'),(9,'auth','0004_alter_user_username_opts','2024-09-02 06:42:47.959759'),(10,'auth','0005_alter_user_last_login_null','2024-09-02 06:42:47.975924'),(11,'auth','0006_require_contenttypes_0002','2024-09-02 06:42:47.978471'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-02 06:42:47.983337'),(13,'auth','0008_alter_user_username_max_length','2024-09-02 06:42:48.006881'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-02 06:42:48.026533'),(15,'auth','0010_alter_group_name_max_length','2024-09-02 06:42:48.033345'),(16,'auth','0011_update_proxy_permissions','2024-09-02 06:42:48.036662'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-02 06:42:48.056681'),(18,'branch','0001_initial','2024-09-02 06:42:48.064033'),(19,'company','0001_initial','2024-09-02 06:42:48.089251'),(20,'branch','0002_rename_branchmodel_empresa_model','2024-09-02 06:42:48.132689'),(21,'positon','0001_initial','2024-09-02 06:42:48.141088'),(22,'employee','0001_initial','2024-09-02 06:42:48.198051'),(23,'employee','0002_alter_employemodel_estadocivil_and_more','2024-09-02 06:42:48.201223'),(24,'incident','0001_initial','2024-09-02 06:42:48.246383'),(25,'employee','0003_remove_employemodel_calle_remove_employemodel_ciudad_and_more','2024-09-02 06:42:48.405846'),(26,'employee','0004_employee_model','2024-09-02 06:42:48.415664'),(27,'incident','0002_alter_incidentmodel_employee','2024-09-02 06:42:48.448900'),(28,'contract','0001_initial','2024-09-02 06:42:48.492055'),(29,'contract','0002_remove_contractmodel_puesto','2024-09-02 06:42:48.513721'),(30,'contract','0003_alter_contractmodel_empleado','2024-09-02 06:42:48.541090'),(31,'employee','0005_delete_employemodel_employee_model_puesto_and_more','2024-09-02 06:42:48.600889'),(32,'company','0002_rename_companymodel_sucursal_model','2024-09-02 06:42:48.665872'),(33,'contract','0004_rename_contractmodel_contrato_model','2024-09-02 06:42:48.681378'),(34,'dashboard','0001_initial','2024-09-02 06:42:48.725732'),(35,'dashboard','0002_work_to_module','2024-09-02 06:42:48.762204'),(36,'dashboard','0003_remove_workstations_module','2024-09-02 06:42:48.788730'),(37,'dashboard','0004_remove_users_workstation_and_more','2024-09-02 06:42:48.868110'),(38,'employee','0006_alter_employee_model_calle_and_more','2024-09-02 06:42:48.883286'),(39,'employee','0007_alter_employee_model_segundo_nombre','2024-09-02 06:42:48.904849'),(40,'employee','0008_alter_employee_model_nacionalidad_and_more','2024-09-02 06:42:48.944299'),(41,'payroll','0001_initial','2024-09-02 06:42:48.968197'),(42,'sessions','0001_initial','2024-09-02 06:42:48.981484'),(43,'company','0003_alter_sucursal_model_direccion','2024-09-02 15:19:43.639982'),(44,'incident','0003_alter_typeincidentmodel_description','2024-09-02 15:42:26.445609'),(45,'incident','0004_incidencias_proxy','2024-09-02 16:27:44.290405');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
                                  `session_key` varchar(40) NOT NULL,
                                  `session_data` longtext NOT NULL,
                                  `expire_date` datetime(6) NOT NULL,
                                  PRIMARY KEY (`session_key`),
                                  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('q42wo1by5qi7xzgfgw4lq7xar1p7nuk4','.eJxVjDsOwjAQBe_iGln-7K4jSnrOYNnrBQeQI8VJFXF3iJQC2jczb1MxrUuNa5c5jkWdFajT75YTP6XtoDxSu0-ap7bMY9a7og_a9XUq8roc7t9BTb1-a0GCYD1KwJsNNBCBJFPYBADGzCYDeWIP4sj64iyZIaHJgRDYeqfeH7n2NnY:1slA3C:u_-RHnWJNiaiN5jW2y2TX3333_EwSu3kDsxrLfe2_ms','2024-09-16 16:37:10.430328'),('s9x4cyllzva38kdingnp7p69qch8v119','.eJxVjEEOwiAQRe_C2hCgA4Mu3fcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIitDj9bkzxkesO0p3qrcnY6rrMLHdFHrTLsaX8vB7u30GhXr41xwgWDYFllcCB9UR-QDbIfjLAwFrzkCM6TQkzT0mhccpxNkYP9izeH-Y0N7s:1slAMM:wi-xcMRvqwbaC12hITy6kPJZ_DQU6aMOU0PBV6jmLvw','2024-09-16 16:56:58.091241');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_employee_model`
--

DROP TABLE IF EXISTS `employee_employee_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_employee_model` (
                                           `id` bigint NOT NULL AUTO_INCREMENT,
                                           `primer_nombre` varchar(100) NOT NULL,
                                           `segundo_nombre` varchar(100) DEFAULT NULL,
                                           `apellido_materno` varchar(100) NOT NULL,
                                           `apellido_paterno` varchar(100) NOT NULL,
                                           `fecha_nacimiento` date NOT NULL,
                                           `genero` varchar(100) NOT NULL,
                                           `nacionalidad` varchar(100) DEFAULT NULL,
                                           `estado_civil` varchar(100) NOT NULL,
                                           `calle` varchar(100) NOT NULL,
                                           `colonia` varchar(100) NOT NULL,
                                           `numero` varchar(100) NOT NULL,
                                           `cp` varchar(100) NOT NULL,
                                           `ciudad` varchar(100) NOT NULL,
                                           `estado` varchar(100) NOT NULL,
                                           `pais` varchar(100) DEFAULT NULL,
                                           `puesto_id` bigint NOT NULL,
                                           `sucursal_id` bigint NOT NULL,
                                           PRIMARY KEY (`id`),
                                           KEY `employee_employee_mo_puesto_id_90cf2d9d_fk_positon_p` (`puesto_id`),
                                           KEY `employee_employee_mo_sucursal_id_b84245a5_fk_company_s` (`sucursal_id`),
                                           CONSTRAINT `employee_employee_mo_puesto_id_90cf2d9d_fk_positon_p` FOREIGN KEY (`puesto_id`) REFERENCES `positon_positionmodel` (`id`),
                                           CONSTRAINT `employee_employee_mo_sucursal_id_b84245a5_fk_company_s` FOREIGN KEY (`sucursal_id`) REFERENCES `company_sucursal_model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_employee_model`
--

LOCK TABLES `employee_employee_model` WRITE;
/*!40000 ALTER TABLE `employee_employee_model` DISABLE KEYS */;
INSERT INTO `employee_employee_model` VALUES (1,'Luis','Mario','Suárez','Cervantes','2003-03-31','Masculino','Mexicana','Soltero','Francisco Orozco','Revolución','20','91100','Xalapa','Veracruz','México',1,1);
/*!40000 ALTER TABLE `employee_employee_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_incidentmodel`
--

DROP TABLE IF EXISTS `incident_incidentmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident_incidentmodel` (
                                          `id` bigint NOT NULL AUTO_INCREMENT,
                                          `fecha` date NOT NULL,
                                          `estado` tinyint(1) NOT NULL,
                                          `employee_id` bigint NOT NULL,
                                          `tipo_id` bigint NOT NULL,
                                          PRIMARY KEY (`id`),
                                          KEY `incident_incidentmod_tipo_id_d81b13fa_fk_incident_` (`tipo_id`),
                                          KEY `incident_incidentmod_employee_id_73f1c97a_fk_employee_` (`employee_id`),
                                          CONSTRAINT `incident_incidentmod_employee_id_73f1c97a_fk_employee_` FOREIGN KEY (`employee_id`) REFERENCES `employee_employee_model` (`id`),
                                          CONSTRAINT `incident_incidentmod_tipo_id_d81b13fa_fk_incident_` FOREIGN KEY (`tipo_id`) REFERENCES `incident_typeincidentmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_incidentmodel`
--

LOCK TABLES `incident_incidentmodel` WRITE;
/*!40000 ALTER TABLE `incident_incidentmodel` DISABLE KEYS */;
INSERT INTO `incident_incidentmodel` VALUES (1,'2024-09-13',0,1,1),(2,'2024-08-15',0,1,1);
/*!40000 ALTER TABLE `incident_incidentmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_typeincidentmodel`
--

DROP TABLE IF EXISTS `incident_typeincidentmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident_typeincidentmodel` (
                                              `id` bigint NOT NULL AUTO_INCREMENT,
                                              `name` varchar(100) NOT NULL,
                                              `description` varchar(200) DEFAULT NULL,
                                              `deduccion` tinyint(1) NOT NULL,
                                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_typeincidentmodel`
--

LOCK TABLES `incident_typeincidentmodel` WRITE;
/*!40000 ALTER TABLE `incident_typeincidentmodel` DISABLE KEYS */;
INSERT INTO `incident_typeincidentmodel` VALUES (1,'Incidencia prueba',NULL,1);
/*!40000 ALTER TABLE `incident_typeincidentmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_modelo_nomina`
--

DROP TABLE IF EXISTS `payroll_modelo_nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_modelo_nomina` (
                                         `id` bigint NOT NULL AUTO_INCREMENT,
                                         `fecha_pago` date NOT NULL,
                                         `ajuste_incidencias_deduccion` decimal(10,2) NOT NULL,
                                         `ajuste_incidencias_aumento` decimal(10,2) NOT NULL,
                                         `salario_subtotal` decimal(10,2) NOT NULL,
                                         `salario_total` decimal(10,2) NOT NULL,
                                         `empleado_id` bigint NOT NULL,
                                         PRIMARY KEY (`id`),
                                         KEY `payroll_modelo_nomin_empleado_id_6d88789d_fk_employee_` (`empleado_id`),
                                         CONSTRAINT `payroll_modelo_nomin_empleado_id_6d88789d_fk_employee_` FOREIGN KEY (`empleado_id`) REFERENCES `employee_employee_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_modelo_nomina`
--

LOCK TABLES `payroll_modelo_nomina` WRITE;
/*!40000 ALTER TABLE `payroll_modelo_nomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_modelo_nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positon_positionmodel`
--

DROP TABLE IF EXISTS `positon_positionmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positon_positionmodel` (
                                         `id` bigint NOT NULL AUTO_INCREMENT,
                                         `nombre` varchar(100) NOT NULL,
                                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positon_positionmodel`
--

LOCK TABLES `positon_positionmodel` WRITE;
/*!40000 ALTER TABLE `positon_positionmodel` DISABLE KEYS */;
INSERT INTO `positon_positionmodel` VALUES (1,'Administrador de sistemas'),(2,'Lavaloza'),(3,'Cajero/a'),(4,'Mesero/a'),(5,'Aux. Almacen'),(6,'Jefe/a de cocina'),(7,'Chofer'),(8,'Gerente de turno'),(9,'Aux. Contable'),(10,'Chef'),(11,'Almacenista');
/*!40000 ALTER TABLE `positon_positionmodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 18:31:13