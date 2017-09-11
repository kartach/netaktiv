
DROP TABLE IF EXISTS `qk7ce_users`;
CREATE TABLE `qk7ce_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qk7ce_users` VALUES(443, 'Super User', 'Kark', 'karkoskova.klara@gmail.com', '$2y$10$PAt2tAtrmUBocZnxzpdk1e/aeHyOvZ36cDejnF1wLGPfo9uRNbK5C', 0, 1, '2017-09-06 11:25:10', '2017-09-11 12:35:28', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `qk7ce_users` VALUES(846, 'Demo User', 'demo', 'demo@demolink.org', '$2y$10$Kx9.xksMc0Rh19yJxOtqUOIQZ7OaxfheK7zSAsak7elym/kwAzjqW', 0, 0, '2012-10-17 10:56:12', '2017-07-05 06:20:40', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);
INSERT INTO `qk7ce_users` VALUES(847, 'Lorem Ipsum', 'lorem_ipsum', 'lorem_ipsum@demolink.org', '$2y$10$Q7Bx5hmTOcx6Cn/FxAHYMOjEIrvvJdKPfz4UB.qc9Fm1/eXeXc.ci', 0, 0, '2014-12-09 10:29:04', '2014-12-09 10:46:07', '', '{}', '2015-05-14 08:26:16', 1, '', '', 0);
INSERT INTO `qk7ce_users` VALUES(848, 'Dolor Sit', 'dolor_sit', 'dolor_sit@demolink.org', '$2y$10$riCCfC6p3sOqQUb5I6mvHuevAlCuThyt5TsVgLLUzZNYLP4zm/JUy', 0, 0, '2014-12-09 10:37:28', '2015-05-19 11:47:17', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
