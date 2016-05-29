/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : easycmsdb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-04-17 20:27:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'moocss', null);
INSERT INTO `account` VALUES ('2', 'fuxin', null);
INSERT INTO `account` VALUES ('3', '??', null);
INSERT INTO `account` VALUES ('4', 'fuxin123', null);
INSERT INTO `account` VALUES ('5', 'raonbow', null);
INSERT INTO `account` VALUES ('6', 'moocss', '123456');
INSERT INTO `account` VALUES ('7', '??', 'xinyi116518');
INSERT INTO `account` VALUES ('8', '', '');
INSERT INTO `account` VALUES ('9', 'moocss', '123456');
INSERT INTO `account` VALUES ('10', 'moocss', '123456');
INSERT INTO `account` VALUES ('11', 'moocss', '123456');

-- ----------------------------
-- Table structure for ec_group
-- ----------------------------
DROP TABLE IF EXISTS `ec_group`;
CREATE TABLE `ec_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '10',
  `allowPerDay` int(11) NOT NULL DEFAULT '4096',
  `allowMaxFile` int(11) NOT NULL DEFAULT '1024',
  `allowSuffix` varchar(255) DEFAULT 'jpg,jpeg,gif,png,bmp',
  `needCaptcha` tinyint(1) NOT NULL DEFAULT '1',
  `needCheck` tinyint(1) NOT NULL DEFAULT '1',
  `regDef` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_group
-- ----------------------------
INSERT INTO `ec_group` VALUES ('1', '设计组', '1', '2', '1000', '.jpg/.jpeg/.png/.bmp', '1', '1', '1');
INSERT INTO `ec_group` VALUES ('2', '产品组', '7', '2048', '2000', '.jpg/.jpeg/.png/.bmp', '1', '1', '1');
INSERT INTO `ec_group` VALUES ('3', '销售组', '8', '2048', '5000', '.jpg/.jpeg/.png/.bmp', '1', '1', '0');
INSERT INTO `ec_group` VALUES ('9', '投稿者', '10', '1024', '1024', '.jpg/.jpeg/.png/.bmp', '1', '1', '1');

-- ----------------------------
-- Table structure for ec_log
-- ----------------------------
DROP TABLE IF EXISTS `ec_log`;
CREATE TABLE `ec_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL DEFAULT '3',
  `time` datetime DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_log
