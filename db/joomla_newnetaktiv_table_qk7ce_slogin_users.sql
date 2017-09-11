
DROP TABLE IF EXISTS `qk7ce_slogin_users`;
CREATE TABLE `qk7ce_slogin_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
