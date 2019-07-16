/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3308
 Source Schema         : zu

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 15/07/2019 16:25:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for houselist
-- ----------------------------
DROP TABLE IF EXISTS `houselist`;
CREATE TABLE `houselist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` double DEFAULT NULL,
  `floor` int(10) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`, `houseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of houselist
-- ----------------------------
INSERT INTO `houselist` VALUES (3, 'w356', '文理楼356', 60, 3, NULL);
INSERT INTO `houselist` VALUES (4, 'w236', '文理楼236', 66, 2, '已借出');
INSERT INTO `houselist` VALUES (5, 'w544', '文理楼544', 60, 5, '已借出');
INSERT INTO `houselist` VALUES (6, 'w545', '文理楼545', 60, 5, '已借出');
INSERT INTO `houselist` VALUES (7, 'w543', '文理楼543', 60, 5, '未借出');
INSERT INTO `houselist` VALUES (25, 'w185', '文理楼185', 60, 1, '未借出');

-- ----------------------------
-- Table structure for mr_apply
-- ----------------------------
DROP TABLE IF EXISTS `mr_apply`;
CREATE TABLE `mr_apply`  (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mr_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apply_res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mr_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mr_state` int(255) DEFAULT NULL,
  `ref_res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`user_name`, `start_time`, `mr_id`) USING BTREE,
  INDEX `mr_id`(`mr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mr_apply
-- ----------------------------
INSERT INTO `mr_apply` VALUES ('张三', 'w185', '团日活动', '2019-07-14 14:00', '2019-07-14 18:00', '文理楼542', 0, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w236', '开会', '2019-07-14 14:00', '2019-07-14 16:00', '文理楼236', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w357', '主题班会', '2019-07-14 14:00', '2019-07-14 16:00', '文理楼357', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w543', '主题班会', '2019-07-14 14:00', '2019-07-15 18:00', '文理楼543', 0, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w544', '开会', '2019-07-14 14:00', '2019-07-14 16:00', '文理楼544', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w545', '打游戏', '2019-07-14 14:00', '2019-07-14 16:00', '文理楼545', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w236', '开会', '2019-07-14 18:00', '2019-07-14 20:00', '文理楼236', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w544', '开会', '2019-07-15 09:30', '2019-07-15 11:00', '文理楼544', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w544', '开会', '2019-07-15 19:00', '2019-07-15 20:00', '文理楼544', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w236', '开会', '2019-07-16 07:31', '2019-07-16 11:24', '文理楼236', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w236', '开会', '2019-07-16 15:47', '2019-07-16 11:24', '文理楼236', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w544', '开会', '2019-07-16 19:00', '2019-07-16 20:00', '文理楼544', 1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w236', '开会', '2019-07-17 15:47', '2019-07-17 11:24', '文理楼236', -1, NULL);
INSERT INTO `mr_apply` VALUES ('张三', 'w544', '开会', '2019-07-17 19:00', '2019-07-17 20:00', '文理楼544', -1, NULL);
INSERT INTO `mr_apply` VALUES ('李四', 'w185', '开会', '2019-07-14 14:00', '2019-07-16 16:00', '文理楼185', -1, NULL);
INSERT INTO `mr_apply` VALUES ('李四', 'w236', '主题班会', '2019-07-15 14:00', '2019-07-15 16:00', '文理楼357', 1, NULL);
INSERT INTO `mr_apply` VALUES ('王五', 'w236', '团日活动', '2019-07-14 14:00', '2019-07-14 18:00', '文理楼542', 1, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1608020210 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 'admin', NULL);
INSERT INTO `user` VALUES (2, '1608020209', '1608020209', 'zuke', '张三');
INSERT INTO `user` VALUES (3, '1608020208', '1608020208', 'zuke', '李四');
INSERT INTO `user` VALUES (4, '1608020210', '1608020210', 'zuke', '王五');

-- ----------------------------
-- Table structure for wrong
-- ----------------------------
DROP TABLE IF EXISTS `wrong`;
CREATE TABLE `wrong`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wrong
-- ----------------------------
INSERT INTO `wrong` VALUES (4, 'w356', '文理楼356', '2019-09-08', '放映机损坏', '已处理');
INSERT INTO `wrong` VALUES (6, 'w544', '文理楼544', '2019-10-08', '窗户坏了', '已处理');
INSERT INTO `wrong` VALUES (7, 'w236', '文理楼236', '2019-10-10', '门把手坏了', '已处理');
INSERT INTO `wrong` VALUES (8, 'w543', '文理楼543', '2019-10-09', '空调漏水', '待处理');
INSERT INTO `wrong` VALUES (9, 'w543', '文理楼543', '2019-10-09', '门把手坏了', '待处理');

SET FOREIGN_KEY_CHECKS = 1;
