
DROP TABLE IF EXISTS `qk7ce_joomgallery_users`;
CREATE TABLE `qk7ce_joomgallery_users` (
  `uid` int(11) NOT NULL,
  `uuserid` int(11) NOT NULL DEFAULT '0',
  `piclist` text,
  `layout` int(1) NOT NULL,
  `time` datetime NOT NULL,
  `zipname` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
