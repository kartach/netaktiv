
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_field_fieldgroup_map`;
CREATE TABLE `qk7ce_tz_portfolio_plus_field_fieldgroup_map` (
  `id` int(11) NOT NULL,
  `fieldsid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
