/*
Navicat MySQL Data Transfer

Source Server         : MyKoneksi
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_task

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-04-05 14:38:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_to_do`
-- ----------------------------
DROP TABLE IF EXISTS `tb_to_do`;
CREATE TABLE `tb_to_do` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_td` varchar(255) NOT NULL,
  `details_td` text NOT NULL,
  `subject_td` varchar(255) NOT NULL,
  `priority_td` varchar(255) NOT NULL,
  `deadline_td` date NOT NULL,
  `status_td` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_to_do
-- ----------------------------
INSERT INTO `tb_to_do` VALUES ('1', 'ERD', 'Bikin ERD', 'RPL', '(2) Medium', '2022-03-28', 'Sudah');
INSERT INTO `tb_to_do` VALUES ('6', 'WS', 'Beresin WS', 'AnDAl', '(1) Low', '2022-04-30', 'Sudah');
INSERT INTO `tb_to_do` VALUES ('9', 'TP4', 'Kerjain TP4', 'DPBO', '(2) Medium', '2022-03-28', 'Belum');
INSERT INTO `tb_to_do` VALUES ('16', 'Web', 'UTS', 'DesWeb', '(3) High', '2022-04-06', 'Belum');
