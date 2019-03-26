/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : db_sharding_master

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 26/03/2019 13:32:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_zone
-- ----------------------------
DROP TABLE IF EXISTS `t_zone`;
CREATE TABLE `t_zone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `key` tinyint(4) NULL DEFAULT NULL COMMENT '分区 key',
  `value` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据源',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_zone
-- ----------------------------
INSERT INTO `t_zone` VALUES (1, 1, 'zone_1', '2019-03-26 12:58:34', 'tom');
INSERT INTO `t_zone` VALUES (2, 2, 'zone_1', '2019-03-26 12:59:06', 'tom');
INSERT INTO `t_zone` VALUES (3, 3, 'zone_2', '2019-03-26 12:59:20', 'tom');
INSERT INTO `t_zone` VALUES (4, 4, 'zone_2', '2019-03-26 12:59:31', 'tom');
INSERT INTO `t_zone` VALUES (5, 5, 'zone_3', '2019-03-26 12:59:49', 'tom');

SET FOREIGN_KEY_CHECKS = 1;
