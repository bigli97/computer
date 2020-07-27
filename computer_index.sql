/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myjava

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-07-27 22:42:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `computer_index`
-- ----------------------------
DROP TABLE IF EXISTS `computer_index`;
CREATE TABLE `computer_index` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpu_usage` double DEFAULT '0',
  `memory_usage` double DEFAULT '0',
  `network_speed` double DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of computer_index
-- ----------------------------
INSERT INTO `computer_index` VALUES ('61', '87.5', '48.4', '305.3', '2020-07-27 13:42:25');
INSERT INTO `computer_index` VALUES ('62', '66.7', '48.4', '300.99', '2020-07-27 13:42:25');
INSERT INTO `computer_index` VALUES ('63', '30', '48.4', '504.62', '2020-07-27 13:42:28');
INSERT INTO `computer_index` VALUES ('64', '64.7', '48.7', '409.19', '2020-07-27 13:42:31');
INSERT INTO `computer_index` VALUES ('65', '95.5', '48.7', '406.66', '2020-07-27 13:42:31');
INSERT INTO `computer_index` VALUES ('66', '38.9', '51.2', '7.33', '2020-07-27 13:42:36');
INSERT INTO `computer_index` VALUES ('67', '100', '57.5', '9.27', '2020-07-27 13:42:38');
INSERT INTO `computer_index` VALUES ('68', '100', '57.4', '9.05', '2020-07-27 13:42:40');
INSERT INTO `computer_index` VALUES ('69', '100', '56.6', '9.33', '2020-07-27 13:42:40');
INSERT INTO `computer_index` VALUES ('70', '41.2', '58.2', '4.84', '2020-07-27 13:42:43');
INSERT INTO `computer_index` VALUES ('71', '94.1', '58.3', '6.48', '2020-07-27 13:42:44');
INSERT INTO `computer_index` VALUES ('72', '37.5', '59', '6.63', '2020-07-27 13:42:47');
INSERT INTO `computer_index` VALUES ('73', '61.9', '58.9', '6.29', '2020-07-27 13:42:48');
INSERT INTO `computer_index` VALUES ('74', '100', '58.9', '4.75', '2020-07-27 13:42:51');
INSERT INTO `computer_index` VALUES ('75', '37.5', '58.9', '4.66', '2020-07-27 13:42:51');
INSERT INTO `computer_index` VALUES ('76', '55.6', '58.7', '2.92', '2020-07-27 13:42:54');
INSERT INTO `computer_index` VALUES ('77', '16.7', '54.3', '0.12', '2020-07-27 14:10:18');
INSERT INTO `computer_index` VALUES ('78', '11.8', '54.3', '0.12', '2020-07-27 14:10:20');
INSERT INTO `computer_index` VALUES ('79', '17.6', '54.3', '0.12', '2020-07-27 14:10:23');
INSERT INTO `computer_index` VALUES ('80', '16.7', '54.3', '0.06', '2020-07-27 14:10:25');
INSERT INTO `computer_index` VALUES ('81', '11.8', '54.3', '0.06', '2020-07-27 14:10:28');
INSERT INTO `computer_index` VALUES ('82', '16.7', '54.3', '0.06', '2020-07-27 14:10:31');
INSERT INTO `computer_index` VALUES ('83', '21.1', '54.3', '0.06', '2020-07-27 14:10:33');
INSERT INTO `computer_index` VALUES ('84', '21.1', '54.4', '0.06', '2020-07-27 14:10:36');
INSERT INTO `computer_index` VALUES ('85', '16.7', '54.4', '0.18', '2020-07-27 14:10:39');
INSERT INTO `computer_index` VALUES ('86', '16.7', '54.4', '0.06', '2020-07-27 14:10:41');
INSERT INTO `computer_index` VALUES ('87', '16.7', '54.4', '0.06', '2020-07-27 14:10:44');
INSERT INTO `computer_index` VALUES ('88', '26.3', '54.4', '0.06', '2020-07-27 14:10:47');
INSERT INTO `computer_index` VALUES ('89', '22.2', '54.4', '0.12', '2020-07-27 14:10:50');
INSERT INTO `computer_index` VALUES ('90', '21.1', '54.4', '0.12', '2020-07-27 14:10:52');
INSERT INTO `computer_index` VALUES ('91', '17.6', '54.4', '0.06', '2020-07-27 14:10:55');
INSERT INTO `computer_index` VALUES ('92', '16.7', '54.4', '0.06', '2020-07-27 14:10:58');
INSERT INTO `computer_index` VALUES ('93', '16.7', '54.4', '0.06', '2020-07-27 14:11:01');
INSERT INTO `computer_index` VALUES ('94', '16.7', '54.4', '0.06', '2020-07-27 14:11:03');
INSERT INTO `computer_index` VALUES ('95', '11.8', '54.4', '0.12', '2020-07-27 14:15:08');
INSERT INTO `computer_index` VALUES ('96', '11.8', '54.4', '0.12', '2020-07-27 14:15:11');
INSERT INTO `computer_index` VALUES ('97', '21.1', '54.4', '0.06', '2020-07-27 14:15:13');
INSERT INTO `computer_index` VALUES ('98', '21.1', '54.4', '0.06', '2020-07-27 14:15:16');
INSERT INTO `computer_index` VALUES ('99', '16.7', '54.4', '0.06', '2020-07-27 14:15:19');
INSERT INTO `computer_index` VALUES ('100', '11.8', '54.4', '0.12', '2020-07-27 14:15:22');
INSERT INTO `computer_index` VALUES ('101', '16.7', '54.4', '0.06', '2020-07-27 14:15:25');
INSERT INTO `computer_index` VALUES ('102', '16.7', '54.4', '0.06', '2020-07-27 14:15:27');
INSERT INTO `computer_index` VALUES ('103', '16.7', '54.4', '0', '2020-07-27 14:15:30');
INSERT INTO `computer_index` VALUES ('104', '21.1', '54.4', '0', '2020-07-27 14:15:33');
INSERT INTO `computer_index` VALUES ('105', '11.8', '67', '1.25', '2020-07-27 19:15:42');
INSERT INTO `computer_index` VALUES ('106', '21.1', '67.2', '3.32', '2020-07-27 19:21:40');
INSERT INTO `computer_index` VALUES ('107', '27.8', '67.2', '3.28', '2020-07-27 19:21:43');
INSERT INTO `computer_index` VALUES ('108', '21.1', '67.2', '3.41', '2020-07-27 19:21:46');
INSERT INTO `computer_index` VALUES ('109', '16.7', '67.2', '3.04', '2020-07-27 19:21:49');
INSERT INTO `computer_index` VALUES ('110', '25', '67.2', '1.37', '2020-07-27 19:21:51');
INSERT INTO `computer_index` VALUES ('111', '11.8', '67.2', '1.25', '2020-07-27 19:21:54');
INSERT INTO `computer_index` VALUES ('112', '6.7', '67.2', '1.31', '2020-07-27 19:21:57');
INSERT INTO `computer_index` VALUES ('113', '38.9', '67.3', '0.51', '2020-07-27 19:22:00');
INSERT INTO `computer_index` VALUES ('114', '21.1', '67.3', '1.37', '2020-07-27 19:22:03');
INSERT INTO `computer_index` VALUES ('115', '16.7', '67.3', '1.33', '2020-07-27 19:22:06');
INSERT INTO `computer_index` VALUES ('116', '6.2', '66.5', '1.31', '2020-07-27 19:25:10');
INSERT INTO `computer_index` VALUES ('117', '16.7', '66.5', '1.43', '2020-07-27 19:25:12');
INSERT INTO `computer_index` VALUES ('118', '11.8', '66.5', '0.49', '2020-07-27 19:25:15');
INSERT INTO `computer_index` VALUES ('119', '11.8', '66.5', '1.82', '2020-07-27 19:25:18');
INSERT INTO `computer_index` VALUES ('120', '41.2', '66.6', '3.28', '2020-07-27 19:25:21');
INSERT INTO `computer_index` VALUES ('121', '11.8', '66.6', '3.22', '2020-07-27 19:25:23');
INSERT INTO `computer_index` VALUES ('122', '42.1', '66.6', '3.16', '2020-07-27 19:25:26');
INSERT INTO `computer_index` VALUES ('123', '16.7', '66.6', '1.02', '2020-07-27 19:25:29');
INSERT INTO `computer_index` VALUES ('124', '11.8', '66.6', '1.31', '2020-07-27 19:25:32');
INSERT INTO `computer_index` VALUES ('125', '6.2', '66.6', '1.41', '2020-07-27 19:25:34');
INSERT INTO `computer_index` VALUES ('126', '16.7', '66.8', '1.47', '2020-07-27 19:31:45');
INSERT INTO `computer_index` VALUES ('127', '23.5', '66.8', '3.08', '2020-07-27 19:31:47');
INSERT INTO `computer_index` VALUES ('128', '21.1', '66.9', '3.12', '2020-07-27 19:34:03');
INSERT INTO `computer_index` VALUES ('129', '16.7', '66.9', '1.31', '2020-07-27 19:35:04');
INSERT INTO `computer_index` VALUES ('130', '16.7', '67', '1.37', '2020-07-27 19:38:38');
INSERT INTO `computer_index` VALUES ('131', '50', '67.2', '2.54', '2020-07-27 19:43:06');
INSERT INTO `computer_index` VALUES ('132', '17.6', '67.3', '1.37', '2020-07-27 19:46:08');
INSERT INTO `computer_index` VALUES ('133', '21.1', '67.3', '1.31', '2020-07-27 19:47:01');
INSERT INTO `computer_index` VALUES ('134', '25', '67.4', '1.25', '2020-07-27 19:49:48');
INSERT INTO `computer_index` VALUES ('135', '11.8', '67.6', '0.81', '2020-07-27 19:53:25');
INSERT INTO `computer_index` VALUES ('136', '11.8', '67.7', '3.28', '2020-07-27 19:57:52');
INSERT INTO `computer_index` VALUES ('137', '11.8', '67', '1.37', '2020-07-27 20:01:22');
INSERT INTO `computer_index` VALUES ('138', '16.7', '67.2', '1.37', '2020-07-27 20:08:08');
INSERT INTO `computer_index` VALUES ('139', '16.7', '67.3', '1.67', '2020-07-27 20:11:25');
INSERT INTO `computer_index` VALUES ('140', '64.3', '67.5', '3.22', '2020-07-27 20:15:24');
INSERT INTO `computer_index` VALUES ('141', '6.2', '67.5', '1.25', '2020-07-27 20:15:48');
