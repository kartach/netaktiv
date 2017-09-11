
DROP TABLE IF EXISTS `qk7ce_menu_types`;
CREATE TABLE `qk7ce_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qk7ce_menu_types` VALUES(2, 0, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.');
INSERT INTO `qk7ce_menu_types` VALUES(3, 0, 'system-menu', 'System Menu', '');
INSERT INTO `qk7ce_menu_types` VALUES(5, 0, 'social-media', 'Social Media', '');
INSERT INTO `qk7ce_menu_types` VALUES(12, 0, 'main-menu', 'Main menu', '');
INSERT INTO `qk7ce_menu_types` VALUES(13, 0, 'what-we-offer', 'What we offer', '');
INSERT INTO `qk7ce_menu_types` VALUES(14, 0, 'requirements', 'Requirements', '');
INSERT INTO `qk7ce_menu_types` VALUES(15, 0, 'what-we-expect-from-you', 'What we Expect from you?', '');
INSERT INTO `qk7ce_menu_types` VALUES(17, 0, 'what-we-do', 'What we do', '');
INSERT INTO `qk7ce_menu_types` VALUES(18, 700, 'strategic-services', 'Strategic Services', '');
INSERT INTO `qk7ce_menu_types` VALUES(19, 701, 'creative-services', 'Creative Services', '');
INSERT INTO `qk7ce_menu_types` VALUES(20, 702, 'marketing-services', 'Marketing Services', '');
