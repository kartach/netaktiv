
DROP TABLE IF EXISTS `qk7ce_keenitportfolio_portfolio`;
CREATE TABLE `qk7ce_keenitportfolio_portfolio` (
  `id` int(11) UNSIGNED NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `final_date` date NOT NULL,
  `project_url` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `qk7ce_keenitportfolio_portfolio` VALUES(1, 'Možnost grilování v atriu', '', '0000-00-00', 'http://', 71, 'e40958bf32765b0bb36621e4c9a09399-20160722-173727.jpg', '<p>K dispozici je <a title=\"Atrium\" href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\" data-cke-saved-href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\">venkovní atrium s posezením na zahradě,</a>  možností opékání na lávových kamenech, grilování na grilu na prase. Zahradu je možno využít ke hraní společenských her, apod. Atrium pro větší společenské akce pronajímáme a upravuje dle potřeb na základě vzájemné dohody.</p>', 1, 1, 0, '0000-00-00 00:00:00', 443);
INSERT INTO `qk7ce_keenitportfolio_portfolio` VALUES(2, 'dddddddddd', '', '0000-00-00', 'http://', 71, '01c4a9512748d8fa1dc95019956adc65-100-9511.JPG', '<p>K dispozici je <a title=\"Atrium\" href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\" data-cke-saved-href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\">venkovní atrium s posezením na zahradě,</a>  možností opékání na lávových kamenech, grilování na grilu na prase. Zahradu je možno využít ke hraní společenských her, apod. Atrium pro větší společenské akce pronajímáme a upravuje dle potřeb na základě vzájemné dohody.</p>', 2, 1, 0, '0000-00-00 00:00:00', 443);
INSERT INTO `qk7ce_keenitportfolio_portfolio` VALUES(3, 'aaaaaaa', '', '0000-00-00', 'http://', 72, '01c4a9512748d8fa1dc95019956adc65-100-9511.JPG', '<p>K dispozici je <a title=\"Atrium\" href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\" data-cke-saved-href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\">venkovní atrium s posezením na zahradě,</a>  možností opékání na lávových kamenech, grilování na grilu na prase. Zahradu je možno využít ke hraní společenských her, apod. Atrium pro větší společenské akce pronajímáme a upravuje dle potřeb na základě vzájemné dohody.</p>', 3, 1, 0, '0000-00-00 00:00:00', 443);
INSERT INTO `qk7ce_keenitportfolio_portfolio` VALUES(4, 'Možnost grilování v atriu', '', '0000-00-00', 'http://', 71, 'e40958bf32765b0bb36621e4c9a09399-20160722-173727.jpg', '<p>K dispozici je <a title=\"Atrium\" href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\" data-cke-saved-href=\"index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=337\">venkovní atrium s posezením na zahradě,</a>  možností opékání na lávových kamenech, grilování na grilu na prase. Zahradu je možno využít ke hraní společenských her, apod. Atrium pro větší společenské akce pronajímáme a upravuje dle potřeb na základě vzájemné dohody.</p>', 4, 1, 0, '0000-00-00 00:00:00', 443);
