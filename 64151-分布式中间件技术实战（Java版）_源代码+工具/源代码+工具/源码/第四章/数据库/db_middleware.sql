/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : db_middleware

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-03-25 23:40:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品名称',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', 'book_10010', '分布式中间件实战', '2019-03-17 17:21:16');

-- ----------------------------
-- Table structure for red_detail
-- ----------------------------
DROP TABLE IF EXISTS `red_detail`;
CREATE TABLE `red_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL COMMENT '红包记录id',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '金额（单位为分）',
  `is_active` tinyint(4) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='红包明细金额';

-- ----------------------------
-- Records of red_detail
-- ----------------------------
INSERT INTO `red_detail` VALUES ('93', '12', '34.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('94', '12', '61.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('95', '12', '106.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('96', '12', '28.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('97', '12', '15.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('98', '12', '214.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('99', '12', '34.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('100', '12', '237.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('101', '12', '91.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('102', '12', '180.00', '1', '2019-03-23 20:41:22');
INSERT INTO `red_detail` VALUES ('103', '13', '95.00', '1', null);
INSERT INTO `red_detail` VALUES ('104', '13', '37.00', '1', null);
INSERT INTO `red_detail` VALUES ('105', '13', '25.00', '1', null);
INSERT INTO `red_detail` VALUES ('106', '13', '10.00', '1', null);
INSERT INTO `red_detail` VALUES ('107', '13', '43.00', '1', null);
INSERT INTO `red_detail` VALUES ('108', '13', '22.00', '1', null);
INSERT INTO `red_detail` VALUES ('109', '13', '12.00', '1', null);
INSERT INTO `red_detail` VALUES ('110', '13', '150.00', '1', null);
INSERT INTO `red_detail` VALUES ('111', '13', '38.00', '1', null);
INSERT INTO `red_detail` VALUES ('112', '13', '68.00', '1', null);
INSERT INTO `red_detail` VALUES ('113', '14', '161.00', '1', null);
INSERT INTO `red_detail` VALUES ('114', '14', '65.00', '1', null);
INSERT INTO `red_detail` VALUES ('115', '14', '54.00', '1', null);
INSERT INTO `red_detail` VALUES ('116', '14', '130.00', '1', null);
INSERT INTO `red_detail` VALUES ('117', '14', '16.00', '1', null);
INSERT INTO `red_detail` VALUES ('118', '14', '44.00', '1', null);
INSERT INTO `red_detail` VALUES ('119', '14', '16.00', '1', null);
INSERT INTO `red_detail` VALUES ('120', '14', '220.00', '1', null);
INSERT INTO `red_detail` VALUES ('121', '14', '48.00', '1', null);
INSERT INTO `red_detail` VALUES ('122', '14', '246.00', '1', null);
INSERT INTO `red_detail` VALUES ('123', '15', '14.00', '1', null);
INSERT INTO `red_detail` VALUES ('124', '15', '149.00', '1', null);
INSERT INTO `red_detail` VALUES ('125', '15', '204.00', '1', null);
INSERT INTO `red_detail` VALUES ('126', '15', '139.00', '1', null);
INSERT INTO `red_detail` VALUES ('127', '15', '79.00', '1', null);
INSERT INTO `red_detail` VALUES ('128', '15', '38.00', '1', null);
INSERT INTO `red_detail` VALUES ('129', '15', '133.00', '1', null);
INSERT INTO `red_detail` VALUES ('130', '15', '85.00', '1', null);
INSERT INTO `red_detail` VALUES ('131', '15', '53.00', '1', null);
INSERT INTO `red_detail` VALUES ('132', '15', '106.00', '1', null);

-- ----------------------------
-- Table structure for red_record
-- ----------------------------
DROP TABLE IF EXISTS `red_record`;
CREATE TABLE `red_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `red_packet` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '红包全局唯一标识串',
  `total` int(11) NOT NULL COMMENT '人数',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '总金额（单位为分）',
  `is_active` tinyint(4) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='发红包记录';

-- ----------------------------
-- Records of red_record
-- ----------------------------
INSERT INTO `red_record` VALUES ('12', '10010', 'redis:red:packet:10010:177565921763957', '10', '1000.00', '1', '2019-03-23 20:41:16');
INSERT INTO `red_record` VALUES ('13', '10030', 'redis:red:packet:10030:272246147091856', '10', '500.00', '1', null);
INSERT INTO `red_record` VALUES ('14', '10050', 'redis:red:packet:10050:356031000034967', '10', '1000.00', '1', null);
INSERT INTO `red_record` VALUES ('15', '10050', 'redis:red:packet:10050:356507939164216', '10', '1000.00', '1', null);