-- ----------------------------
INSERT INTO `ec_log` VALUES ('1', '3', '2013-08-18 21:34:51', '192.168.0.1', null, null, null, 'amdin');
INSERT INTO `ec_log` VALUES ('2', '3', '2013-08-18 21:39:47', '192.168.0.1', null, null, null, 'fuxin');
INSERT INTO `ec_log` VALUES ('3', '2', '2013-08-19 21:43:04', null, null, null, null, 'fuxin');
INSERT INTO `ec_log` VALUES ('4', '1', '2013-08-19 21:43:15', null, null, null, null, 'moocss');
INSERT INTO `ec_log` VALUES ('5', '3', '2013-08-20 23:54:04', '127.0.0.1', null, '添加用户组操作', '添加的 : id=null;name=投稿者', 'fuxin');
INSERT INTO `ec_log` VALUES ('6', '1', '2016-04-06 14:50:19', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('7', '1', '2016-04-06 14:50:35', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('8', '2', '2016-04-06 16:14:51', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('9', '1', '2016-04-06 16:14:59', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('10', '2', '2016-04-16 20:04:57', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：moocss用户名：123456', null);
INSERT INTO `ec_log` VALUES ('11', '2', '2016-04-16 20:05:58', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：fuxin用户名：e10adc3949ba59a', null);
INSERT INTO `ec_log` VALUES ('12', '2', '2016-04-16 20:07:05', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：admin用户名：123', null);
INSERT INTO `ec_log` VALUES ('13', '2', '2016-04-16 20:08:11', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：fuxin用户名：123', null);
INSERT INTO `ec_log` VALUES ('14', '2', '2016-04-16 20:08:23', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：admin用户名：123', null);
INSERT INTO `ec_log` VALUES ('15', '1', '2016-04-16 20:12:16', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('16', '2', '2016-04-16 20:42:44', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('17', '1', '2016-04-16 20:43:00', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('18', '2', '2016-04-16 20:47:02', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('19', '1', '2016-04-16 20:47:16', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('20', '2', '2016-04-16 20:49:18', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：fuxin用户名：123', null);
INSERT INTO `ec_log` VALUES ('21', '1', '2016-04-16 20:49:32', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('22', '2', '2016-04-16 21:10:57', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('23', '1', '2016-04-16 21:11:07', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('24', '2', '2016-04-16 21:13:18', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('25', '1', '2016-04-16 21:13:29', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('26', '2', '2016-04-16 21:17:49', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('27', '1', '2016-04-16 21:17:58', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('28', '2', '2016-04-16 21:29:41', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('29', '1', '2016-04-16 21:29:50', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('30', '2', '2016-04-16 21:42:26', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('31', '2', '2016-04-16 21:42:28', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('32', '2', '2016-04-16 21:42:57', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('33', '2', '2016-04-16 21:43:36', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('34', '1', '2016-04-16 21:44:39', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('35', '1', '2016-04-16 21:45:10', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('36', '2', '2016-04-16 21:59:33', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('37', '1', '2016-04-16 21:59:43', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('38', '2', '2016-04-16 22:27:14', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('39', '1', '2016-04-16 22:27:25', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('40', '1', '2016-04-16 22:28:39', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('41', '2', '2016-04-16 22:29:32', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('42', '1', '2016-04-16 22:29:46', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('43', '2', '2016-04-16 22:31:47', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('44', '1', '2016-04-16 22:31:59', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('45', '2', '2016-04-16 22:34:50', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('46', '1', '2016-04-16 22:35:02', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('47', '2', '2016-04-16 22:44:06', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('48', '1', '2016-04-16 22:44:17', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('49', '2', '2016-04-17 14:48:07', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：fuxin用户名：123456', null);
INSERT INTO `ec_log` VALUES ('50', '1', '2016-04-17 14:48:17', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('51', '2', '2016-04-17 14:53:13', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('52', '2', '2016-04-17 14:53:20', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：fuxin用户名：123', null);
INSERT INTO `ec_log` VALUES ('53', '1', '2016-04-17 14:53:37', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('54', '2', '2016-04-17 14:54:24', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('55', '1', '2016-04-17 14:54:33', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('56', '2', '2016-04-17 15:23:29', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('57', '1', '2016-04-17 15:23:37', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('58', '1', '2016-04-17 15:32:54', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('59', '1', '2016-04-17 15:48:22', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('60', '1', '2016-04-17 15:54:03', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('61', '2', '2016-04-17 16:02:02', '0:0:0:0:0:0:0:1', null, '登录失败！', '登录密码：null用户名：null', null);
INSERT INTO `ec_log` VALUES ('62', '1', '2016-04-17 16:02:11', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');
INSERT INTO `ec_log` VALUES ('63', '1', '2016-04-17 16:07:15', '0:0:0:0:0:0:0:1', null, '登录成功！', null, 'fuxin');

-- ----------------------------
-- Table structure for ec_message
-- ----------------------------
DROP TABLE IF EXISTS `ec_message`;
CREATE TABLE `ec_message` (
  `msgId` int(11) NOT NULL AUTO_INCREMENT,
  `msgTitle` varchar(100) DEFAULT NULL,
  `msgContent` varchar(255) DEFAULT NULL,
  `sendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msgStaus` tinyint(1) NOT NULL DEFAULT '0',
  `msgBox` int(2) NOT NULL DEFAULT '1',
  `siteId` int(11) NOT NULL DEFAULT '1',
  `msgSendUserId` int(11) NOT NULL DEFAULT '1',
  `msgReceiverUserId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgId`),
  KEY `msgSendUserId` (`msgSendUserId`),
  KEY `msgReceiverUserId` (`msgReceiverUserId`),
  CONSTRAINT `ec_message_ibfk_1` FOREIGN KEY (`msgSendUserId`) REFERENCES `ec_user` (`id`),
  CONSTRAINT `ec_message_ibfk_2` FOREIGN KEY (`msgReceiverUserId`) REFERENCES `ec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_message
-- ----------------------------

-- ----------------------------
-- Table structure for ec_message_receiver
-- ----------------------------
DROP TABLE IF EXISTS `ec_message_receiver`;
CREATE TABLE `ec_message_receiver` (
  `receiverId` int(11) NOT NULL AUTO_INCREMENT,
  `msgTitle` varchar(100) DEFAULT NULL,
  `msgContent` varchar(255) DEFAULT NULL,
  `sendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msgStaus` tinyint(1) NOT NULL DEFAULT '0',
  `msgBox` int(2) NOT NULL DEFAULT '1',
  `msgId` int(11) DEFAULT NULL,
  `siteId` int(11) NOT NULL DEFAULT '1',
  `msgSendUserId` int(11) NOT NULL DEFAULT '1',
  `msgReceiverUserId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`receiverId`),
  KEY `msgSendUserId` (`msgSendUserId`),
  KEY `msgReceiverUserId` (`msgReceiverUserId`),
  CONSTRAINT `ec_message_receiver_ibfk_1` FOREIGN KEY (`msgSendUserId`) REFERENCES `ec_user` (`id`),
  CONSTRAINT `ec_message_receiver_ibfk_2` FOREIGN KEY (`msgReceiverUserId`) REFERENCES `ec_user` (`id`),
  CONSTRAINT `ec_message_receiver_ibfk_3` FOREIGN KEY (`receiverId`) REFERENCES `ec_message` (`msgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_message_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for ec_new
-- ----------------------------
DROP TABLE IF EXISTS `ec_new`;
CREATE TABLE `ec_new` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_new
-- ----------------------------
INSERT INTO `ec_new` VALUES ('1', '测试', '试试');
INSERT INTO `ec_new` VALUES ('17', 'adse', 'dagsgg');
INSERT INTO `ec_new` VALUES ('18', '的设备及方法', '额');
INSERT INTO `ec_new` VALUES ('19', '1', '1');
INSERT INTO `ec_new` VALUES ('20', '2', '2');
INSERT INTO `ec_new` VALUES ('21', '3', '');
INSERT INTO `ec_new` VALUES ('22', '4', '');
INSERT INTO `ec_new` VALUES ('23', '5', '');
INSERT INTO `ec_new` VALUES ('24', '6', '');
INSERT INTO `ec_new` VALUES ('25', '46', '');
INSERT INTO `ec_new` VALUES ('26', '3', '');

-- ----------------------------
-- Table structure for ec_role
-- ----------------------------
DROP TABLE IF EXISTS `ec_role`;
CREATE TABLE `ec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `m_super` tinyint(1) NOT NULL DEFAULT '0',
  `siteId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_role
-- ----------------------------
INSERT INTO `ec_role` VALUES ('1', '管理员', '1', '1', null);
INSERT INTO `ec_role` VALUES ('2', '发表者', '1', '0', null);
INSERT INTO `ec_role` VALUES ('3', '订阅者', '1', '0', null);

-- ----------------------------
-- Table structure for ec_user
-- ----------------------------
DROP TABLE IF EXISTS `ec_user`;
CREATE TABLE `ec_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `registerTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registerIP` varchar(50) DEFAULT '127.0.0.1',
  `lastLoginTime` datetime DEFAULT NULL,
  `lastLoginIp` varchar(50) DEFAULT '127.0.0.1',
  `loginCount` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `uploadSize` int(11) NOT NULL DEFAULT '0',
  `uploadDate` datetime DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `viewonlyAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `selfAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `ec_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `ec_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_user
-- ----------------------------
INSERT INTO `ec_user` VALUES ('2', '1', 'fuxin', '123', 'moocss@163.com', '2016-04-16 20:11:55', '127.0.0.1', null, '127.0.0.1', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `ec_user` VALUES ('4', '3', 'zhangguang', '7fa8282ad93047a4d6fe6111c93b308a', 'zhangguang@163.com', '2013-07-21 13:58:08', '127.0.0.1', null, '127.0.0.1', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `ec_user` VALUES ('6', '2', 'admin', 'c56d0e9a7ccec67b4ea131655038d604', 'admin@163.com', '2016-04-17 15:51:35', '127.0.0.1', null, '127.0.0.1', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `ec_user` VALUES ('7', '3', '第三方', '202cb962ac59075b964b07152d234b70', '', '2016-04-17 16:49:04', '127.0.0.1', null, '127.0.0.1', '0', '0', '0', null, '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ec_user_ext
-- ----------------------------
DROP TABLE IF EXISTS `ec_user_ext`;
CREATE TABLE `ec_user_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `comefrom` varchar(150) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `userImg` varchar(255) DEFAULT NULL,
  `userSignature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `ec_user_ext_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `ec_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_user_ext
-- ----------------------------
INSERT INTO `ec_user_ext` VALUES ('2', '2', '付鑫', '1', '1984-10-11', '1234', '北京,北京', '1234', '1234', '1234', '134', null, null);
INSERT INTO `ec_user_ext` VALUES ('4', '4', '张广', '0', '2001-10-19', '123456', '内蒙古', '123456', '123456', '123456', '123456', null, null);
INSERT INTO `ec_user_ext` VALUES ('6', '6', 'admin', '1', '1234', '1234', '1234', '1234', '1234', '1234', '1234', null, null);
INSERT INTO `ec_user_ext` VALUES ('7', '7', '', '1', '', '', '', '', '', '', '', null, null);
