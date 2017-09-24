
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_content_category_map`;
CREATE TABLE `qk7ce_tz_portfolio_plus_content_category_map` (
  `id` int(11) NOT NULL,
  `contentid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `main` tinyint(4) NOT NULL COMMENT 'Main Category'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