-- ----------------------------
-- Table structure for red_rob_record
-- ----------------------------
DROP TABLE IF EXISTS `red_rob_record`;
CREATE TABLE `red_rob_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户账号',
  `red_packet` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '红包标识串',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '红包金额（单位为分）',
  `rob_time` datetime DEFAULT NULL COMMENT '时间',
  `is_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='抢红包记录';

-- ----------------------------
-- Records of red_rob_record
-- ----------------------------
INSERT INTO `red_rob_record` VALUES ('82', '10010', 'redis:red:packet:10010:177565921763957', '34.00', '2019-03-24 17:03:25', '1');
INSERT INTO `red_rob_record` VALUES ('83', '10011', 'redis:red:packet:10010:177565921763957', '61.00', '2019-03-24 17:22:03', '1');
INSERT INTO `red_rob_record` VALUES ('84', '10012', 'redis:red:packet:10010:177565921763957', '106.00', '2019-03-24 17:33:12', '1');
INSERT INTO `red_rob_record` VALUES ('85', '10013', 'redis:red:packet:10010:177565921763957', '28.00', '2019-03-24 17:33:15', '1');
INSERT INTO `red_rob_record` VALUES ('86', '10014', 'redis:red:packet:10010:177565921763957', '15.00', '2019-03-24 17:33:18', '1');
INSERT INTO `red_rob_record` VALUES ('87', '10015', 'redis:red:packet:10010:177565921763957', '214.00', '2019-03-24 17:33:20', '1');
INSERT INTO `red_rob_record` VALUES ('88', '10016', 'redis:red:packet:10010:177565921763957', '34.00', '2019-03-24 17:33:22', '1');
INSERT INTO `red_rob_record` VALUES ('89', '10017', 'redis:red:packet:10010:177565921763957', '237.00', '2019-03-24 17:33:26', '1');
INSERT INTO `red_rob_record` VALUES ('90', '10018', 'redis:red:packet:10010:177565921763957', '91.00', '2019-03-24 17:33:29', '1');
INSERT INTO `red_rob_record` VALUES ('91', '10019', 'redis:red:packet:10010:177565921763957', '180.00', '2019-03-24 17:33:32', '1');
INSERT INTO `red_rob_record` VALUES ('92', '10035', 'redis:red:packet:10030:272246147091856', '38.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('93', '10031', 'redis:red:packet:10030:272246147091856', '68.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('94', '10033', 'redis:red:packet:10030:272246147091856', '22.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('95', '10031', 'redis:red:packet:10030:272246147091856', '25.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('96', '10034', 'redis:red:packet:10030:272246147091856', '37.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('97', '10030', 'redis:red:packet:10030:272246147091856', '10.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('98', '10035', 'redis:red:packet:10030:272246147091856', '150.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('99', '10031', 'redis:red:packet:10030:272246147091856', '43.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('100', '10030', 'redis:red:packet:10030:272246147091856', '12.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('101', '10032', 'redis:red:packet:10030:272246147091856', '95.00', '2019-03-24 22:57:40', '1');
INSERT INTO `red_rob_record` VALUES ('102', '10035', 'redis:red:packet:10050:356031000034967', '130.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('103', '10032', 'redis:red:packet:10050:356031000034967', '44.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('104', '10033', 'redis:red:packet:10050:356031000034967', '161.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('105', '10034', 'redis:red:packet:10050:356031000034967', '65.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('106', '10031', 'redis:red:packet:10050:356031000034967', '246.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('107', '10033', 'redis:red:packet:10050:356031000034967', '54.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('108', '10030', 'redis:red:packet:10050:356031000034967', '16.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('109', '10031', 'redis:red:packet:10050:356031000034967', '220.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('110', '10031', 'redis:red:packet:10050:356031000034967', '48.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('111', '10030', 'redis:red:packet:10050:356031000034967', '16.00', '2019-03-25 22:05:28', '1');
INSERT INTO `red_rob_record` VALUES ('112', '10031', 'redis:red:packet:10050:356507939164216', '149.00', '2019-03-25 22:07:00', '1');
INSERT INTO `red_rob_record` VALUES ('113', '10035', 'redis:red:packet:10050:356507939164216', '204.00', '2019-03-25 22:07:00', '1');
INSERT INTO `red_rob_record` VALUES ('114', '10033', 'redis:red:packet:10050:356507939164216', '139.00', '2019-03-25 22:07:00', '1');
INSERT INTO `red_rob_record` VALUES ('115', '10034', 'redis:red:packet:10050:356507939164216', '38.00', '2019-03-25 22:07:00', '1');
INSERT INTO `red_rob_record` VALUES ('116', '10030', 'redis:red:packet:10050:356507939164216', '79.00', '2019-03-25 22:07:00', '1');
INSERT INTO `red_rob_record` VALUES ('117', '10032', 'redis:red:packet:10050:356507939164216', '14.00', '2019-03-25 22:07:00', '1');
