
DROP TABLE IF EXISTS `qk7ce_joomgallery_votes`;
CREATE TABLE `qk7ce_joomgallery_votes` (
  `voteid` int(11) NOT NULL,
  `picid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userip` varchar(15) NOT NULL DEFAULT '0',
  `datevoted` datetime NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
