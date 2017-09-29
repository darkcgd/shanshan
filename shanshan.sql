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

 Date: 09/29/2017 17:42:38 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbl_tag`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tag`;
CREATE TABLE `tbl_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tbl_tag`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_tag` VALUES ('1', '推荐', '2017-08-09 20:44:11', '2017-08-09 20:44:14', null, '43', null), ('2', '置顶', '2017-08-09 20:44:59', '2017-08-09 20:45:01', null, '43', null);
COMMIT;

-- ----------------------------
--  Table structure for `tbl_token`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_token`;
CREATE TABLE `tbl_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL COMMENT '0代表普通用户 1代表商家',
  `platform_type` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tbl_token`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_token` VALUES ('16', '61', null, '0', '85706EC49F9017B9666832D791A70A89', '2017-09-29 17:41:33', '2017-10-06 17:41:33'), ('17', '61', null, '1', '026561821E2E9BD6079D8877B9FE6CC9', '2017-09-29 17:41:38', '2017-10-06 17:41:38');
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
  `wx_open_id` varchar(255) DEFAULT NULL,
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
  `user_type` int(1) DEFAULT NULL COMMENT '1为A级用户 2为B级用户 3为C级用户 4为客服 5为技术专家',
  `remark` varchar(255) DEFAULT NULL,
  `department_name` varchar(11) DEFAULT NULL,
  `position_name` varchar(11) DEFAULT NULL,
  `provinces_cities` varchar(255) DEFAULT NULL,
  `referrals_name` varchar(255) DEFAULT NULL,
  `referrals_phone` varchar(255) DEFAULT NULL,
  `company` varchar(11) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `expertise_areas` varchar(255) DEFAULT NULL,
  `buy_equipment_channel` varchar(255) DEFAULT NULL COMMENT '设备采购途径',
  `equipment_type` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `industry` varchar(255) DEFAULT NULL COMMENT '行业',
  `status` int(11) DEFAULT NULL COMMENT '1待审核 2已审核',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tbl_user`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_user` VALUES ('61', 'Dark_cgd', null, '69C590E00188F1DE75DC3C93AE7E3131', null, '123456', null, '13600055457', null, null, null, '2017-09-28 14:19:04', '2017-09-29 16:39:02', '2017-09-29 17:41:38', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('62', 'Dark_cgd_66', null, null, null, null, null, '13600055456', null, null, null, '2017-09-28 14:19:04', '2017-09-29 10:08:04', '2017-09-29 16:13:42', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
