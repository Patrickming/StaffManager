/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : staff_manager

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 09/08/2023 21:44:36
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考勤名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '正常0,事假1,迟到2,早退3,病假4,旷工5,休补6',
  `time` datetime NULL DEFAULT NULL COMMENT '考勤日期',
  `audit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态:0正在审核，1审核通过，2审核不通过',
  `department_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `clerk_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工id',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('1638782305318051842', NULL, '1', '2023-03-01 00:00:00', '1', '1340584045776916482', '1638778252236267521', 0, '2023-03-23 13:58:43', '2023-03-23 14:00:14');
INSERT INTO `attendance` VALUES ('1638782560528867330', NULL, '4', '2023-03-01 00:00:00', '0', '1340584967022235649', '1638779582375895042', 0, '2023-03-23 13:59:44', '2023-03-23 13:59:44');

-- ----------------------------
-- Table structure for clerk
-- ----------------------------
DROP TABLE IF EXISTS `clerk`;
CREATE TABLE `clerk`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职员姓名',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别:0->女,1->男',
  `phone_number` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `id_card` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `position` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `department_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `user_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号编号',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clerk
-- ----------------------------
INSERT INTO `clerk` VALUES ('1638778252236267521', '张三', '1', '13333333333', '/files/4000df996d0b4f7eb59ce413675fde54file.png', '445111111111111111', '北京市', '主管', '1340584045776916482', '1638778252097855489', 0, '2023-03-23 13:42:37', '2023-08-09 20:00:57');
INSERT INTO `clerk` VALUES ('1638779582375895042', '李四', '0', '15811111111', '/files/17031f1446724d52990ebbbbe4d2026afile.png', '512111111111111111', '上海市', '普通职员', '1340584967022235649', '1638779582187151361', 0, '2023-03-23 13:47:54', '2023-08-09 20:06:30');
INSERT INTO `clerk` VALUES ('1638779765465653250', '王五', '1', '14777777777', '/files/2a9b6f736aec40a7b32b459d8dc0002ffile.png', '147777444444445555', '重庆市', '总经理', '1340585021044871170', '1638779765335629826', 0, '2023-03-23 13:48:38', '2023-08-09 20:06:42');
INSERT INTO `clerk` VALUES ('1638780386969231362', '刘六', '1', '18977777777', '/files/d98e5da8dc904e88a2765c254674b303file.png', '445444444444444444', '海口市', '普通职工', '1340603278481043457', '1638780386969231361', 0, '2023-03-23 13:51:06', '2023-08-09 20:06:56');
INSERT INTO `clerk` VALUES ('1638781944314306561', '小明', '0', '15944444444', '/files/ed42a2687fda44afb736d59da0b3d121file.png', '445111111111111111', '乌兰察布市', '普通职工', '1340585021044871170', '1638781944117174273', 0, '2023-03-23 13:57:17', '2023-08-09 20:07:06');

-- ----------------------------
-- Table structure for clerk_through
-- ----------------------------
DROP TABLE IF EXISTS `clerk_through`;
CREATE TABLE `clerk_through`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `clerk_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工id',
  `position` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `department_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工经历表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clerk_through
-- ----------------------------
INSERT INTO `clerk_through` VALUES ('1638778252299182081', '1638778252236267521', '主管', '1340584045776916482', 0, '2023-03-23 13:42:37', '2023-03-23 13:42:37');
INSERT INTO `clerk_through` VALUES ('1638779582375895044', '1638779582375895042', '普通职员', '1340584967022235649', 0, '2023-03-23 13:47:54', '2023-03-23 13:47:54');
INSERT INTO `clerk_through` VALUES ('1638779765465653252', '1638779765465653250', '总经理', '1340585021044871170', 0, '2023-03-23 13:48:38', '2023-03-23 13:48:38');
INSERT INTO `clerk_through` VALUES ('1638780386969231364', '1638780386969231362', '普通职工', '1340603278481043457', 0, '2023-03-23 13:51:06', '2023-03-23 13:51:06');
INSERT INTO `clerk_through` VALUES ('1638781944314306563', '1638781944314306561', '普通职工', '1340585021044871170', 0, '2023-03-23 13:57:17', '2023-03-23 13:57:17');

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `time` datetime NULL DEFAULT NULL COMMENT '签约日期',
  `clerk_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工id',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  `timeout` datetime NULL DEFAULT NULL COMMENT '截至时间',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES ('1639122704003883009', '张三的卖身契', '2023-03-24 20:28:34', '1638778252236267521', 0, '2023-03-24 12:31:21', '2023-03-24 12:31:21', '2025-03-24 08:00:00', '/files/e4846f83b274452996e1c1fef4e050cefile.png');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `note` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1340584045776916482', '人事部门', NULL, 0, '2020-12-20 17:05:18', '2020-12-20 18:20:26');
