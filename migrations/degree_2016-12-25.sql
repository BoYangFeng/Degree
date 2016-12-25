# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38)
# Database: degree
# Generation Time: 2016-12-25 15:06:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `bill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_time` int(11) unsigned DEFAULT NULL COMMENT '交易时间',
  `category_id` int(11) DEFAULT NULL COMMENT '类别ID',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人',
  `remark` text NOT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL COMMENT '新增时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `blog_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_title` text COMMENT '博客标题',
  `blog_content` int(11) DEFAULT NULL COMMENT '博客内容',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人',
  `create_time` int(11) DEFAULT NULL COMMENT '新增时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) DEFAULT '' COMMENT '类别名称',
  `category_group` int(11) DEFAULT NULL COMMENT '类别分组',
  `is_system` tinyint(1) DEFAULT NULL COMMENT '是否是系统配置',
  `create_time` int(11) DEFAULT NULL COMMENT '新增时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `weixin_openid` varchar(255) NOT NULL DEFAULT '' COMMENT '微信openid',
  `remark` text NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '修改时间',
  `is_delete` tinyint(1) unsigned NOT NULL COMMENT '是否删除',
  `delete_time` int(11) unsigned NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
