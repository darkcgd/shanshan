/*
Navicat MySQL Data Transfer

Source Server         : Dark
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shanshan

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-27 22:16:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_company`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_company`;
CREATE TABLE `tbl_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `buy_equipment_channel_id` int(11) DEFAULT NULL,
  `equipment_type_id` int(11) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_company
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_equipment_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equipment_type`;
CREATE TABLE `tbl_equipment_type` (
  `equipment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_type_name` int(11) DEFAULT NULL,
  `equipment_parent_type_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`equipment_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_equipment_type
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_industry`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_industry`;
CREATE TABLE `tbl_industry` (
  `industry_id` int(11) NOT NULL AUTO_INCREMENT,
  `industry_name` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_industry
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_sms_code`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sms_code`;
CREATE TABLE `tbl_sms_code` (
  `sms_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `sms_code` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sms_code_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sms_code
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_technology_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_technology_user`;
CREATE TABLE `tbl_technology_user` (
  `technology_id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_name` varchar(255) DEFAULT NULL,
  `wx_union_id` varchar(255) DEFAULT NULL,
  `wx_access_token` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `head_url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL COMMENT '0代表女,1代表男',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL COMMENT '默认为0 0为A级用户 1为B级用户 2为C级用户 ',
  `remark` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `attributes` varchar(11) DEFAULT NULL,
  `experience_years` varchar(11) DEFAULT NULL,
  `expertise_areas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`technology_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_technology_user
-- ----------------------------
INSERT INTO `tbl_technology_user` VALUES ('43', 'dark_cgd_zyy', null, null, 'WE2pongx7V/c0y4BXnYZtA==', 'http://img.blog.csdn.net/20160127143219936', '13600055457', null, '23', '1', '2017-08-13 16:30:04', '2017-08-13 16:30:24', '2017-08-13 16:30:14', null, null, null, null, null, null);
INSERT INTO `tbl_technology_user` VALUES ('46', '迷梦', null, null, 'bZMHZN5iofs=', null, null, null, '21', '1', '2017-08-13 16:30:06', '2017-08-13 16:30:28', '2017-08-13 16:30:16', null, null, null, null, null, null);
INSERT INTO `tbl_technology_user` VALUES ('45', '迷梦浪子', null, null, 'WE2pongx7V/c0y4BXnYZtA==', null, null, null, null, '1', '2017-08-13 16:30:08', '2017-08-13 16:30:32', '2017-08-13 16:30:20', null, null, null, null, null, null);
INSERT INTO `tbl_technology_user` VALUES ('47', 'cyx123', null, null, 'bZMHZN5iofs=', null, null, null, '22', '1', '2017-08-13 16:30:12', '2017-08-13 16:29:33', '2017-09-21 17:24:23', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_token`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_token`;
CREATE TABLE `tbl_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL COMMENT '0代表普通用户 1代表商家',
  `token` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_token
-- ----------------------------
INSERT INTO `tbl_token` VALUES ('1', '43', '0', '8359D64698D674AE828F0A915C2F72E3', '2017-08-13 16:18:02', '2017-10-20 16:18:02');
INSERT INTO `tbl_token` VALUES ('2', '46', '0', '9926A23F82BDC7ACCD9D74125EF73A7F', '2017-08-13 16:19:14', '2017-08-20 16:19:14');
INSERT INTO `tbl_token` VALUES ('3', '45', '0', '71FE757D5F0E5361B75C1AE886C74E65', '2017-08-13 16:19:55', '2017-08-20 16:19:55');
INSERT INTO `tbl_token` VALUES ('4', '47', '0', '0007AEC91EAFF66BC80908763361136D', '2017-09-21 17:24:23', '2017-09-28 17:24:23');
INSERT INTO `tbl_token` VALUES ('5', '2', '0', 'A2ED6FED672BACB3B8CB84C980BD6C0C', '2017-09-21 20:21:22', '2017-09-28 20:21:22');
INSERT INTO `tbl_token` VALUES ('6', '1', '0', 'D580B0661275A8B7AFD70535B0792E6E', '2017-09-21 20:23:58', '2017-09-28 20:23:58');
INSERT INTO `tbl_token` VALUES ('7', '2', '1', '0387EDDAA08B066CBF331B73B3D13131', '2017-09-24 21:43:36', '2017-10-01 21:43:36');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_nick_name` varchar(255) DEFAULT NULL,
  `wx_union_id` varchar(255) DEFAULT NULL,
  `wx_access_token` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `head_url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL COMMENT '0代表女,1代表男',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL COMMENT '默认为0 0为A级用户 1为B级用户 2为C级用户 ',
  `remark` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_name` varchar(11) DEFAULT NULL,
  `position_name` varchar(11) DEFAULT NULL,
  `provinces_cities` varchar(255) DEFAULT NULL,
  `referrals_name` varchar(255) DEFAULT NULL,
  `referrals_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('43', 'dark_cgd_zyy', null, null, null, 'WE2pongx7V/c0y4BXnYZtA==', 'http://img.blog.csdn.net/20160127143219936', '13600055457', null, '23', '1', '2017-08-13 16:30:04', '2017-08-13 16:30:24', '2017-08-13 16:30:14', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_user` VALUES ('46', '迷梦', null, null, null, 'bZMHZN5iofs=', null, null, null, '21', '1', '2017-08-13 16:30:06', '2017-08-13 16:30:28', '2017-08-13 16:30:16', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_user` VALUES ('45', '迷梦浪子', null, null, null, 'WE2pongx7V/c0y4BXnYZtA==', null, null, null, null, '1', '2017-08-13 16:30:08', '2017-08-13 16:30:32', '2017-08-13 16:30:20', null, null, null, null, null, null, null, null);
INSERT INTO `tbl_user` VALUES ('47', 'cyx123', null, null, null, 'bZMHZN5iofs=', null, null, null, '22', '1', '2017-08-13 16:30:12', '2017-08-13 16:29:33', '2017-09-21 17:24:23', null, null, null, null, null, null, null, null);
