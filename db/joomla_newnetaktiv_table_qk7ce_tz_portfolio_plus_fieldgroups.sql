
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_fieldgroups`;
CREATE TABLE `qk7ce_tz_portfolio_plus_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `field_ordering_type` tinyint(4) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
