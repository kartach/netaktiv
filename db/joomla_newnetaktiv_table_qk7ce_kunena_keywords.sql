
DROP TABLE IF EXISTS `qk7ce_kunena_keywords`;
CREATE TABLE `qk7ce_kunena_keywords` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