INSERT INTO `department` VALUES ('1340584967022235649', '运营部门', NULL, 0, '2020-12-20 17:08:58', '2020-12-20 18:22:14');
INSERT INTO `department` VALUES ('1340585021044871170', '市场部', NULL, 0, '2020-12-20 17:09:11', '2020-12-20 17:09:11');
INSERT INTO `department` VALUES ('1340603143789359106', '后勤部', NULL, 1, '2020-12-20 18:21:11', '2020-12-20 18:21:11');
INSERT INTO `department` VALUES ('1340603278481043457', '后勤部', NULL, 0, '2020-12-20 18:21:43', '2020-12-20 18:21:43');

-- ----------------------------
-- Table structure for rewards_punishments
-- ----------------------------
DROP TABLE IF EXISTS `rewards_punishments`;
CREATE TABLE `rewards_punishments`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖惩类型:0奖励，1惩罚',
  `time` datetime NULL DEFAULT NULL COMMENT '奖惩日期',
  `reason` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖惩原因',
  `amount` decimal(19, 4) NULL DEFAULT NULL COMMENT '奖惩金额',
  `note` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `clerk_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工id',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  `department_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖惩表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `userid` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', '管理员', 0, '2020-12-15 08:22:01', '2020-12-15 08:22:03');
INSERT INTO `role` VALUES ('1638778252236267522', '1638778252097855489', '职员', 0, '2023-03-23 13:42:37', '2023-03-23 13:42:37');
INSERT INTO `role` VALUES ('1638779582375895043', '1638779582187151361', '职员', 0, '2023-03-23 13:47:54', '2023-03-23 13:47:54');
INSERT INTO `role` VALUES ('1638779765465653251', '1638779765335629826', '职员', 0, '2023-03-23 13:48:38', '2023-03-23 13:48:38');
INSERT INTO `role` VALUES ('1638780386969231363', '1638780386969231361', '职员', 0, '2023-03-23 13:51:06', '2023-03-23 13:51:06');
INSERT INTO `role` VALUES ('1638781944314306562', '1638781944117174273', '职员', 0, '2023-03-23 13:57:17', '2023-03-23 13:57:17');
INSERT INTO `role` VALUES ('1638782217577406465', '1638778252097855489', '人事经理', 0, '2023-03-23 13:58:22', '2023-03-23 13:58:22');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户介绍',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `is_deleted` int(0) NULL DEFAULT 0,
  `gmt_create` datetime NULL DEFAULT NULL,
  `gmt_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '公司老板', '/files/5131184693674b5c8ad9e938babf6cd4file.png', 0, '2020-12-15 08:21:25', '2020-12-15 08:21:26');
INSERT INTO `user` VALUES ('1638778252097855489', '13333333333', 'e10adc3949ba59abbe56e057f20f883e', '张三', NULL, '/files/eb3e5f33df9f4c83b945337e6fce6a46file.png', 0, '2023-03-23 13:42:37', '2023-08-09 20:01:48');
INSERT INTO `user` VALUES ('1638779582187151361', '15811111111', 'e10adc3949ba59abbe56e057f20f883e', '李四', NULL, '/files/fa321d4b730846c8b8cbd59030b291dafile.png', 0, '2023-03-23 13:47:54', '2023-08-09 21:27:34');
INSERT INTO `user` VALUES ('1638779765335629826', '14777777777', 'e10adc3949ba59abbe56e057f20f883e', '王五', NULL, '/files/7b9021e311ba483fbcd4efdd38cdf4a6file.png', 0, '2023-03-23 13:48:38', '2023-08-09 21:28:42');
INSERT INTO `user` VALUES ('1638780386969231361', '18977777777', 'e10adc3949ba59abbe56e057f20f883e', '刘六', NULL, '/files/15478aade5614048a544b21aac660f85file.png', 0, '2023-03-23 13:51:06', '2023-08-09 21:29:33');
INSERT INTO `user` VALUES ('1638781944117174273', '15944444444', 'e10adc3949ba59abbe56e057f20f883e', '小明', NULL, '/files/b277805341dc4dc48054dbf5ace99edcfile.png', 0, '2023-03-23 13:57:17', '2023-08-09 21:30:22');

SET FOREIGN_KEY_CHECKS = 1;
