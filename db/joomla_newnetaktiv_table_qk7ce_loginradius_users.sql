
DROP TABLE IF EXISTS `qk7ce_loginradius_users`;
CREATE TABLE `qk7ce_loginradius_users` (
  `id` int(11) DEFAULT NULL,
  `loginradius_id` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `lr_picture` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
