
DROP TABLE IF EXISTS `qk7ce_user_usergroup_map`;
CREATE TABLE `qk7ce_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qk7ce_user_usergroup_map` VALUES(443, 8);
INSERT INTO `qk7ce_user_usergroup_map` VALUES(846, 8);
INSERT INTO `qk7ce_user_usergroup_map` VALUES(847, 2);
INSERT INTO `qk7ce_user_usergroup_map` VALUES(848, 2);
