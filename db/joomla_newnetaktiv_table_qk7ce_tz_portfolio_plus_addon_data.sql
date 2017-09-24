
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_addon_data`;
CREATE TABLE `qk7ce_tz_portfolio_plus_addon_data` (
  `id` int(11) NOT NULL,
  `extension_id` int(11) NOT NULL,
  `element` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `content_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
