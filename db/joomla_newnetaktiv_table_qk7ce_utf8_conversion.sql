
DROP TABLE IF EXISTS `qk7ce_utf8_conversion`;
CREATE TABLE `qk7ce_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qk7ce_utf8_conversion` VALUES(2);
