
DROP TABLE IF EXISTS `qk7ce_kunena_thankyou`;
CREATE TABLE `qk7ce_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `qk7ce_kunena_thankyou` VALUES(6, 848, 847, '2014-12-09 10:46:29');
