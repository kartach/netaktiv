
DROP TABLE IF EXISTS `qk7ce_komento_captcha`;
CREATE TABLE `qk7ce_komento_captcha` (
  `id` int(11) NOT NULL,
  `response` varchar(5) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
