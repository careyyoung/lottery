/*
Navicat MySQL Data Transfer

Source Server         : 本地环境
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : weir

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2014-10-17 17:08:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(10) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `consolation` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '活动1', '2014-07-15 13:13', '2014-07-22 13:13', '一根笔');
INSERT INTO `activity` VALUES ('2', '活动2', '2014-07-23 13:13', '2014-07-31 13:13', '一根笔');
INSERT INTO `activity` VALUES ('3', '活动3', '2014-07-18 13:13', '2014-07-26 13:14', '一根笔');
INSERT INTO `activity` VALUES ('4', '活动4', '2014-07-16 13:13', '2014-07-25 13:14', '一根笔');
INSERT INTO `activity` VALUES ('5', '活动5', '2014-07-15 13:13', '2014-07-25 13:14', '一根笔');
INSERT INTO `activity` VALUES ('6', '活动6', '2014-07-15 13:13', '2014-07-25 13:14', '一根笔');

-- ----------------------------
-- Table structure for `activity_award`
-- ----------------------------
DROP TABLE IF EXISTS `activity_award`;
CREATE TABLE `activity_award` (
  `award_id` int(10) NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) NOT NULL DEFAULT '0',
  `award_name` varchar(30) DEFAULT NULL,
  `award_content` varchar(100) DEFAULT NULL,
  `award_count` int(10) DEFAULT NULL,
  `award_probability` float DEFAULT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_award
-- ----------------------------
INSERT INTO `activity_award` VALUES ('1', '1', '一等奖', '1000￥', '8', '0.1');
INSERT INTO `activity_award` VALUES ('2', '1', '二等奖', '800￥', '5', '0.2');
INSERT INTO `activity_award` VALUES ('3', '1', '三等奖', '500￥', '5', '0.3');
INSERT INTO `activity_award` VALUES ('4', '2', '一等奖', '1000￥', '5', '0.1');
INSERT INTO `activity_award` VALUES ('5', '2', '二等奖', '800￥', '5', '0.2');
INSERT INTO `activity_award` VALUES ('6', '2', '三等奖', '300￥', '5', '0.3');
INSERT INTO `activity_award` VALUES ('7', '3', '一等奖', '1000￥', '5', '0.1');
INSERT INTO `activity_award` VALUES ('8', '3', '二等奖', '100￥', '5', '0.3');
INSERT INTO `activity_award` VALUES ('9', '3', '三等奖', '50￥', '5', '0.4');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `dualx`
-- ----------------------------
DROP TABLE IF EXISTS `dualx`;
CREATE TABLE `dualx` (
  `x_id` varchar(5) NOT NULL,
  `x_con` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dualx
-- ----------------------------
INSERT INTO `dualx` VALUES ('1', 'xxx');
INSERT INTO `dualx` VALUES ('2', 'xxx');
INSERT INTO `dualx` VALUES ('3', 'xxx');

-- ----------------------------
-- Table structure for `dualy`
-- ----------------------------
DROP TABLE IF EXISTS `dualy`;
CREATE TABLE `dualy` (
  `y_id` varchar(5) NOT NULL,
  `y_con` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dualy
-- ----------------------------
INSERT INTO `dualy` VALUES ('1', '111');
INSERT INTO `dualy` VALUES ('2', '222');
INSERT INTO `dualy` VALUES ('3', '333');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) DEFAULT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123456', 'admin');
INSERT INTO `user` VALUES ('2', '123456', 'admin');
INSERT INTO `user` VALUES ('3', '123', 'user');
INSERT INTO `user` VALUES ('4', '123456', 'user');

-- ----------------------------
-- Table structure for `user_award`
-- ----------------------------
DROP TABLE IF EXISTS `user_award`;
CREATE TABLE `user_award` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `activity_id` int(10) DEFAULT NULL,
  `award_id` int(10) DEFAULT NULL,
  `lottery_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_award
-- ----------------------------
INSERT INTO `user_award` VALUES ('1', '3', '2', '6', '2014-07-23 13:22');
INSERT INTO `user_award` VALUES ('2', '3', '2', '4', '2014-07-23 13:23');
INSERT INTO `user_award` VALUES ('3', '3', '2', '6', '2014-07-23 13:23');
INSERT INTO `user_award` VALUES ('4', '3', '2', '6', '2014-07-23 13:23');
INSERT INTO `user_award` VALUES ('5', '3', '2', '6', '2014-07-23 13:23');
INSERT INTO `user_award` VALUES ('6', '4', '2', '6', '2014-07-23 13:26');
INSERT INTO `user_award` VALUES ('7', '4', '2', '0', '2014-07-23 13:32');
INSERT INTO `user_award` VALUES ('8', '4', '2', '0', '2014-07-30 09:36');
