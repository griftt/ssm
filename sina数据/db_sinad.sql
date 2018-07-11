/*
Navicat MySQL Data Transfer

Source Server         : hibernate
Source Server Version : 50511
Source Host           : localhost:3306
Source Database       : db_sina

Target Server Type    : MYSQL
Target Server Version : 50511
File Encoding         : 65001

Date: 2018-07-09 19:25:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('1', '10000', '10000', '1');
INSERT INTO `t_account` VALUES ('2', '10001', '10001', '1');
INSERT INTO `t_account` VALUES ('3', '10002', '10002', '1');
INSERT INTO `t_account` VALUES ('4', '10003', '10003', '1');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `objectId` int(11) DEFAULT NULL,
  `reviewId` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '1', '1', null, '哈哈', '2018-07-17 09:29:28');
INSERT INTO `t_comment` VALUES ('2', '2', '1', null, '哈哈2', '2018-07-10 09:44:21');
INSERT INTO `t_comment` VALUES ('3', '3', '1', null, '哈哈3', '2018-07-16 09:45:04');
INSERT INTO `t_comment` VALUES ('4', '4', '1', null, '哈哈4', '2018-07-02 09:45:15');

-- ----------------------------
-- Table structure for t_friend
-- ----------------------------
DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `firendId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `foucus` tinyint(4) DEFAULT NULL,
  `beFoucus` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_friend
-- ----------------------------
INSERT INTO `t_friend` VALUES ('1', '1', '4', 'hello1', '1', '0');
INSERT INTO `t_friend` VALUES ('2', '2', '3', 'hello2', '1', '1');
INSERT INTO `t_friend` VALUES ('3', '3', '2', 'hello3', '1', '0');
INSERT INTO `t_friend` VALUES ('4', '4', '1', 'hello4', '0', '1');
INSERT INTO `t_friend` VALUES ('5', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiveId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '2', '1', 'hello', '2018-07-03 09:32:18', null);
INSERT INTO `t_message` VALUES ('2', '1', '2', 'hello2', '2018-07-17 09:46:07', null);
INSERT INTO `t_message` VALUES ('3', '4', '3', 'hello3', '2018-07-03 09:46:10', null);
INSERT INTO `t_message` VALUES ('4', '3', '4', 'hello4', '2018-07-04 09:46:13', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'user');

-- ----------------------------
-- Table structure for t_talk
-- ----------------------------
DROP TABLE IF EXISTS `t_talk`;
CREATE TABLE `t_talk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_talk
-- ----------------------------
INSERT INTO `t_talk` VALUES ('1', '2018-07-17 09:32:56', 'hello1 狗蛋');
INSERT INTO `t_talk` VALUES ('2', '2018-07-10 09:46:35', 'hello2 狗蛋');
INSERT INTO `t_talk` VALUES ('3', '2018-07-10 09:46:50', 'hello3 狗蛋');
INSERT INTO `t_talk` VALUES ('4', '2018-07-17 09:46:54', 'hello4 狗蛋');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `friendId` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '70000', '70000', '1', '1999-10-10', '广东', '广州', '4', '男', '12314', '哈哈');
INSERT INTO `t_user` VALUES ('2', '70001', '70001', null, '1999-10-11', '广东', '梅州', '3', '男', null, null);
INSERT INTO `t_user` VALUES ('3', '70002', '70002', null, '1999-10-12', '广东', '梅州', '2', '男', null, null);
INSERT INTO `t_user` VALUES ('4', '70003', '70003', null, '1999-1-11', '广东', '漳江', '1', '男', null, null);
INSERT INTO `t_user` VALUES ('5', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_weibo
-- ----------------------------
DROP TABLE IF EXISTS `t_weibo`;
CREATE TABLE `t_weibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_weibo
-- ----------------------------
INSERT INTO `t_weibo` VALUES ('1', '1', '今天天气真晴朗', '2018-07-01 09:43:30', null);
INSERT INTO `t_weibo` VALUES ('2', '1', '呵呵', '2018-07-10 09:47:32', null);
INSERT INTO `t_weibo` VALUES ('3', '1', '说走就走', '2018-07-03 09:47:40', null);
INSERT INTO `t_weibo` VALUES ('4', '1', '春风十里', '2018-07-08 09:47:44', null);
