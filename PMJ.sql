/*
 Navicat Premium Dump SQL

 Source Server         : zzl
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : pmj

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 01/04/2025 16:43:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `demand_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `week` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `current_progress` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `p_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `p_detail` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  UNIQUE INDEX `demand_id`(`demand_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting
-- ----------------------------
INSERT INTO `meeting` VALUES ('202503030001S1SY13C2', 'week12', 'T2', '项目16', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A', 'week4', 'T2', '项目98', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AT9', 'week42', 'T2', '项目98', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AZ8', 'week39', 'T2', '项目68', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('A\r', 'week42', 'T2', '项目17', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A\rO', 'week35', 'T4', '项目87', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('A\rZ', 'week36', 'T4', '项目14', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('A0', 'week4', 'T2', '项目56', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A0R2', 'week47', 'T2', '项目52', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('A0U', 'week38', 'T4', '项目83', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('A0U2', 'week40', 'T2', '项目78', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A2', 'week36', 'T4', '项目28', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('A4', 'week43', 'T2', '项目73', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('A4I5', 'week13', 'T3', '项目16', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A4T1', 'week22', 'T1', '项目78', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A6', 'week13', 'T3', '项目2', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('A6N7', 'week25', 'T1', '项目8', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('A6P', 'week7', 'T1', '项目89', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A6S4', 'week36', 'T4', '项目83', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('A8', 'week20', 'T4', '项目96', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('A8C4', 'week48', 'T2', '项目14', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('A8F', 'week10', 'T2', '项目43', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('A8U1', 'week40', 'T2', '项目31', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('A9', 'week36', 'T4', '项目82', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AA4', 'week48', 'T2', '项目65', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AD\n', 'week44', 'T2', '项目88', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AD9', 'week6', 'T3', '项目19', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AH9', 'week4', 'T2', '项目55', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AK', 'week19', 'T4', '项目2', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AK\r', 'week51', 'T3', '项目29', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AK4', 'week26', 'T1', '项目74', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('AM5', 'week37', 'T4', '项目81', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AO', 'week49', 'T2', '项目67', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('AR1', 'week24', 'T1', '项目81', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AS4', 'week24', 'T1', '项目37', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AT0', 'week32', 'T3', '项目62', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AT7', 'week52', 'T3', '项目41', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AU', 'week29', 'T3', '项目38', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('AW1', 'week40', 'T2', '项目4', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('AX', 'week43', 'T2', '项目74', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('B', 'week29', 'T1', '项目74', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B\n', 'week32', 'T3', '项目39', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B\nD1', 'week4', 'T2', '项目19', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B\nN9', 'week36', 'T4', '项目34', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B', 'week28', 'T1', '项目65', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('B', 'week32', 'T3', '项目76', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B0', 'week49', 'T2', '项目96', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B0B', 'week31', 'T3', '项目63', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B0C', 'week49', 'T2', '项目96', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B1', 'week17', 'T4', '项目6', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B2', 'week24', 'T1', '项目18', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B2K2', 'week7', 'T4', '项目90', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B2Q2', 'week52', 'T3', '项目76', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B2V7', 'week14', 'T3', '项目71', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B3', 'week49', 'T2', '项目84', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('B3B1', 'week21', 'T4', '项目55', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B3C3', 'week15', 'T3', '项目30', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B3Z', 'week27', 'T1', '项目45', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B4', 'week39', 'T2', '项目28', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('B4N\n', 'week9', 'T4', '项目32', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('B5', 'week30', 'T3', '项目3', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('B6', 'week44', 'T2', '项目81', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B6F\r', 'week28', 'T1', '项目24', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B6F9', 'week34', 'T4', '项目31', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B6L\n', 'week46', 'T2', '项目22', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B6Q8', 'week49', 'T2', '项目30', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B7', 'week41', 'T2', '项目54', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B7Q0', 'week43', 'T2', '项目90', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('B8', 'week40', 'T2', '项目95', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B8U7', 'week51', 'T3', '项目86', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('B9', 'week30', 'T3', '项目49', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('B9M\n', 'week12', 'T2', '项目22', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BF', 'week49', 'T2', '项目67', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BH5', 'week24', 'T1', '项目27', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('BI', 'week47', 'T2', '项目28', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BJ', 'week6', 'T3', '项目19', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('BL', 'week51', 'T3', '项目23', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('BN', 'week46', 'T2', '项目72', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('BO\n', 'week25', 'T1', '项目27', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('BQ0', 'week10', 'T1', '项目76', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('BS5', 'week19', 'T4', '项目28', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BU', 'week51', 'T3', '项目63', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BV5', 'week1', 'T1', '项目19', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('BW', 'week6', 'T3', '项目75', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BX2', 'week7', 'T1', '项目39', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BX8', 'week31', 'T3', '项目88', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('BZ1', 'week36', 'T4', '项目7', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C', 'week39', 'T2', '项目37', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C\n', 'week43', 'T2', '项目14', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C\nA', 'week8', 'T3', '项目29', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C\nK', 'week48', 'T2', '项目76', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C\nU\n', 'week48', 'T2', '项目95', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C', 'week2', 'T4', '项目80', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C', 'week35', 'T4', '项目58', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CD\r', 'week33', 'T3', '项目44', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CN1', 'week37', 'T4', '项目28', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C\r', 'week48', 'T2', '项目87', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C1', 'week48', 'T2', '项目88', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('C1A\r', 'week19', 'T4', '项目42', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C1U', 'week14', 'T3', '项目98', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C2', 'week33', 'T3', '项目49', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('C4', 'week39', 'T2', '项目61', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C4Y', 'week16', 'T3', '项目49', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('C5', 'week50', 'T3', '项目63', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C5K', 'week20', 'T4', '项目3', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C5Y7', 'week51', 'T3', '项目50', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('C6', 'week46', 'T2', '项目26', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C7', 'week38', 'T4', '项目2', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C7D', 'week31', 'T3', '项目11', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C7H', 'week42', 'T2', '项目88', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C7Q', 'week31', 'T3', '项目75', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C7V9', 'week13', 'T3', '项目22', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('C8', 'week3', 'T3', '项目74', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('C9', 'week30', 'T3', '项目48', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C9A', 'week27', 'T1', '项目88', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C9J', 'week38', 'T4', '项目46', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('C9O0', 'week13', 'T3', '项目21', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CA0', 'week33', 'T3', '项目66', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CD8', 'week21', 'T4', '项目58', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('CE1', 'week18', 'T4', '项目87', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('CF', 'week32', 'T3', '项目19', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('CF3', 'week7', 'T3', '项目43', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CH', 'week49', 'T2', '项目24', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('CHO1', 'week13', 'T3', '项目28', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CJ0', 'week12', 'T2', '项目46', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('CM5', 'week4', 'T2', '项目80', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('CN9', 'week3', 'T3', '项目43', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('CQ0', 'week7', 'T2', '项目61', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('CR', 'week26', 'T1', '项目16', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('CX', 'week5', 'T2', '项目20', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('CY', 'week27', 'T1', '项目26', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('CY2', 'week33', 'T3', '项目90', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('D', 'week50', 'T2', '项目86', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D\n', 'week32', 'T3', '项目6', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('D\nX1', 'week31', 'T3', '项目82', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('D', 'week37', 'T4', '项目3', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('DA', 'week19', 'T4', '项目44', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DD\r', 'week29', 'T3', '项目99', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DJ\r', 'week13', 'T3', '项目53', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DO1', 'week36', 'T4', '项目25', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('DQ', 'week9', 'T3', '项目100', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('DV3', 'week9', 'T3', '项目66', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D\r', 'week26', 'T1', '项目74', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('D1', 'week33', 'T3', '项目81', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('D3', 'week21', 'T4', '项目37', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('D3X\n', 'week22', 'T1', '项目56', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D5', 'week3', 'T3', '项目6', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('D5A0', 'week44', 'T2', '项目7', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D5Q\r', 'week7', 'T2', '项目26', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D7', 'week32', 'T3', '项目73', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('D7L1', 'week2', 'T4', '项目66', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('D8', 'week32', 'T3', '项目58', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('D8T5', 'week31', 'T3', '项目11', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D9', 'week39', 'T2', '项目8', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('D9P', 'week17', 'T4', '项目75', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('D9Q2', 'week17', 'T4', '项目86', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('D9V1', 'week16', 'T3', '项目44', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DC\r', 'week39', 'T2', '项目67', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DJ\n', 'week31', 'T3', '项目98', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('DL', 'week19', 'T4', '项目95', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DM', 'week45', 'T2', '项目20', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DT', 'week18', 'T4', '项目32', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('DV', 'week5', 'T2', '项目79', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('DY', 'week43', 'T2', '项目30', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('DZ', 'week12', 'T3', '项目17', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('E', 'week17', 'T3', '项目17', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('E\n', 'week35', 'T4', '项目90', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('E', 'week32', 'T3', '项目73', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('E', 'week49', 'T2', '项目49', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('EJ\n', 'week41', 'T2', '项目74', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('EL', 'week48', 'T2', '项目85', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('E0', 'week15', 'T3', '项目39', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('E3', 'week44', 'T2', '项目59', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('E3F', 'week50', 'T2', '项目2', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('E3S', 'week33', 'T3', '项目22', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('E7', 'week12', 'T2', '项目46', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('E7I2', 'week23', 'T1', '项目79', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('E7M3', 'week5', 'T2', '项目21', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('E7Q6', 'week52', 'T3', '项目28', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('E9', 'week35', 'T4', '项目70', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('E9M', 'week2', 'T4', '项目53', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('E9U9', 'week24', 'T1', '项目86', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('EE9', 'week3', 'T3', '项目91', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('EG\n', 'week9', 'T3', '项目30', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('EI', 'week49', 'T2', '项目65', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F', 'week15', 'T3', '项目78', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F\n', 'week2', 'T4', '项目22', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('F\nF\n', 'week37', 'T4', '项目95', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F\nS8', 'week45', 'T2', '项目76', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('F', 'week29', 'T1', '项目31', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('FG', 'week1', 'T1', '项目83', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F', 'week45', 'T2', '项目89', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('FE\n', 'week27', 'T1', '项目80', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('F1', 'week41', 'T2', '项目56', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F1F9', 'week47', 'T2', '项目51', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F1I2', 'week36', 'T4', '项目100', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('F1R', 'week11', 'T2', '项目54', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('F3', 'week15', 'T3', '项目77', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F3K', 'week26', 'T1', '项目51', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F3L', 'week1', 'T1', '项目11', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('F3P5', 'week34', 'T4', '项目30', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('F4', 'week24', 'T1', '项目98', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F4E3', 'week7', 'T1', '项目92', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F5', 'week34', 'T4', '项目20', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('F5Q\n', 'week21', 'T4', '项目68', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F6', 'week21', 'T4', '项目92', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('F7', 'week17', 'T4', '项目97', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F7E5', 'week3', 'T3', '项目74', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F8', 'week2', 'T4', '项目8', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('F9', 'week33', 'T3', '项目38', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('F9V', 'week34', 'T4', '项目47', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('FA6', 'week19', 'T4', '项目37', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('FC9', 'week9', 'T3', '项目76', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('FE', 'week51', 'T3', '项目20', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('FE9', 'week38', 'T4', '项目17', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('FG5', 'week29', 'T3', '项目88', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('FG7', 'week51', 'T3', '项目52', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('FJ2', 'week20', 'T4', '项目29', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('FJ8', 'week41', 'T2', '项目91', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('FP', 'week5', 'T2', '项目96', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('FS\r', 'week20', 'T4', '项目78', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('FY5', 'week51', 'T3', '项目1', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('G', 'week10', 'T2', '项目68', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G\n', 'week13', 'T3', '项目76', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G', 'week39', 'T2', '项目13', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('GK1', 'week2', 'T4', '项目18', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G\r', 'week17', 'T3', '项目21', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G\rF6', 'week18', 'T4', '项目91', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G\rM7', 'week49', 'T2', '项目6', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G0', 'week41', 'T2', '项目58', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G1', 'week25', 'T1', '项目28', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G1H', 'week29', 'T3', '项目78', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G3', 'week23', 'T1', '项目3', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('G4', 'week34', 'T4', '项目45', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('G4G', 'week35', 'T4', '项目95', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G4P8', 'week20', 'T4', '项目72', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G5', 'week52', 'T3', '项目46', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G5G5', 'week18', 'T4', '项目23', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('G6', 'week22', 'T1', '项目56', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G6N1', 'week20', 'T4', '项目84', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('G7', 'week25', 'T1', '项目16', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('G8', 'week9', 'T3', '项目89', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('GB4', 'week32', 'T3', '项目19', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('GC', 'week48', 'T2', '项目49', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('GCI', 'week3', 'T3', '项目60', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('GD7', 'week29', 'T3', '项目87', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('GE1', 'week32', 'T3', '项目12', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('GF\n', 'week32', 'T3', '项目2', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('GP\n', 'week37', 'T4', '项目80', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('GR', 'week4', 'T2', '项目49', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('GR0', 'week22', 'T1', '项目13', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('GR8', 'week38', 'T4', '项目46', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('GV3', 'week33', 'T3', '项目51', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('H', 'week6', 'T3', '项目80', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('H\n', 'week26', 'T1', '项目46', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('H', 'week17', 'T4', '项目38', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HM1', 'week2', 'T4', '项目46', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('HQ', 'week24', 'T1', '项目47', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('HV3', 'week15', 'T3', '项目51', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HX', 'week10', 'T2', '项目82', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('HY7', 'week50', 'T2', '项目98', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('H', 'week49', 'T2', '项目43', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('H\r', 'week35', 'T4', '项目81', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('H\rC\n', 'week46', 'T2', '项目46', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('H0', 'week32', 'T3', '项目4', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('H1', 'week46', 'T2', '项目7', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('H1A', 'week43', 'T2', '项目95', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('H2', 'week16', 'T3', '项目43', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('H2E7', 'week34', 'T4', '项目62', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('H4', 'week50', 'T2', '项目96', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('H4X', 'week48', 'T2', '项目48', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('H5', 'week23', 'T1', '项目82', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('H6', 'week40', 'T2', '项目10', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('H6E5', 'week16', 'T3', '项目41', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('H6M', 'week35', 'T4', '项目97', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('H6T6', 'week6', 'T3', '项目83', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('H8', 'week27', 'T1', '项目1', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('HA', 'week11', 'T2', '项目85', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HG7', 'week2', 'T4', '项目70', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HJ', 'week18', 'T4', '项目28', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HJB3', 'week37', 'T4', '项目68', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('HL', 'week47', 'T2', '项目31', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('HN\n', 'week23', 'T1', '项目53', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HN\nC', 'week36', 'T4', '项目80', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('HQ', 'week38', 'T4', '项目9', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HU', 'week45', 'T2', '项目52', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HUX4', 'week34', 'T4', '项目31', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('HV3', 'week9', 'T3', '项目13', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('HW6', 'week33', 'T3', '项目16', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('HW9', 'week32', 'T3', '项目1', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('I', 'week39', 'T2', '项目47', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I', 'week20', 'T4', '项目37', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('II', 'week10', 'T2', '项目28', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('IN1', 'week25', 'T1', '项目20', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('IV', 'week26', 'T1', '项目7', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('IV', 'week18', 'T4', '项目54', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I\r', 'week6', 'T3', '项目29', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('I\rB8', 'week44', 'T2', '项目21', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('I\rP', 'week16', 'T3', '项目20', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I0', 'week9', 'T4', '项目54', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I0M1', 'week42', 'T2', '项目100', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I0R', 'week2', 'T4', '项目96', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I1', 'week32', 'T3', '项目77', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I1N5', 'week15', 'T3', '项目45', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I2', 'week4', 'T2', '项目73', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I2C', 'week1', 'T1', '项目62', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('I2C\n', 'week36', 'T4', '项目53', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I2P', 'week20', 'T4', '项目98', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I2S', 'week10', 'T1', '项目69', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('I2V', 'week4', 'T2', '项目38', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('I4', 'week18', 'T4', '项目36', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I4F1', 'week34', 'T4', '项目84', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I4Q5', 'week33', 'T3', '项目64', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I4U5', 'week51', 'T3', '项目68', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I5', 'week17', 'T3', '项目54', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('I6', 'week33', 'T3', '项目8', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I6B', 'week37', 'T4', '项目49', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I6J6', 'week1', 'T1', '项目74', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I6M5', 'week52', 'T3', '项目72', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I6O5', 'week29', 'T3', '项目47', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I6P', 'week6', 'T3', '项目100', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I6X4', 'week11', 'T2', '项目26', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('I6Y1', 'week31', 'T3', '项目61', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I7', 'week41', 'T2', '项目83', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('I8', 'week2', 'T4', '项目61', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('I8D', 'week1', 'T1', '项目72', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('I8R', 'week47', 'T2', '项目56', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('IG4', 'week14', 'T3', '项目49', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('IJ', 'week21', 'T4', '项目76', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('IM', 'week7', 'T3', '项目58', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('IM5', 'week34', 'T4', '项目90', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('IP', 'week17', 'T4', '项目91', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('IQ', 'week42', 'T2', '项目60', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('IS', 'week4', 'T2', '项目58', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('IS8', 'week39', 'T2', '项目99', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('IT', 'week18', 'T4', '项目63', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('IV', 'week37', 'T4', '项目39', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('IZ0', 'week28', 'T1', '项目69', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J', 'week43', 'T2', '项目87', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J', 'week15', 'T3', '项目26', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('JL5', 'week35', 'T4', '项目49', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('JN', 'week23', 'T1', '项目5', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('JQ6', 'week17', 'T4', '项目96', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('JZ', 'week31', 'T3', '项目9', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J\r', 'week32', 'T3', '项目100', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J\rG2', 'week25', 'T1', '项目88', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('J\rZ', 'week35', 'T4', '项目7', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J0', 'week46', 'T2', '项目15', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('J0D5', 'week11', 'T2', '项目95', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('J0P', 'week25', 'T1', '项目73', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J1', 'week3', 'T3', '项目98', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J2', 'week42', 'T2', '项目93', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J2K', 'week42', 'T2', '项目15', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J4', 'week1', 'T1', '项目94', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('J6', 'week14', 'T3', '项目88', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J6L3', 'week38', 'T4', '项目68', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J6N3', 'week40', 'T2', '项目19', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('J6X', 'week12', 'T2', '项目96', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('J7', 'week8', 'T4', '项目16项目16', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J8', 'week38', 'T4', '项目81', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('J8C3', 'week20', 'T4', '项目18', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('J8F', 'week47', 'T2', '项目20', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('J8I', 'week22', 'T1', '项目75', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('J8S', 'week41', 'T2', '项目98', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('JA', 'week36', 'T4', '项目29', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('JB\r', 'week27', 'T1', '项目76', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('JB6', 'week48', 'T2', '项目30', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('JF', 'week42', 'T2', '项目68', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('JG6', 'week13', 'T3', '项目69', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('JJ', 'week39', 'T2', '项目49', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('JL', 'week20', 'T4', '项目21', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('JO', 'week19', 'T4', '项目55', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('JP0', 'week43', 'T2', '项目43', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('JR', 'week5', 'T2', '项目47', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('JZ', 'week44', 'T2', '项目99', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K', 'week49', 'T2', '项目69', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('K\n', 'week42', 'T2', '项目54', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K\nK2', 'week51', 'T3', '项目7', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K\nN', 'week45', 'T2', '项目74', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K\nS', 'week47', 'T2', '项目45', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K', 'week28', 'T1', '项目41', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('KR4', 'week12', 'T2', '项目10', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('K', 'week9', 'T4', '项目94', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('KD', 'week52', 'T3', '项目58', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('K\r', 'week28', 'T1', '项目71', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K\rI4', 'week31', 'T3', '项目89', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K0', 'week52', 'T3', '项目99', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('K1L', 'week51', 'T3', '项目51', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('K1Y9', 'week10', 'T2', '项目65', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('K2', 'week27', 'T1', '项目31', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K2H8', 'week52', 'T3', '项目8', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K3', 'week47', 'T2', '项目28', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K4', 'week40', 'T2', '项目48', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K4R', 'week18', 'T4', '项目65', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K5', 'week52', 'T3', '项目26', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('K6', 'week48', 'T2', '项目46', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K6E1', 'week33', 'T3', '项目60', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K6I8', 'week50', 'T2', '项目78', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K6N', 'week16', 'T3', '项目64', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('K6O', 'week39', 'T2', '项目53', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K6X9', 'week1', 'T1', '项目19', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('K7', 'week13', 'T3', '项目33', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K8', 'week39', 'T2', '项目84', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('K8G', 'week31', 'T3', '项目77', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('K8G7', 'week12', 'T2', '项目17', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K8GC', 'week12', 'T2', '项目7', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('K9', 'week29', 'T1', '项目1', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('KI4', 'week6', 'T3', '项目71', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('KI9', 'week34', 'T4', '项目12', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('KL3', 'week22', 'T1', '项目89', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('KP', 'week34', 'T4', '项目13', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('KS', 'week36', 'T4', '项目88', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('KS7', 'week5', 'T2', '项目34', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('KZ\r', 'week13', 'T3', '项目92', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('KZ6', 'week42', 'T2', '项目37', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L', 'week6', 'T3', '项目61', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L\n', 'week24', 'T1', '项目40', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L\nJ', 'week38', 'T4', '项目16', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('L', 'week16', 'T3', '项目2', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('LK', 'week48', 'T2', '项目23', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('LX4', 'week42', 'T2', '项目46', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L', 'week13', 'T3', '项目53', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L0', 'week18', 'T4', '项目54', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L0F7', 'week46', 'T2', '项目55', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L1', 'week13', 'T3', '项目58', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L1U5', 'week24', 'T1', '项目74', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L2', 'week32', 'T3', '项目92', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L2C', 'week45', 'T2', '项目1', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L2M1', 'week29', 'T1', '项目1', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L3', 'week22', 'T1', '项目79', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('L3B0', 'week38', 'T4', '项目15', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L3F4', 'week51', 'T3', '项目76', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('L3K4', 'week29', 'T1', '项目100', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L4', 'week46', 'T2', '项目44', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L5', 'week11', 'T2', '项目77', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L5G8', 'week49', 'T2', '项目42', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L5S', 'week32', 'T3', '项目45', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L7', 'week6', 'T3', '项目1', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L7B4', 'week47', 'T2', '项目64', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L7C7', 'week5', 'T2', '项目28', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('L7O7', 'week43', 'T2', '项目33', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L7T', 'week13', 'T3', '项目36', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('L8', 'week45', 'T2', '项目48', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L9', 'week9', 'T3', '项目54', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L9E3', 'week44', 'T2', '项目20', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('L9M7', 'week46', 'T2', '项目88', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('L9N1', 'week16', 'T3', '项目34', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('LD', 'week40', 'T2', '项目11', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('LI1', 'week9', 'T3', '项目98', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('LI4', 'week18', 'T4', '项目71', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('LK4', 'week22', 'T4', '项目43', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('LQ0', 'week44', 'T2', '项目42', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('LQ3', 'week4', 'T2', '项目63', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('LT', 'week14', 'T3', '项目55', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('LU3', 'week9', 'T3', '项目66', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('LV', 'week34', 'T4', '项目1', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('LW', 'week27', 'T1', '项目70', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('M', 'week50', 'T2', '项目31', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M\n', 'week49', 'T2', '项目11', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M\nA', 'week39', 'T4', '项目90', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M\nC', 'week42', 'T2', '项目90', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M\nF3', 'week3', 'T3', '项目50', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M\nJ', 'week40', 'T2', '项目44', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('M\nU', 'week11', 'T2', '项目94', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M', 'week2', 'T4', '项目87', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('MC8', 'week26', 'T1', '项目48', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M', 'week51', 'T3', '项目13', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('MI8', 'week14', 'T3', '项目58', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('MJ\r', 'week43', 'T2', '项目9', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('MN7', 'week1', 'T1', '项目7', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('MO', 'week39', 'T4', '项目64', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('MV\n', 'week18', 'T4', '项目49', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M0', 'week50', 'T2', '项目17', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('M0V\n', 'week29', 'T1', '项目93', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M1', 'week33', 'T3', '项目36', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M1A', 'week11', 'T2', '项目48', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M1B', 'week12', 'T2', '项目37', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M1C', 'week42', 'T2', '项目83', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('M1I', 'week47', 'T2', '项目22', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M1R0', 'week10', 'T2', '项目3', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M3', 'week41', 'T2', '项目17', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M3C8', 'week6', 'T3', '项目83', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M3S2', 'week28', 'T1', '项目75', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('M3V7', 'week35', 'T4', '项目89', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M5', 'week32', 'T3', '项目93', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M7', 'week15', 'T3', '项目70', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('M9', 'week19', 'T4', '项目7', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M9N', 'week1', 'T1', '项目75', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('M9N3', 'week41', 'T2', '项目53', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('M9Q\r', 'week5', 'T2', '项目92', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('MC\r', 'week50', 'T2', '项目73', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('MC7', 'week43', 'T2', '项目32', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('ME9', 'week48', 'T2', '项目45', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('MJ8', 'week20', 'T4', '项目18', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('MR', 'week6', 'T3', '项目91', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('MW9', 'week5', 'T2', '项目77', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('MZ0', 'week13', 'T3', '项目39', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N', 'week25', 'T1', '项目30', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('N\n', 'week27', 'T1', '项目40', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N\nF\n', 'week26', 'T1', '项目24', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N\nM5', 'week44', 'T2', '项目87', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N', 'week31', 'T3', '项目66', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('NO\n', 'week18', 'T4', '项目62', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N\r', 'week51', 'T3', '项目80', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N0', 'week4', 'T2', '项目36', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N0M', 'week17', 'T4', '项目99', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N1', 'week7', 'T4', '项目69', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N1V\n', 'week10', 'T2', '项目29', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N1Z0', 'week4', 'T2', '项目88', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N3', 'week19', 'T4', '项目80', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N3A\r', 'week20', 'T4', '项目72', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N3F9', 'week52', 'T3', '项目5', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N3G\n', 'week5', 'T2', '项目93', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N3K', 'week18', 'T4', '项目35', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('N3S0', 'week38', 'T4', '项目41', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('N4', 'week12', 'T2', '项目55', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('N4X\r', 'week49', 'T2', '项目89', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('N5', 'week25', 'T1', '项目95', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N5G7', 'week5', 'T2', '项目67', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N5N1', 'week51', 'T3', '项目83', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N6', 'week35', 'T4', '项目26', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N7', 'week16', 'T3', '项目81', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('N9', 'week34', 'T3', '项目46', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('NA0', 'week12', 'T2', '项目73', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('NF', 'week4', 'T2', '项目8', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('NF9', 'week44', 'T2', '项目31', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('NQ0', 'week9', 'T4', '项目42', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('NW5', 'week46', 'T2', '项目59', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O', 'week15', 'T3', '项目32', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('O\n', 'week41', 'T2', '项目10', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O\nW', 'week48', 'T2', '项目50', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O', 'week12', 'T2', '项目30', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('O\r', 'week16', 'T3', '项目5', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O\rN', 'week48', 'T2', '项目45', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O1', 'week51', 'T3', '项目89', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O1H0', 'week37', 'T4', '项目98', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O1X\r', 'week50', 'T2', '项目80', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('O1Y8', 'week44', 'T2', '项目10', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O2', 'week42', 'T2', '项目13', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O2C4', 'week7', 'T1', '项目16', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O2M\n', 'week18', 'T4', '项目90', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O3', 'week16', 'T3', '项目8', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O4', 'week51', 'T3', '项目77', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O5', 'week48', 'T2', '项目35', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('O5B8', 'week34', 'T4', '项目21', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O6', 'week44', 'T2', '项目33', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O6I\r', 'week49', 'T2', '项目95', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('O7', 'week24', 'T1', '项目70', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O7L', 'week40', 'T2', '项目15', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O7Q6', 'week45', 'T2', '项目18', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O7Z', 'week6', 'T3', '项目69', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O8', 'week36', 'T4', '项目65', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('O8S2', 'week40', 'T2', '项目61', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('O9', 'week21', 'T4', '项目100', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('O9P9', 'week28', 'T1', '项目45', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('O9R9', 'week2', 'T4', '项目63', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('O9W', 'week13', 'T3', '项目54', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('OA', 'week42', 'T2', '项目85', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('OB1', 'week37', 'T4', '项目12', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('OB7', 'week14', 'T3', '项目50', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('OC2', 'week34', 'T4', '项目76', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('OC6', 'week6', 'T3', '项目90', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OF', 'week9', 'T3', '项目9', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OF2', 'week7', 'T1', '项目48', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OF2K', 'week20', 'T4', '项目97', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('OH\n', 'week30', 'T3', '项目12', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OJ4', 'week27', 'T1', '项目46', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OP7', 'week27', 'T1', '项目67', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OT8', 'week9', 'T3', '项目14', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OU\r', 'week27', 'T1', '项目15', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('OY8', 'week14', 'T3', '项目62', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P\n', 'week16', 'T3', '项目80', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('P', 'week24', 'T1', '项目65', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('PC', 'week30', 'T3', '项目49', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('PN', 'week1', 'T1', '项目95', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P', 'week11', 'T2', '项目43', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P\r', 'week39', 'T2', '项目8', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P\rN', 'week47', 'T2', '项目70', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P0', 'week15', 'T3', '项目91', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('P1', 'week52', 'T3', '项目27', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P1S', 'week48', 'T2', '项目60', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P3', 'week42', 'T2', '项目65', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P4', 'week6', 'T3', '项目34', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('P4Y\r', 'week33', 'T3', '项目20', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P5', 'week3', 'T3', '项目39', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P5X\n', 'week48', 'T2', '项目79', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P6', 'week29', 'T1', '项目65', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P6B', 'week19', 'T4', '项目37', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P6V\n', 'week37', 'T4', '项目3', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P6Z8', 'week10', 'T1', '项目9', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P7', 'week4', 'T2', '项目23', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P8', 'week22', 'T1', '项目43', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P8Q8', 'week51', 'T3', '项目84', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('P8X', 'week44', 'T2', '项目7', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P8Y', 'week29', 'T1', '项目35', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('P9I4', 'week3', 'T3', '项目82', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('PA', 'week3', 'T3', '项目34', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('PC5', 'week50', 'T2', '项目51', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('PE1', 'week3', 'T3', '项目64', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('PE4', 'week8', 'T3', '项目项目93', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('PF', 'week24', 'T1', '项目74', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('PJ', 'week18', 'T4', '项目20', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('PK', 'week30', 'T3', '项目67', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('PL0', 'week52', 'T3', '项目10', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('PN7', 'week28', 'T1', '项目3', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('PO1', 'week17', 'T4', '项目44', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('PT', 'week1', 'T1', '项目58', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('PV', 'week34', 'T4', '项目19', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('PV\n', 'week52', 'T3', '项目48', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('PV\r', 'week32', 'T3', '项目99', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('PY', 'week35', 'T4', '项目84', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('PZ6', 'week3', 'T3', '项目56', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q', 'week21', 'T4', '项目32', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Q\n', 'week16', 'T3', '项目85', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Q', 'week16', 'T3', '项目24', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('QE7', 'week40', 'T2', '项目35', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('QJ8', 'week13', 'T3', '项目86', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q\r', 'week11', 'T2', '项目63', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q0', 'week45', 'T2', '项目14', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Q0W', 'week28', 'T1', '项目83', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Q0X', 'week1', 'T1', '项目10', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Q2', 'week23', 'T1', '项目40', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Q2X', 'week2', 'T4', '项目72', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Q4', 'week11', 'T2', '项目6', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q4A\r', 'week34', 'T4', '项目51', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Q6', 'week41', 'T2', '项目95', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Q7', 'week42', 'T2', '项目88', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Q7T7', 'week7', 'T1', '项目43', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q8', 'week24', 'T1', '项目12', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q8J', 'week51', 'T3', '项目88', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q8S8', 'week19', 'T4', '项目88', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Q8X6', 'week25', 'T1', '项目29', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Q8Y', 'week19', 'T4', '项目13', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QD', 'week6', 'T3', '项目26', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('QE', 'week41', 'T2', '项目92', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('QF', 'week21', 'T4', '项目77', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('QG2', 'week25', 'T1', '项目61', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QH', 'week28', 'T1', '项目84', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QN9', 'week1', 'T1', '项目41', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('QQ2', 'week31', 'T3', '项目11', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('QR6', 'week29', 'T3', '项目95', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('QT0', 'week13', 'T3', '项目75', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QU3', 'week29', 'T3', '项目70', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('QU5', 'week39', 'T2', '项目32', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QV3', 'week21', 'T4', '项目51', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QY8', 'week24', 'T1', '项目1', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('QZ\r', 'week47', 'T2', '项目83', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('R', 'week34', 'T4', '项目2', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('R', 'week52', 'T3', '项目45', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('RH', 'week4', 'T2', '项目11', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('R', 'week19', 'T4', '项目6', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('R\r', 'week51', 'T3', '项目14', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('R\rR', 'week26', 'T1', '项目27', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('R0', 'week47', 'T2', '项目53', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('R1', 'week10', 'T1', '项目42', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('R2', 'week16', 'T3', '项目37', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('R2A6', 'week37', 'T4', '项目16', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('R2H', 'week20', 'T4', '项目6', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('R2H8', 'week13', 'T3', '项目5', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('R4', 'week12', 'T3', '项目35', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('R6', 'week7', 'T1', '项目73', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('R8', 'week34', 'T4', '项目72', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('RB', 'week26', 'T1', '项目24', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('RC2', 'week18', 'T4', '项目91', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('RD6', 'week7', 'T2', '项目29', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('RE', 'week37', 'T4', '项目34', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('RL', 'week8', 'T4', '项目1212', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('RL6', 'week4', 'T2', '项目53', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('RM5', 'week31', 'T3', '项目42', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('RQ', 'week1', 'T1', '项目29', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('S', 'week11', 'T2', '项目38', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('S', 'week48', 'T2', '项目64', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S', 'week1', 'T1', '项目43', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S\rJ', 'week45', 'T2', '项目53', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S\rN', 'week11', 'T2', '项目67', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S0', 'week29', 'T3', '项目71', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('S0D9', 'week42', 'T2', '项目90', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S0I2', 'week19', 'T4', '项目44', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S0J', 'week20', 'T4', '项目17', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S0W7', 'week45', 'T2', '项目57', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S2', 'week22', 'T4', '项目27', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S2M3', 'week1', 'T1', '项目14', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('S2Y2', 'week7', 'T2', '项目32', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S3', 'week24', 'T1', '项目50', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('S4', 'week43', 'T2', '项目96', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S6', 'week21', 'T4', '项目30', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S6C8', 'week35', 'T4', '项目83', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S6P5', 'week14', 'T3', '项目73', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S7', 'week46', 'T2', '项目17', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S8', 'week23', 'T1', '项目52', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('S9', 'week30', 'T3', '项目54', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('S9O', 'week24', 'T1', '项目55', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('SA0', 'week47', 'T2', '项目31', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SB', 'week49', 'T2', '项目1', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SB5', 'week43', 'T2', '项目95', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('SD', 'week42', 'T2', '项目6', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SD3', 'week11', 'T2', '项目96', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('SK', 'week21', 'T4', '项目9', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('SL1', 'week16', 'T3', '项目50', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SN\n', 'week22', 'T1', '项目35', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SN9', 'week46', 'T2', '项目78', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SP', 'week47', 'T2', '项目81', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('SX', 'week15', 'T3', '项目14', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('SZ0', 'week12', 'T2', '项目6', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T', 'week51', 'T3', '项目78', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T\n', 'week47', 'T2', '项目87', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('T\nO9', 'week40', 'T2', '项目80', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T', 'week28', 'T1', '项目27', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('TC6', 'week22', 'T4', '项目57', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T\r', 'week52', 'T3', '项目48', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T\rN\n', 'week10', 'T2', '项目95', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T\rO1', 'week44', 'T2', '项目68', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T0', 'week25', 'T1', '项目42', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('T1', 'week39', 'T4', '项目78', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T1B', 'week25', 'T1', '项目40', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('T1F', 'week24', 'T1', '项目56', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('T1Z0', 'week7', 'T1', '项目57', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T2', 'week17', 'T3', '项目28', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('T2G\r', 'week37', 'T4', '项目71', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T2J', 'week45', 'T2', '项目13', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T4', 'week27', 'T1', '项目29', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T4R6', 'week28', 'T1', '项目22', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('T5', 'week28', 'T1', '项目42', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T5U4', 'week52', 'T3', '项目44', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('T6', 'week17', 'T4', '项目23', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('T7', 'week10', 'T1', '项目65', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T7X\r', 'week15', 'T3', '项目26', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('T8', 'week31', 'T3', '项目38', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('T8L1', 'week35', 'T4', '项目25', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('T8N6', 'week27', 'T1', '项目33', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('T9', 'week34', 'T4', '项目16', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('TB', 'week11', 'T2', '项目66', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('TB9', 'week14', 'T3', '项目82', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('TD', 'week42', 'T2', '项目47', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('TE', 'week26', 'T1', '项目12', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('TF', 'week14', 'T3', '项目83', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('TJ8', 'week44', 'T2', '项目47', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('TL', 'week2', 'T4', '项目100', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('TN', 'week28', 'T1', '项目80', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('TQ', 'week29', 'T1', '项目29', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('TV5', 'week29', 'T1', '项目17', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U', 'week47', 'T2', '项目19', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('U\n', 'week39', 'T2', '项目7', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('U\nA', 'week23', 'T1', '项目21', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U\nH', 'week10', 'T1', '项目75', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('U\nO9', 'week38', 'T4', '项目19', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U\nQ', 'week39', 'T4', '项目17', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('U\nU', 'week43', 'T2', '项目38', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U', 'week12', 'T2', '项目56', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('U\r', 'week36', 'T4', '项目53', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U0', 'week18', 'T4', '项目41', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U0A', 'week4', 'T2', '项目77', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U0E6', 'week31', 'T3', '项目90', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U1', 'week26', 'T1', '项目100', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('U1B\r', 'week11', 'T2', '项目63', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U1H4', 'week41', 'T2', '项目89', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U3', 'week11', 'T2', '项目1', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U3J0', 'week36', 'T4', '项目60', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U3P0', 'week32', 'T3', '项目29', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U3R', 'week41', 'T2', '项目24', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('U4', 'week37', 'T4', '项目6', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U4G7', 'week30', 'T3', '项目75', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U5', 'week39', 'T2', '项目53', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U5N', 'week12', 'T2', '项目11', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U5X', 'week49', 'T2', '项目72', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U6', 'week7', 'T4', '项目12', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U7', 'week24', 'T1', '项目45', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U8', 'week42', 'T2', '项目26', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('U9', 'week13', 'T3', '项目2', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('U9D', 'week20', 'T4', '项目80', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('UG', 'week47', 'T2', '项目39', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('UL3', 'week10', 'T2', '项目15', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('UL4', 'week37', 'T4', '项目26', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('UO3', 'week5', 'T2', '项目34', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('UT9', 'week25', 'T1', '项目49', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('UX', 'week42', 'T2', '项目9', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('UY', 'week18', 'T4', '项目95', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V', 'week3', 'T3', '项目81', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V\n', 'week1', 'T1', '项目39', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V', 'week34', 'T3', '项目73', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('VA4', 'week43', 'T2', '项目64', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VA4G2', 'week11', 'T2', '项目86', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('VE5', 'week38', 'T4', '项目48', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('VH0', 'week52', 'T3', '项目66', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('VP9', 'week49', 'T2', '项目70', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VW', 'week22', 'T1', '项目57', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VW1', 'week38', 'T4', '项目3', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V1', 'week2', 'T4', '项目71', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V1W1', 'week2', 'T4', '项目99', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('V1Z', 'week13', 'T3', '项目57', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('V1ZX0', 'week40', 'T2', '项目44', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('V2', 'week19', 'T4', '项目7', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V3', 'week40', 'T2', '项目99', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V3B8', 'week48', 'T2', '项目52', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('V3G5', 'week20', 'T4', '项目8', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V3M', 'week2', 'T4', '项目61', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V3Y4', 'week45', 'T2', '项目61', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V5', 'week48', 'T2', '项目45', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V7', 'week23', 'T1', '项目21', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V7L', 'week7', 'T1', '项目85', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V7P', 'week20', 'T4', '项目27', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('V7T5', 'week19', 'T4', '项目5', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('V7X', 'week5', 'T2', '项目56', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('V9', 'week17', 'T3', '项目8', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('V9A6', 'week38', 'T4', '项目82', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('V9F', 'week52', 'T3', '项目82', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('V9T7', 'week33', 'T3', '项目37', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('VB9', 'week27', 'T1', '项目32', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('VH', 'week50', 'T2', '项目71', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VHF1', 'week52', 'T3', '项目47', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VHU3', 'week44', 'T2', '项目28', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('VI', 'week25', 'T1', '项目15', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('VI0', 'week30', 'T3', '项目42', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VJ8', 'week34', 'T4', '项目90', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('VM3', 'week48', 'T2', '项目42', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('VO\n', 'week7', 'T2', '项目73', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('VO9', 'week7', 'T4', '项目53', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VP', 'week24', 'T1', '项目11', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VS7', 'week7', 'T4', '项目81', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('VT', 'week29', 'T1', '项目55', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('VT4', 'week9', 'T3', '项目83', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('VV5', 'week47', 'T2', '项目2', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('VW3', 'week14', 'T3', '项目12', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VX', 'week12', 'T2', '项目84', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VY0', 'week44', 'T2', '项目55', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('VZ2', 'week52', 'T3', '项目53', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W', 'week17', 'T4', '项目29', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('W\n', 'week42', 'T2', '项目86', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W\nB6', 'week13', 'T3', '项目52', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('W\nO1', 'week35', 'T4', '项目85', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W\nO5', 'week42', 'T2', '项目7', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W\nQ8', 'week23', 'T1', '项目95', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W\nZ3', 'week50', 'T2', '项目65', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('W\nZ9', 'week9', 'T3', '项目30', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W', 'week26', 'T1', '项目43', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('WE', 'week49', 'T2', '项目73', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('W', 'week19', 'T4', '项目84', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('WD', 'week4', 'T2', '项目88', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('WF', 'week15', 'T3', '项目68', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('WI', 'week49', 'T2', '项目100', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WU', 'week45', 'T2', '项目63', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W\r', 'week44', 'T2', '项目99', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W1', 'week4', 'T2', '项目40', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W1Q4', 'week6', 'T3', '项目16', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('W3', 'week21', 'T4', '项目18', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('W3E1', 'week51', 'T3', '项目92', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('W3J', 'week29', 'T1', '项目3', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('W5', 'week35', 'T4', '项目10', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('W5T4', 'week39', 'T2', '项目82', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('W5W3', 'week35', 'T4', '项目10', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('W7', 'week25', 'T1', '项目71', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('W9', 'week37', 'T4', '项目96', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('WB', 'week52', 'T3', '项目44', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('WD', 'week9', 'T3', '项目96', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WD', 'week13', 'T3', '项目41', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WE', 'week26', 'T1', '项目41', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('WF7', 'week41', 'T2', '项目71', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WI6', 'week12', 'T2', '项目10', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('WK6', 'week34', 'T4', '项目51', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WK6F', 'week11', 'T2', '项目82', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('WP2', 'week11', 'T2', '项目70', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WQ2', 'week20', 'T4', '项目31', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('WR', 'week4', 'T2', '项目79', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('WU', 'week23', 'T1', '项目7', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('WY0', 'week6', 'T3', '项目91', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('WY6', 'week18', 'T4', '项目74', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X', 'week38', 'T4', '项目98', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X', 'week27', 'T1', '项目58', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('XN5', 'week24', 'T1', '项目21', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('XO7', 'week38', 'T4', '项目77', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X', 'week48', 'T2', '项目98', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XM', 'week24', 'T1', '项目61', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('XV', 'week22', 'T4', '项目41', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X\r', 'week45', 'T2', '项目37', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X\rS6', 'week14', 'T3', '项目75', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X1', 'week23', 'T1', '项目68', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X1M', 'week1', 'T1', '项目51', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X1T6', 'week29', 'T3', '项目20', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X1U', 'week3', 'T3', '项目24', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X3', 'week7', 'T1', '项目76', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X3B', 'week6', 'T3', '项目20', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X3M\n', 'week32', 'T3', '项目5', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('X3W7', 'week18', 'T4', '项目40', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('X4', 'week5', 'T2', '项目83', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X4D', 'week34', 'T4', '项目83', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X4N', 'week18', 'T4', '项目5', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X4U7', 'week8', 'T3', '项目60', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X4W9', 'week48', 'T2', '项目50', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X5', 'week41', 'T2', '项目72', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('X5F', 'week41', 'T2', '项目44', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X6', 'week34', 'T3', '项目99', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X6W', 'week21', 'T4', '项目3', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X7', 'week2', 'T4', '项目58', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('X7A', 'week42', 'T2', '项目72', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X7E', 'week24', 'T1', '项目92', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X7O\r', 'week19', 'T4', '项目4', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('X8', 'week39', 'T4', '项目65', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('X8G1', 'week42', 'T2', '项目89', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X8J6', 'week29', 'T3', '项目52', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('X8K8', 'week35', 'T4', '项目18', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X9', 'week20', 'T4', '项目71', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('X9R\r', 'week42', 'T2', '项目99', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('XF2', 'week5', 'T2', '项目78', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('XK', 'week44', 'T2', '项目31', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XM', 'week32', 'T3', '项目67', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XP7', 'week48', 'T2', '项目67', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('XQ', 'week3', 'T3', '项目28', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('XR8', 'week47', 'T2', '项目17', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XR9', 'week30', 'T3', '项目72', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('XS\n', 'week40', 'T2', '项目5', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XS3', 'week14', 'T3', '项目8', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XS6', 'week11', 'T2', '项目15', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('XU', 'week47', 'T2', '项目89', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('XY', 'week20', 'T4', '项目69', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y', 'week24', 'T1', '项目89', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y\n', 'week10', 'T1', '项目47', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y\nJ2', 'week25', 'T1', '项目66', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y', 'week22', 'T4', '项目48', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('YY', 'week4', 'T2', '项目87', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y', 'week41', 'T2', '项目47', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y\r', 'week33', 'T3', '项目27', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Y\rA', 'week36', 'T4', '项目33', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y\rP2', 'week29', 'T3', '项目53', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y\rT', 'week9', 'T3', '项目1', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Y0', 'week20', 'T4', '项目93', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y0E', 'week7', 'T3', '项目42', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y0J', 'week20', 'T4', '项目19', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y0Q', 'week5', 'T2', '项目100', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y0Y', 'week46', 'T2', '项目30', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y2', 'week21', 'T4', '项目39', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y2I', 'week45', 'T2', '项目14', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y3', 'week28', 'T1', '项目45', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Y4', 'week5', 'T2', '项目69', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y5', 'week39', 'T4', '项目77', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y6', 'week6', 'T3', '项目38', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y6K6', 'week6', 'T3', '项目100', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Y7', 'week11', 'T2', '项目86', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Y7D', 'week7', 'T3', '项目4', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Y7L7', 'week37', 'T4', '项目58', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Y8', 'week44', 'T2', '项目35', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y9', 'week18', 'T4', '项目57', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Y9X9', 'week42', 'T2', '项目42', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('YA6', 'week19', 'T4', '项目22', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('YE1', 'week18', 'T4', '项目40', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('YE9', 'week1', 'T1', '项目79', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('YI', 'week47', 'T2', '项目5', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('YI2', 'week48', 'T2', '项目31', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('YJ', 'week25', 'T1', '项目93', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('YN3', 'week17', 'T4', '项目91', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('YR', 'week30', 'T3', '项目41', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('YR4', 'week27', 'T1', '项目82', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('YS6', 'week34', 'T4', '项目40', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z', 'week2', 'T4', '项目21', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z', 'week38', 'T4', '项目73', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('ZL8', 'week37', 'T4', '项目35', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('ZR8', 'week1', 'T1', '项目29', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('ZU\n', 'week9', 'T4', '项目79', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('ZY', 'week22', 'T1', '项目97', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z\r', 'week42', 'T2', '项目51', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z\rJ', 'week8', 'T3', '项目89', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z\rX1', 'week7', 'T2', '项目71', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Z0', 'week15', 'T3', '项目87', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z2', 'week18', 'T4', '项目25', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z2A', 'week32', 'T3', '项目51', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Z2Q6', 'week2', 'T4', '项目63', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z2S\r', 'week27', 'T1', '项目23', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z3', 'week11', 'T2', '项目32', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Z4', 'week12', 'T3', '项目51', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z4A', 'week21', 'T4', '项目49', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z4U', 'week4', 'T2', '项目5', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Z5', 'week14', 'T3', '项目67', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z6', 'week14', 'T3', '项目20', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z6A', 'week42', 'T2', '项目90', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z6C9', 'week41', 'T2', '项目61', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z6L1', 'week41', 'T2', '项目91', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Z6L6', 'week36', 'T4', '项目64', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('Z6P\n', 'week30', 'T3', '项目22', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z6S2', 'week28', 'T1', '项目76', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('Z6W', 'week7', 'T4', '项目9', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('Z8', 'week35', 'T4', '项目63', '1.中;2.文', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z8M', 'week50', 'T3', '项目28', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z8U0', 'week50', 'T3', '项目39', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('Z9', 'week10', 'T1', '项目58', '1.中;2.文', '智能品控');
INSERT INTO `meeting` VALUES ('ZD2', 'week23', 'T1', '项目52', '1.文;2.言', '大数据分析&程序开发');
INSERT INTO `meeting` VALUES ('ZI', 'week29', 'T3', '项目61', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('ZK0', 'week13', 'T3', '项目66', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('ZN\n', 'week19', 'T4', '项目75', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('ZP1', 'week29', 'T3', '项目74', '1.文;2.言', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('ZQ4', 'week9', 'T4', '项目20', '1.中;2.文', 'QMS&战情中心');
INSERT INTO `meeting` VALUES ('ZS6', 'week38', 'T4', '项目85', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('ZY3', 'week38', 'T4', '项目22', '1.文;2.言', '智能品控');
INSERT INTO `meeting` VALUES ('ZY6', 'week3', 'T3', '项目3', '1.中;2.文', '大数据分析&程序开发');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category` enum('analysis','control','dash') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `completion_date` date NOT NULL,
  `status` enum('如期进行','本週上線','项目Delay','暫停项目') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES (1, '项目1', 'dash', '2025-02-04', '本週上線');
INSERT INTO `projects` VALUES (2, '项目2', 'dash', '2025-02-07', '项目Delay');
INSERT INTO `projects` VALUES (3, '项目3', 'analysis', '2025-01-20', '项目Delay');
INSERT INTO `projects` VALUES (4, '项目4', 'analysis', '2025-02-03', '暫停项目');
INSERT INTO `projects` VALUES (5, '项目5', 'control', '2025-01-21', '暫停项目');
INSERT INTO `projects` VALUES (6, '项目6', 'control', '2025-01-27', '暫停项目');
INSERT INTO `projects` VALUES (7, '项目7', 'control', '2025-01-13', '本週上線');
INSERT INTO `projects` VALUES (8, '项目8', 'analysis', '2025-01-25', '项目Delay');
INSERT INTO `projects` VALUES (9, '项目9', 'analysis', '2025-01-03', '项目Delay');
INSERT INTO `projects` VALUES (10, '项目10', 'control', '2025-01-15', '项目Delay');
INSERT INTO `projects` VALUES (11, '项目11', 'control', '2025-01-30', '暫停项目');
INSERT INTO `projects` VALUES (12, '项目12', 'dash', '2025-01-16', '本週上線');
INSERT INTO `projects` VALUES (13, '项目13', 'analysis', '2025-02-13', '如期进行');
INSERT INTO `projects` VALUES (14, '项目14', 'control', '2025-01-02', '本週上線');
INSERT INTO `projects` VALUES (15, '项目15', 'control', '2025-01-18', '暫停项目');
INSERT INTO `projects` VALUES (16, '项目16', 'analysis', '2025-01-13', '项目Delay');
INSERT INTO `projects` VALUES (17, '项目17', 'dash', '2025-01-27', '暫停项目');
INSERT INTO `projects` VALUES (18, '项目18', 'analysis', '2025-01-27', '本週上線');
INSERT INTO `projects` VALUES (19, '项目19', 'analysis', '2025-01-06', '如期进行');
INSERT INTO `projects` VALUES (20, '项目20', 'dash', '2025-01-30', '本週上線');
INSERT INTO `projects` VALUES (21, '项目21', 'control', '2025-01-20', '如期进行');
INSERT INTO `projects` VALUES (22, '项目22', 'dash', '2025-02-01', '项目Delay');
INSERT INTO `projects` VALUES (23, '项目23', 'control', '2025-02-11', '如期进行');
INSERT INTO `projects` VALUES (24, '项目24', 'analysis', '2025-01-10', '项目Delay');
INSERT INTO `projects` VALUES (25, '项目25', 'dash', '2025-02-04', '如期进行');
INSERT INTO `projects` VALUES (26, '项目26', 'control', '2025-01-27', '暫停项目');
INSERT INTO `projects` VALUES (27, '项目27', 'dash', '2025-02-07', '暫停项目');
INSERT INTO `projects` VALUES (28, '项目28', 'control', '2025-01-24', '项目Delay');
INSERT INTO `projects` VALUES (29, '项目29', 'dash', '2025-02-12', '如期进行');
INSERT INTO `projects` VALUES (30, '项目30', 'analysis', '2025-01-10', '本週上線');
INSERT INTO `projects` VALUES (31, '项目31', 'dash', '2025-01-25', '暫停项目');
INSERT INTO `projects` VALUES (32, '项目32', 'analysis', '2025-01-06', '本週上線');
INSERT INTO `projects` VALUES (33, '项目33', 'control', '2025-01-24', '项目Delay');
INSERT INTO `projects` VALUES (34, '项目34', 'control', '2025-01-05', '项目Delay');
INSERT INTO `projects` VALUES (35, '项目35', 'dash', '2025-02-05', '如期进行');
INSERT INTO `projects` VALUES (36, '项目36', 'control', '2025-02-11', '暫停项目');
INSERT INTO `projects` VALUES (37, '项目37', 'analysis', '2025-01-30', '项目Delay');
INSERT INTO `projects` VALUES (38, '项目38', 'control', '2025-01-22', '暫停项目');
INSERT INTO `projects` VALUES (39, '项目39', 'dash', '2025-02-03', '暫停项目');
INSERT INTO `projects` VALUES (40, '项目40', 'analysis', '2025-01-15', '项目Delay');
INSERT INTO `projects` VALUES (41, '项目41', 'dash', '2025-02-04', '项目Delay');
INSERT INTO `projects` VALUES (42, '项目42', 'control', '2025-02-06', '暫停项目');
INSERT INTO `projects` VALUES (43, '项目43', 'analysis', '2025-01-23', '项目Delay');
INSERT INTO `projects` VALUES (44, '项目44', 'control', '2025-02-03', '项目Delay');
INSERT INTO `projects` VALUES (45, '项目45', 'analysis', '2025-01-09', '如期进行');
INSERT INTO `projects` VALUES (46, '项目46', 'analysis', '2025-02-07', '本週上線');
INSERT INTO `projects` VALUES (47, '项目47', 'dash', '2025-02-11', '本週上線');
INSERT INTO `projects` VALUES (48, '项目48', 'control', '2025-01-22', '本週上線');
INSERT INTO `projects` VALUES (49, '项目49', 'control', '2025-02-04', '项目Delay');
INSERT INTO `projects` VALUES (50, '项目50', 'analysis', '2025-01-20', '暫停项目');
INSERT INTO `projects` VALUES (51, '项目51', 'analysis', '2025-01-05', '项目Delay');
INSERT INTO `projects` VALUES (52, '项目52', 'dash', '2025-02-02', '项目Delay');
INSERT INTO `projects` VALUES (53, '项目53', 'analysis', '2025-01-20', '暫停项目');
INSERT INTO `projects` VALUES (54, '项目54', 'control', '2025-02-04', '如期进行');
INSERT INTO `projects` VALUES (55, '项目55', 'dash', '2025-01-31', '本週上線');
INSERT INTO `projects` VALUES (56, '项目56', 'analysis', '2025-01-02', '如期进行');
INSERT INTO `projects` VALUES (57, '项目57', 'dash', '2025-01-17', '项目Delay');
INSERT INTO `projects` VALUES (58, '项目58', 'control', '2025-01-30', '如期进行');
INSERT INTO `projects` VALUES (59, '项目59', 'dash', '2025-02-06', '本週上線');
INSERT INTO `projects` VALUES (60, '项目60', 'control', '2025-02-08', '本週上線');
INSERT INTO `projects` VALUES (61, '项目61', 'control', '2025-01-17', '本週上線');
INSERT INTO `projects` VALUES (62, '项目62', 'dash', '2025-02-08', '暫停项目');
INSERT INTO `projects` VALUES (63, '项目63', 'analysis', '2025-01-11', '本週上線');
INSERT INTO `projects` VALUES (64, '项目64', 'dash', '2025-01-21', '项目Delay');
INSERT INTO `projects` VALUES (65, '项目65', 'control', '2025-01-06', '项目Delay');
INSERT INTO `projects` VALUES (66, '项目66', 'control', '2025-01-11', '项目Delay');
INSERT INTO `projects` VALUES (67, '项目67', 'control', '2025-01-19', '如期进行');
INSERT INTO `projects` VALUES (68, '项目68', 'dash', '2025-01-28', '项目Delay');
INSERT INTO `projects` VALUES (69, '项目69', 'analysis', '2025-01-14', '项目Delay');
INSERT INTO `projects` VALUES (70, '项目70', 'control', '2025-01-15', '如期进行');
INSERT INTO `projects` VALUES (71, '项目71', 'control', '2025-02-11', '本週上線');
INSERT INTO `projects` VALUES (72, '项目72', 'control', '2025-01-14', '如期进行');
INSERT INTO `projects` VALUES (73, '项目73', 'analysis', '2025-01-29', '如期进行');
INSERT INTO `projects` VALUES (74, '项目74', 'analysis', '2025-02-12', '本週上線');
INSERT INTO `projects` VALUES (75, '项目75', 'dash', '2025-02-14', '项目Delay');
INSERT INTO `projects` VALUES (76, '项目76', 'analysis', '2025-01-01', '如期进行');
INSERT INTO `projects` VALUES (77, '项目77', 'control', '2025-01-03', '如期进行');
INSERT INTO `projects` VALUES (78, '项目78', 'dash', '2025-01-28', '本週上線');
INSERT INTO `projects` VALUES (79, '项目79', 'dash', '2025-02-05', '如期进行');
INSERT INTO `projects` VALUES (80, '项目80', 'control', '2025-02-08', '如期进行');
INSERT INTO `projects` VALUES (81, '项目81', 'analysis', '2025-01-10', '暫停项目');
INSERT INTO `projects` VALUES (82, '项目82', 'control', '2025-01-14', '如期进行');
INSERT INTO `projects` VALUES (83, '项目83', 'control', '2025-01-07', '暫停项目');
INSERT INTO `projects` VALUES (84, '项目84', 'analysis', '2025-01-25', '本週上線');
INSERT INTO `projects` VALUES (85, '项目85', 'control', '2025-01-14', '暫停项目');
INSERT INTO `projects` VALUES (86, '项目86', 'control', '2025-01-02', '暫停项目');
INSERT INTO `projects` VALUES (87, '项目87', 'analysis', '2025-02-01', '项目Delay');
INSERT INTO `projects` VALUES (88, '项目88', 'dash', '2025-02-01', '本週上線');
INSERT INTO `projects` VALUES (89, '项目89', 'analysis', '2025-01-29', '暫停项目');
INSERT INTO `projects` VALUES (90, '项目90', 'control', '2025-02-08', '暫停项目');
INSERT INTO `projects` VALUES (91, '项目91', 'analysis', '2025-01-09', '暫停项目');
INSERT INTO `projects` VALUES (92, '项目92', 'control', '2025-01-29', '如期进行');
INSERT INTO `projects` VALUES (93, '项目93', 'analysis', '2025-02-06', '本週上線');
INSERT INTO `projects` VALUES (94, '项目94', 'dash', '2025-01-13', '暫停项目');
INSERT INTO `projects` VALUES (95, '项目95', 'analysis', '2025-01-07', '项目Delay');
INSERT INTO `projects` VALUES (96, '项目96', 'dash', '2025-01-24', '暫停项目');
INSERT INTO `projects` VALUES (97, '项目97', 'dash', '2025-02-01', '暫停项目');
INSERT INTO `projects` VALUES (98, '项目98', 'dash', '2025-01-23', '如期进行');
INSERT INTO `projects` VALUES (99, '项目99', 'dash', '2025-01-04', '项目Delay');
INSERT INTO `projects` VALUES (100, '项目100', 'analysis', '2025-01-04', '项目Delay');

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word`  (
  `需求单号` int NOT NULL,
  `系統名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `类别` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `系統歸屬` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `项目DRI` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `當前進度` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `當前進度计划完成时间` date NULL DEFAULT NULL,
  `當前進度实际完成时间` date NULL DEFAULT NULL,
  `當前進度delay時間(天)` int NULL DEFAULT NULL,
  `当前状态` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `用户提单时间` date NULL DEFAULT NULL,
  `計劃使用時間` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`需求单号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES (1, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '胡陽', '⑨系統開發', '2024-05-23', NULL, 266, 'Delay', '2024-01-10', '2024-06-30');
INSERT INTO `word` VALUES (2, 'SFC', 'control', '智能品控', '智能品控_', '任繼鋒', '⑨系統開發', '2025-02-28', NULL, 0, '如期進行', '2024-12-09', '2025-03-24');
INSERT INTO `word` VALUES (3, 'QMS品質看板', 'dash', 'QMS&战情中心', '來料品質', '吳啟飛', '⑨系統開發', '2024-10-18', NULL, 118, 'Delay', '2024-08-23', '2024-10-31');
INSERT INTO `word` VALUES (4, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '吳啟飛', '⑨系統開發', '2024-08-30', NULL, 167, 'Delay', '2024-06-17', '2024-10-25');
INSERT INTO `word` VALUES (5, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '吳小曼', '⑨系統開發', NULL, NULL, 0, 'Delay', '2024-01-26', '2024-06-30');
INSERT INTO `word` VALUES (6, '電子簽核平台', 'control', '智能品控', '出貨品質', '張強', '⑦系統方案規劃', '2025-02-28', NULL, 0, '如期進行', '2024-12-18', '2025-05-30');
INSERT INTO `word` VALUES (7, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '張強', '⑩系統測試', '2024-12-31', NULL, 44, 'Delay', '2023-09-04', '2024-06-30');
INSERT INTO `word` VALUES (8, 'QMS品質看板', 'dash', 'QMS&战情中心', '來料品質', '吳啟飛', '⑥QS需求提出/立項', NULL, NULL, 0, 'Delay', '2024-12-16', '2025-03-31');
INSERT INTO `word` VALUES (9, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '張強', '⑨系統開發', NULL, NULL, 0, 'Delay', '2023-10-21', '2024-07-30');
INSERT INTO `word` VALUES (10, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '其他模塊', '吴元琪', '⑬Closed', '2024-12-31', NULL, 0, 'Closed', '2024-12-14', '2024-12-31');
INSERT INTO `word` VALUES (11, 'AI智能品質分析系統', 'analysis', '大数据分析&程序开发', '製程品質', '吴元琪', '⑩系統測試', '2025-01-20', NULL, 24, 'Delay', '2024-12-12', '2025-03-20');
INSERT INTO `word` VALUES (12, '新檢測設備管理系統', 'control', '智能品控', '智能品控_', '朱玉平', '⑦系統方案規劃', '2025-02-22', NULL, 0, 'Delay', '2024-03-12', '2024-09-30');
INSERT INTO `word` VALUES (13, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '胡陽', '⑧系統分析', '2025-02-16', NULL, 0, '如期進行', '2025-01-10', '2025-03-13');
INSERT INTO `word` VALUES (14, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '胡陽', '④系統方案規劃', '2025-02-15', NULL, 0, 'Delay', '2025-01-08', NULL);
INSERT INTO `word` VALUES (15, '新檢測設備管理系統', 'control', '智能品控', '智能品控_', '朱玉平', '⑧系統分析', NULL, NULL, 0, 'Delay', '2024-01-08', '2024-09-30');
INSERT INTO `word` VALUES (16, 'QMS品質看板', 'dash', 'QMS&战情中心', '其他模塊', '李春波', '⑧系統分析', '2025-02-20', NULL, 0, '如期進行', '2025-01-08', NULL);
INSERT INTO `word` VALUES (17, '新檢測設備管理系統', 'control', '智能品控', '智能品控_', '朱玉平', '②用戶/QS需求提出', NULL, NULL, 0, 'Delay', '2024-12-27', '2024-09-30');
INSERT INTO `word` VALUES (18, 'SFC', 'control', '智能品控', '智能品控_', '任繼鋒', '⑩系統測試', '2025-02-12', NULL, 1, '如期進行', '2025-01-05', '2025-01-17');
INSERT INTO `word` VALUES (19, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '朱玉平', '⑦系統方案規劃', '2025-02-24', NULL, 0, '如期進行', '2024-12-10', '2025-06-30');
INSERT INTO `word` VALUES (20, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '張強', '⑩系統測試', '2024-12-20', NULL, 55, 'Delay', '2024-09-02', '2024-11-30');
INSERT INTO `word` VALUES (21, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '朱玉平', '⑨系統開發', NULL, NULL, 0, 'Delay', '2024-10-31', '2024-12-31');
INSERT INTO `word` VALUES (22, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '張強', '⑩系統測試', '2024-12-20', NULL, 55, 'Delay', '2024-09-06', '2024-12-30');
INSERT INTO `word` VALUES (23, 'iPEBG戰情中心', 'dash', 'QMS&战情中心', '出貨品質', '張強', '⑬Closed', '2025-01-24', NULL, 0, '如期進行', '2024-11-18', '2025-03-30');
INSERT INTO `word` VALUES (24, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '周霄飛', '⑧系統分析', '2025-06-20', NULL, 0, '如期進行', '2024-09-11', '2025-07-30');
INSERT INTO `word` VALUES (26, 'SFC', 'control', '智能品控', '智能品控_', '任繼鋒', '⑬Closed', '2025-01-20', NULL, 0, 'Closed', '2024-11-27', '2025-01-24');
INSERT INTO `word` VALUES (27, 'QMS品質看板', 'dash', 'QMS&战情中心', '出貨品質', '張強', '⑦系統方案規劃', '2025-02-28', NULL, 0, '如期進行', '2024-10-25', '2025-03-30');
INSERT INTO `word` VALUES (28, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '蔡鎮煉', '⑧系統分析', '2025-04-01', NULL, 0, '如期進行', '2024-12-06', '2025-04-01');
INSERT INTO `word` VALUES (29, 'QMS品質看板', 'dash', 'QMS&战情中心', '品質KPI', '周霄飛', '⑬Closed', NULL, NULL, 0, 'Closed', '2024-10-30', '2025-02-10');
INSERT INTO `word` VALUES (30, 'iPEBG戰情中心異常通知管理系統', 'control', '智能品控', '出貨品質', '朱玉平', '④系統方案規劃', NULL, NULL, 0, 'Delay', '2024-10-13', '2024-12-31');
INSERT INTO `word` VALUES (31, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '其他模塊', '袁梓珉', '⑨系統開發', '2025-04-30', NULL, 0, '如期進行', '2024-12-10', '2025-06-30');
INSERT INTO `word` VALUES (32, 'AI智能品質分析系統', 'analysis', '大数据分析&程序开发', '製程品質', '袁梓珉', '⑨系統開發', '2025-02-20', NULL, 0, '如期進行', '2024-11-27', '2025-02-28');
INSERT INTO `word` VALUES (33, 'AI智能品質分析系統', 'analysis', '大数据分析&程序开发', '製程品質', '袁梓珉', '⑨系統開發', '2025-03-31', NULL, 0, '如期進行', '2024-11-27', '2025-04-30');
INSERT INTO `word` VALUES (34, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '其他模塊', '张振扬', '⑨系統開發', '2025-02-15', NULL, 0, '如期進行', '2024-11-27', '2025-03-30');
INSERT INTO `word` VALUES (35, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '製程品質', '袁梓珉', '⑬Closed', '2025-01-22', NULL, 0, 'Closed', '2025-01-06', '2025-01-22');
INSERT INTO `word` VALUES (36, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '其他模塊', '袁梓珉', '⑨系統開發', '2025-02-15', NULL, 0, '如期進行', '2025-01-02', '2025-03-01');
INSERT INTO `word` VALUES (37, '三次元檢測看板', 'analysis', '大数据分析&程序开发', '製程品質', '吴元琪', '⑬Closed', '2025-01-23', NULL, 0, 'Closed', '2025-01-06', '2025-02-28');
INSERT INTO `word` VALUES (38, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '製程品質', '吴元琪', '⑬Closed', '2025-01-08', NULL, 0, 'Closed', '2024-12-18', '2025-01-08');
INSERT INTO `word` VALUES (39, 'SFC', 'control', '智能品控', '智能品控_', '梁志雲', '⑬Closed', '2024-11-28', NULL, 0, 'Closed', '2024-08-17', '2024-12-15');
INSERT INTO `word` VALUES (40, 'SmartQAsist', 'analysis', '大数据分析&程序开发', '其他模塊', '吴元琪', '⑨系統開發', '2025-02-22', NULL, 0, '如期進行', '2025-01-21', '2025-02-28');
INSERT INTO `word` VALUES (41, 'SFC', 'control', '智能品控', '智能品控_', '梁志雲', '⑬Closed', '2024-12-12', NULL, 0, 'Closed', '2024-07-26', '2024-12-28');
INSERT INTO `word` VALUES (42, '三次元檢測看板', 'control', '智能品控', '智能品控_', '梁志雲', '⑨系統開發', '2025-02-12', NULL, 1, '如期進行', '2024-11-07', '2025-06-01');
INSERT INTO `word` VALUES (43, 'AI智能品質分析系統', 'control', '智能品控', '智能品控_', '梁志雲', '⑬Closed', '2024-12-22', NULL, 0, 'Closed', '2024-11-11', '2024-12-31');
INSERT INTO `word` VALUES (44, 'AI智能品質分析系統', 'control', '智能品控', '智能品控_', '梁志雲', '⑬Closed', '2024-12-22', NULL, 0, 'Closed', '2024-11-11', '2024-12-31');
INSERT INTO `word` VALUES (45, 'AI智能品質分析系統', 'control', '智能品控', '智能品控_', '梁志雲', '⑬Closed', '2024-12-22', NULL, 0, 'Closed', '2024-11-11', '2024-12-31');
INSERT INTO `word` VALUES (46, 'SFC', 'control', '智能品控', '智能品控_', '梁志雲', '⑬Closed', '2025-01-19', NULL, 0, 'Closed', '2024-12-25', '2025-02-10');
INSERT INTO `word` VALUES (47, 'AI智能品質分析系統', 'control', '智能品控', '智能品控_', '梁志雲', '⑪系統上線', '2025-03-10', NULL, 0, '如期進行', '2024-12-25', '2025-03-10');
INSERT INTO `word` VALUES (48, 'AI智能品質分析系統', 'control', '智能品控', '智能品控_', '梁志雲', '⑨系統開發', '2025-02-28', NULL, 0, '如期進行', '2025-01-11', '2025-06-01');
INSERT INTO `word` VALUES (49, '三次元檢測看板', 'dash', 'QMS&战情中心', '製程品質', '胡陽', '⑬Closed', '2025-01-20', NULL, 0, 'Closed', '2024-09-27', NULL);
INSERT INTO `word` VALUES (50, 'QMS品質看板', 'dash', 'QMS&战情中心', '製程品質', '胡陽', '⑪系統上線', '2025-02-15', NULL, 0, '如期進行', '2024-12-10', NULL);

-- ----------------------------
-- Procedure structure for GenerateDemandData
-- ----------------------------
DROP PROCEDURE IF EXISTS `GenerateDemandData`;
delimiter ;;
CREATE PROCEDURE `GenerateDemandData`()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE random_chars VARCHAR(12);
    DECLARE unique_check INT DEFAULT 0;
    DECLARE random_week VARCHAR(6);
    DECLARE random_progress CHAR(2);
    DECLARE random_pname VARCHAR(10);
    DECLARE random_pdetail VARCHAR(50);
    DECLARE random_type1 VARCHAR(50);

    WHILE i <= 1000 DO -- 假设我们插入1000行数据
        -- 生成12位随机字母数字组合，并确保唯一性
        SET random_chars = '';
        REPEAT
            SET random_chars = CONCAT(
                random_chars,
                CHAR(FLOOR(65 + RAND() * 26)), -- 随机大写字母
                CHAR(FLOOR(48 + RAND() * 10) + (FLOOR(RAND() * 2) * (9 - 48 + 1))) -- 随机数字或大写字母（这里简化为只生成数字）
            );
            -- 检查是否已存在（注意：这里使用了一个简化的方法，可能不是最高效的）
            SELECT COUNT(*) INTO unique_check FROM demand_table WHERE demand_id = random_chars;
        UNTIL unique_check = 0 END REPEAT;

        -- 随机选择week
        SET random_week = CONCAT('week', FLOOR(1 + RAND() * 52));

        -- 随机选择current_progress（A-D对应T1-T4）
        SET random_progress = CHAR(FLOOR(65 + RAND() * 4));

        -- 随机选择p_name
        SET random_pname = CONCAT('项目', FLOOR(1 + RAND() * 100));

        -- 随机选择p_detail
        SET random_pdetail = IF(FLOOR(RAND() * 2) = 0, '1.中;2.文', '1.文;2.言');

        -- 随机选择type1
        SET random_type1 = CASE FLOOR(RAND() * 3)
            WHEN 0 THEN 'QMS&战情中心'
            WHEN 1 THEN '智能品控'
            ELSE '大数据分析&程序开发'
        END;

        -- 插入数据（注意：表名应为demand_table，而不是meeting）
        INSERT INTO demand_table (demand_id, week, current_progress, p_name, p_detail, type1)
        VALUES (random_chars, random_week, random_progress, random_pname, random_pdetail, random_type1);

        SET i = i + 1;
    END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
