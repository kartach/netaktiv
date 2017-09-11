
DROP TABLE IF EXISTS `qk7ce_joomgallery`;
CREATE TABLE `qk7ce_joomgallery` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `imgtitle` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imgauthor` varchar(50) DEFAULT NULL,
  `imgtext` text NOT NULL,
  `imgdate` datetime NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `imgvotes` int(11) NOT NULL DEFAULT '0',
  `imgvotesum` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL,
  `imgfilename` varchar(255) NOT NULL,
  `imgthumbname` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `useruploaded` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `qk7ce_joomgallery` VALUES(216, 731, 9, 'image1', 'image1-216', '', '', '2017-06-06 18:14:14', 0, 0, 0, 0, 1, 1, 0, 0, 'image1_20170606_1945420302.jpg', 'image1_20170606_1945420302.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(217, 732, 9, 'image2', 'image2-217', '', '', '2017-06-06 18:14:15', 0, 0, 0, 0, 1, 1, 0, 0, 'image2_20170606_1161103265.jpg', 'image2_20170606_1161103265.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(218, 733, 9, 'image3', 'image3-218', '', '', '2017-06-06 18:14:16', 0, 0, 0, 0, 1, 1, 0, 0, 'image3_20170606_1966768477.jpg', 'image3_20170606_1966768477.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(219, 734, 9, 'image4', 'image4-219', '', '', '2017-06-06 18:14:17', 0, 0, 0, 0, 1, 1, 0, 0, 'image4_20170606_1654587536.jpg', 'image4_20170606_1654587536.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(220, 735, 9, 'image5', 'image5-220', '', '', '2017-06-06 18:14:18', 0, 0, 0, 0, 1, 1, 0, 0, 'image5_20170606_1449466585.jpg', 'image5_20170606_1449466585.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(221, 736, 9, 'image6', 'image6-221', '', '', '2017-06-06 18:14:19', 0, 0, 0, 0, 1, 1, 0, 0, 'image6_20170606_1077378314.jpg', 'image6_20170606_1077378314.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(222, 737, 10, 'image7', 'image7-222', '', '', '2017-06-06 18:14:24', 0, 0, 0, 0, 1, 1, 0, 0, 'image7_20170606_2005908808.jpg', 'image7_20170606_2005908808.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(223, 738, 10, 'image8', 'image8-223', '', '', '2017-06-06 18:14:27', 0, 0, 0, 0, 1, 1, 0, 0, 'image8_20170606_1148890913.jpg', 'image8_20170606_1148890913.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(224, 739, 10, 'image9', 'image9-224', '', '', '2017-06-06 18:14:28', 0, 0, 0, 0, 1, 1, 0, 0, 'image9_20170606_1810296949.jpg', 'image9_20170606_1810296949.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(225, 740, 10, 'image10', 'image10-225', '', '', '2017-06-06 18:14:29', 0, 0, 0, 0, 1, 1, 0, 0, 'image10_20170606_1145133208.jpg', 'image10_20170606_1145133208.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(226, 741, 10, 'image11', 'image11-226', '', '', '2017-06-06 18:14:30', 0, 0, 0, 0, 1, 1, 0, 0, 'image11_20170606_1387794442.jpg', 'image11_20170606_1387794442.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(227, 742, 10, 'image12', 'image12-227', '', '', '2017-06-06 18:14:31', 0, 0, 0, 0, 1, 1, 0, 0, 'image12_20170606_1381283630.jpg', 'image12_20170606_1381283630.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(228, 743, 11, 'image13', 'image13-228', '', '', '2017-06-06 18:14:39', 0, 0, 0, 0, 1, 1, 0, 0, 'image13_20170606_2010180276.jpg', 'image13_20170606_2010180276.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(229, 744, 11, 'image14', 'image14-229', '', '', '2017-06-06 18:14:40', 0, 0, 0, 0, 1, 1, 0, 0, 'image14_20170606_1117721345.jpg', 'image14_20170606_1117721345.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(230, 745, 11, 'image15', 'image15-230', '', '', '2017-06-06 18:14:41', 0, 0, 0, 0, 1, 1, 0, 0, 'image15_20170606_1584293188.jpg', 'image15_20170606_1584293188.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(231, 746, 11, 'image16', 'image16-231', '', '', '2017-06-06 18:14:42', 0, 0, 0, 0, 1, 1, 0, 0, 'image16_20170606_1686111820.jpg', 'image16_20170606_1686111820.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(232, 747, 11, 'image17', 'image17-232', '', '', '2017-06-06 18:14:43', 0, 0, 0, 0, 1, 1, 0, 0, 'image17_20170606_1907161361.jpg', 'image17_20170606_1907161361.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(233, 748, 11, 'image18', 'image18-233', '', '', '2017-06-06 18:14:44', 0, 0, 0, 0, 1, 1, 0, 0, 'image18_20170606_2035087065.jpg', 'image18_20170606_2035087065.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(234, 749, 12, 'image19', 'image19-234', '', '', '2017-06-06 18:14:51', 0, 0, 0, 0, 1, 1, 0, 0, 'image19_20170606_1141511521.jpg', 'image19_20170606_1141511521.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(235, 750, 12, 'image20', 'image20-235', '', '', '2017-06-06 18:14:53', 0, 0, 0, 0, 1, 1, 0, 0, 'image20_20170606_1507297730.jpg', 'image20_20170606_1507297730.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(236, 751, 12, 'image21', 'image21-236', '', '', '2017-06-06 18:14:54', 0, 0, 0, 0, 1, 1, 0, 0, 'image21_20170606_1339479955.jpg', 'image21_20170606_1339479955.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(237, 752, 12, 'image22', 'image22-237', '', '', '2017-06-06 18:14:55', 0, 0, 0, 0, 1, 1, 0, 0, 'image22_20170606_1587631035.jpg', 'image22_20170606_1587631035.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(238, 753, 12, 'image23', 'image23-238', '', '', '2017-06-06 18:14:56', 0, 0, 0, 0, 1, 1, 0, 0, 'image23_20170606_1942464063.jpg', 'image23_20170606_1942464063.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(239, 754, 12, 'image24', 'image24-239', '', '', '2017-06-06 18:14:57', 0, 0, 0, 0, 1, 1, 0, 0, 'image24_20170606_1335547329.jpg', 'image24_20170606_1335547329.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(240, 755, 13, 'image25', 'image25-240', '', '', '2017-06-06 18:15:05', 0, 0, 0, 0, 1, 1, 0, 0, 'image25_20170606_1980726211.jpg', 'image25_20170606_1980726211.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(241, 756, 13, 'image26', 'image26-241', '', '', '2017-06-06 18:15:06', 0, 0, 0, 0, 1, 1, 0, 0, 'image26_20170606_1664559592.jpg', 'image26_20170606_1664559592.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(242, 757, 13, 'image27', 'image27-242', '', '', '2017-06-06 18:15:07', 0, 0, 0, 0, 1, 1, 0, 0, 'image27_20170606_1064997260.jpg', 'image27_20170606_1064997260.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(243, 758, 13, 'image28', 'image28-243', '', '', '2017-06-06 18:15:08', 0, 0, 0, 0, 1, 1, 0, 0, 'image28_20170606_1359944040.jpg', 'image28_20170606_1359944040.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(244, 759, 13, 'image29', 'image29-244', '', '', '2017-06-06 18:15:09', 0, 0, 0, 0, 1, 1, 0, 0, 'image29_20170606_1104740538.jpg', 'image29_20170606_1104740538.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(245, 760, 13, 'image30', 'image30-245', '', '', '2017-06-06 18:15:10', 0, 0, 0, 0, 1, 1, 0, 0, 'image30_20170606_1841401119.jpg', 'image30_20170606_1841401119.jpg', 0, 0, 1, 0, 6, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(246, 761, 14, 'image31', 'image31-246', '', '', '2017-06-06 18:15:17', 0, 0, 0, 0, 1, 1, 0, 0, 'image31_20170606_1458292648.jpg', 'image31_20170606_1458292648.jpg', 0, 0, 1, 0, 1, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(247, 762, 14, 'image32', 'image32-247', '', '', '2017-06-06 18:15:18', 0, 0, 0, 0, 1, 1, 0, 0, 'image32_20170606_1748523106.jpg', 'image32_20170606_1748523106.jpg', 0, 0, 1, 0, 2, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(248, 763, 14, 'image33', 'image33-248', '', '', '2017-06-06 18:15:20', 0, 0, 0, 0, 1, 1, 0, 0, 'image33_20170606_1322536028.jpg', 'image33_20170606_1322536028.jpg', 0, 0, 1, 0, 3, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(249, 764, 14, 'image34', 'image34-249', '', '', '2017-06-06 18:15:21', 0, 0, 0, 0, 1, 1, 0, 0, 'image34_20170606_1763359668.jpg', 'image34_20170606_1763359668.jpg', 0, 0, 1, 0, 4, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(250, 765, 14, 'image35', 'image35-250', '', '', '2017-06-06 18:15:22', 0, 0, 0, 0, 1, 1, 0, 0, 'image35_20170606_1404983307.jpg', 'image35_20170606_1404983307.jpg', 0, 0, 1, 0, 5, '', '', '');
INSERT INTO `qk7ce_joomgallery` VALUES(251, 766, 14, 'image36', 'image36-251', '', '', '2017-06-06 18:15:23', 0, 0, 0, 0, 1, 1, 0, 0, 'image36_20170606_1616779043.jpg', 'image36_20170606_1616779043.jpg', 0, 0, 1, 0, 6, '', '', '');
