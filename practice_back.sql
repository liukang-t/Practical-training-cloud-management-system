/*
 Navicat Premium Data Transfer

 Source Server         : 本地链接
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : practice_back

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 22/12/2023 16:01:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '删除 0-未删除 1-已删除',
  `relation_teacher_id` int(0) NULL DEFAULT NULL COMMENT '关联教师表id',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `school_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '院系名称',
  `practice_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实训标题',
  `practice_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实训内容',
  `counselor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '辅导员名称',
  `counselor_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '辅导员电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daily_report
-- ----------------------------
DROP TABLE IF EXISTS `daily_report`;
CREATE TABLE `daily_report`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '日报id',
  `relation_student_id` int(0) NULL DEFAULT NULL COMMENT '关联学生id',
  `content` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '工作概述',
  `problem` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '存在的问题',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `relation_class_id` int(0) NULL DEFAULT NULL COMMENT '关联班级id',
  `comment` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '逻辑删除：0=未删除，1=删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7008 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生日报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discuss_comment
-- ----------------------------
DROP TABLE IF EXISTS `discuss_comment`;
CREATE TABLE `discuss_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `relation_discuss_id` int(0) NULL DEFAULT NULL COMMENT '关联答疑id',
  `content` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `img_url` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片地址（多个以英文逗号分隔）',
  `reply_id` int(0) NULL DEFAULT NULL COMMENT '回复的id',
  `reply_people_id` int(0) NULL DEFAULT NULL COMMENT '回复的人的id',
  `user_parent_nick` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '回复的人的姓名',
  `user_parent_content` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '回复的评论内容',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_by_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人姓名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `like_num` int(0) NULL DEFAULT NULL COMMENT '点赞数',
  `user_avatar` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '逻辑删除：0=未删除，1=删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discuss_info
-- ----------------------------
DROP TABLE IF EXISTS `discuss_info`;
CREATE TABLE `discuss_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '答疑id',
  `relation_class_id` int(0) NULL DEFAULT NULL COMMENT '关联班级id',
  `relation_teacher_id` int(0) NULL DEFAULT NULL COMMENT '关联学生id',
  `content` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '答疑内容',
  `img_url` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件url',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_by_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人姓名',
  `user_avatar` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `like_num` int(0) NULL DEFAULT NULL COMMENT '点赞数',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '逻辑删除：0=未删除，1=删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '讨论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resource_info
-- ----------------------------
DROP TABLE IF EXISTS `resource_info`;
CREATE TABLE `resource_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '删除 0-未删除 1-已删除',
  `resource_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源类型 1-链接 2-文件',
  `resource_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `resource_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源链接',
  `relation_teacher_id` int(0) NULL DEFAULT NULL COMMENT '关联教师id',
  `relation_class_id` int(0) NULL DEFAULT NULL COMMENT '关联班级id',
  `resource_description` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '资源描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birth` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `student_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学号',
  `relation_user_id` int(0) NULL DEFAULT NULL COMMENT '用户表id',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '删除 0-未删除 1-已删除',
  `gender` int(0) NULL DEFAULT NULL COMMENT '性别 1-男 2-女',
  `relation_class_id` int(0) NULL DEFAULT NULL COMMENT '关联班级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for task_grade
-- ----------------------------
DROP TABLE IF EXISTS `task_grade`;
CREATE TABLE `task_grade`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '删除 0-未删除 1-已删除',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分数',
  `relation_task_id` int(0) NULL DEFAULT NULL COMMENT '关联任务id',
  `relation_student_id` int(0) NULL DEFAULT NULL COMMENT '关联学生id',
  `relation_teacher_id` int(0) NULL DEFAULT NULL COMMENT '关联教师id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务评分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for task_info
-- ----------------------------
DROP TABLE IF EXISTS `task_info`;
CREATE TABLE `task_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '删除 0-未删除 1-已删除',
  `task_status` int(0) NULL DEFAULT NULL COMMENT '任务状态 0-未发布 1-已发布 2-已结束',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '任务发布时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '任务结束时间',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务内容',
  `relation_class_id` int(0) NULL DEFAULT NULL COMMENT '关联班级id',
  `relation_teacher_id` int(0) NULL DEFAULT NULL COMMENT '关联教师id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '删除 0-未删除 1-已删除',
  `teacher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师名称',
  `gender` int(0) NULL DEFAULT NULL COMMENT '性别 1-男 2-女',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `teacher_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工号',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `relation_user_id` int(0) NULL DEFAULT NULL COMMENT '关联用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '教师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `user_status` int(0) NULL DEFAULT NULL COMMENT '用户状态 0-正常 1-注销',
  `user_ava` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_type` int(0) NULL DEFAULT NULL COMMENT '用户类型 1-老师 2-学生',
  `user_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户的手机号',
  `user_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户的邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for video_info
-- ----------------------------
DROP TABLE IF EXISTS `video_info`;
CREATE TABLE `video_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '视频id',
  `video_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '视频名称',
  `video_url` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '视频链接',
  `content` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `relation_student_id` int(0) NULL DEFAULT NULL COMMENT '关联学生id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '视频状态',
  `relation_class_id` int(0) NULL DEFAULT NULL COMMENT '关联班级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 611 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '视频列表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
