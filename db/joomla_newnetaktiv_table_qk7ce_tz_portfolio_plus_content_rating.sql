
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_content_rating`;
CREATE TABLE `qk7ce_tz_portfolio_plus_content_rating` (
  `content_id` int(11) NOT NULL,
  `lastip` varchar(50) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
