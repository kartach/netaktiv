
DROP TABLE IF EXISTS `qk7ce_finder_types`;
CREATE TABLE `qk7ce_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `qk7ce_finder_types` VALUES(1, 'Tag', '');
INSERT INTO `qk7ce_finder_types` VALUES(2, 'Category', '');
INSERT INTO `qk7ce_finder_types` VALUES(3, 'Contact', '');
INSERT INTO `qk7ce_finder_types` VALUES(4, 'Article', '');
INSERT INTO `qk7ce_finder_types` VALUES(5, 'News Feed', '');
