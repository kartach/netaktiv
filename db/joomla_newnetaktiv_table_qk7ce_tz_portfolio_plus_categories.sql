
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_categories`;
CREATE TABLE `qk7ce_tz_portfolio_plus_categories` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `images` text NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `qk7ce_tz_portfolio_plus_categories` VALUES(1, 0, '', 0, 0, 0, 0, 3, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 443, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `qk7ce_tz_portfolio_plus_categories` VALUES(2, 0, '', 0, 794, 1, 1, 2, 1, 'uncategorised', 'com_tz_portfolio_plus', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"inheritFrom\":\"0\",\"category_layout\":\"\",\"image\":\"\",\"show_cat_title\":\"1\",\"cat_link_titles\":\"1\",\"show_cat_intro\":\"1\",\"show_cat_category\":\"0\",\"cat_link_category\":\"1\",\"show_cat_parent_category\":\"0\",\"cat_link_parent_category\":\"1\",\"show_cat_author\":\"0\",\"cat_link_author\":\"1\",\"show_cat_create_date\":\"0\",\"show_cat_modify_date\":\"0\",\"show_cat_publish_date\":\"0\",\"show_cat_readmore\":\"1\",\"show_cat_hits\":\"0\",\"show_cat_tags\":\"0\",\"show_cat_icons\":\"1\",\"show_cat_print_icon\":\"0\",\"show_cat_email_icon\":\"0\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_noauth\":\"0\",\"link_category\":\"1\",\"link_parent_category\":\"1\",\"show_gender_user\":\"1\",\"show_email_user\":\"1\",\"show_url_user\":\"1\",\"show_description_user\":\"1\",\"show_related_article\":\"1\",\"related_limit\":\"5\",\"show_related_heading\":\"1\",\"related_heading\":\"\",\"show_related_title\":\"1\",\"show_related_featured\":\"1\",\"related_orderby\":\"rdate\",\"mt_show_cat_image_hover\":\"\",\"mt_cat_image_size\":\"\",\"mt_image_size\":\"\",\"mt_show_image_hover\":\"\",\"mt_image_use_cloud\":\"\",\"mt_image_related_show_image\":\"\",\"mt_image_related_size\":\"\",\"show_cat_vote\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 443, '2015-12-12 14:42:28', 0, '2015-12-12 14:42:28', 0, '*', 1);
