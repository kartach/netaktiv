
DROP TABLE IF EXISTS `qk7ce_tz_portfolio_plus_templates`;
CREATE TABLE `qk7ce_tz_portfolio_plus_templates` (
  `id` int(11) NOT NULL,
  `template` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `home` char(7) NOT NULL,
  `protected` tinyint(3) NOT NULL,
  `layout` text NOT NULL,
  `params` text NOT NULL,
  `preset` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `qk7ce_tz_portfolio_plus_templates` VALUES(1, 'system', 'Default', '0', 1, '[{\"name\":\"Media\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"20px 0\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"media\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Title\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"10\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"title\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"2\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"icons\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Information\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"6\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"none\",\"customclass\":\"muted\",\"responsiveclass\":\"\",\"children\":[{\"name\":\"Information Core\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"created_date\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"vote\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"author\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"category\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"parent_category\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"hits\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"published_date\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"modified_date\",\"position\":\"\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"}]}]},{\"col-xs\":\"\",\"col-sm\":\"\",\"col-md\":\"\",\"col-lg\":\"6\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"extrafields\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Introtext\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"introtext\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Fulltext\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"fulltext\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Tags\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"tags\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Author Info\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"author_about\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Related Articles\",\"class\":\"\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"containertype\":\"container-fluid\",\"children\":[{\"col-xs\":\"12\",\"col-sm\":\"12\",\"col-md\":\"12\",\"col-lg\":\"12\",\"col-xs-offset\":\"\",\"col-sm-offset\":\"\",\"col-md-offset\":\"\",\"col-lg-offset\":\"\",\"type\":\"related\",\"customclass\":\"\",\"responsiveclass\":\"\"}]}]', '{\"layout\":\"default\",\"use_single_layout_builder\":\"1\"}', '');
INSERT INTO `qk7ce_tz_portfolio_plus_templates` VALUES(2, 'elegant', 'elegant - Default', '1', 1, '', '{\"layout\":\"default\",\"use_single_layout_builder\":\"0\",\"load_style\":\"1\"}', '');