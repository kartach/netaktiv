
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_tags`;
CREATE TABLE `qk7ce_tz_portfolio_plus_tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
