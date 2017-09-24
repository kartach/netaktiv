
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_field_content_map`;
CREATE TABLE `qk7ce_tz_portfolio_plus_field_content_map` (
  `id` int(11) NOT NULL,
  `contentid` int(11) NOT NULL,
  `fieldsid` int(11) NOT NULL,
  `value` text NOT NULL,
  `images` text NOT NULL,
  `imagetitle` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
