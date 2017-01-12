/*
Navicat MySQL Data Transfer

Source Server         : DC2_SOPMOEI_IN
Source Server Version : 50505
Source Host           : 192.168.1.220:3306
Source Database       : db_anc

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-01-10 13:58:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for temp_import
-- ----------------------------
DROP TABLE IF EXISTS `temp_import`;
CREATE TABLE `temp_import` (
  `num_row` char(5) DEFAULT NULL,
  `hospital` varchar(100) DEFAULT NULL,
  `fname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `cid` varchar(15) DEFAULT NULL,
  `age` char(5) DEFAULT NULL,
  `edc` date DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `moo` char(5) DEFAULT NULL,
  `tumbon` varchar(100) DEFAULT NULL,
  `home` varchar(100) DEFAULT NULL,
  `risk1` varchar(100) DEFAULT NULL,
  `risk2` varchar(100) DEFAULT NULL,
  `risk3` varchar(100) DEFAULT NULL,
  `plan` varchar(100) DEFAULT NULL,
  `inhome` varchar(100) DEFAULT NULL,
  `infomation` varchar(150) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `bplace` varchar(100) DEFAULT NULL,
  `bweight` varchar(10) DEFAULT NULL,
  `anc5` varchar(50) DEFAULT NULL,
  `anc12w` varchar(50) DEFAULT NULL,
  `labor` char(1) NOT NULL,
  `detail` tinytext,
  `map` blob,
  `d_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_person_anc
-- ----------------------------
DROP TABLE IF EXISTS `t_person_anc`;
CREATE TABLE `t_person_anc` (
  `num_row` char(5) DEFAULT NULL,
  `hospital` varchar(100) DEFAULT NULL,
  `fname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `cid` char(13) DEFAULT NULL,
  `age` char(3) DEFAULT NULL,
  `edc` date DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `moo` char(5) DEFAULT NULL,
  `tumbon` varchar(100) DEFAULT NULL,
  `home` varchar(100) DEFAULT NULL,
  `risk1` varchar(100) DEFAULT NULL,
  `risk2` varchar(100) DEFAULT NULL,
  `risk3` varchar(100) DEFAULT NULL,
  `plan` varchar(100) DEFAULT NULL,
  `inhome` varchar(100) DEFAULT NULL,
  `infomation` varchar(150) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `bplace` varchar(100) DEFAULT NULL,
  `bweight` varchar(10) DEFAULT NULL,
  `anc5` varchar(50) DEFAULT NULL,
  `anc12w` varchar(50) DEFAULT NULL,
  `labor` char(1) DEFAULT NULL,
  `detail` mediumtext,
  `map` longblob,
  `d_update` datetime NOT NULL,
  `t_id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;


