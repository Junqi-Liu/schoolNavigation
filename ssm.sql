/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-05-31 10:15:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `point`
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point` (
  `pointid` int(20) NOT NULL AUTO_INCREMENT,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `pointdesc` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `state` varchar(2) NOT NULL,
  PRIMARY KEY (`pointid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES ('1', '115.072616', '30.235416', '中心点', 'center', 'U');
INSERT INTO `point` VALUES ('2', '115.073245', '30.236152', '田径场', 'point', 'U');
INSERT INTO `point` VALUES ('3', '115.06966', '30.235517', '后篮球场', 'point', 'U');
INSERT INTO `point` VALUES ('4', '115.071852', '30.235626', '篮球场', 'point', 'U');
INSERT INTO `point` VALUES ('5', '115.069948', '30.232958', '7栋', 'point', 'U');
INSERT INTO `point` VALUES ('6', '115.071142', '30.236005', '草坪、花坛', 'point', 'U');
INSERT INTO `point` VALUES ('7', '115.069795', '30.233891', '16栋', 'point', 'U');
INSERT INTO `point` VALUES ('8', '115.070792', '30.231106', '若水轩食堂', 'point', 'U');

-- ----------------------------
-- Table structure for `point_h`
-- ----------------------------
DROP TABLE IF EXISTS `point_h`;
CREATE TABLE `point_h` (
  `pointid` int(20) NOT NULL AUTO_INCREMENT,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `pointdesc` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `state` varchar(2) NOT NULL,
  PRIMARY KEY (`pointid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of point_h
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(40) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `state` varchar(2) DEFAULT NULL,
  `permission` varchar(2) DEFAULT NULL,
  `creatdate` varchar(20) DEFAULT NULL,
  `changedate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', '刘俊奇', '123', 'U', '0', '2019-05-16 16:34:53', '2019-05-16 16:35:24');
INSERT INTO `user` VALUES ('456', '谁是谁', '456', 'U', '1', '2019-05-16 16:46:59', '2019-05-16 16:46:59');

-- ----------------------------
-- Table structure for `user_h`
-- ----------------------------
DROP TABLE IF EXISTS `user_h`;
CREATE TABLE `user_h` (
  `userid` varchar(30) NOT NULL,
  `username` varchar(40) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `state` varchar(2) DEFAULT NULL,
  `permission` varchar(2) DEFAULT NULL,
  `creatdate` varchar(20) DEFAULT NULL,
  `changedate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_h
-- ----------------------------
