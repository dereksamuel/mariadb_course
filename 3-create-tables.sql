-- Creating tables

USE metro_dk;

-- UNSIGNED es todos numbers will be positives

CREATE TABLE `trains` (
  `serial_number` BIGINT(20) NOT NULL,

  `hash` VARCHAR(10) NOT NULL,
  `year` BIGINT(4) NOT NULL,
  `passengers_capacity` INT NOT NULL,

  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY(serial_number),
  CONSTRAINT `trains_line_id_foreign`,
  FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
)

DEFAULT CHARSET=utf8mb4;
-- utf8mb4 es para poner caracteres como emojis or x
COLLATE=utf8mb4_unicode_ci;
-- como comparar el caracter que le pasamos con el que el tiene

CREATE TABLE `lines` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENTAL,

  `name` VARCHAR(8) NOT NULL,
  `color` VARCHAR(10) NOT NULL,

  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY(id)
)

DEFAULT CHARSET=utf8mb4;
-- utf8mb4 es para poner caracteres como emojis or x
COLLATE=utf8mb4_unicode_ci;
-- como comparar el caracter que le pasamos con el que el tiene

CREATE TABLE `stations` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENTAL,

  `name` VARCHAR(8) NOT NULL,
  `location` POINT BIGINT(50) UNSIGNED NOT NULL,

  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY(id)
)

DEFAULT CHARSET=utf8mb4;
-- utf8mb4 es para poner caracteres como emojis or x
COLLATE=utf8mb4_unicode_ci;
-- como comparar el caracter que le pasamos con el que el tiene
