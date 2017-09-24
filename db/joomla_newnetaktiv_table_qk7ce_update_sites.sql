
DROP TABLE IF EXISTS `qk7ce_update_sites`;
CREATE TABLE `qk7ce_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

INSERT INTO `qk7ce_update_sites` VALUES(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(5, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap3/extension.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(7, 'JoomGallery Update Service', 'collection', 'http://www.en.joomgallery.net/components/com_newversion/xml/extensions3.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(9, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(10, 'Kunena 5.0 Update Site', 'collection', 'https://update.kunena.org/5.0/list.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(11, 'Joomline', 'extension', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(12, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(13, 'Regular Labs - Cache Cleaner', 'extension', 'https://download.regularlabs.com/updates.xml?e=cachecleaner&type=.xml', 1, 0, '');
INSERT INTO `qk7ce_update_sites` VALUES(14, 'TZ Portfolio Plus Updates', 'extension', 'http://tzportfolio.com/tzupdates/tz_portfolio_plus_update.xml', 1, 0, '');
