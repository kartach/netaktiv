
DROP TABLE IF EXISTS `qk7ce_messages`;
CREATE TABLE `qk7ce_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qk7ce_messages` VALUES(1, 846, 910, 0, '2014-09-05 13:25:12', 0, 0, 'An image has been downloaded', 'The image with the title Suspendisse (Filename: first_category_1_20140903_1689763756.jpg) has been downloaded by Guest!');
INSERT INTO `qk7ce_messages` VALUES(2, 322, 322, 0, '2014-12-09 09:39:28', -2, 0, 'New Comment', 'A new comment from Guest has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(5, 729, 729, 0, '2015-01-26 14:38:33', 0, 0, 'New Comment', 'A new comment from ejhjkesh has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(6, 729, 729, 0, '2015-01-26 14:39:10', 0, 0, 'New Comment', 'A new comment from ejhjkesh has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(7, 729, 729, 0, '2015-01-29 07:56:07', 0, 0, 'New Comment', 'A new comment from dbdrt has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(8, 729, 729, 0, '2015-01-29 07:56:57', 0, 0, 'New Comment', 'A new comment from rgdrvdr has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(9, 729, 729, 0, '2015-01-29 08:02:40', 0, 0, 'New Comment', 'A new comment from 65rd has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(10, 729, 729, 0, '2015-01-29 08:03:29', 0, 0, 'New Comment', 'A new comment from vsrtdrtrd has been submitted. This comment needs to be approved before it can be published.');
INSERT INTO `qk7ce_messages` VALUES(12, 504, 504, 0, '2015-07-13 07:37:14', 0, 0, 'New Comment', 'A new comment from xcz has been submitted. This comment needs to be approved before it can be published.');
