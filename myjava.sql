/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myjava

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-01 00:07:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category_`
-- ----------------------------
DROP TABLE IF EXISTS `category_`;
CREATE TABLE `category_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_
-- ----------------------------
INSERT INTO `category_` VALUES ('1', '5');
INSERT INTO `category_` VALUES ('2', '20');
INSERT INTO `category_` VALUES ('3', '10');
INSERT INTO `category_` VALUES ('4', '12');
INSERT INTO `category_` VALUES ('5', '20');
INSERT INTO `category_` VALUES ('6', '26');

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
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8;

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
INSERT INTO `computer_index` VALUES ('142', '11.8', '59.9', '0.4', '2020-07-28 20:43:45');
INSERT INTO `computer_index` VALUES ('143', '6.2', '60', '3.12', '2020-07-28 20:43:48');
INSERT INTO `computer_index` VALUES ('144', '25', '60', '1.03', '2020-07-28 20:43:51');
INSERT INTO `computer_index` VALUES ('145', '21.1', '60', '3.41', '2020-07-28 20:46:57');
INSERT INTO `computer_index` VALUES ('146', '25', '60.1', '1.31', '2020-07-28 20:47:01');
INSERT INTO `computer_index` VALUES ('147', '28.6', '60.1', '3.26', '2020-07-28 20:47:05');
INSERT INTO `computer_index` VALUES ('148', '11.8', '60.1', '0.4', '2020-07-28 20:48:02');
INSERT INTO `computer_index` VALUES ('149', '6.2', '60.1', '1.67', '2020-07-28 20:49:27');
INSERT INTO `computer_index` VALUES ('150', '16.7', '60.1', '1.49', '2020-07-28 20:49:29');
INSERT INTO `computer_index` VALUES ('151', '16.7', '60.1', '1.31', '2020-07-28 20:49:32');
INSERT INTO `computer_index` VALUES ('152', '23.5', '60.1', '0.97', '2020-07-28 20:49:34');
INSERT INTO `computer_index` VALUES ('153', '11.8', '60.2', '3.35', '2020-07-28 20:49:37');
INSERT INTO `computer_index` VALUES ('154', '11.8', '60.2', '3.14', '2020-07-28 20:49:39');
INSERT INTO `computer_index` VALUES ('155', '33.3', '60.2', '0.97', '2020-07-28 20:49:42');
INSERT INTO `computer_index` VALUES ('156', '11.8', '60.2', '1.37', '2020-07-28 20:49:44');
INSERT INTO `computer_index` VALUES ('157', '18.8', '60.2', '1.37', '2020-07-28 20:49:47');
INSERT INTO `computer_index` VALUES ('158', '16.7', '60.2', '0.91', '2020-07-28 20:49:49');
INSERT INTO `computer_index` VALUES ('159', '15.8', '60.2', '3.2', '2020-07-28 20:49:52');
INSERT INTO `computer_index` VALUES ('160', '16.7', '60.2', '3.2', '2020-07-28 20:49:54');
INSERT INTO `computer_index` VALUES ('161', '16.7', '60.2', '0.87', '2020-07-28 20:49:57');
INSERT INTO `computer_index` VALUES ('162', '100', '60.2', '1.37', '2020-07-28 20:50:00');
INSERT INTO `computer_index` VALUES ('163', '22.2', '60.2', '1.31', '2020-07-28 20:50:02');
INSERT INTO `computer_index` VALUES ('164', '16.7', '60.2', '1.31', '2020-07-28 20:50:05');
INSERT INTO `computer_index` VALUES ('165', '11.8', '60.2', '1.31', '2020-07-28 20:50:07');
INSERT INTO `computer_index` VALUES ('166', '21.1', '60.2', '1.37', '2020-07-28 20:50:39');
INSERT INTO `computer_index` VALUES ('167', '11.8', '60.2', '1.37', '2020-07-28 20:50:41');
INSERT INTO `computer_index` VALUES ('168', '11.8', '60.2', '3.2', '2020-07-28 20:50:49');
INSERT INTO `computer_index` VALUES ('169', '38.9', '60.3', '3.14', '2020-07-28 20:50:52');
INSERT INTO `computer_index` VALUES ('170', '25', '60.3', '2.27', '2020-07-28 20:50:56');
INSERT INTO `computer_index` VALUES ('171', '11.8', '60.3', '3.2', '2020-07-28 20:50:58');
INSERT INTO `computer_index` VALUES ('172', '16.7', '60.3', '1.37', '2020-07-28 20:51:01');
INSERT INTO `computer_index` VALUES ('173', '16.7', '60.3', '0.65', '2020-07-28 20:51:03');
INSERT INTO `computer_index` VALUES ('174', '33.3', '60.3', '1.41', '2020-07-28 20:51:06');
INSERT INTO `computer_index` VALUES ('175', '11.8', '60.3', '1.31', '2020-07-28 20:51:08');
INSERT INTO `computer_index` VALUES ('176', '35', '60.3', '3.2', '2020-07-28 20:51:11');
INSERT INTO `computer_index` VALUES ('177', '21.1', '60.3', '3.39', '2020-07-28 20:51:13');
INSERT INTO `computer_index` VALUES ('178', '21.1', '60.3', '1.31', '2020-07-28 20:52:03');
INSERT INTO `computer_index` VALUES ('179', '11.8', '60.3', '1.53', '2020-07-28 20:52:06');
INSERT INTO `computer_index` VALUES ('180', '27.8', '60.4', '2.1', '2020-07-28 20:52:08');
INSERT INTO `computer_index` VALUES ('181', '21.1', '60.4', '3.22', '2020-07-28 20:52:11');
INSERT INTO `computer_index` VALUES ('182', '33.3', '60.4', '3.24', '2020-07-28 20:52:15');
INSERT INTO `computer_index` VALUES ('183', '25', '60.4', '3.03', '2020-07-28 20:52:17');
INSERT INTO `computer_index` VALUES ('184', '27.8', '60.4', '2.24', '2020-07-28 20:52:20');
INSERT INTO `computer_index` VALUES ('185', '16.7', '60.4', '3.39', '2020-07-28 20:52:23');
INSERT INTO `computer_index` VALUES ('186', '25', '60.4', '1.02', '2020-07-28 20:52:27');
INSERT INTO `computer_index` VALUES ('187', '38.1', '60.4', '1.37', '2020-07-28 20:52:31');
INSERT INTO `computer_index` VALUES ('188', '100', '60.4', '1.02', '2020-07-28 20:52:34');
INSERT INTO `computer_index` VALUES ('189', '54.5', '60.5', '1.31', '2020-07-28 20:54:28');
INSERT INTO `computer_index` VALUES ('190', '21.1', '60.7', '0.35', '2020-07-28 21:03:25');
INSERT INTO `computer_index` VALUES ('191', '45', '60.7', '1.43', '2020-07-28 21:04:38');
INSERT INTO `computer_index` VALUES ('192', '11.8', '60.2', '2.24', '2020-07-28 21:16:55');
INSERT INTO `computer_index` VALUES ('193', '25', '60.2', '1.31', '2020-07-28 21:16:58');
INSERT INTO `computer_index` VALUES ('194', '40', '60.2', '1.31', '2020-07-28 21:17:20');
INSERT INTO `computer_index` VALUES ('195', '45', '60.2', '1.56', '2020-07-28 21:17:23');
INSERT INTO `computer_index` VALUES ('196', '11.8', '60.2', '1.31', '2020-07-28 21:17:26');
INSERT INTO `computer_index` VALUES ('197', '100', '87.1', '1.47', '2020-07-29 16:03:54');
INSERT INTO `computer_index` VALUES ('198', '100', '87.8', '3.48', '2020-07-29 16:04:00');
INSERT INTO `computer_index` VALUES ('199', '100', '88.6', '5.64', '2020-07-29 16:04:05');
INSERT INTO `computer_index` VALUES ('200', '100', '88.6', '1.59', '2020-07-29 16:04:09');
INSERT INTO `computer_index` VALUES ('201', '6.7', '83.5', '1.37', '2020-07-29 16:04:12');
INSERT INTO `computer_index` VALUES ('202', '38.9', '83.5', '0.35', '2020-07-29 16:04:15');
INSERT INTO `computer_index` VALUES ('203', '11.8', '83.5', '1.37', '2020-07-29 16:04:17');
INSERT INTO `computer_index` VALUES ('204', '21.1', '83.5', '1.31', '2020-07-29 16:04:20');
INSERT INTO `computer_index` VALUES ('205', '11.8', '83.5', '3.1', '2020-07-29 16:04:23');
INSERT INTO `computer_index` VALUES ('206', '17.6', '83.5', '2.91', '2020-07-29 16:04:25');
INSERT INTO `computer_index` VALUES ('207', '16.7', '83.5', '1.47', '2020-07-29 16:04:33');
INSERT INTO `computer_index` VALUES ('208', '29.4', '83.6', '5.21', '2020-07-29 16:05:15');
INSERT INTO `computer_index` VALUES ('209', '11.8', '83.8', '5.13', '2020-07-29 16:05:16');
INSERT INTO `computer_index` VALUES ('210', '25', '83.6', '2.16', '2020-07-29 16:05:18');
INSERT INTO `computer_index` VALUES ('211', '57.9', '83.8', '3.67', '2020-07-29 16:05:21');
INSERT INTO `computer_index` VALUES ('212', '100', '83.8', '1.65', '2020-07-29 16:05:21');
INSERT INTO `computer_index` VALUES ('213', '0', '83.6', '2.02', '2020-07-29 16:05:24');
INSERT INTO `computer_index` VALUES ('214', '100', '87.2', '3.65', '2020-07-29 16:05:29');
INSERT INTO `computer_index` VALUES ('215', '95', '87.4', '1.89', '2020-07-29 16:05:33');
INSERT INTO `computer_index` VALUES ('216', '100', '87.5', '2.18', '2020-07-29 16:05:38');
INSERT INTO `computer_index` VALUES ('217', '95.2', '87.3', '2.13', '2020-07-29 16:05:42');
INSERT INTO `computer_index` VALUES ('218', '16.7', '83.6', '3.45', '2020-07-29 16:05:44');
INSERT INTO `computer_index` VALUES ('219', '23.5', '83.7', '3.08', '2020-07-29 16:05:47');
INSERT INTO `computer_index` VALUES ('220', '11.8', '83.7', '1.37', '2020-07-29 16:05:55');
INSERT INTO `computer_index` VALUES ('221', '6.2', '84.3', '1.37', '2020-07-29 16:05:57');
INSERT INTO `computer_index` VALUES ('222', '27.8', '84.3', '0.51', '2020-07-29 16:06:00');
INSERT INTO `computer_index` VALUES ('223', '16.7', '84.3', '3.08', '2020-07-29 16:06:02');
INSERT INTO `computer_index` VALUES ('224', '33.3', '84.4', '3.26', '2020-07-29 16:06:05');
INSERT INTO `computer_index` VALUES ('225', '11.8', '84.4', '1.31', '2020-07-29 16:06:08');
INSERT INTO `computer_index` VALUES ('226', '6.2', '84.4', '2.63', '2020-07-29 16:06:10');
INSERT INTO `computer_index` VALUES ('227', '47.8', '84.6', '1.53', '2020-07-29 16:06:13');
INSERT INTO `computer_index` VALUES ('228', '35.3', '84.6', '1.41', '2020-07-29 16:06:14');
INSERT INTO `computer_index` VALUES ('229', '12.5', '84.4', '1.27', '2020-07-29 16:06:16');
INSERT INTO `computer_index` VALUES ('230', '11.8', '84.6', '4.16', '2020-07-29 16:06:20');
INSERT INTO `computer_index` VALUES ('231', '11.8', '84.6', '7.05', '2020-07-29 16:06:21');
INSERT INTO `computer_index` VALUES ('232', '25', '84.6', '0.71', '2020-07-29 16:06:23');
INSERT INTO `computer_index` VALUES ('233', '29.4', '84.6', '2.98', '2020-07-29 16:06:23');
INSERT INTO `computer_index` VALUES ('234', '11.8', '84.4', '1.31', '2020-07-29 16:06:26');
INSERT INTO `computer_index` VALUES ('235', '16.7', '84.4', '3.21', '2020-07-29 16:06:29');
INSERT INTO `computer_index` VALUES ('236', '58.8', '84.8', '3.9', '2020-07-29 16:06:31');
INSERT INTO `computer_index` VALUES ('237', '41.2', '84.7', '1.65', '2020-07-29 16:06:32');
INSERT INTO `computer_index` VALUES ('238', '16.7', '84.4', '3.32', '2020-07-29 16:06:35');
INSERT INTO `computer_index` VALUES ('239', '26.7', '84.5', '5.69', '2020-07-29 16:06:37');
INSERT INTO `computer_index` VALUES ('240', '100', '87.9', '1.31', '2020-07-29 16:06:41');
INSERT INTO `computer_index` VALUES ('241', '95.2', '88', '2.79', '2020-07-29 16:06:45');
INSERT INTO `computer_index` VALUES ('242', '100', '88.8', '3.34', '2020-07-29 16:06:50');
INSERT INTO `computer_index` VALUES ('243', '100', '89.5', '3.59', '2020-07-29 16:06:54');
INSERT INTO `computer_index` VALUES ('244', '11.8', '84.5', '3.14', '2020-07-29 16:06:57');
INSERT INTO `computer_index` VALUES ('245', '29.4', '84.5', '2.13', '2020-07-29 16:07:00');
INSERT INTO `computer_index` VALUES ('246', '16.7', '84.5', '3.4', '2020-07-29 16:07:03');
INSERT INTO `computer_index` VALUES ('247', '100', '88.4', '1.83', '2020-07-29 16:07:07');
INSERT INTO `computer_index` VALUES ('248', '100', '88.5', '2.5', '2020-07-29 16:07:11');
INSERT INTO `computer_index` VALUES ('249', '100', '88.2', '2.37', '2020-07-29 16:07:15');
INSERT INTO `computer_index` VALUES ('250', '100', '88.5', '1.53', '2020-07-29 16:07:20');
INSERT INTO `computer_index` VALUES ('251', '11.8', '84.6', '1.31', '2020-07-29 16:07:22');
INSERT INTO `computer_index` VALUES ('252', '28.6', '84.5', '1.31', '2020-07-29 16:07:25');
INSERT INTO `computer_index` VALUES ('253', '11.8', '84.6', '3.03', '2020-07-29 16:07:28');
INSERT INTO `computer_index` VALUES ('254', '33.3', '84.6', '1.37', '2020-07-29 16:07:32');
INSERT INTO `computer_index` VALUES ('255', '11.8', '84.6', '1.37', '2020-07-29 16:07:36');
INSERT INTO `computer_index` VALUES ('256', '11.8', '84.6', '1.31', '2020-07-29 16:07:38');
INSERT INTO `computer_index` VALUES ('257', '44.4', '84.6', '1.37', '2020-07-29 16:07:42');
INSERT INTO `computer_index` VALUES ('258', '94.4', '88.4', '1.6', '2020-07-29 16:09:34');
INSERT INTO `computer_index` VALUES ('259', '100', '90', '3.69', '2020-07-29 16:09:38');
INSERT INTO `computer_index` VALUES ('260', '100', '90.1', '3.72', '2020-07-29 16:09:42');
INSERT INTO `computer_index` VALUES ('261', '100', '89.1', '3.42', '2020-07-29 16:09:46');
INSERT INTO `computer_index` VALUES ('262', '17.6', '83.9', '2.97', '2020-07-29 16:09:49');
INSERT INTO `computer_index` VALUES ('263', '11.8', '83.9', '3.2', '2020-07-29 16:09:52');
INSERT INTO `computer_index` VALUES ('264', '17.6', '83.9', '3.14', '2020-07-29 16:09:55');
INSERT INTO `computer_index` VALUES ('265', '11.8', '83.9', '3.08', '2020-07-29 16:09:58');
INSERT INTO `computer_index` VALUES ('266', '16.7', '83.9', '1.31', '2020-07-29 16:10:06');
INSERT INTO `computer_index` VALUES ('267', '44.4', '83.9', '3.47', '2020-07-29 16:10:09');
INSERT INTO `computer_index` VALUES ('268', '66.7', '84.1', '3.18', '2020-07-29 16:10:12');
INSERT INTO `computer_index` VALUES ('269', '100', '84.1', '2.96', '2020-07-29 16:10:13');
INSERT INTO `computer_index` VALUES ('270', '22.2', '84.1', '1.37', '2020-07-29 16:10:15');
INSERT INTO `computer_index` VALUES ('271', '12.5', '84.2', '1.31', '2020-07-29 16:10:15');
INSERT INTO `computer_index` VALUES ('272', '29.4', '84', '1.21', '2020-07-29 16:10:18');
INSERT INTO `computer_index` VALUES ('273', '16.7', '84.3', '13.43', '2020-07-29 16:10:26');
INSERT INTO `computer_index` VALUES ('274', '81', '84.8', '5.73', '2020-07-29 16:10:27');
INSERT INTO `computer_index` VALUES ('275', '81.8', '84.9', '5.73', '2020-07-29 16:10:27');
INSERT INTO `computer_index` VALUES ('276', '77.8', '84.5', '7.98', '2020-07-29 16:10:27');
INSERT INTO `computer_index` VALUES ('277', '50', '84.2', '3.39', '2020-07-29 16:10:29');
INSERT INTO `computer_index` VALUES ('278', '81', '84.3', '1.71', '2020-07-29 16:10:30');
INSERT INTO `computer_index` VALUES ('279', '38.9', '84', '2.3', '2020-07-29 16:10:32');
INSERT INTO `computer_index` VALUES ('280', '27.8', '84.2', '1.37', '2020-07-29 16:10:35');
INSERT INTO `computer_index` VALUES ('281', '25', '84.2', '1.37', '2020-07-29 16:10:35');
INSERT INTO `computer_index` VALUES ('282', '16.7', '84', '3.14', '2020-07-29 16:10:38');
INSERT INTO `computer_index` VALUES ('283', '21.1', '84', '5.1', '2020-07-29 16:10:41');
INSERT INTO `computer_index` VALUES ('284', '72.2', '84.3', '3.98', '2020-07-29 16:10:43');
INSERT INTO `computer_index` VALUES ('285', '28.6', '84.3', '3.65', '2020-07-29 16:10:44');
INSERT INTO `computer_index` VALUES ('286', '16.7', '84', '7.32', '2020-07-29 16:10:47');
INSERT INTO `computer_index` VALUES ('287', '11.8', '84.2', '5.93', '2020-07-29 16:10:49');
INSERT INTO `computer_index` VALUES ('288', '63.2', '84.3', '3.03', '2020-07-29 16:10:50');
INSERT INTO `computer_index` VALUES ('289', '35.3', '84.1', '2.68', '2020-07-29 16:11:19');
INSERT INTO `computer_index` VALUES ('290', '11.8', '84.3', '1.31', '2020-07-29 16:11:22');
INSERT INTO `computer_index` VALUES ('291', '11.8', '84.5', '5.82', '2020-07-29 16:11:26');
INSERT INTO `computer_index` VALUES ('292', '11.8', '84.5', '6.04', '2020-07-29 16:11:26');
INSERT INTO `computer_index` VALUES ('293', '95', '84.6', '3.73', '2020-07-29 16:11:27');
INSERT INTO `computer_index` VALUES ('294', '100', '88', '1.79', '2020-07-29 16:12:22');
INSERT INTO `computer_index` VALUES ('295', '100', '89.2', '4.25', '2020-07-29 16:12:26');
INSERT INTO `computer_index` VALUES ('296', '100', '89.6', '2.67', '2020-07-29 16:12:30');
INSERT INTO `computer_index` VALUES ('297', '100', '89.8', '1.84', '2020-07-29 16:12:34');
INSERT INTO `computer_index` VALUES ('298', '21.1', '84.2', '1.31', '2020-07-29 16:12:37');
INSERT INTO `computer_index` VALUES ('299', '41.2', '84.3', '1.43', '2020-07-29 16:12:40');
INSERT INTO `computer_index` VALUES ('300', '28.6', '84.2', '1.31', '2020-07-29 16:12:42');
INSERT INTO `computer_index` VALUES ('301', '44.4', '84.2', '3.14', '2020-07-29 16:12:45');
INSERT INTO `computer_index` VALUES ('302', '11.8', '84.2', '3.14', '2020-07-29 16:12:48');
INSERT INTO `computer_index` VALUES ('303', '16.7', '84.2', '1.31', '2020-07-29 16:12:56');
INSERT INTO `computer_index` VALUES ('304', '11.8', '84.2', '3.45', '2020-07-29 16:12:59');
INSERT INTO `computer_index` VALUES ('305', '38.9', '84.6', '3.26', '2020-07-29 16:13:01');
INSERT INTO `computer_index` VALUES ('306', '81', '84.5', '1.65', '2020-07-29 16:13:02');
INSERT INTO `computer_index` VALUES ('307', '0', '84.2', '3.51', '2020-07-29 16:13:04');
INSERT INTO `computer_index` VALUES ('308', '78.9', '84.4', '1.94', '2020-07-29 16:13:07');
INSERT INTO `computer_index` VALUES ('309', '83.3', '84.5', '1.65', '2020-07-29 16:13:07');
INSERT INTO `computer_index` VALUES ('310', '35.3', '84.3', '2.45', '2020-07-29 16:13:10');
INSERT INTO `computer_index` VALUES ('311', '31.2', '84.6', '1.47', '2020-07-29 16:13:13');
INSERT INTO `computer_index` VALUES ('312', '40.9', '84.5', '1.47', '2020-07-29 16:13:13');
INSERT INTO `computer_index` VALUES ('313', '38.9', '84.3', '1.13', '2020-07-29 16:13:16');
INSERT INTO `computer_index` VALUES ('314', '16.7', '84.3', '4.52', '2020-07-29 16:13:18');
INSERT INTO `computer_index` VALUES ('315', '12.5', '84.5', '2.01', '2020-07-29 16:13:21');
INSERT INTO `computer_index` VALUES ('316', '17.6', '84.5', '2.07', '2020-07-29 16:13:21');
INSERT INTO `computer_index` VALUES ('317', '16.7', '84.3', '3.56', '2020-07-29 16:13:24');
INSERT INTO `computer_index` VALUES ('318', '25', '84.3', '3.12', '2020-07-29 16:13:26');
INSERT INTO `computer_index` VALUES ('319', '82.4', '84.6', '1.43', '2020-07-29 16:13:29');
INSERT INTO `computer_index` VALUES ('320', '6.2', '84.4', '1.37', '2020-07-29 16:13:29');
INSERT INTO `computer_index` VALUES ('321', '29.4', '84.3', '1.08', '2020-07-29 16:13:32');
INSERT INTO `computer_index` VALUES ('322', '6.7', '84.6', '1.43', '2020-07-29 16:13:35');
INSERT INTO `computer_index` VALUES ('323', '12.5', '84.5', '1.37', '2020-07-29 16:13:35');
INSERT INTO `computer_index` VALUES ('324', '11.8', '84.3', '1.37', '2020-07-29 16:13:38');
INSERT INTO `computer_index` VALUES ('325', '31.2', '84.4', '3.5', '2020-07-29 16:13:41');
INSERT INTO `computer_index` VALUES ('326', '29.4', '84.6', '3.56', '2020-07-29 16:14:05');
INSERT INTO `computer_index` VALUES ('327', '27.8', '84.6', '3.56', '2020-07-29 16:14:05');
INSERT INTO `computer_index` VALUES ('328', '56.5', '84.4', '5.28', '2020-07-29 16:14:07');
INSERT INTO `computer_index` VALUES ('329', '6.7', '84.7', '3.24', '2020-07-29 16:14:08');
INSERT INTO `computer_index` VALUES ('330', '90', '84.6', '1.5', '2020-07-29 16:14:12');
INSERT INTO `computer_index` VALUES ('331', '88.2', '84.6', '1.65', '2020-07-29 16:14:12');
INSERT INTO `computer_index` VALUES ('332', '16.7', '84.4', '2.94', '2020-07-29 16:14:14');
INSERT INTO `computer_index` VALUES ('333', '85', '84.6', '1.82', '2020-07-29 16:14:17');
INSERT INTO `computer_index` VALUES ('334', '58.8', '84.6', '1.65', '2020-07-29 16:14:17');
INSERT INTO `computer_index` VALUES ('335', '5.9', '84.4', '1.37', '2020-07-29 16:14:20');
INSERT INTO `computer_index` VALUES ('336', '100', '88.3', '1.77', '2020-07-29 16:14:26');
INSERT INTO `computer_index` VALUES ('337', '100', '88.2', '4.36', '2020-07-29 16:14:31');
INSERT INTO `computer_index` VALUES ('338', '94.7', '88.3', '2.98', '2020-07-29 16:14:34');
INSERT INTO `computer_index` VALUES ('339', '100', '88.4', '1.53', '2020-07-29 16:14:39');
INSERT INTO `computer_index` VALUES ('340', '23.5', '84.5', '1.02', '2020-07-29 16:14:42');
INSERT INTO `computer_index` VALUES ('341', '26.7', '84.5', '1.56', '2020-07-29 16:14:44');
INSERT INTO `computer_index` VALUES ('342', '22.2', '84.9', '3.06', '2020-07-29 16:20:11');
INSERT INTO `computer_index` VALUES ('343', '27.8', '84.9', '3.62', '2020-07-29 16:20:14');
INSERT INTO `computer_index` VALUES ('344', '16.7', '85', '1.37', '2020-07-29 16:20:17');
INSERT INTO `computer_index` VALUES ('345', '21.1', '84.9', '3.06', '2020-07-29 16:20:35');
INSERT INTO `computer_index` VALUES ('346', '38.9', '84.9', '2.97', '2020-07-29 16:20:38');
INSERT INTO `computer_index` VALUES ('347', '25', '84.9', '2.7', '2020-07-29 16:20:41');
INSERT INTO `computer_index` VALUES ('348', '23.5', '84.9', '1.47', '2020-07-29 16:20:44');
INSERT INTO `computer_index` VALUES ('349', '17.6', '84.9', '2.79', '2020-07-29 16:20:47');
INSERT INTO `computer_index` VALUES ('350', '11.8', '84.9', '3.08', '2020-07-29 16:20:50');
INSERT INTO `computer_index` VALUES ('351', '0', '85', '1.47', '2020-07-29 16:21:14');
INSERT INTO `computer_index` VALUES ('352', '28.6', '85.8', '1.37', '2020-07-29 16:21:31');
INSERT INTO `computer_index` VALUES ('353', '50', '86.2', '3.67', '2020-07-30 10:25:28');
INSERT INTO `computer_index` VALUES ('354', '30.4', '86.3', '3.25', '2020-07-30 10:25:30');
INSERT INTO `computer_index` VALUES ('355', '21.1', '86.5', '3.82', '2020-07-30 10:25:32');
INSERT INTO `computer_index` VALUES ('356', '63', '86.4', '3.8', '2020-07-30 10:25:33');
INSERT INTO `computer_index` VALUES ('357', '78.9', '86.7', '8.05', '2020-07-30 10:25:37');
INSERT INTO `computer_index` VALUES ('358', '50', '86.7', '1.84', '2020-07-30 10:25:38');
INSERT INTO `computer_index` VALUES ('359', '51.9', '86.7', '1.87', '2020-07-30 10:25:38');
INSERT INTO `computer_index` VALUES ('360', '100', '92.2', '1.47', '2020-07-30 10:26:10');
INSERT INTO `computer_index` VALUES ('361', '26.3', '86.2', '3.22', '2020-07-30 10:26:14');
INSERT INTO `computer_index` VALUES ('362', '21.1', '86.2', '1.31', '2020-07-30 10:26:18');
INSERT INTO `computer_index` VALUES ('363', '21.1', '86.2', '1.31', '2020-07-30 10:26:21');
INSERT INTO `computer_index` VALUES ('364', '21.1', '86.2', '0.23', '2020-07-30 10:26:25');
INSERT INTO `computer_index` VALUES ('365', '25', '86.3', '1.6', '2020-07-30 10:26:29');
INSERT INTO `computer_index` VALUES ('366', '26.3', '86.2', '3.28', '2020-07-30 10:26:32');
INSERT INTO `computer_index` VALUES ('367', '34.8', '86.3', '3.17', '2020-07-30 10:26:35');
INSERT INTO `computer_index` VALUES ('368', '16.7', '86.3', '1.25', '2020-07-30 10:26:39');
INSERT INTO `computer_index` VALUES ('369', '28.6', '86.3', '1.51', '2020-07-30 10:26:43');
INSERT INTO `computer_index` VALUES ('370', '28.6', '86.5', '3.47', '2020-07-30 10:26:47');
INSERT INTO `computer_index` VALUES ('371', '44.4', '86.5', '3.53', '2020-07-30 10:26:47');
INSERT INTO `computer_index` VALUES ('372', '31.8', '86.6', '2.88', '2020-07-30 10:26:51');
INSERT INTO `computer_index` VALUES ('373', '11.8', '86.6', '3', '2020-07-30 10:26:52');
INSERT INTO `computer_index` VALUES ('374', '29.4', '86.5', '2.51', '2020-07-30 10:26:56');
INSERT INTO `computer_index` VALUES ('375', '36.8', '86.5', '2.96', '2020-07-30 10:26:56');
INSERT INTO `computer_index` VALUES ('376', '42.1', '86.6', '3.47', '2020-07-30 10:27:00');
INSERT INTO `computer_index` VALUES ('377', '38.9', '86.5', '3.75', '2020-07-30 10:27:01');
INSERT INTO `computer_index` VALUES ('378', '31.8', '86.5', '2.46', '2020-07-30 10:27:04');
INSERT INTO `computer_index` VALUES ('379', '100', '86.6', '6.01', '2020-07-30 10:27:07');
INSERT INTO `computer_index` VALUES ('380', '40.9', '87', '7.62', '2020-07-30 10:27:09');
INSERT INTO `computer_index` VALUES ('381', '43.8', '87', '5.45', '2020-07-30 10:27:11');
INSERT INTO `computer_index` VALUES ('382', '21.1', '86.9', '6.4', '2020-07-30 10:27:12');
INSERT INTO `computer_index` VALUES ('383', '78.6', '86.6', '4.11', '2020-07-30 10:27:13');
INSERT INTO `computer_index` VALUES ('384', '11.8', '86.8', '9.23', '2020-07-30 10:27:16');
INSERT INTO `computer_index` VALUES ('385', '61.5', '86.8', '4.35', '2020-07-30 10:27:19');
INSERT INTO `computer_index` VALUES ('386', '41.2', '86.9', '4.35', '2020-07-30 10:27:19');
INSERT INTO `computer_index` VALUES ('387', '6.2', '86.6', '4.48', '2020-07-30 10:27:21');
INSERT INTO `computer_index` VALUES ('388', '35', '86.6', '4.21', '2020-07-30 10:27:23');
INSERT INTO `computer_index` VALUES ('389', '22.2', '86.6', '4.43', '2020-07-30 10:27:25');
INSERT INTO `computer_index` VALUES ('390', '30', '86.4', '5.33', '2020-07-30 10:27:27');
INSERT INTO `computer_index` VALUES ('391', '31.8', '86.6', '3.43', '2020-07-30 10:27:29');
INSERT INTO `computer_index` VALUES ('392', '25', '86.6', '4.52', '2020-07-30 10:27:32');
INSERT INTO `computer_index` VALUES ('393', '100', '86.6', '6.08', '2020-07-30 10:27:33');
INSERT INTO `computer_index` VALUES ('394', '45.8', '86.7', '4.66', '2020-07-30 10:27:36');
INSERT INTO `computer_index` VALUES ('395', '31.2', '86.6', '4.66', '2020-07-30 10:27:36');
INSERT INTO `computer_index` VALUES ('396', '25', '86.6', '5.57', '2020-07-30 10:27:39');
INSERT INTO `computer_index` VALUES ('397', '100', '86.7', '5.59', '2020-07-30 10:27:40');
INSERT INTO `computer_index` VALUES ('398', '33.3', '86.7', '4.35', '2020-07-30 10:27:43');
INSERT INTO `computer_index` VALUES ('399', '100', '86.7', '4.18', '2020-07-30 10:27:45');
INSERT INTO `computer_index` VALUES ('400', '21.1', '86.6', '9.84', '2020-07-30 10:27:47');
INSERT INTO `computer_index` VALUES ('401', '18.8', '86.9', '3.28', '2020-07-30 10:27:49');
INSERT INTO `computer_index` VALUES ('402', '27.8', '86.9', '3.5', '2020-07-30 10:27:49');
INSERT INTO `computer_index` VALUES ('403', '28.6', '86.7', '3.39', '2020-07-30 10:27:54');
INSERT INTO `computer_index` VALUES ('404', '28.6', '86.7', '3.33', '2020-07-30 10:27:54');
INSERT INTO `computer_index` VALUES ('405', '43.5', '86.8', '4.82', '2020-07-30 10:27:58');
INSERT INTO `computer_index` VALUES ('406', '70', '86.7', '6.78', '2020-07-30 10:28:00');
INSERT INTO `computer_index` VALUES ('407', '21.1', '87', '7.04', '2020-07-30 10:28:02');
INSERT INTO `computer_index` VALUES ('408', '52.4', '86.9', '4.63', '2020-07-30 10:28:04');
INSERT INTO `computer_index` VALUES ('409', '100', '86.7', '4.61', '2020-07-30 10:28:05');
INSERT INTO `computer_index` VALUES ('410', '26.3', '86.6', '7.23', '2020-07-30 10:28:08');
INSERT INTO `computer_index` VALUES ('411', '100', '86.9', '5.15', '2020-07-30 10:28:10');
INSERT INTO `computer_index` VALUES ('412', '38.9', '86.7', '5.58', '2020-07-30 10:28:11');
INSERT INTO `computer_index` VALUES ('413', '100', '86.7', '5.11', '2020-07-30 10:28:14');
INSERT INTO `computer_index` VALUES ('414', '100', '86.7', '5.38', '2020-07-30 10:28:15');
INSERT INTO `computer_index` VALUES ('415', '45', '86.8', '7.31', '2020-07-30 10:28:17');
INSERT INTO `computer_index` VALUES ('416', '60', '86.8', '3.2', '2020-07-30 10:28:20');
INSERT INTO `computer_index` VALUES ('417', '56.5', '86.7', '3.14', '2020-07-30 10:28:20');
INSERT INTO `computer_index` VALUES ('418', '100', '86.8', '3.8', '2020-07-30 10:28:25');
INSERT INTO `computer_index` VALUES ('419', '100', '86.7', '3.8', '2020-07-30 10:28:25');
INSERT INTO `computer_index` VALUES ('420', '59.1', '86.9', '4.66', '2020-07-30 10:28:29');
INSERT INTO `computer_index` VALUES ('421', '100', '87', '5.27', '2020-07-30 10:28:32');
INSERT INTO `computer_index` VALUES ('422', '100', '87', '5.27', '2020-07-30 10:28:32');
INSERT INTO `computer_index` VALUES ('423', '21.1', '86.9', '7.08', '2020-07-30 10:28:35');
INSERT INTO `computer_index` VALUES ('424', '17.6', '87.1', '5.6', '2020-07-30 10:28:36');
INSERT INTO `computer_index` VALUES ('425', '36.4', '87.1', '5.17', '2020-07-30 10:28:37');
INSERT INTO `computer_index` VALUES ('426', '65', '86.8', '6.34', '2020-07-30 10:28:40');
INSERT INTO `computer_index` VALUES ('427', '35', '86.8', '4', '2020-07-30 10:28:42');
INSERT INTO `computer_index` VALUES ('428', '40.9', '86.8', '4', '2020-07-30 10:28:42');
INSERT INTO `computer_index` VALUES ('429', '21.1', '86.8', '7.26', '2020-07-30 10:28:46');
INSERT INTO `computer_index` VALUES ('430', '69', '87.1', '5.75', '2020-07-30 10:28:48');
INSERT INTO `computer_index` VALUES ('431', '91.7', '87.1', '5.46', '2020-07-30 10:28:51');
INSERT INTO `computer_index` VALUES ('432', '100', '87.1', '5.72', '2020-07-30 10:28:53');
INSERT INTO `computer_index` VALUES ('433', '50', '87', '4.03', '2020-07-30 10:28:55');
INSERT INTO `computer_index` VALUES ('434', '100', '87.1', '7.54', '2020-07-30 10:28:57');
INSERT INTO `computer_index` VALUES ('435', '94.4', '87.1', '5.99', '2020-07-30 10:28:57');
INSERT INTO `computer_index` VALUES ('436', '65', '87.1', '6.49', '2020-07-30 10:28:58');
INSERT INTO `computer_index` VALUES ('437', '16.7', '86.8', '6.05', '2020-07-30 10:29:00');
INSERT INTO `computer_index` VALUES ('438', '23.5', '86.9', '4.53', '2020-07-30 10:29:01');
INSERT INTO `computer_index` VALUES ('439', '57.9', '86.8', '5.05', '2020-07-30 10:29:04');
INSERT INTO `computer_index` VALUES ('440', '33.3', '86.8', '5.14', '2020-07-30 10:29:04');
INSERT INTO `computer_index` VALUES ('441', '12.5', '86.6', '1.49', '2020-07-30 10:29:07');
INSERT INTO `computer_index` VALUES ('442', '11.8', '86.6', '3.19', '2020-07-30 10:29:10');
INSERT INTO `computer_index` VALUES ('443', '11.8', '87', '3.72', '2020-07-30 10:29:12');
INSERT INTO `computer_index` VALUES ('444', '71.4', '86.9', '1.59', '2020-07-30 10:29:12');
INSERT INTO `computer_index` VALUES ('445', '29.4', '86.7', '0.61', '2020-07-30 10:29:15');
INSERT INTO `computer_index` VALUES ('446', '17.6', '86.9', '1.37', '2020-07-30 10:29:18');
INSERT INTO `computer_index` VALUES ('447', '12.5', '86.9', '1.37', '2020-07-30 10:29:18');
INSERT INTO `computer_index` VALUES ('448', '29.4', '86.7', '3.32', '2020-07-30 10:29:20');
INSERT INTO `computer_index` VALUES ('449', '21.1', '86.7', '3.32', '2020-07-30 10:29:23');
INSERT INTO `computer_index` VALUES ('450', '25', '86.7', '3.47', '2020-07-30 10:29:25');
INSERT INTO `computer_index` VALUES ('451', '83.3', '87.1', '2.76', '2020-07-30 10:29:28');
INSERT INTO `computer_index` VALUES ('452', '75', '86.9', '1.88', '2020-07-30 10:29:28');
INSERT INTO `computer_index` VALUES ('453', '33.3', '86.7', '1.56', '2020-07-30 10:29:31');
INSERT INTO `computer_index` VALUES ('454', '35.3', '86.9', '1.37', '2020-07-30 10:29:34');
INSERT INTO `computer_index` VALUES ('455', '31.2', '86.9', '1.37', '2020-07-30 10:29:34');
INSERT INTO `computer_index` VALUES ('456', '41.2', '86.7', '0.35', '2020-07-30 10:29:36');
INSERT INTO `computer_index` VALUES ('457', '16.7', '86.9', '1.51', '2020-07-30 10:29:39');
INSERT INTO `computer_index` VALUES ('458', '12.5', '87', '1.31', '2020-07-30 10:29:42');
INSERT INTO `computer_index` VALUES ('459', '17.6', '86.9', '1.31', '2020-07-30 10:29:42');
INSERT INTO `computer_index` VALUES ('460', '16.7', '86.7', '3.28', '2020-07-30 10:29:44');
INSERT INTO `computer_index` VALUES ('461', '26.3', '86.8', '3.41', '2020-07-30 10:29:47');
INSERT INTO `computer_index` VALUES ('462', '22.2', '86.9', '3.28', '2020-07-30 10:29:50');
INSERT INTO `computer_index` VALUES ('463', '22.2', '87', '3.34', '2020-07-30 10:29:50');
INSERT INTO `computer_index` VALUES ('464', '21.1', '86.8', '1.54', '2020-07-30 10:29:53');
INSERT INTO `computer_index` VALUES ('465', '21.1', '86.8', '3.41', '2020-07-30 10:29:56');
INSERT INTO `computer_index` VALUES ('466', '58.8', '87.1', '3.61', '2020-07-30 10:29:58');
INSERT INTO `computer_index` VALUES ('467', '33.3', '87', '1.65', '2020-07-30 10:29:58');
INSERT INTO `computer_index` VALUES ('468', '6.2', '86.8', '1.56', '2020-07-30 10:30:01');
INSERT INTO `computer_index` VALUES ('469', '11.8', '86.8', '2.1', '2020-07-30 10:30:03');
INSERT INTO `computer_index` VALUES ('470', '65', '87.2', '4.23', '2020-07-30 10:30:06');
INSERT INTO `computer_index` VALUES ('471', '85', '87', '1.59', '2020-07-30 10:30:06');
INSERT INTO `computer_index` VALUES ('472', '11.8', '86.8', '3.22', '2020-07-30 10:30:09');
INSERT INTO `computer_index` VALUES ('473', '16.7', '86.8', '3.59', '2020-07-30 10:30:11');
INSERT INTO `computer_index` VALUES ('474', '16.7', '87', '1.43', '2020-07-30 10:30:14');
INSERT INTO `computer_index` VALUES ('475', '21.1', '87.1', '1.9', '2020-07-30 10:30:14');
INSERT INTO `computer_index` VALUES ('476', '25', '86.8', '1.25', '2020-07-30 10:30:16');
INSERT INTO `computer_index` VALUES ('477', '6.2', '86.8', '1.31', '2020-07-30 10:30:19');
INSERT INTO `computer_index` VALUES ('478', '33.3', '86.8', '3.41', '2020-07-30 10:30:22');
INSERT INTO `computer_index` VALUES ('479', '38.9', '87.2', '5.7', '2020-07-30 10:30:24');
INSERT INTO `computer_index` VALUES ('480', '47.4', '87.1', '1.59', '2020-07-30 10:30:25');
INSERT INTO `computer_index` VALUES ('481', '11.8', '86.9', '3.08', '2020-07-30 10:30:27');
INSERT INTO `computer_index` VALUES ('482', '16.7', '86.9', '4.12', '2020-07-30 10:30:30');
INSERT INTO `computer_index` VALUES ('483', '65', '87.2', '3.43', '2020-07-30 10:30:32');
INSERT INTO `computer_index` VALUES ('484', '82.6', '87.1', '3.48', '2020-07-30 10:30:32');
INSERT INTO `computer_index` VALUES ('485', '27.8', '86.9', '1.31', '2020-07-30 10:30:35');
INSERT INTO `computer_index` VALUES ('486', '6.2', '86.9', '1.51', '2020-07-30 10:30:37');
INSERT INTO `computer_index` VALUES ('487', '11.8', '87.2', '1.53', '2020-07-30 10:30:40');
INSERT INTO `computer_index` VALUES ('488', '16.7', '87.1', '1.53', '2020-07-30 10:30:40');
INSERT INTO `computer_index` VALUES ('489', '29.4', '86.9', '2.97', '2020-07-30 10:30:43');
INSERT INTO `computer_index` VALUES ('490', '21.1', '86.9', '2.4', '2020-07-30 10:30:45');
INSERT INTO `computer_index` VALUES ('491', '11.8', '86.9', '4.72', '2020-07-30 10:30:48');
INSERT INTO `computer_index` VALUES ('492', '50', '87.3', '3.47', '2020-07-30 10:30:50');
INSERT INTO `computer_index` VALUES ('493', '91.3', '87.1', '1.95', '2020-07-30 10:30:50');
INSERT INTO `computer_index` VALUES ('494', '11.8', '86.9', '1.31', '2020-07-30 10:30:53');
INSERT INTO `computer_index` VALUES ('495', '27.8', '86.9', '3.18', '2020-07-30 10:30:55');
INSERT INTO `computer_index` VALUES ('496', '81.8', '87.3', '1.56', '2020-07-30 10:30:58');
INSERT INTO `computer_index` VALUES ('497', '64.7', '87.1', '1.65', '2020-07-30 10:30:59');
INSERT INTO `computer_index` VALUES ('498', '16.7', '87', '1.56', '2020-07-30 10:31:01');
INSERT INTO `computer_index` VALUES ('499', '22.2', '86.1', '4.11', '2020-07-30 10:31:04');
INSERT INTO `computer_index` VALUES ('500', '26.3', '86.5', '5.74', '2020-07-30 10:31:06');
INSERT INTO `computer_index` VALUES ('501', '47.4', '86.4', '3.51', '2020-07-30 10:31:07');
INSERT INTO `computer_index` VALUES ('502', '29.4', '86.1', '3.22', '2020-07-30 10:31:09');
INSERT INTO `computer_index` VALUES ('503', '16.7', '86.2', '3.12', '2020-07-30 10:31:12');
INSERT INTO `computer_index` VALUES ('504', '100', '86.3', '1.56', '2020-07-30 10:31:14');
INSERT INTO `computer_index` VALUES ('505', '82.4', '86.3', '1.65', '2020-07-30 10:31:14');
INSERT INTO `computer_index` VALUES ('506', '25', '86.2', '0.35', '2020-07-30 10:31:17');
INSERT INTO `computer_index` VALUES ('507', '16.7', '86.3', '3.2', '2020-07-30 10:31:19');
INSERT INTO `computer_index` VALUES ('508', '66.7', '86.4', '1.45', '2020-07-30 10:31:23');
INSERT INTO `computer_index` VALUES ('509', '37.5', '86.5', '1.59', '2020-07-30 10:31:23');
INSERT INTO `computer_index` VALUES ('510', '25', '86.2', '3.12', '2020-07-30 10:31:26');
INSERT INTO `computer_index` VALUES ('511', '55.6', '86.5', '3.59', '2020-07-30 10:31:28');
INSERT INTO `computer_index` VALUES ('512', '43.8', '86.4', '1.65', '2020-07-30 10:31:29');
INSERT INTO `computer_index` VALUES ('513', '25', '86.2', '3.12', '2020-07-30 10:31:32');
INSERT INTO `computer_index` VALUES ('514', '75', '86.5', '5.1', '2020-07-30 10:31:34');
INSERT INTO `computer_index` VALUES ('515', '81.8', '86.5', '1.65', '2020-07-30 10:31:34');
INSERT INTO `computer_index` VALUES ('516', '11.8', '86.2', '3.28', '2020-07-30 10:31:37');
INSERT INTO `computer_index` VALUES ('517', '16.7', '86.2', '2.98', '2020-07-30 10:31:39');
INSERT INTO `computer_index` VALUES ('518', '27.8', '86.4', '1.37', '2020-07-30 10:31:42');
INSERT INTO `computer_index` VALUES ('519', '29.4', '86.4', '1.37', '2020-07-30 10:31:42');
INSERT INTO `computer_index` VALUES ('520', '22.2', '86.2', '1.37', '2020-07-30 10:31:45');
INSERT INTO `computer_index` VALUES ('521', '17.6', '86.2', '1.31', '2020-07-30 10:31:47');
INSERT INTO `computer_index` VALUES ('522', '11.8', '86.2', '3.36', '2020-07-30 10:31:50');
INSERT INTO `computer_index` VALUES ('523', '57.9', '86.6', '5.8', '2020-07-30 10:31:52');
INSERT INTO `computer_index` VALUES ('524', '85.7', '86.5', '0.46', '2020-07-30 10:31:53');
INSERT INTO `computer_index` VALUES ('525', '11.8', '86.3', '3.14', '2020-07-30 10:31:55');
INSERT INTO `computer_index` VALUES ('526', '11.8', '86.3', '3.38', '2020-07-30 10:31:57');
INSERT INTO `computer_index` VALUES ('527', '95', '86.5', '1.74', '2020-07-30 10:32:00');
INSERT INTO `computer_index` VALUES ('528', '55.6', '86.5', '2.12', '2020-07-30 10:32:00');
INSERT INTO `computer_index` VALUES ('529', '16.7', '86.3', '1.31', '2020-07-30 10:32:03');
INSERT INTO `computer_index` VALUES ('530', '18.8', '86.3', '3.14', '2020-07-30 10:32:05');
INSERT INTO `computer_index` VALUES ('531', '100', '86.5', '1.12', '2020-07-30 10:32:08');
INSERT INTO `computer_index` VALUES ('532', '100', '86.5', '1.59', '2020-07-30 10:32:08');
INSERT INTO `computer_index` VALUES ('533', '11.8', '86.3', '1.5', '2020-07-30 10:32:11');
INSERT INTO `computer_index` VALUES ('534', '31.6', '86.3', '5.15', '2020-07-30 10:32:13');
INSERT INTO `computer_index` VALUES ('535', '75', '86.5', '3.37', '2020-07-30 10:32:16');
INSERT INTO `computer_index` VALUES ('536', '35.3', '86.5', '3.45', '2020-07-30 10:32:16');
INSERT INTO `computer_index` VALUES ('537', '11.8', '86.3', '3.22', '2020-07-30 10:32:19');
INSERT INTO `computer_index` VALUES ('538', '16.7', '86.3', '0.71', '2020-07-30 10:32:21');
INSERT INTO `computer_index` VALUES ('539', '27.8', '86.5', '1.43', '2020-07-30 10:32:24');
INSERT INTO `computer_index` VALUES ('540', '13.3', '86.5', '1.65', '2020-07-30 10:32:24');
INSERT INTO `computer_index` VALUES ('541', '35.3', '86.3', '1.31', '2020-07-30 10:32:27');
INSERT INTO `computer_index` VALUES ('542', '11.8', '86.3', '1.56', '2020-07-30 10:32:29');
INSERT INTO `computer_index` VALUES ('543', '18.8', '86.6', '1.63', '2020-07-30 10:32:32');
INSERT INTO `computer_index` VALUES ('544', '23.5', '86.5', '1.89', '2020-07-30 10:32:32');
INSERT INTO `computer_index` VALUES ('545', '16.7', '86.4', '3.22', '2020-07-30 10:32:34');
INSERT INTO `computer_index` VALUES ('546', '16.7', '86.4', '3.2', '2020-07-30 10:32:37');
INSERT INTO `computer_index` VALUES ('547', '16.7', '86.4', '3.28', '2020-07-30 10:32:40');
INSERT INTO `computer_index` VALUES ('548', '57.9', '86.7', '3.78', '2020-07-30 10:32:42');
INSERT INTO `computer_index` VALUES ('549', '43.8', '86.6', '1.59', '2020-07-30 10:32:43');
INSERT INTO `computer_index` VALUES ('550', '29.4', '86.4', '1.37', '2020-07-30 10:32:45');
INSERT INTO `computer_index` VALUES ('551', '11.8', '86.4', '3.18', '2020-07-30 10:32:48');
INSERT INTO `computer_index` VALUES ('552', '72.2', '86.7', '4.33', '2020-07-30 10:32:50');
INSERT INTO `computer_index` VALUES ('553', '91.3', '86.7', '1.71', '2020-07-30 10:32:50');
INSERT INTO `computer_index` VALUES ('554', '11.8', '86.4', '3.03', '2020-07-30 10:32:53');
INSERT INTO `computer_index` VALUES ('555', '33.3', '86.4', '4.28', '2020-07-30 10:32:56');
INSERT INTO `computer_index` VALUES ('556', '61.1', '86.8', '3.84', '2020-07-30 10:32:58');
INSERT INTO `computer_index` VALUES ('557', '47.4', '86.7', '3.57', '2020-07-30 10:32:59');
INSERT INTO `computer_index` VALUES ('558', '27.8', '86.4', '1.6', '2020-07-30 10:33:01');
INSERT INTO `computer_index` VALUES ('559', '11.8', '86.4', '2.37', '2020-07-30 10:33:04');
INSERT INTO `computer_index` VALUES ('560', '65', '86.6', '2.12', '2020-07-30 10:33:06');
INSERT INTO `computer_index` VALUES ('561', '100', '86.6', '1.59', '2020-07-30 10:33:06');
INSERT INTO `computer_index` VALUES ('562', '17.6', '86.5', '1.31', '2020-07-30 10:33:09');
INSERT INTO `computer_index` VALUES ('563', '11.8', '86.5', '2.1', '2020-07-30 10:33:12');
INSERT INTO `computer_index` VALUES ('564', '84.2', '86.6', '3.6', '2020-07-30 10:33:14');
INSERT INTO `computer_index` VALUES ('565', '55', '86.7', '1.65', '2020-07-30 10:33:14');
INSERT INTO `computer_index` VALUES ('566', '35', '86.5', '3.2', '2020-07-30 10:33:17');
INSERT INTO `computer_index` VALUES ('567', '21.1', '86.4', '3.14', '2020-07-30 10:33:19');
INSERT INTO `computer_index` VALUES ('568', '84.2', '86.7', '0.49', '2020-07-30 10:33:22');
INSERT INTO `computer_index` VALUES ('569', '63.6', '86.7', '1.82', '2020-07-30 10:33:22');
INSERT INTO `computer_index` VALUES ('570', '16.7', '86.5', '1.31', '2020-07-30 10:33:25');
INSERT INTO `computer_index` VALUES ('571', '52.9', '86.5', '3.12', '2020-07-30 10:33:28');
INSERT INTO `computer_index` VALUES ('572', '100', '86.7', '3.59', '2020-07-30 10:33:30');
INSERT INTO `computer_index` VALUES ('573', '100', '86.7', '1.9', '2020-07-30 10:33:31');
INSERT INTO `computer_index` VALUES ('574', '44.4', '86.5', '1.31', '2020-07-30 10:33:33');

