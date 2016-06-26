/*
Navicat MySQL Data Transfer

Source Server         : MySQL56
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : electronicstore

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-07 16:50:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
