/*
Navicat MySQL Data Transfer

Source Server         : con_MySQL_5.7
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : hosbase

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-23 20:32:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `user_pwd` char(32) DEFAULT NULL,
  `sex` char(4) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `user_num` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('1', 'admin', 'admin', '男', '123', '山东', 'admin');

-- ----------------------------
-- Table structure for doc_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_info`;
CREATE TABLE `doc_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `user_pwd` char(32) DEFAULT NULL,
  `sex` char(4) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `user_num` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc_info
-- ----------------------------
INSERT INTO `doc_info` VALUES ('1', 'doctor', 'doctor', '女', '456', '山东', 'doctor');

-- ----------------------------
-- Table structure for pati_info
-- ----------------------------
DROP TABLE IF EXISTS `pati_info`;
CREATE TABLE `pati_info` (
  `pati_id` int(11) NOT NULL AUTO_INCREMENT,
  `pati_num` varchar(10) DEFAULT NULL,
  `pati_name` varchar(10) DEFAULT NULL,
  `pati_sex` char(4) DEFAULT NULL,
  `pati_ward_num` char(5) DEFAULT NULL,
  `pati_birthday` char(12) DEFAULT NULL,
  `pati_birthplace` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pati_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pati_info
-- ----------------------------

-- ----------------------------
-- Table structure for ward_info
-- ----------------------------
DROP TABLE IF EXISTS `ward_info`;
CREATE TABLE `ward_info` (
  `ward_id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_num` char(5) DEFAULT NULL,
  `ward_type` char(10) DEFAULT NULL,
  `ward_depart` varchar(10) DEFAULT NULL,
  `ward_bed` int(11) DEFAULT NULL,
  `ward_doc` varchar(10) DEFAULT NULL,
  `ward_doc_tel` char(11) DEFAULT NULL,
  `ward_rent` decimal(5,1) DEFAULT NULL,
  `ward_status` int(11) DEFAULT '0',
  PRIMARY KEY (`ward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ward_info
-- ----------------------------
INSERT INTO `ward_info` VALUES ('1', null, '1', null, null, null, null, null, '0');
