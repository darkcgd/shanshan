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

 Date: 10/18/2017 14:30:29 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tbl_equipment_type`
-- ----------------------------
alter table tbl_equipment_type modify column equipment_type_name varchar(255) DEFAULT NULL;

SET FOREIGN_KEY_CHECKS = 1;
