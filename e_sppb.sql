-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.34 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla laravel.adults
CREATE TABLE IF NOT EXISTS `adults` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `institution_id` bigint unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar_residencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentesco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_acudiente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_acudiente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_acudiente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular_acudiente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adults_documento_identificacion_foreign` (`documento_identificacion`),
  KEY `adults_institution_id_foreign` (`institution_id`),
  CONSTRAINT `adults_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`),
  CONSTRAINT `adults_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.anthropometries
CREATE TABLE IF NOT EXISTS `anthropometries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `altura` double(8,2) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `imc` double(8,2) NOT NULL,
  `perimetro_cintura` double(8,2) NOT NULL,
  `sistolica` double(8,2) NOT NULL,
  `distolica` double(8,2) NOT NULL,
  `brazo_dominante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consume_cigarrillo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alcohol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menos_cinco_copas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cinco_mas_copas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diez_mas_copas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caminar_muy_lento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caminar_lento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caminar_moderado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caminar_rapido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comer` int NOT NULL,
  `lavarse` int NOT NULL,
  `vestirse` int NOT NULL,
  `arreglarse` int NOT NULL,
  `deposicion` int NOT NULL,
  `miccion` int NOT NULL,
  `uso_retrete` int NOT NULL,
  `trasladarse` int NOT NULL,
  `deambulacion` int NOT NULL,
  `escaleras` int NOT NULL,
  `barthel` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anthropometries_documento_identificacion_foreign` (`documento_identificacion`),
  CONSTRAINT `anthropometries_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.chronics
CREATE TABLE IF NOT EXISTS `chronics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `condicion_salud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perdida_peso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presion_sanguinea` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `azucar_sangre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tumor_maligno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problemas_corazon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trombosis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artritis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `osteoporosis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sustencias_no_recetadas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_sustencia_no_recetada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recetas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_receta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chronics_documento_identificacion_foreign` (`documento_identificacion`),
  CONSTRAINT `chronics_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.consents
CREATE TABLE IF NOT EXISTS `consents` (
  `documento_identificacion` int NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `nombre_participante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_telefono_participante` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_persona_consentimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_telefono_consentimiento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_consentimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`documento_identificacion`),
  KEY `consents_user_id_foreign` (`user_id`),
  CONSTRAINT `consents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.demographics
CREATE TABLE IF NOT EXISTS `demographics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacion_principal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacion_actual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `afiliacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cohabitantes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_educacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependencia_familiar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingresos_actuales` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad_ingresos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estrato_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `demographics_documento_identificacion_foreign` (`documento_identificacion`),
  CONSTRAINT `demographics_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.e_sppb
CREATE TABLE IF NOT EXISTS `e_sppb` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `equilibrio` tinyint NOT NULL,
  `numero_segundos_equilibrio` decimal(5,1) DEFAULT NULL,
  `razon_no_cumple_equilibrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semitandem` tinyint NOT NULL,
  `numero_segundos_semitandem` decimal(5,1) DEFAULT NULL,
  `razon_no_cumple_semitandem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tandem` tinyint NOT NULL,
  `numero_segundos_tandem` decimal(5,1) DEFAULT NULL,
  `razon_no_cumple_tandem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prueba_uno_tiempo_tres_metros` decimal(5,1) NOT NULL,
  `prueba_uno_razon_no_cumple_tres_metros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ayuda_prueba_uno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prueba_dos_tiempo_tres_metros` decimal(5,1) NOT NULL,
  `prueba_dos_razon_no_cumple_tres_metros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ayuda_prueba_dos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menor_tiempo` decimal(5,1) NOT NULL,
  `seguro_silla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resultado_silla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntaje_prueba_equilibrio` int DEFAULT NULL,
  `puntaje_final_marcha` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_sppb_documento_identificacion_foreign` (`documento_identificacion`),
  CONSTRAINT `e_sppb_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.institutes
CREATE TABLE IF NOT EXISTS `institutes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.life_spaces
CREATE TABLE IF NOT EXISTS `life_spaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `anden_irregular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parques` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areas_caminar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitios_descanso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transporte_publico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transporte_publico_discapacidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parqueaderos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tension_grupos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basura_calles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presencia_drogas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presencia_alcohol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presencia_pandillas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baja_iluminacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hay_telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hay_dvd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hay_tv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hay_pc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hay_ventilador` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freq_otros_lugares` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indep_otros_lugares` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freq_fuera_casa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indep_fuera_casa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vecindario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freq_vecindario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indep_vecindario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuera_vecindario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freq_fuera_vecindario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indep_fuera_vecindario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `life_spaces_documento_identificacion_foreign` (`documento_identificacion`),
  CONSTRAINT `life_spaces_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etiqueta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.tests
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documento_identificacion` int NOT NULL,
  `fecha_hoy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_semana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_mama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_documento_identificacion_foreign` (`documento_identificacion`),
  CONSTRAINT `tests_documento_identificacion_foreign` FOREIGN KEY (`documento_identificacion`) REFERENCES `consents` (`documento_identificacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