-- ----------------------------
-- Table structure for `hdfs_index`
-- ----------------------------
DROP TABLE IF EXISTS `hdfs_index`;
CREATE TABLE `hdfs_index` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `configured_capacity` double DEFAULT '0',
  `present_capacity` double DEFAULT '0',
  `dfs_remaining` double DEFAULT '0',
  `non_dfs_used` double DEFAULT '0',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hdfs_index
-- ----------------------------
INSERT INTO `hdfs_index` VALUES ('14', '17.4', '12.32', '12.32', '5.08', '2020-07-30');
INSERT INTO `hdfs_index` VALUES ('15', '17.4', '11.33', '11.33', '4.03', '2020-07-31');
INSERT INTO `hdfs_index` VALUES ('16', '17.4', '12.69', '12.68', '4.33', '2020-07-31');
INSERT INTO `hdfs_index` VALUES ('17', '17.3', '13.22', '11.59', '4.96', '2020-07-31');
INSERT INTO `hdfs_index` VALUES ('18', '17.5', '15.55', '13.24', '4.66', '2020-07-31');
INSERT INTO `hdfs_index` VALUES ('19', '17.4', '12.66', '11.55', '5.35', '2020-07-31');

-- ----------------------------
-- Table structure for `hero`
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `hp` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('6094', 'name0', '0');
INSERT INTO `hero` VALUES ('6095', 'name1', '1');
INSERT INTO `hero` VALUES ('6096', 'name2', '2');
INSERT INTO `hero` VALUES ('6097', 'name3', '3');
INSERT INTO `hero` VALUES ('6098', 'name4', '4');
INSERT INTO `hero` VALUES ('6099', 'name5', '5');
INSERT INTO `hero` VALUES ('6100', 'name6', '6');
INSERT INTO `hero` VALUES ('6101', 'name7', '7');
INSERT INTO `hero` VALUES ('6102', 'name8', '8');
INSERT INTO `hero` VALUES ('6103', 'name9', '9');
INSERT INTO `hero` VALUES ('6104', 'name10', '10');
INSERT INTO `hero` VALUES ('6105', 'name11', '11');
INSERT INTO `hero` VALUES ('6106', 'name12', '12');
INSERT INTO `hero` VALUES ('6107', 'name13', '13');
INSERT INTO `hero` VALUES ('6108', 'name14', '14');
INSERT INTO `hero` VALUES ('6109', 'name15', '15');
INSERT INTO `hero` VALUES ('6110', 'name16', '16');
INSERT INTO `hero` VALUES ('6111', 'name17', '17');
INSERT INTO `hero` VALUES ('6112', 'name18', '18');
INSERT INTO `hero` VALUES ('6113', 'name19', '19');
INSERT INTO `hero` VALUES ('6114', 'name20', '20');
INSERT INTO `hero` VALUES ('6115', 'name21', '21');
INSERT INTO `hero` VALUES ('6116', 'name22', '22');
INSERT INTO `hero` VALUES ('6117', 'name23', '23');
INSERT INTO `hero` VALUES ('6118', 'name24', '24');
INSERT INTO `hero` VALUES ('6119', 'name25', '25');
INSERT INTO `hero` VALUES ('6120', 'name26', '26');
INSERT INTO `hero` VALUES ('6121', 'name27', '27');
INSERT INTO `hero` VALUES ('6122', 'name28', '28');
INSERT INTO `hero` VALUES ('6123', 'name29', '29');
INSERT INTO `hero` VALUES ('6124', 'name30', '30');
INSERT INTO `hero` VALUES ('6125', 'name31', '31');
INSERT INTO `hero` VALUES ('6126', 'name32', '32');
INSERT INTO `hero` VALUES ('6127', 'name33', '33');
INSERT INTO `hero` VALUES ('6128', 'name34', '34');
INSERT INTO `hero` VALUES ('6129', 'name35', '35');
INSERT INTO `hero` VALUES ('6130', 'name36', '36');
INSERT INTO `hero` VALUES ('6131', 'name37', '37');
INSERT INTO `hero` VALUES ('6132', 'name38', '38');
INSERT INTO `hero` VALUES ('6133', 'name39', '39');
INSERT INTO `hero` VALUES ('6134', 'name40', '40');
INSERT INTO `hero` VALUES ('6135', 'name41', '41');
INSERT INTO `hero` VALUES ('6136', 'name42', '42');
INSERT INTO `hero` VALUES ('6137', 'name43', '43');
INSERT INTO `hero` VALUES ('6138', 'name44', '44');
INSERT INTO `hero` VALUES ('6139', 'name45', '45');
INSERT INTO `hero` VALUES ('6140', 'name46', '46');
INSERT INTO `hero` VALUES ('6141', 'name47', '47');
INSERT INTO `hero` VALUES ('6142', 'name48', '48');
INSERT INTO `hero` VALUES ('6143', 'name49', '49');
INSERT INTO `hero` VALUES ('6144', 'name50', '50');
INSERT INTO `hero` VALUES ('6145', 'name51', '51');
INSERT INTO `hero` VALUES ('6146', 'name52', '52');
INSERT INTO `hero` VALUES ('6147', 'name53', '53');
INSERT INTO `hero` VALUES ('6148', 'name54', '54');
INSERT INTO `hero` VALUES ('6149', 'name55', '55');
INSERT INTO `hero` VALUES ('6150', 'name56', '56');
INSERT INTO `hero` VALUES ('6151', 'name57', '57');
INSERT INTO `hero` VALUES ('6152', 'name58', '58');
INSERT INTO `hero` VALUES ('6153', 'name59', '59');
INSERT INTO `hero` VALUES ('6154', 'name60', '60');
INSERT INTO `hero` VALUES ('6155', 'name61', '61');
INSERT INTO `hero` VALUES ('6156', 'name62', '62');
INSERT INTO `hero` VALUES ('6157', 'name63', '63');
INSERT INTO `hero` VALUES ('6158', 'name64', '64');
INSERT INTO `hero` VALUES ('6159', 'name65', '65');
INSERT INTO `hero` VALUES ('6160', 'name66', '66');
INSERT INTO `hero` VALUES ('6161', 'name67', '67');
INSERT INTO `hero` VALUES ('6162', 'name68', '68');
INSERT INTO `hero` VALUES ('6163', 'name69', '69');
INSERT INTO `hero` VALUES ('6164', 'name70', '70');
INSERT INTO `hero` VALUES ('6165', 'name71', '71');
INSERT INTO `hero` VALUES ('6166', 'name72', '72');
INSERT INTO `hero` VALUES ('6167', 'name73', '73');
INSERT INTO `hero` VALUES ('6168', 'name74', '74');
INSERT INTO `hero` VALUES ('6169', 'name75', '75');
INSERT INTO `hero` VALUES ('6170', 'name76', '76');
INSERT INTO `hero` VALUES ('6171', 'name77', '77');
INSERT INTO `hero` VALUES ('6172', 'name78', '78');
INSERT INTO `hero` VALUES ('6173', 'name79', '79');
INSERT INTO `hero` VALUES ('6174', 'name80', '80');
INSERT INTO `hero` VALUES ('6175', 'name81', '81');
INSERT INTO `hero` VALUES ('6176', 'name82', '82');
INSERT INTO `hero` VALUES ('6177', 'name83', '83');
INSERT INTO `hero` VALUES ('6178', 'name84', '84');
INSERT INTO `hero` VALUES ('6179', 'name85', '85');
INSERT INTO `hero` VALUES ('6180', 'name86', '86');
INSERT INTO `hero` VALUES ('6181', 'name87', '87');
INSERT INTO `hero` VALUES ('6182', 'name88', '88');
INSERT INTO `hero` VALUES ('6183', 'name89', '89');
INSERT INTO `hero` VALUES ('6184', 'name90', '90');
INSERT INTO `hero` VALUES ('6185', 'name91', '91');
INSERT INTO `hero` VALUES ('6186', 'name92', '92');
INSERT INTO `hero` VALUES ('6187', 'name93', '93');
INSERT INTO `hero` VALUES ('6188', 'name94', '94');
INSERT INTO `hero` VALUES ('6189', 'name95', '95');
INSERT INTO `hero` VALUES ('6190', 'name96', '96');
INSERT INTO `hero` VALUES ('6191', 'name97', '97');
INSERT INTO `hero` VALUES ('6192', 'name98', '98');
INSERT INTO `hero` VALUES ('6193', 'name99', '99');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123');
