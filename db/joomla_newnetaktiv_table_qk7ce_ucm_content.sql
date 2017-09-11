
DROP TABLE IF EXISTS `qk7ce_ucm_content`;
CREATE TABLE `qk7ce_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

INSERT INTO `qk7ce_ucm_content` VALUES(1, 'com_content.article', 'Children\'s Book Exhibition', 'anniversary-showcase-of-fox-tv-shows-and-movies', '<p>In this article, you will find out about the Children\'s Book Exhibition - an annual event that gathers the world\'s most famous authors of infantile and teenage literature.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-05-02 19:47:40', 846, '2016-09-26 10:05:34', '*', '2014-05-02 19:47:40', '0000-00-00 00:00:00', 11, 509, '{\"image_intro\":\"images\\/blog\\/blog-thumb1.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img1.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 501, 46, 1, '', '', 48, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(2, 'com_content.article', 'Digital television standards continue to conquer developing countries', 'digital-television-standards-continue-to-conquer-developing-countries', '<p>Modern technologies development sets high standards to each and every sphere of our life - from teaching to entertainment. Today we would like to talk about one of the sides of modern digital technologies - new television broadcast standard that makes it easier for viewers and owners of both digital and analog TV sets to integrate their devices into the system of modern TV entertainment and latest technologies.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-05-01 19:45:00', 846, '2016-09-26 10:05:25', '*', '2014-05-01 19:45:00', '0000-00-00 00:00:00', 10, 516, '{\"image_intro\":\"images\\/blog\\/blog-thumb2.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img2.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 14, 23, 0, '', '', 13, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(3, 'com_content.article', 'Cost management as an element of financial management', 'cost-management-as-an-element-of-financial-management', '<p>Modern business is often observed in a complex manner. Like any organism requires a lot of elements to function correctly, a company contains some departments that play vital roles in its successful functioning. Work of these departments may be connected with finances, and if it is, then cost management becomes important for flawless functioning of such departments.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-30 19:40:00', 846, '2016-09-26 10:05:20', '*', '2014-04-30 19:40:00', '0000-00-00 00:00:00', 9, 518, '{\"image_intro\":\"images\\/blog\\/blog-thumb3.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img3.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 25, 23, 0, '', '', 12, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(4, 'com_content.article', 'Improving your confidence and self-defense skills', 'improving-your-confidence-and-self-defense-skills', '<p>Today we would like to touch the topic which is gaining popularity among employees of big and small companies as well as students, teachers and other strata of the population.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-29 19:50:00', 846, '2016-09-26 10:05:49', '*', '2014-04-29 19:50:00', '0000-00-00 00:00:00', 13, 515, '{\"image_intro\":\"images\\/blog\\/blog-thumb4.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img4.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 14, 22, 0, '', '', 15, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(5, 'com_content.article', 'Participate in discussion of an important topic', 'participate-in-discussion-of-an-important-topic', '<p>Are you a journalist or a creative personality? Do you want to share information with the world? Then our new project will be perfect for you to express your ideas and concepts.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-28 19:49:00', 846, '2016-09-26 10:05:43', '*', '2014-04-28 19:49:00', '0000-00-00 00:00:00', 12, 517, '{\"image_intro\":\"images\\/blog\\/blog-thumb5.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img5.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 10, 31, 0, '', '', 14, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(6, 'com_content.article', 'James R. Bernard is going to visit Los Angeles this spring', 'james-r-bernard-is-going-to-visit-los-angeles-this-spring', '<p>James Richard Bernard, the genius of contemporary art, is visiting Los Angeles with his new exhibition at LA Art Center on March, 30. The exhibition is called \"The Evolving World\", and introduces an absolutely new vision of the modern world including various spheres of our life - social, political, economical, cultural etc. This event will also feature the showcase of artworks by Bernard\'s colleagues and apprentices who form The American School of Contemporary Art.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-27 19:51:00', 846, '2016-09-26 10:05:58', '*', '2014-04-27 19:51:00', '0000-00-00 00:00:00', 14, 513, '{\"image_intro\":\"images\\/blog\\/blog-thumb6.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img6.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 9, 26, 0, '', '', 49, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(7, 'com_content.article', 'American Tea and Coffee Fair: The Most Anticipated Event', 'american-tea-and-coffee-fair-the-most-anticipated-event', '<p>The American Tea and Coffee Fair is one of the events that can definitely boast the title of the most anticipated one. In the USA, this fair has been numerously recognized as the most popular and important event to promote unknown yet very tasty sorts of tea and coffee, created by enthusiastic tea and coffee lovers and well-known manufacturers of these drinks.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-26 19:38:00', 846, '2016-09-26 10:05:13', '*', '2014-04-26 19:38:00', '0000-00-00 00:00:00', 8, 514, '{\"image_intro\":\"images\\/blog\\/blog-thumb7.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img7.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 9, 23, 1, '', '', 50, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(8, 'com_content.article', 'Music is now officially proved to have influence on us', 'music-is-now-officially-proved-to-have-influence-on-us', '<p>During our latest visit, the scientists of the Seattle Scientific Company laboratory have unveiled some information about their current project, and today we can share the results of their research with you.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-25 19:52:00', 846, '2016-09-26 10:13:39', '*', '2014-04-25 19:52:00', '0000-00-00 00:00:00', 15, 510, '{\"image_intro\":\"images\\/blog\\/blog-thumb8.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img8.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 8, 25, 0, '', '', 51, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(9, 'com_content.article', 'The North American Auto Show will take place in Chicago', 'the-north-american-auto-show-will-take-place-in-chicago', '<p>The North American Auto Show, one of the most important annual events that influence the international automotive industry and exhibits its main achievements, is eventually confirmed to take place in Chicago, IL. Located on the southwestern coast of Lake Michigan, this city will host representatives of vehicle manufacturers from all over the world. They include American companies (Ford, General Motors), European (Alfa Romeo, Lotus, BMW, FIAT, Seat) as well as Japanese ones and many others.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-05-02 19:47:40', 846, '2016-09-26 10:00:30', '*', '2015-02-19 00:00:00', '0000-00-00 00:00:00', 118, 512, '{\"image_intro\":\"images\\/blog\\/blog-thumb1.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img1.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 327, 52, 1, '', '', 52, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(10, 'com_content.article', 'Anniversary Showcase of Fox TV shows and movies ', 'anniversary-showcase-of-fox-tv-shows-and-movies', '<p>Fox TV Channel is showcasing the most successful series and full-length films of 20th Century Fox this month in all American cinemas with wide promotional campaign of their upcoming projects.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-05-01 19:45:00', 846, '2016-09-26 10:00:21', '*', '2015-02-18 19:45:00', '0000-00-00 00:00:00', 119, 511, '{\"image_intro\":\"images\\/blog\\/blog-thumb2.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img2.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 13, 28, 0, '', '', 53, '', 1);
INSERT INTO `qk7ce_ucm_content` VALUES(11, 'com_content.article', 'Jerry C. Lewis has a thought on changing the world we live in', 'jerry-c-lewis-has-a-thought-on-changing-the-world-we-live-in', '<p>Recently our partner, Jerry Conrad Lewis has revealed some of his own global plans alongside with a new set of social measures, designed to improve the world we live in.</p>\r\n', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"theme3461:blog\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 443, '', '2014-04-30 19:40:00', 846, '2016-09-26 09:59:59', '*', '2015-02-17 19:40:00', '0000-00-00 00:00:00', 120, 508, '{\"image_intro\":\"images\\/blog\\/blog-thumb3.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/blog\\/blog-img3.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 24, 34, 0, '', '', 54, '', 1);
