
DROP TABLE IF EXISTS `qk7ce_kunena_polls_options`;
CREATE TABLE `qk7ce_kunena_polls_options` (
  `id` int(11) NOT NULL,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
