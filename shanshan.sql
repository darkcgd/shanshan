/*
Navicat MySQL Data Transfer

Source Server         : Dark
Source Server Version : 50631
Source Host           : localhost:3306
Source Database       : shanshan

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2017-10-15 01:25:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_activity`
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
  `start_Time` datetime DEFAULT NULL,
  `end_Time` datetime DEFAULT NULL,
  `custom_time1` varchar(255) DEFAULT NULL,
  `custom_time2` varchar(255) DEFAULT NULL,
  `custom_time3` varchar(255) DEFAULT NULL,
  `custom_time4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_article`
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
  `start_Time` datetime DEFAULT NULL,
  `end_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_article
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_article_category`
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
-- Records of tbl_article_category
-- ----------------------------
INSERT INTO `tbl_article_category` VALUES ('2', '加工应用', '0', '2017-09-28 15:32:04', '2017-09-28 15:32:07', null);
INSERT INTO `tbl_article_category` VALUES ('3', '维修保养', '0', '2017-09-28 15:32:27', '2017-09-28 15:32:29', null);
INSERT INTO `tbl_article_category` VALUES ('4', '其他', '0', '2017-09-28 15:42:34', '2017-09-28 15:42:41', null);
INSERT INTO `tbl_article_category` VALUES ('5', '加工中心', '2', '2017-09-28 15:42:37', '2017-09-28 15:42:43', null);
INSERT INTO `tbl_article_category` VALUES ('6', '车削中心', '2', '2017-09-28 15:42:57', '2017-09-28 15:42:46', null);
INSERT INTO `tbl_article_category` VALUES ('7', '其他机床', '2', '2017-09-28 15:42:49', '2017-09-28 15:43:03', null);
INSERT INTO `tbl_article_category` VALUES ('8', '加工中心', '3', '2017-09-28 15:42:52', '2017-09-28 15:43:05', null);
INSERT INTO `tbl_article_category` VALUES ('9', '车削中心', '3', '2017-09-28 15:43:00', '2017-09-28 15:42:54', null);

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
-- Table structure for `tbl_demo`
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
-- Records of tbl_demo
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_enroll`
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
  `join_date` varchar(0) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_enroll
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_equipment_info`
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
-- Records of tbl_equipment_info
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
-- Table structure for `tbl_fault_repair`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fault_repair`;
CREATE TABLE `tbl_fault_repair` (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `machine_tool_brand` varchar(255) DEFAULT NULL,
  `Machine_tool_model` varchar(255) DEFAULT NULL,
  `Machine tool_SN` varchar(255) DEFAULT NULL,
  `contacts_name` varchar(255) DEFAULT NULL,
  `contacts_phone` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_fault_repair
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sms_code
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_tag`
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
-- Records of tbl_tag
-- ----------------------------
INSERT INTO `tbl_tag` VALUES ('1', '推荐', '2017-08-09 20:44:11', '2017-08-09 20:44:14', null, '43', null);
INSERT INTO `tbl_tag` VALUES ('2', '置顶', '2017-08-09 20:44:59', '2017-08-09 20:45:01', null, '43', null);

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
  `platform_type` int(11) DEFAULT NULL COMMENT '0代表手机端 1代表PC端(目前只有客服能用PC端)',
  `token` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_token
-- ----------------------------
INSERT INTO `tbl_token` VALUES ('16', '61', null, '0', 'DA2D4C9955DDEF9A838B58097397137C', '2017-10-07 08:21:49', '2017-10-14 08:21:49');
INSERT INTO `tbl_token` VALUES ('17', '61', null, '1', '026561821E2E9BD6079D8877B9FE6CC9', '2017-09-29 17:41:38', '2017-10-06 17:41:38');
INSERT INTO `tbl_token` VALUES ('18', '63', null, '0', '59BA011B900B2C5F7FC331D4DC14BA14', '2017-10-07 08:26:33', '2017-10-14 08:26:33');
INSERT INTO `tbl_token` VALUES ('19', '64', null, '0', 'A17E1BEE0C42C765ED402382E7912955', '2017-10-11 21:03:36', '2017-10-18 21:03:36');
INSERT INTO `tbl_token` VALUES ('20', '65', null, '0', '28B021D1FE4C38B3C0BF98E5BBB4D6B2', '2017-10-07 08:43:42', '2017-10-14 08:43:42');
INSERT INTO `tbl_token` VALUES ('21', '62', null, '1', '5D06972DA90F5BE517094392476456D7', '2017-10-14 00:17:03', '2017-10-21 00:17:03');

-- ----------------------------
-- Table structure for `tbl_training_course`
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
  `start_Time` datetime DEFAULT NULL,
  `end_Time` datetime DEFAULT NULL,
  `custom_time1` varchar(255) DEFAULT NULL,
  `custom_time2` varchar(255) DEFAULT NULL,
  `custom_time3` varchar(255) DEFAULT NULL,
  `custom_time4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`training_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_training_course
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_user`
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
  `is_shanshan_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('64', '大哥你家乡有400斤鸭吗', null, null, null, null, null, '13600055457', null, null, null, '2017-10-07 08:27:35', '2017-10-07 08:27:35', '2017-10-11 21:03:36', '1', null, null, null, null, null, null, '广东快乐十分', null, null, null, null, null, '', null, null);
INSERT INTO `tbl_user` VALUES ('62', 'cgd', null, null, null, '123456', null, '13600055456', null, null, null, '2017-09-28 14:19:04', '2017-09-29 10:08:04', '2017-10-14 00:17:03', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_user` VALUES ('65', 'Daerk', null, null, null, null, null, '13600055458', null, null, null, '2017-10-07 08:43:42', '2017-10-07 08:43:42', '2017-10-07 08:43:42', '1', null, null, null, null, null, null, '化州市', null, null, null, null, null, '行业粉', null, null);
