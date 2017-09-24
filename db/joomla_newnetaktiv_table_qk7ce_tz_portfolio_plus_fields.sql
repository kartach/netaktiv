
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_fields`;
CREATE TABLE `qk7ce_tz_portfolio_plus_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `default_value` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `advanced_search` tinyint(4) NOT NULL DEFAULT '0',
  `list_view` tinyint(4) NOT NULL DEFAULT '0',
  `detail_view` tinyint(4) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `description` text NOT NULL,
  `access` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
