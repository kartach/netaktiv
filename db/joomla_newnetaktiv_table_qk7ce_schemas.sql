
DROP TABLE IF EXISTS `qk7ce_schemas`;
CREATE TABLE `qk7ce_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qk7ce_schemas` VALUES(700, '3.7.4-2017-07-05');
INSERT INTO `qk7ce_schemas` VALUES(10032, '3.3.0');
INSERT INTO `qk7ce_schemas` VALUES(10072, 'install.mysql.utf8');
INSERT INTO `qk7ce_schemas` VALUES(10148, '1.0.2');
