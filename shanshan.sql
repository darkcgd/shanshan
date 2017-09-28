/*
 Navicat Premium Data Transfer

 Source Server         : dark
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost
 Source Database       : shanshan

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : utf-8

 Date: 09/28/2017 17:43:01 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tbl_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `relate_permission_user_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_need_company` int(11) DEFAULT NULL,
  `is_need_user_name` int(11) DEFAULT NULL,
  `is_need_phone` int(11) DEFAULT NULL,
  `is_need_company_address` int(11) DEFAULT NULL,
  `is_need_email` int(11) DEFAULT NULL,
  `is_need_position_name` int(11) DEFAULT NULL,
  `is_need_department_name` int(11) DEFAULT NULL,
  `is_need_free_lunch` int(11) DEFAULT NULL,
  `is_need_provide_accommodation` int(11) DEFAULT NULL,
  `is_need_join_date` int(11) DEFAULT NULL,
  `is_need_source` int(11) DEFAULT NULL,
  `is_need_photo` int(11) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_article`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_article`;
CREATE TABLE `tbl_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `relate_activity_id` int(11) DEFAULT NULL,
  `relate_permission_user_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_need_company` int(11) DEFAULT NULL,
  `is_need_user_name` int(11) DEFAULT NULL,
  `is_need_phone` int(11) DEFAULT NULL,
  `is_need_company_address` int(11) DEFAULT NULL,
  `is_need_email` int(11) DEFAULT NULL,
  `is_need_position_name` int(11) DEFAULT NULL,
  `is_need_department_name` int(11) DEFAULT NULL,
  `is_need_free_lunch` int(11) DEFAULT NULL,
  `is_need_provide_accommodation` int(11) DEFAULT NULL,
  `is_need_join_date` int(11) DEFAULT NULL,
  `is_need_source` int(11) DEFAULT NULL,
  `is_need_photo` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_article_category`;
CREATE TABLE `tbl_article_category` (
  `article_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_category_name` varchar(11) DEFAULT NULL,
  `article_category_parent_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tbl_article_category`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_article_category` VALUES ('2', '加工应用', '0', '2017-09-28 15:32:04', '2017-09-28 15:32:07', null), ('3', '维修保养', '0', '2017-09-28 15:32:27', '2017-09-28 15:32:29', null), ('4', '其他', '0', '2017-09-28 15:42:34', '2017-09-28 15:42:41', null), ('5', '加工中心', '2', '2017-09-28 15:42:37', '2017-09-28 15:42:43', null), ('6', '车削中心', '2', '2017-09-28 15:42:57', '2017-09-28 15:42:46', null), ('7', '其他机床', '2', '2017-09-28 15:42:49', '2017-09-28 15:43:03', null), ('8', '加工中心', '3', '2017-09-28 15:42:52', '2017-09-28 15:43:05', null), ('9', '车削中心', '3', '2017-09-28 15:43:00', '2017-09-28 15:42:54', null);
COMMIT;

-- ----------------------------
--  Table structure for `tbl_company`
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
--  Table structure for `tbl_demo`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_demo`;
CREATE TABLE `tbl_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_enroll`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_enroll`;
CREATE TABLE `tbl_enroll` (
  `enroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `from_type` int(11) DEFAULT NULL COMMENT '活动报名是1 培训报名是2',
  `from_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `free_lunch` int(255) DEFAULT NULL,
  `provide_accommodation` int(255) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_equipment_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equipment_info`;
CREATE TABLE `tbl_equipment_info` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `equipment_name` varchar(255) DEFAULT NULL,
  `equipment_parent_id` int(11) DEFAULT NULL,
  `equipment_category` int(11) DEFAULT NULL COMMENT '1为大型设备  2为小型设备',
  `logo` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `datas` varchar(255) DEFAULT NULL,
  `relate_permission_user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_equipment_type`
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
--  Table structure for `tbl_fault_repair`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fault_repair`;
CREATE TABLE `tbl_fault_repair` (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `machine_tool_brand` varchar(255) DEFAULT NULL,
  `Machine tool_model` varchar(255) DEFAULT NULL,
  `Machine tool_SN` varchar(255) DEFAULT NULL,
  `contacts_name` varchar(255) DEFAULT NULL,
  `contacts_phone` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_industry`
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
--  Table structure for `tbl_sms_code`
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_technology_user`
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
--  Records of `tbl_technology_user`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_technology_user` VALUES ('43', 'dark_cgd_zyy', null, null, 'WE2pongx7V/c0y4BXnYZtA==', 'http://img.blog.csdn.net/20160127143219936', '13600055457', null, '23', '1', '2017-08-13 16:30:04', '2017-08-13 16:30:24', '2017-08-13 16:30:14', null, null, null, null, null, null), ('46', '迷梦', null, null, 'bZMHZN5iofs=', null, null, null, '21', '1', '2017-08-13 16:30:06', '2017-08-13 16:30:28', '2017-08-13 16:30:16', null, null, null, null, null, null), ('45', '迷梦浪子', null, null, 'WE2pongx7V/c0y4BXnYZtA==', null, null, null, null, '1', '2017-08-13 16:30:08', '2017-08-13 16:30:32', '2017-08-13 16:30:20', null, null, null, null, null, null), ('47', 'cyx123', null, null, 'bZMHZN5iofs=', null, null, null, '22', '1', '2017-08-13 16:30:12', '2017-08-13 16:29:33', '2017-09-21 17:24:23', null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `tbl_token`
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tbl_token`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_token` VALUES ('1', '43', '0', '8359D64698D674AE828F0A915C2F72E3', '2017-08-13 16:18:02', '2017-10-20 16:18:02'), ('2', '46', '0', '9926A23F82BDC7ACCD9D74125EF73A7F', '2017-08-13 16:19:14', '2017-08-20 16:19:14'), ('3', '45', '0', '71FE757D5F0E5361B75C1AE886C74E65', '2017-08-13 16:19:55', '2017-08-20 16:19:55'), ('4', '47', '0', '0007AEC91EAFF66BC80908763361136D', '2017-09-21 17:24:23', '2017-09-28 17:24:23'), ('5', '2', '0', 'A2ED6FED672BACB3B8CB84C980BD6C0C', '2017-09-21 20:21:22', '2017-09-28 20:21:22'), ('6', '1', '0', 'D580B0661275A8B7AFD70535B0792E6E', '2017-09-21 20:23:58', '2017-09-28 20:23:58'), ('7', '2', '1', '0387EDDAA08B066CBF331B73B3D13131', '2017-09-24 21:43:36', '2017-10-01 21:43:36'), ('8', '52', '0', '2F43BF8F698CC73C5B4337C472525CCA', '2017-09-28 11:43:20', '2017-10-05 11:43:20'), ('9', '53', '0', 'BB74A45B8BBA6B73F1053E92D5AF9A30', '2017-09-28 14:00:20', '2017-10-05 14:00:20'), ('10', '56', '0', '477A7724507C4A629E075B975F7003DB', '2017-09-28 14:05:55', '2017-10-05 14:05:55'), ('11', '57', '0', '315CC109B6CA49D39915FA70F31E0936', '2017-09-28 14:10:08', '2017-10-05 14:10:08'), ('12', '58', '0', '241B0CA42E1BEC3553BE4DB62D1082ED', '2017-09-28 14:10:51', '2017-10-05 14:10:51'), ('13', '59', '0', '02DB40512B24B444DE2E84418BF2F634', '2017-09-28 14:13:38', '2017-10-05 14:13:38'), ('14', '60', '0', '584D30EA4602BF4E40C8614C51FF3069', '2017-09-28 14:15:51', '2017-10-05 14:15:51'), ('15', '61', '0', 'ACC9153AB539D984F91C4C4E33CBBE88', '2017-09-28 14:19:58', '2017-10-05 14:19:58');
COMMIT;

-- ----------------------------
--  Table structure for `tbl_training_course`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_training_course`;
CREATE TABLE `tbl_training_course` (
  `training_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `relate_permission_user_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_need_company` int(11) DEFAULT NULL,
  `is_need_user_name` int(11) DEFAULT NULL,
  `is_need_phone` int(11) DEFAULT NULL,
  `is_need_company_address` int(11) DEFAULT NULL,
  `is_need_email` int(11) DEFAULT NULL,
  `is_need_position_name` int(11) DEFAULT NULL,
  `is_need_department_name` int(11) DEFAULT NULL,
  `is_need_free_lunch` int(11) DEFAULT NULL,
  `is_need_provide_accommodation` int(11) DEFAULT NULL,
  `is_need_join_date` int(11) DEFAULT NULL,
  `is_need_source` int(11) DEFAULT NULL,
  `is_need_photo` int(11) DEFAULT NULL,
  PRIMARY KEY (`training_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_user`
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
  `user_type` int(1) DEFAULT NULL COMMENT '1为A级用户 2为B级用户 3为C级用户 ',
  `remark` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_name` varchar(11) DEFAULT NULL,
  `position_name` varchar(11) DEFAULT NULL,
  `provinces_cities` varchar(255) DEFAULT NULL,
  `referrals_name` varchar(255) DEFAULT NULL,
  `referrals_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tbl_user`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_user` VALUES ('61', 'Dark_cgd', null, null, null, null, null, '13600055457', null, null, null, '2017-09-28 14:19:04', '2017-09-28 14:19:04', '2017-09-28 14:19:59', '1', null, null, null, null, null, null, null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
