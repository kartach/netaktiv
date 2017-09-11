
DROP TABLE IF EXISTS `qk7ce_komento_uploads`;
CREATE TABLE `qk7ce_komento_uploads` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `filename` text NOT NULL,
  `hashname` text NOT NULL,
  `path` text,
  `created` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT '0',
  `published` tinyint(1) NOT NULL,
  `mime` text NOT NULL,
  `size` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
