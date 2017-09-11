
DROP TABLE IF EXISTS `qk7ce_kunena_keywords_map`;
CREATE TABLE `qk7ce_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
