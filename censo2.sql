/*
Navicat MySQL Data Transfer

Source Server         : cn
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : censo2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-05 07:16:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bitacora
-- ----------------------------
DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `numero_afiliacion` varchar(8) NOT NULL,
  `nombre_paciente` varchar(100) NOT NULL,
  `apellido_paciente` varchar(100) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `edad` int(11) NOT NULL,
  `calidad_paciente` varchar(50) NOT NULL,
  `servicio` varchar(100) NOT NULL,
  `nivel` varchar(10) NOT NULL,
  `cama` varchar(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `fecha_movimiento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hospital_traslado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bitacora`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bitacora
-- ----------------------------

-- ----------------------------
-- Table structure for bitacora_movimiento
-- ----------------------------
DROP TABLE IF EXISTS `bitacora_movimiento`;
CREATE TABLE `bitacora_movimiento` (
  `id_bitacora_movimiento` int(11) NOT NULL,
  `id_bitacora` int(11) DEFAULT NULL,
  `id_movimiento` int(11) DEFAULT NULL,
  `fecha_movimiento` date DEFAULT NULL,
  `observaciones` longtext,
  PRIMARY KEY (`id_bitacora_movimiento`) USING BTREE,
  KEY `id_movimiento` (`id_movimiento`) USING BTREE,
  KEY `id_bitacora` (`id_bitacora`) USING BTREE,
  CONSTRAINT `bitacora_movimiento_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`),
  CONSTRAINT `bitacora_movimiento_ibfk_2` FOREIGN KEY (`id_bitacora`) REFERENCES `bitacora` (`id_bitacora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bitacora_movimiento
-- ----------------------------

-- ----------------------------
-- Table structure for calidad_pacientes
-- ----------------------------
DROP TABLE IF EXISTS `calidad_pacientes`;
CREATE TABLE `calidad_pacientes` (
  `id_calidad_paciente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_calidad_paciente`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of calidad_pacientes
-- ----------------------------

-- ----------------------------
-- Table structure for camas
-- ----------------------------
DROP TABLE IF EXISTS `camas`;
CREATE TABLE `camas` (
  `id_cama` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `observaciones` longtext,
  `ala` int(11) DEFAULT NULL,
  `correlativo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cama`) USING BTREE,
  KEY `id_servicio` (`id_servicio`) USING BTREE,
  CONSTRAINT `camas_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of camas
-- ----------------------------
INSERT INTO `camas` VALUES ('1', '1', 'Disponible', 'Observaciones', '1', '65');
INSERT INTO `camas` VALUES ('2', '1', 'Disponible', 'Observaciones', '1', '1');
INSERT INTO `camas` VALUES ('3', '1', 'Disponible', 'Observaciones', '1', '2');
INSERT INTO `camas` VALUES ('4', '1', 'Disponible', 'Observaciones', '1', '3');
INSERT INTO `camas` VALUES ('5', '1', 'Disponible', 'Observaciones', '1', '4');
INSERT INTO `camas` VALUES ('6', '1', 'Disponible', 'Observaciones', '1', '5');
INSERT INTO `camas` VALUES ('7', '1', 'Disponible', 'Observaciones', '1', '6');
INSERT INTO `camas` VALUES ('8', '1', 'Disponible', 'Observaciones', '1', '7');
INSERT INTO `camas` VALUES ('9', '1', 'Disponible', 'Observaciones', '1', '8');
INSERT INTO `camas` VALUES ('10', '1', 'Disponible', 'Observaciones', '1', '9');
INSERT INTO `camas` VALUES ('11', '1', 'Disponible', 'Observaciones', '1', '10');
INSERT INTO `camas` VALUES ('12', '1', 'Disponible', 'Observaciones', '1', '11');
INSERT INTO `camas` VALUES ('13', '1', 'Disponible', 'Observaciones', '1', '12');
INSERT INTO `camas` VALUES ('14', '1', 'Disponible', 'Observaciones', '1', '13');
INSERT INTO `camas` VALUES ('15', '1', 'Disponible', 'Observaciones', '1', '14');
INSERT INTO `camas` VALUES ('16', '1', 'Disponible', 'Observaciones', '1', '15');
INSERT INTO `camas` VALUES ('17', '1', 'Disponible', 'Observaciones', '1', '16');
INSERT INTO `camas` VALUES ('18', '1', 'Disponible', 'Observaciones', '1', '17');
INSERT INTO `camas` VALUES ('19', '1', 'Disponible', 'Observaciones', '1', '18');
INSERT INTO `camas` VALUES ('20', '1', 'Disponible', 'Observaciones', '1', '19');
INSERT INTO `camas` VALUES ('21', '1', 'Disponible', 'Observaciones', '1', '20');
INSERT INTO `camas` VALUES ('22', '1', 'Disponible', 'Observaciones', '1', '21');
INSERT INTO `camas` VALUES ('23', '1', 'Disponible', 'Observaciones', '1', '22');
INSERT INTO `camas` VALUES ('24', '1', 'Disponible', 'Observaciones', '1', '23');
INSERT INTO `camas` VALUES ('25', '1', 'Disponible', 'Observaciones', '1', '24');
INSERT INTO `camas` VALUES ('26', '1', 'Disponible', 'Observaciones', '1', '25');
INSERT INTO `camas` VALUES ('27', '1', 'Disponible', 'Observaciones', '1', '26');
INSERT INTO `camas` VALUES ('28', '1', 'Disponible', 'Observaciones', '1', '27');
INSERT INTO `camas` VALUES ('29', '1', 'Disponible', 'Observaciones', '1', '28');
INSERT INTO `camas` VALUES ('30', '1', 'Disponible', 'Observaciones', '1', '29');
INSERT INTO `camas` VALUES ('31', '1', 'Disponible', 'Observaciones', '1', '30');
INSERT INTO `camas` VALUES ('32', '1', 'Disponible', 'Observaciones', '1', '31');
INSERT INTO `camas` VALUES ('33', '1', 'Disponible', 'Observaciones', '1', '32');
INSERT INTO `camas` VALUES ('34', '1', 'Disponible', 'Observaciones', '2', '33');
INSERT INTO `camas` VALUES ('35', '1', 'Disponible', 'Observaciones', '2', '34');
INSERT INTO `camas` VALUES ('36', '1', 'Disponible', 'Observaciones', '2', '35');
INSERT INTO `camas` VALUES ('37', '1', 'Disponible', 'Observaciones', '2', '36');
INSERT INTO `camas` VALUES ('38', '1', 'Disponible', 'Observaciones', '2', '37');
INSERT INTO `camas` VALUES ('39', '1', 'Disponible', 'Observaciones', '2', '38');
INSERT INTO `camas` VALUES ('40', '1', 'Disponible', 'Observaciones', '2', '39');
INSERT INTO `camas` VALUES ('41', '1', 'Disponible', 'Observaciones', '2', '40');
INSERT INTO `camas` VALUES ('42', '1', 'Disponible', 'Observaciones', '2', '41');
INSERT INTO `camas` VALUES ('43', '1', 'Disponible', 'Observaciones', '2', '42');
INSERT INTO `camas` VALUES ('44', '1', 'Disponible', 'Observaciones', '2', '43');
INSERT INTO `camas` VALUES ('45', '1', 'Disponible', 'Observaciones', '2', '44');
INSERT INTO `camas` VALUES ('46', '1', 'Disponible', 'Observaciones', '2', '45');
INSERT INTO `camas` VALUES ('47', '1', 'Disponible', 'Observaciones', '2', '46');
INSERT INTO `camas` VALUES ('48', '1', 'Disponible', 'Observaciones', '2', '47');
INSERT INTO `camas` VALUES ('49', '1', 'Disponible', 'Observaciones', '2', '48');
INSERT INTO `camas` VALUES ('50', '1', 'Disponible', 'Observaciones', '2', '49');
INSERT INTO `camas` VALUES ('51', '1', 'Disponible', 'Observaciones', '2', '50');
INSERT INTO `camas` VALUES ('52', '1', 'Disponible', 'Observaciones', '2', '51');
INSERT INTO `camas` VALUES ('53', '1', 'Disponible', 'Observaciones', '2', '52');
INSERT INTO `camas` VALUES ('54', '1', 'Disponible', 'Observaciones', '2', '53');
INSERT INTO `camas` VALUES ('55', '1', 'Disponible', 'Observaciones', '2', '54');
INSERT INTO `camas` VALUES ('56', '1', 'Disponible', 'Observaciones', '2', '55');
INSERT INTO `camas` VALUES ('57', '1', 'Disponible', 'Observaciones', '2', '56');
INSERT INTO `camas` VALUES ('58', '1', 'Disponible', 'Observaciones', '2', '57');
INSERT INTO `camas` VALUES ('59', '1', 'Disponible', 'Observaciones', '2', '58');
INSERT INTO `camas` VALUES ('60', '1', 'Disponible', 'Observaciones', '2', '59');
INSERT INTO `camas` VALUES ('61', '1', 'Disponible', 'Observaciones', '2', '60');
INSERT INTO `camas` VALUES ('62', '1', 'Disponible', 'Observaciones', '2', '61');
INSERT INTO `camas` VALUES ('63', '1', 'Disponible', 'Observaciones', '2', '62');
INSERT INTO `camas` VALUES ('64', '1', 'Disponible', 'Observaciones', '2', '63');
INSERT INTO `camas` VALUES ('65', '1', 'Disponible', 'Observaciones', '2', '64');
INSERT INTO `camas` VALUES ('66', '6', 'Disponible', 'Observaciones', '1', '1');
INSERT INTO `camas` VALUES ('67', '6', 'Disponible', 'Observaciones', '1', '2');
INSERT INTO `camas` VALUES ('68', '6', 'Disponible', 'Observaciones', '1', '3');
INSERT INTO `camas` VALUES ('69', '6', 'Disponible', 'Observaciones', '1', '4');
INSERT INTO `camas` VALUES ('70', '6', 'Disponible', 'Observaciones', '1', '5');
INSERT INTO `camas` VALUES ('71', '6', 'Disponible', 'Observaciones', '1', '6');
INSERT INTO `camas` VALUES ('72', '6', 'Disponible', 'Observaciones', '1', '7');
INSERT INTO `camas` VALUES ('73', '6', 'Disponible', 'Observaciones', '1', '8');
INSERT INTO `camas` VALUES ('74', '6', 'Disponible', 'Observaciones', '1', '9');
INSERT INTO `camas` VALUES ('75', '6', 'Disponible', 'Observaciones', '1', '10');
INSERT INTO `camas` VALUES ('76', '6', 'Disponible', 'Observaciones', '1', '11');
INSERT INTO `camas` VALUES ('77', '6', 'Disponible', 'Observaciones', '1', '12');
INSERT INTO `camas` VALUES ('78', '6', 'Disponible', 'Observaciones', '1', '13');
INSERT INTO `camas` VALUES ('79', '6', 'Disponible', 'Observaciones', '1', '14');
INSERT INTO `camas` VALUES ('80', '6', 'Disponible', 'Observaciones', '1', '15');
INSERT INTO `camas` VALUES ('81', '6', 'Disponible', 'Observaciones', '1', '16');
INSERT INTO `camas` VALUES ('82', '6', 'Disponible', 'Observaciones', '1', '17');
INSERT INTO `camas` VALUES ('83', '6', 'Disponible', 'Observaciones', '1', '18');
INSERT INTO `camas` VALUES ('84', '6', 'Disponible', 'Observaciones', '1', '19');
INSERT INTO `camas` VALUES ('85', '6', 'Disponible', 'Observaciones', '1', '20');
INSERT INTO `camas` VALUES ('86', '6', 'Disponible', 'Observaciones', '1', '21');
INSERT INTO `camas` VALUES ('87', '6', 'Disponible', 'Observaciones', '1', '22');
INSERT INTO `camas` VALUES ('88', '6', 'Disponible', 'Observaciones', '1', '23');
INSERT INTO `camas` VALUES ('89', '6', 'Disponible', 'Observaciones', '1', '24');
INSERT INTO `camas` VALUES ('90', '6', 'Disponible', 'Observaciones', '1', '25');
INSERT INTO `camas` VALUES ('91', '6', 'Disponible', 'Observaciones', '1', '26');
INSERT INTO `camas` VALUES ('92', '6', 'Disponible', 'Observaciones', '1', '27');
INSERT INTO `camas` VALUES ('93', '6', 'Disponible', 'Observaciones', '1', '28');
INSERT INTO `camas` VALUES ('94', '6', 'Disponible', 'Observaciones', '1', '29');
INSERT INTO `camas` VALUES ('95', '6', 'Disponible', 'Observaciones', '1', '30');
INSERT INTO `camas` VALUES ('96', '6', 'Disponible', 'Observaciones', '1', '31');
INSERT INTO `camas` VALUES ('97', '6', 'Disponible', 'Observaciones', '1', '32');
INSERT INTO `camas` VALUES ('98', '6', 'Disponible', 'Observaciones', '2', '33');
INSERT INTO `camas` VALUES ('99', '6', 'Disponible', 'Observaciones', '2', '34');
INSERT INTO `camas` VALUES ('100', '6', 'Disponible', 'Observaciones', '2', '35');
INSERT INTO `camas` VALUES ('101', '6', 'Disponible', 'Observaciones', '2', '36');
INSERT INTO `camas` VALUES ('102', '6', 'Disponible', 'Observaciones', '2', '37');
INSERT INTO `camas` VALUES ('103', '6', 'Disponible', 'Observaciones', '2', '38');
INSERT INTO `camas` VALUES ('104', '6', 'Disponible', 'Observaciones', '2', '39');
INSERT INTO `camas` VALUES ('105', '6', 'Disponible', 'Observaciones', '2', '40');
INSERT INTO `camas` VALUES ('106', '6', 'Disponible', 'Observaciones', '2', '41');
INSERT INTO `camas` VALUES ('107', '6', 'Disponible', 'Observaciones', '2', '42');
INSERT INTO `camas` VALUES ('108', '6', 'Disponible', 'Observaciones', '2', '43');
INSERT INTO `camas` VALUES ('109', '6', 'Disponible', 'Observaciones', '2', '44');
INSERT INTO `camas` VALUES ('110', '6', 'Disponible', 'Observaciones', '2', '45');
INSERT INTO `camas` VALUES ('111', '6', 'Disponible', 'Observaciones', '2', '46');
INSERT INTO `camas` VALUES ('112', '6', 'Disponible', 'Observaciones', '2', '47');
INSERT INTO `camas` VALUES ('113', '6', 'Disponible', 'Observaciones', '2', '48');
INSERT INTO `camas` VALUES ('114', '6', 'Disponible', 'Observaciones', '2', '49');
INSERT INTO `camas` VALUES ('115', '6', 'Disponible', 'Observaciones', '2', '50');
INSERT INTO `camas` VALUES ('116', '6', 'Disponible', 'Observaciones', '2', '51');
INSERT INTO `camas` VALUES ('117', '6', 'Disponible', 'Observaciones', '2', '52');
INSERT INTO `camas` VALUES ('118', '6', 'Disponible', 'Observaciones', '2', '53');
INSERT INTO `camas` VALUES ('119', '6', 'Disponible', 'Observaciones', '2', '54');
INSERT INTO `camas` VALUES ('120', '6', 'Disponible', 'Observaciones', '2', '55');
INSERT INTO `camas` VALUES ('121', '6', 'Disponible', 'Observaciones', '2', '56');
INSERT INTO `camas` VALUES ('122', '6', 'Disponible', 'Observaciones', '2', '57');
INSERT INTO `camas` VALUES ('123', '6', 'Disponible', 'Observaciones', '2', '58');
INSERT INTO `camas` VALUES ('124', '6', 'Disponible', 'Observaciones', '2', '59');
INSERT INTO `camas` VALUES ('125', '6', 'Disponible', 'Observaciones', '2', '60');
INSERT INTO `camas` VALUES ('126', '6', 'Disponible', 'Observaciones', '2', '61');
INSERT INTO `camas` VALUES ('127', '6', 'Disponible', 'Observaciones', '2', '62');
INSERT INTO `camas` VALUES ('128', '6', 'Disponible', 'Observaciones', '2', '63');
INSERT INTO `camas` VALUES ('129', '6', 'Disponible', 'Observaciones', '2', '64');
INSERT INTO `camas` VALUES ('130', '10', 'Disponible', 'Observaciones', '1', '1');
INSERT INTO `camas` VALUES ('131', '10', 'Disponible', 'Observaciones', '1', '2');
INSERT INTO `camas` VALUES ('132', '10', 'Disponible', 'Observaciones', '1', '3');
INSERT INTO `camas` VALUES ('133', '10', 'Disponible', 'Observaciones', '1', '4');
INSERT INTO `camas` VALUES ('134', '10', 'Disponible', 'Observaciones', '1', '5');
INSERT INTO `camas` VALUES ('135', '10', 'Disponible', 'Observaciones', '1', '6');
INSERT INTO `camas` VALUES ('136', '10', 'Disponible', 'Observaciones', '1', '7');
INSERT INTO `camas` VALUES ('137', '10', 'Disponible', 'Observaciones', '1', '8');
INSERT INTO `camas` VALUES ('138', '10', 'Disponible', 'Observaciones', '1', '9');
INSERT INTO `camas` VALUES ('139', '10', 'Disponible', 'Observaciones', '1', '10');
INSERT INTO `camas` VALUES ('140', '10', 'Disponible', 'Observaciones', '1', '11');
INSERT INTO `camas` VALUES ('141', '10', 'Disponible', 'Observaciones', '1', '12');
INSERT INTO `camas` VALUES ('142', '10', 'Disponible', 'Observaciones', '1', '13');
INSERT INTO `camas` VALUES ('143', '10', 'Disponible', 'Observaciones', '1', '14');
INSERT INTO `camas` VALUES ('144', '10', 'Disponible', 'Observaciones', '1', '15');
INSERT INTO `camas` VALUES ('145', '10', 'Disponible', 'Observaciones', '1', '16');
INSERT INTO `camas` VALUES ('146', '10', 'Disponible', 'Observaciones', '1', '17');
INSERT INTO `camas` VALUES ('147', '10', 'Disponible', 'Observaciones', '1', '18');
INSERT INTO `camas` VALUES ('148', '10', 'Disponible', 'Observaciones', '1', '19');
INSERT INTO `camas` VALUES ('149', '10', 'Disponible', 'Observaciones', '1', '20');
INSERT INTO `camas` VALUES ('150', '10', 'Disponible', 'Observaciones', '1', '21');
INSERT INTO `camas` VALUES ('151', '10', 'Disponible', 'Observaciones', '1', '22');
INSERT INTO `camas` VALUES ('152', '10', 'Disponible', 'Observaciones', '1', '23');
INSERT INTO `camas` VALUES ('153', '10', 'Disponible', 'Observaciones', '1', '24');
INSERT INTO `camas` VALUES ('154', '10', 'Disponible', 'Observaciones', '1', '25');
INSERT INTO `camas` VALUES ('155', '10', 'Disponible', 'Observaciones', '1', '26');
INSERT INTO `camas` VALUES ('156', '10', 'Disponible', 'Observaciones', '1', '27');
INSERT INTO `camas` VALUES ('157', '10', 'Disponible', 'Observaciones', '1', '28');
INSERT INTO `camas` VALUES ('158', '10', 'Disponible', 'Observaciones', '1', '29');
INSERT INTO `camas` VALUES ('159', '10', 'Disponible', 'Observaciones', '1', '30');
INSERT INTO `camas` VALUES ('160', '10', 'Disponible', 'Observaciones', '1', '31');
INSERT INTO `camas` VALUES ('161', '10', 'Disponible', 'Observaciones', '1', '32');
INSERT INTO `camas` VALUES ('162', '10', 'Disponible', 'Observaciones', '2', '33');
INSERT INTO `camas` VALUES ('163', '10', 'Disponible', 'Observaciones', '2', '34');
INSERT INTO `camas` VALUES ('164', '10', 'Disponible', 'Observaciones', '2', '35');
INSERT INTO `camas` VALUES ('165', '10', 'Disponible', 'Observaciones', '2', '36');
INSERT INTO `camas` VALUES ('166', '10', 'Disponible', 'Observaciones', '2', '37');
INSERT INTO `camas` VALUES ('167', '10', 'Disponible', 'Observaciones', '2', '38');
INSERT INTO `camas` VALUES ('168', '10', 'Disponible', 'Observaciones', '2', '39');
INSERT INTO `camas` VALUES ('169', '10', 'Disponible', 'Observaciones', '2', '40');
INSERT INTO `camas` VALUES ('170', '10', 'Disponible', 'Observaciones', '2', '41');
INSERT INTO `camas` VALUES ('171', '10', 'Disponible', 'Observaciones', '2', '42');
INSERT INTO `camas` VALUES ('172', '10', 'Disponible', 'Observaciones', '2', '43');
INSERT INTO `camas` VALUES ('173', '10', 'Disponible', 'Observaciones', '2', '44');
INSERT INTO `camas` VALUES ('174', '10', 'Disponible', 'Observaciones', '2', '45');
INSERT INTO `camas` VALUES ('175', '10', 'Disponible', 'Observaciones', '2', '46');
INSERT INTO `camas` VALUES ('176', '10', 'Disponible', 'Observaciones', '2', '47');
INSERT INTO `camas` VALUES ('177', '10', 'Disponible', 'Observaciones', '2', '48');
INSERT INTO `camas` VALUES ('178', '10', 'Disponible', 'Observaciones', '2', '49');
INSERT INTO `camas` VALUES ('179', '10', 'Disponible', 'Observaciones', '2', '50');
INSERT INTO `camas` VALUES ('180', '10', 'Disponible', 'Observaciones', '2', '51');
INSERT INTO `camas` VALUES ('181', '10', 'Disponible', 'Observaciones', '2', '52');
INSERT INTO `camas` VALUES ('182', '10', 'Disponible', 'Observaciones', '2', '53');
INSERT INTO `camas` VALUES ('183', '10', 'Disponible', 'Observaciones', '2', '54');
INSERT INTO `camas` VALUES ('184', '10', 'Disponible', 'Observaciones', '2', '55');
INSERT INTO `camas` VALUES ('185', '10', 'Disponible', 'Observaciones', '2', '56');
INSERT INTO `camas` VALUES ('186', '10', 'Disponible', 'Observaciones', '2', '57');
INSERT INTO `camas` VALUES ('187', '10', 'Disponible', 'Observaciones', '2', '58');
INSERT INTO `camas` VALUES ('188', '10', 'Disponible', 'Observaciones', '2', '59');
INSERT INTO `camas` VALUES ('189', '10', 'Disponible', 'Observaciones', '2', '60');
INSERT INTO `camas` VALUES ('190', '10', 'Disponible', 'Observaciones', '2', '61');
INSERT INTO `camas` VALUES ('191', '10', 'Disponible', 'Observaciones', '2', '62');
INSERT INTO `camas` VALUES ('192', '10', 'Disponible', 'Observaciones', '2', '63');
INSERT INTO `camas` VALUES ('193', '10', 'Disponible', 'Observaciones', '2', '64');
INSERT INTO `camas` VALUES ('194', '11', 'Disponible', 'Observaciones', '1', '1');
INSERT INTO `camas` VALUES ('195', '11', 'Disponible', 'Observaciones', '1', '2');
INSERT INTO `camas` VALUES ('196', '11', 'Disponible', 'Observaciones', '1', '3');
INSERT INTO `camas` VALUES ('197', '11', 'Disponible', 'Observaciones', '1', '4');
INSERT INTO `camas` VALUES ('198', '11', 'Disponible', 'Observaciones', '1', '5');
INSERT INTO `camas` VALUES ('199', '11', 'Disponible', 'Observaciones', '1', '6');
INSERT INTO `camas` VALUES ('200', '11', 'Disponible', 'Observaciones', '1', '7');
INSERT INTO `camas` VALUES ('201', '11', 'Disponible', 'Observaciones', '1', '8');
INSERT INTO `camas` VALUES ('202', '11', 'Disponible', 'Observaciones', '1', '9');
INSERT INTO `camas` VALUES ('203', '11', 'Disponible', 'Observaciones', '1', '10');
INSERT INTO `camas` VALUES ('204', '11', 'Disponible', 'Observaciones', '1', '11');
INSERT INTO `camas` VALUES ('205', '11', 'Disponible', 'Observaciones', '1', '12');
INSERT INTO `camas` VALUES ('206', '11', 'Disponible', 'Observaciones', '1', '13');
INSERT INTO `camas` VALUES ('207', '11', 'Disponible', 'Observaciones', '1', '14');
INSERT INTO `camas` VALUES ('208', '11', 'Disponible', 'Observaciones', '1', '15');
INSERT INTO `camas` VALUES ('209', '11', 'Disponible', 'Observaciones', '1', '16');
INSERT INTO `camas` VALUES ('210', '11', 'Disponible', 'Observaciones', '1', '17');
INSERT INTO `camas` VALUES ('211', '11', 'Disponible', 'Observaciones', '1', '18');
INSERT INTO `camas` VALUES ('212', '11', 'Disponible', 'Observaciones', '1', '19');
INSERT INTO `camas` VALUES ('213', '11', 'Disponible', 'Observaciones', '1', '20');
INSERT INTO `camas` VALUES ('214', '11', 'Disponible', 'Observaciones', '1', '21');
INSERT INTO `camas` VALUES ('215', '11', 'Disponible', 'Observaciones', '1', '22');
INSERT INTO `camas` VALUES ('216', '11', 'Disponible', 'Observaciones', '1', '23');
INSERT INTO `camas` VALUES ('217', '11', 'Disponible', 'Observaciones', '1', '24');
INSERT INTO `camas` VALUES ('218', '11', 'Disponible', 'Observaciones', '1', '25');
INSERT INTO `camas` VALUES ('219', '11', 'Disponible', 'Observaciones', '1', '26');
INSERT INTO `camas` VALUES ('220', '11', 'Disponible', 'Observaciones', '1', '27');
INSERT INTO `camas` VALUES ('221', '11', 'Disponible', 'Observaciones', '1', '28');
INSERT INTO `camas` VALUES ('222', '11', 'Disponible', 'Observaciones', '1', '29');
INSERT INTO `camas` VALUES ('223', '11', 'Disponible', 'Observaciones', '1', '30');
INSERT INTO `camas` VALUES ('224', '11', 'Disponible', 'Observaciones', '1', '31');
INSERT INTO `camas` VALUES ('225', '11', 'Disponible', 'Observaciones', '1', '32');
INSERT INTO `camas` VALUES ('226', '11', 'Disponible', 'Observaciones', '2', '33');
INSERT INTO `camas` VALUES ('227', '11', 'Disponible', 'Observaciones', '2', '34');
INSERT INTO `camas` VALUES ('228', '11', 'Disponible', 'Observaciones', '2', '35');
INSERT INTO `camas` VALUES ('229', '11', 'Disponible', 'Observaciones', '2', '36');
INSERT INTO `camas` VALUES ('230', '11', 'Disponible', 'Observaciones', '2', '37');
INSERT INTO `camas` VALUES ('231', '11', 'Disponible', 'Observaciones', '2', '38');
INSERT INTO `camas` VALUES ('232', '11', 'Disponible', 'Observaciones', '2', '39');
INSERT INTO `camas` VALUES ('233', '11', 'Disponible', 'Observaciones', '2', '40');
INSERT INTO `camas` VALUES ('234', '11', 'Disponible', 'Observaciones', '2', '41');
INSERT INTO `camas` VALUES ('235', '11', 'Disponible', 'Observaciones', '2', '42');
INSERT INTO `camas` VALUES ('236', '11', 'Disponible', 'Observaciones', '2', '43');
INSERT INTO `camas` VALUES ('237', '11', 'Disponible', 'Observaciones', '2', '44');
INSERT INTO `camas` VALUES ('238', '11', 'Disponible', 'Observaciones', '2', '45');
INSERT INTO `camas` VALUES ('239', '11', 'Disponible', 'Observaciones', '2', '46');
INSERT INTO `camas` VALUES ('240', '11', 'Disponible', 'Observaciones', '2', '47');
INSERT INTO `camas` VALUES ('241', '11', 'Disponible', 'Observaciones', '2', '48');
INSERT INTO `camas` VALUES ('242', '11', 'Disponible', 'Observaciones', '2', '49');
INSERT INTO `camas` VALUES ('243', '11', 'Disponible', 'Observaciones', '2', '50');
INSERT INTO `camas` VALUES ('244', '11', 'Disponible', 'Observaciones', '2', '51');
INSERT INTO `camas` VALUES ('245', '11', 'Disponible', 'Observaciones', '2', '52');
INSERT INTO `camas` VALUES ('246', '11', 'Disponible', 'Observaciones', '2', '53');
INSERT INTO `camas` VALUES ('247', '11', 'Disponible', 'Observaciones', '2', '54');
INSERT INTO `camas` VALUES ('248', '11', 'Disponible', 'Observaciones', '2', '55');
INSERT INTO `camas` VALUES ('249', '11', 'Disponible', 'Observaciones', '2', '56');
INSERT INTO `camas` VALUES ('250', '11', 'Disponible', 'Observaciones', '2', '57');
INSERT INTO `camas` VALUES ('251', '11', 'Disponible', 'Observaciones', '2', '58');
INSERT INTO `camas` VALUES ('252', '11', 'Disponible', 'Observaciones', '2', '59');
INSERT INTO `camas` VALUES ('253', '11', 'Disponible', 'Observaciones', '2', '60');
INSERT INTO `camas` VALUES ('254', '11', 'Disponible', 'Observaciones', '2', '61');
INSERT INTO `camas` VALUES ('255', '11', 'Disponible', 'Observaciones', '2', '62');
INSERT INTO `camas` VALUES ('256', '11', 'Disponible', 'Observaciones', '2', '63');
INSERT INTO `camas` VALUES ('257', '11', 'Disponible', 'Observaciones', '2', '64');
INSERT INTO `camas` VALUES ('258', '12', 'Disponible', 'Observaciones', '1', '1');
INSERT INTO `camas` VALUES ('259', '12', 'Disponible', 'Observaciones', '1', '2');
INSERT INTO `camas` VALUES ('260', '12', 'Disponible', 'Observaciones', '1', '3');
INSERT INTO `camas` VALUES ('261', '12', 'Disponible', 'Observaciones', '1', '4');
INSERT INTO `camas` VALUES ('262', '12', 'Disponible', 'Observaciones', '1', '5');
INSERT INTO `camas` VALUES ('263', '12', 'Disponible', 'Observaciones', '1', '6');
INSERT INTO `camas` VALUES ('264', '12', 'Disponible', 'Observaciones', '1', '7');
INSERT INTO `camas` VALUES ('265', '12', 'Disponible', 'Observaciones', '1', '8');
INSERT INTO `camas` VALUES ('266', '12', 'Disponible', 'Observaciones', '1', '9');
INSERT INTO `camas` VALUES ('267', '12', 'Disponible', 'Observaciones', '1', '10');
INSERT INTO `camas` VALUES ('268', '12', 'Disponible', 'Observaciones', '1', '11');
INSERT INTO `camas` VALUES ('269', '12', 'Disponible', 'Observaciones', '1', '12');
INSERT INTO `camas` VALUES ('270', '12', 'Disponible', 'Observaciones', '1', '13');
INSERT INTO `camas` VALUES ('271', '12', 'Disponible', 'Observaciones', '1', '14');
INSERT INTO `camas` VALUES ('272', '12', 'Disponible', 'Observaciones', '1', '15');
INSERT INTO `camas` VALUES ('273', '12', 'Disponible', 'Observaciones', '1', '16');
INSERT INTO `camas` VALUES ('274', '12', 'Disponible', 'Observaciones', '1', '17');
INSERT INTO `camas` VALUES ('275', '12', 'Disponible', 'Observaciones', '1', '18');
INSERT INTO `camas` VALUES ('276', '12', 'Disponible', 'Observaciones', '1', '19');
INSERT INTO `camas` VALUES ('277', '12', 'Disponible', 'Observaciones', '1', '20');
INSERT INTO `camas` VALUES ('278', '12', 'Disponible', 'Observaciones', '1', '21');
INSERT INTO `camas` VALUES ('279', '12', 'Disponible', 'Observaciones', '1', '22');
INSERT INTO `camas` VALUES ('280', '12', 'Disponible', 'Observaciones', '1', '23');
INSERT INTO `camas` VALUES ('281', '12', 'Disponible', 'Observaciones', '1', '24');
INSERT INTO `camas` VALUES ('282', '12', 'Disponible', 'Observaciones', '1', '25');
INSERT INTO `camas` VALUES ('283', '12', 'Disponible', 'Observaciones', '1', '26');
INSERT INTO `camas` VALUES ('284', '12', 'Disponible', 'Observaciones', '1', '27');
INSERT INTO `camas` VALUES ('285', '12', 'Disponible', 'Observaciones', '1', '28');
INSERT INTO `camas` VALUES ('286', '12', 'Disponible', 'Observaciones', '1', '29');
INSERT INTO `camas` VALUES ('287', '12', 'Disponible', 'Observaciones', '1', '30');
INSERT INTO `camas` VALUES ('288', '12', 'Disponible', 'Observaciones', '1', '31');
INSERT INTO `camas` VALUES ('289', '12', 'Disponible', 'Observaciones', '1', '32');
INSERT INTO `camas` VALUES ('290', '12', 'Disponible', 'Observaciones', '2', '33');
INSERT INTO `camas` VALUES ('291', '12', 'Disponible', 'Observaciones', '2', '34');
INSERT INTO `camas` VALUES ('292', '12', 'Disponible', 'Observaciones', '2', '35');
INSERT INTO `camas` VALUES ('293', '12', 'Disponible', 'Observaciones', '2', '36');
INSERT INTO `camas` VALUES ('294', '12', 'Disponible', 'Observaciones', '2', '37');
INSERT INTO `camas` VALUES ('295', '12', 'Disponible', 'Observaciones', '2', '38');
INSERT INTO `camas` VALUES ('296', '12', 'Disponible', 'Observaciones', '2', '39');
INSERT INTO `camas` VALUES ('297', '12', 'Disponible', 'Observaciones', '2', '40');
INSERT INTO `camas` VALUES ('298', '12', 'Disponible', 'Observaciones', '2', '41');
INSERT INTO `camas` VALUES ('299', '12', 'Disponible', 'Observaciones', '2', '42');
INSERT INTO `camas` VALUES ('300', '12', 'Disponible', 'Observaciones', '2', '43');
INSERT INTO `camas` VALUES ('301', '12', 'Disponible', 'Observaciones', '2', '44');
INSERT INTO `camas` VALUES ('302', '12', 'Disponible', 'Observaciones', '2', '45');
INSERT INTO `camas` VALUES ('303', '12', 'Disponible', 'Observaciones', '2', '46');
INSERT INTO `camas` VALUES ('304', '12', 'Disponible', 'Observaciones', '2', '47');
INSERT INTO `camas` VALUES ('305', '12', 'Disponible', 'Observaciones', '2', '48');
INSERT INTO `camas` VALUES ('306', '12', 'Disponible', 'Observaciones', '2', '49');
INSERT INTO `camas` VALUES ('307', '12', 'Disponible', 'Observaciones', '2', '50');
INSERT INTO `camas` VALUES ('308', '12', 'Disponible', 'Observaciones', '2', '51');
INSERT INTO `camas` VALUES ('309', '12', 'Disponible', 'Observaciones', '2', '52');
INSERT INTO `camas` VALUES ('310', '12', 'Disponible', 'Observaciones', '2', '53');
INSERT INTO `camas` VALUES ('311', '12', 'Disponible', 'Observaciones', '2', '54');
INSERT INTO `camas` VALUES ('312', '12', 'Disponible', 'Observaciones', '2', '55');
INSERT INTO `camas` VALUES ('313', '12', 'Disponible', 'Observaciones', '2', '56');
INSERT INTO `camas` VALUES ('314', '12', 'Disponible', 'Observaciones', '2', '57');
INSERT INTO `camas` VALUES ('315', '12', 'Disponible', 'Observaciones', '2', '58');
INSERT INTO `camas` VALUES ('316', '12', 'Disponible', 'Observaciones', '2', '59');
INSERT INTO `camas` VALUES ('317', '12', 'Disponible', 'Observaciones', '2', '60');
INSERT INTO `camas` VALUES ('318', '12', 'Disponible', 'Observaciones', '2', '61');
INSERT INTO `camas` VALUES ('319', '12', 'Disponible', 'Observaciones', '2', '62');
INSERT INTO `camas` VALUES ('320', '12', 'Disponible', 'Observaciones', '2', '63');
INSERT INTO `camas` VALUES ('321', '12', 'Disponible', 'Observaciones', '2', '64');
INSERT INTO `camas` VALUES ('322', '13', 'Disponible', 'Observaciones', '1', '1');
INSERT INTO `camas` VALUES ('323', '13', 'Disponible', 'Observaciones', '1', '2');
INSERT INTO `camas` VALUES ('324', '13', 'Disponible', 'Observaciones', '1', '3');
INSERT INTO `camas` VALUES ('325', '13', 'Disponible', 'Observaciones', '1', '4');
INSERT INTO `camas` VALUES ('326', '13', 'Disponible', 'Observaciones', '1', '5');
INSERT INTO `camas` VALUES ('327', '13', 'Disponible', 'Observaciones', '1', '6');
INSERT INTO `camas` VALUES ('328', '13', 'Disponible', 'Observaciones', '1', '7');
INSERT INTO `camas` VALUES ('329', '13', 'Disponible', 'Observaciones', '1', '8');
INSERT INTO `camas` VALUES ('330', '13', 'Disponible', 'Observaciones', '1', '9');
INSERT INTO `camas` VALUES ('331', '13', 'Disponible', 'Observaciones', '1', '10');
INSERT INTO `camas` VALUES ('332', '13', 'Disponible', 'Observaciones', '1', '11');
INSERT INTO `camas` VALUES ('333', '13', 'Disponible', 'Observaciones', '1', '12');
INSERT INTO `camas` VALUES ('334', '13', 'Disponible', 'Observaciones', '1', '13');
INSERT INTO `camas` VALUES ('335', '13', 'Disponible', 'Observaciones', '1', '14');
INSERT INTO `camas` VALUES ('336', '13', 'Disponible', 'Observaciones', '1', '15');
INSERT INTO `camas` VALUES ('337', '13', 'Disponible', 'Observaciones', '1', '16');
INSERT INTO `camas` VALUES ('338', '13', 'Disponible', 'Observaciones', '1', '17');
INSERT INTO `camas` VALUES ('339', '13', 'Disponible', 'Observaciones', '1', '18');
INSERT INTO `camas` VALUES ('340', '13', 'Disponible', 'Observaciones', '1', '19');
INSERT INTO `camas` VALUES ('341', '13', 'Disponible', 'Observaciones', '1', '20');
INSERT INTO `camas` VALUES ('342', '13', 'Disponible', 'Observaciones', '1', '21');
INSERT INTO `camas` VALUES ('343', '13', 'Disponible', 'Observaciones', '1', '22');
INSERT INTO `camas` VALUES ('344', '13', 'Disponible', 'Observaciones', '1', '23');
INSERT INTO `camas` VALUES ('345', '13', 'Disponible', 'Observaciones', '1', '24');
INSERT INTO `camas` VALUES ('346', '13', 'Disponible', 'Observaciones', '1', '25');
INSERT INTO `camas` VALUES ('347', '13', 'Disponible', 'Observaciones', '1', '26');
INSERT INTO `camas` VALUES ('348', '13', 'Disponible', 'Observaciones', '1', '27');
INSERT INTO `camas` VALUES ('349', '13', 'Disponible', 'Observaciones', '1', '28');
INSERT INTO `camas` VALUES ('350', '13', 'Disponible', 'Observaciones', '1', '29');
INSERT INTO `camas` VALUES ('351', '13', 'Disponible', 'Observaciones', '1', '30');
INSERT INTO `camas` VALUES ('352', '13', 'Disponible', 'Observaciones', '1', '31');
INSERT INTO `camas` VALUES ('353', '13', 'Disponible', 'Observaciones', '1', '32');
INSERT INTO `camas` VALUES ('354', '13', 'Disponible', 'Observaciones', '2', '33');
INSERT INTO `camas` VALUES ('355', '13', 'Disponible', 'Observaciones', '2', '34');
INSERT INTO `camas` VALUES ('356', '13', 'Disponible', 'Observaciones', '2', '35');
INSERT INTO `camas` VALUES ('357', '13', 'Disponible', 'Observaciones', '2', '36');
INSERT INTO `camas` VALUES ('358', '13', 'Disponible', 'Observaciones', '2', '37');
INSERT INTO `camas` VALUES ('359', '13', 'Disponible', 'Observaciones', '2', '38');
INSERT INTO `camas` VALUES ('360', '13', 'Disponible', 'Observaciones', '2', '39');
INSERT INTO `camas` VALUES ('361', '13', 'Disponible', 'Observaciones', '2', '40');
INSERT INTO `camas` VALUES ('362', '13', 'Disponible', 'Observaciones', '2', '41');
INSERT INTO `camas` VALUES ('363', '13', 'Disponible', 'Observaciones', '2', '42');
INSERT INTO `camas` VALUES ('364', '13', 'Disponible', 'Observaciones', '2', '43');
INSERT INTO `camas` VALUES ('365', '13', 'Disponible', 'Observaciones', '2', '44');
INSERT INTO `camas` VALUES ('366', '13', 'Disponible', 'Observaciones', '2', '45');
INSERT INTO `camas` VALUES ('367', '13', 'Disponible', 'Observaciones', '2', '46');
INSERT INTO `camas` VALUES ('368', '13', 'Disponible', 'Observaciones', '2', '47');
INSERT INTO `camas` VALUES ('369', '13', 'Disponible', 'Observaciones', '2', '48');
INSERT INTO `camas` VALUES ('370', '13', 'Disponible', 'Observaciones', '2', '49');
INSERT INTO `camas` VALUES ('371', '13', 'Disponible', 'Observaciones', '2', '50');
INSERT INTO `camas` VALUES ('372', '13', 'Disponible', 'Observaciones', '2', '51');
INSERT INTO `camas` VALUES ('373', '13', 'Disponible', 'Observaciones', '2', '52');
INSERT INTO `camas` VALUES ('374', '13', 'Disponible', 'Observaciones', '2', '53');
INSERT INTO `camas` VALUES ('375', '13', 'Disponible', 'Observaciones', '2', '54');
INSERT INTO `camas` VALUES ('376', '13', 'Disponible', 'Observaciones', '2', '55');
INSERT INTO `camas` VALUES ('377', '13', 'Disponible', 'Observaciones', '2', '56');
INSERT INTO `camas` VALUES ('378', '13', 'Disponible', 'Observaciones', '2', '57');
INSERT INTO `camas` VALUES ('379', '13', 'Disponible', 'Observaciones', '2', '58');
INSERT INTO `camas` VALUES ('380', '13', 'Disponible', 'Observaciones', '2', '59');
INSERT INTO `camas` VALUES ('381', '13', 'Disponible', 'Observaciones', '2', '60');
INSERT INTO `camas` VALUES ('382', '13', 'Disponible', 'Observaciones', '2', '61');
INSERT INTO `camas` VALUES ('383', '13', 'Disponible', 'Observaciones', '2', '62');
INSERT INTO `camas` VALUES ('384', '13', 'Disponible', 'Observaciones', '2', '63');
INSERT INTO `camas` VALUES ('385', '13', 'Disponible', 'Observaciones', '2', '64');

-- ----------------------------
-- Table structure for certificados
-- ----------------------------
DROP TABLE IF EXISTS `certificados`;
CREATE TABLE `certificados` (
  `id_certificado` varchar(100) NOT NULL,
  `id_detalle` varchar(100) DEFAULT NULL,
  `canton` varchar(100) DEFAULT NULL,
  `local_de_defuncion` varchar(100) DEFAULT NULL,
  `servicio` varchar(30) DEFAULT NULL,
  `id_etapa` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_certificado`) USING BTREE,
  KEY `id_detalle` (`id_detalle`) USING BTREE,
  KEY `id_etapa` (`id_etapa`) USING BTREE,
  KEY `id_departamento` (`id_municipio`) USING BTREE,
  CONSTRAINT `certificados_ibfk_1` FOREIGN KEY (`id_detalle`) REFERENCES `detalle_doctores` (`id_detalle`),
  CONSTRAINT `certificados_ibfk_3` FOREIGN KEY (`id_etapa`) REFERENCES `etapas` (`id_etapa`),
  CONSTRAINT `certificados_ibfk_4` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of certificados
-- ----------------------------

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of departamentos
-- ----------------------------

-- ----------------------------
-- Table structure for detalle_doctores
-- ----------------------------
DROP TABLE IF EXISTS `detalle_doctores`;
CREATE TABLE `detalle_doctores` (
  `id_detalle` varchar(100) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_defuncion` datetime NOT NULL,
  `causa_defuncion_linea` mediumtext NOT NULL,
  `causa_defuncion_intervalo_aproximado` mediumtext NOT NULL,
  `causa_defuncion_otros_estados` mediumtext NOT NULL,
  `causa_de_muerte` varchar(200) NOT NULL,
  `asistencia_enfermedad` varchar(5) NOT NULL,
  `defuncion_por_medico` varchar(3) NOT NULL,
  `defuncion_medico_forense` varchar(3) NOT NULL,
  PRIMARY KEY (`id_detalle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of detalle_doctores
-- ----------------------------

-- ----------------------------
-- Table structure for especialidades
-- ----------------------------
DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id_especialidad` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_especialidad`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of especialidades
-- ----------------------------
INSERT INTO `especialidades` VALUES ('1', 'Especialidad1', '1');
INSERT INTO `especialidades` VALUES ('2', 'Especialidad2', '2');

-- ----------------------------
-- Table structure for etapas
-- ----------------------------
DROP TABLE IF EXISTS `etapas`;
CREATE TABLE `etapas` (
  `id_etapa` int(11) NOT NULL,
  `etapa` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_etapa`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of etapas
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for movimiento
-- ----------------------------
DROP TABLE IF EXISTS `movimiento`;
CREATE TABLE `movimiento` (
  `id_movimiento` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of movimiento
-- ----------------------------

-- ----------------------------
-- Table structure for municipios
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`) USING BTREE,
  KEY `fk_departamentos_municipios` (`id_departamento`) USING BTREE,
  CONSTRAINT `fk_departamentos_municipios` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of municipios
-- ----------------------------

-- ----------------------------
-- Table structure for pacientes
-- ----------------------------
DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `numero_afiliacion` varchar(8) NOT NULL,
  `dui` varchar(8) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `sexo` char(1) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `observaciones` longtext,
  `edad` int(11) NOT NULL,
  `ocupacion` varchar(100) NOT NULL,
  `estado_civil` varchar(15) NOT NULL,
  `id_calidad_paciente` int(11) DEFAULT NULL,
  `id_certificado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`) USING BTREE,
  KEY `id_calidad_paciente` (`id_calidad_paciente`) USING BTREE,
  KEY `id_certificado` (`id_certificado`) USING BTREE,
  CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_calidad_paciente`) REFERENCES `calidad_pacientes` (`id_calidad_paciente`),
  CONSTRAINT `pacientes_ibfk_2` FOREIGN KEY (`id_certificado`) REFERENCES `certificados` (`id_certificado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pacientes
-- ----------------------------

-- ----------------------------
-- Table structure for reservas
-- ----------------------------
DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cama` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `fecha_ingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `observaciones` longtext,
  PRIMARY KEY (`id_reserva`) USING BTREE,
  KEY `id_paciente` (`id_paciente`) USING BTREE,
  KEY `id_usuario` (`id_usuario`) USING BTREE,
  KEY `id_cama` (`id_cama`) USING BTREE,
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`id_cama`) REFERENCES `camas` (`id_cama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of reservas
-- ----------------------------

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id_servicio`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO `servicios` VALUES ('1', 'Observacion 1', '1', '3');
INSERT INTO `servicios` VALUES ('2', 'Observacion 2', '1', '3');
INSERT INTO `servicios` VALUES ('3', 'Observacion 3', '1', '3');
INSERT INTO `servicios` VALUES ('4', 'Observacion 4', '1', '3');
INSERT INTO `servicios` VALUES ('5', 'Recuperación', '1', '3');
INSERT INTO `servicios` VALUES ('6', 'Medicina 4', '1', '4');
INSERT INTO `servicios` VALUES ('7', 'UCI', '1', '4');
INSERT INTO `servicios` VALUES ('8', 'UCIN', '1', '4');
INSERT INTO `servicios` VALUES ('9', 'Recuperación', '1', '4');
INSERT INTO `servicios` VALUES ('10', 'Medicina 3', '1', '5');
INSERT INTO `servicios` VALUES ('11', 'Neurocirugia', '1', '6');
INSERT INTO `servicios` VALUES ('12', 'Ortopedia', '1', '7');
INSERT INTO `servicios` VALUES ('13', 'Cirugia', '1', '8');

-- ----------------------------
-- Table structure for tipo_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `tipo_usuarios`;
CREATE TABLE `tipo_usuarios` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id_tipo_usuario`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tipo_usuarios
-- ----------------------------
INSERT INTO `tipo_usuarios` VALUES ('1', 'Recepcionista', '1');
INSERT INTO `tipo_usuarios` VALUES ('2', 'Jefe Archivo', '1');
INSERT INTO `tipo_usuarios` VALUES ('3', 'Jefe Emergencia', '1');
INSERT INTO `tipo_usuarios` VALUES ('4', 'Medico', '1');
INSERT INTO `tipo_usuarios` VALUES ('5', 'Enfermeria', '1');
INSERT INTO `tipo_usuarios` VALUES ('6', 'Jefe de Servicio', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_especialidad` int(11) DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `usuario` varchar(7) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  KEY `id_especialidad` (`id_especialidad`) USING BTREE,
  KEY `id_tipo_usuario` (`id_tipo_usuario`) USING BTREE,
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuarios` (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', '1', '1', 'Jorge', '123', 'Jorge Alberto', 'De La Cruz Hernandez', '2018-12-04 13:18:04', '1');

-- ----------------------------
-- View structure for listar_cama
-- ----------------------------
DROP VIEW IF EXISTS `listar_cama`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_cama` AS SELECT camas.*, servicios.nombre_servicio AS nom_serv, servicios.id_servicio AS id_serv, servicios.nivel AS nivel
FROM camas
JOIN servicios
ON camas.id_servicio=servicios.id_servicio ;

-- ----------------------------
-- View structure for listar_especialidades
-- ----------------------------
DROP VIEW IF EXISTS `listar_especialidades`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_especialidades` AS SELECT * from especialidades ;

-- ----------------------------
-- View structure for listar_paciente
-- ----------------------------
DROP VIEW IF EXISTS `listar_paciente`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_paciente` AS SELECT * FROM pacientes ;

-- ----------------------------
-- View structure for listar_reservas
-- ----------------------------
DROP VIEW IF EXISTS `listar_reservas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_reservas` AS SELECT * FROM reservas ;

-- ----------------------------
-- View structure for listar_servicios
-- ----------------------------
DROP VIEW IF EXISTS `listar_servicios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_servicios` AS SELECT * FROM servicios ;

-- ----------------------------
-- View structure for listar_tipo_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `listar_tipo_usuarios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_tipo_usuarios` AS SELECT * FROM tipo_usuarios ;

-- ----------------------------
-- View structure for listar_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `listar_usuarios`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `listar_usuarios` AS SELECT usuarios.*, especialidades.nombre AS nom_espe, especialidades.id_especialidad AS id_espe, tipo_usuarios.nombre AS nom_tipo, tipo_usuarios.id_tipo_usuario AS id_tipo 
FROM usuarios
JOIN especialidades
ON usuarios.id_especialidad=especialidades.id_especialidad
JOIN tipo_usuarios
ON usuarios.id_tipo_usuario=tipo_usuarios.id_tipo_usuario ;

-- ----------------------------
-- Procedure structure for consultar_paciente_cama
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultar_paciente_cama`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_paciente_cama`(pid_cama INT)
BEGIN
	
	
	DECLARE pid_paciente INT;
	
	SET pid_paciente=(SELECT id_paciente FROM reservas WHERE id_cama=pid_cama);
	
	SELECT * FROM pacientes WHERE id_paciente=pid_paciente;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_calidad_paciente
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_calidad_paciente`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_calidad_paciente`(indice INT ,id_paciente_ca int, pnombre VARCHAR(100))
BEGIN

 DECLARE estado INT;
 declare p_id_calidad int;

 
 IF(indice=1)THEN
 if not EXISTS(select nombre from calidad_pacientes where nombre=pnombre) then 
 
set p_id_calidad =(select MAX(id_calidad_paciente) from calidad_pacientes);
set p_id_calidad=(p_id_calidad +1);

INSERT INTO calidad_pacientes VALUES (p_id_calidad,pnombre);

SET estado=1;
else 
 
 SET estado=2;
 
 END IF;
 end if;
 
 
 
 
 IF(indice=2)THEN
  if EXISTS(select id_calidad_paciente from calidad_pacientes where id_calidad_paciente=id_paciente_ca) then 
		UPDATE calidad_paciente SET nombre=pnombre WHERE id_calidad_paciente=id_paciente_ca;
		SET estado=1;
	
	else 
	 SET estado=2;
 
	
 END IF;
 end if;
  
 SELECT estado;
 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_camas
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_camas`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_camas`(indice INT, pid_cama INT, pid_servicio INT, pcorrelativo VARCHAR(100), pestado VARCHAR(100), pobservaciones VARCHAR(250))
BEGIN
	DECLARE estado INT;
	DECLARE id INT;
	IF(indice=1)THEN	
	SET id =(SELECT MAX(id_cama) FROM camas);
	SET id=(id+1);
		IF NOT EXISTS(SELECT id_cama FROM camas WHERE id_cama = id)THEN	
			INSERT INTO camas (id_cama,id_servicio,correlativo,estado,observaciones) 
			VALUES (id,pid_servicio,pcorrelativo,pestado,pobservaciones);
			SET estado=1;
			
			ELSE 
			
			SET estado =2;
		END IF;
	END IF;
	
	IF(indice=2)THEN
	IF EXISTS(select id_cama FROM camas WHERE id_cama = pid_cama) THEN
		UPDATE camas
		SET id_servicio=pid_servicio,correlativo=pcorrelativo,estado=pestado,observaciones=pobservaciones
		WHERE id_cama=pid_cama;
		SET estado=1;
		
		ELSE 
		SET estado=2;
	END IF;
	END IF;
	SELECT estado;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_certificado
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_certificado`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_certificado`(indice INT, pid_certificado VARCHAR(100), pid_detalle VARCHAR(100), pid_municipio INT, pcanton VARCHAR(100), plocalde_defuncion VARCHAR(250), pservicio VARCHAR(30), pid_etapa INT)
BEGIN
	DECLARE estado INT;
	DECLARE count INT;
	DECLARE pid VARCHAR(100);
	
	IF(indice=1)THEN	
	if not EXISTS(SELECT id_certificado FROM certificados WHERE id_certificado=pid)then
		SET count=((SELECT MAX(id_certificado) from certificados)+1);
		IF((count)<10)THEN
			SET pid=(SELECT CONCAT('0000',count));
		elseif((count)>=10 AND (count)<100)THEN
			SET pid=(SELECT CONCAT('000',count));
			elseif((count)>=100 AND (count)<1000)THEN
			SET pid=(SELECT CONCAT('00',count));
			elseif((count)>=1000 AND (count)<10000)THEN
			SET pid=(SELECT CONCAT('0',count));
				elseif((count)>=10000)THEN
			SET pid=(SELECT CONCAT(count));
		END IF;
		
		
			INSERT INTO certificados VALUES (pid,id_detalle,id_municipio,pcanton,plocalde_defuncion,pservicio,id_etapa);
			SET estado=1;
		end if;
	END IF;
	
	IF(indice=2)THEN
		UPDATE certificados
		SET canton=pcanton,localde_defuncion=plocalde_defuncion,servicio=pservicio
		WHERE id_certificado=pid_certificado;
		SET estado=1;
	END IF;
	SELECT estado;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_detalle_doctor
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_detalle_doctor`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_detalle_doctor`(indice INT, pid int,pfecha_ingreso DATE, pfecha_defncion DATETIME, pcausa_defuncion_linea MEDIUMTEXT, pcausa_defuncion_intervalo_aproximado MEDIUMTEXT, pcausa_defuncion_otros_estado MEDIUMTEXT, pcausa_de_muerte VARCHAR(40), pasistencia_enfermedad VARCHAR(3), pdifuncion_por_medico VARCHAR(3), pdifuncion_medico_forense VARCHAR(3),pfirma_responsable VARCHAR(50))
BEGIN

	DECLARE estado INT;
	DECLARE count INT;
	DECLARE pid VARCHAR(100);
	IF(indice=1)THEN

			INSERT INTO detalle_doctor (id_detalle,fecha_ingreso,fecha_defuncion,causa_defuncion_linea,causa_defuncion_intervalo_aproximado,causa_defuncion_otros_estados,causa_de_muerte,asistencia_enfermedad,difuncion_por_medico,difuncion_medico_forense,firma_responsable)
				
				VALUES (pid,pfecha_ingreso,pfecha_defuncion,pcausa_defuncion_linea,pcausa_defuncion_intervalo_aproximado,pcausa_defuncion_otros_estados,pcausa_de_muerte,pasistencia_enfermedad,pdifuncion_por_medico,difuncion_medico_forense,pfirma_responsable);
			SET estado=1;
	END IF;
	IF(indice=2)THEN
		IF(SELECT id_detalle FROM id_detalle=pid)THEN
		UPDATE detalle_doctor
		SET fecha_ingreso=pfecha_ingreso,fecha_defuncion=pfecha_defuncion,causa_defuncion_linea=pcausa_defuncion_linea,causa_defuncion_intervalo_aproximado=pcausa_defuncion_intervalo_aproximado,causa_defuncion_otros_estados=pcausa_defuncion_otros_estados,causa_de_muerte=pcausa_de_muerte,asistencia_enfermedad=pasistencia_enfermedad,difuncion_por_medico=pdifuncion_por_medico,difuncion_medico_forense=pdifuncion_medico_forense,firma_responsable=pfirma_responsable;
		SET estado=1;
		END IF;
	END IF;
	SELECT estado;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_especialidad
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_especialidad`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_especialidad`(pnombre varchar(100),pestado varchar(10), indice int,pid_especialidad INT)
begin

declare bandera int;
declare id int;
if(indice=1)then
if not EXISTS(select nombre from especialidades where nombre=pnombre)then

set id =(select MAX(id_especialidad)+1 from especialidades);


insert into especialidades (id_especialidad,nombre,estado) values(id,pnombre,pestado);

set bandera =1;

end if;
end if;

if(indice=2)then


update especialidades set nombre=pnombre,estado=pestado where id_especialidad=pid_especialidad;

set bandera =1;

end if;


if(indice=3)then
if EXISTS(select nombre from especialidades where nombre=pnombre)then

delete FROM especialidades where nombre=pnombre;

set bandera =1;
end if;
end if;





select bandera ;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_pacientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_pacientes`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_pacientes`(numero_afi VARCHAR(8), dui VARCHAR(10), nom VARCHAR(100), ape VARCHAR(100), sex CHAR(1), esta VARCHAR(10), obser LONGTEXT, ed INT, ocu VARCHAR(100), estac VARCHAR(15), id_ca_pa INT, id_cer VARCHAR(100), indice INT ,id_pa INT)
BEGIN

DECLARE bandera INT;
DECLARE paci INT;
SET paci =(SELECT MAX(id_paciente) FROM pacientes);
SET paci=(paci+1);

IF(indice=1)THEN

	if NOT EXISTS(SELECT id_paciente FROM pacientes WHERE id_paciente=paci)THEN

		INSERT INTO pacientes VALUES(paci,numero_afi,dui, nom, ape,sex ,esta,obser,ed,ocu,estac,id_ca_pa,id_cer);

		SET bandera =1;
	ELSE 

		SET bandera =2;

	END IF;
END IF;

IF(indice=2)THEN

UPDATE pacientes SET numero_afiliacion=numero_afi,dui=dui,nombres=nom,apellido=ape,sexo=sex,estado=esta,				Observaciones=obser,edad=ed,ocupacion=ocu,estado_civil=estac,id_calidad_paciente=id_ca_pa,id_certificado=id_cer WHERE id_paciente=id_pa;

		SET bandera  = 1;
END IF;





SELECT bandera;





END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_servicios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_servicios`(indice INT,pid_servicios INT,pnombre_servicio VARCHAR(100),pestado INT,pnivel INT)
BEGIN

	DECLARE estado INT;
	DECLARE cuenta INT;
	DECLARE nid VARCHAR(100);


	IF(indice=1)THEN
	
		SET cuenta=(SELECT MAX(id_servicio)+1 FROM servicios);
		
		IF(cuenta<10)THEN			
			SET nid=(SELECT CONCAT('0000',cuenta));		
		END IF;
		
		IF(cuenta>=10 AND cuenta<100)THEN			
			SET nid=(SELECT CONCAT('000',cuenta));		
		END IF;
		
		IF(cuenta>=100 AND cuenta<1000)THEN			
			SET nid=(SELECT CONCAT('00',cuenta));		
		END IF;
		
		IF(cuenta>=10000 AND cuenta<100000)THEN			
			SET nid=(SELECT CONCAT('0',cuenta));		
		END IF;
		
		INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel) 
										VALUES (nid,pnombre_servicio,pestado,pnivel);

		SET estado=1;

		
	END IF;
	
	IF(indice=2)THEN
	
		UPDATE servicios SET nombre_servicio=pnombre_servicio ,estado=pestado,nivel=pnivel WHERE id_servicio=pid_servicios;
		
		SET estado=1;
	
	END IF;
	
	SELECT estado;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for crud_tipo_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_tipo_usuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_tipo_usuario`(id int, nom varchar(100), est int, indice int)
begin
declare estado int;
declare p_id_tipo_usuario int;
	if(indice=1)THEN
		if not EXISTS(SELECT nombre from tipo_usuarios where nombre=nom)THEN
			set p_id_tipo_usuario =(select MAX(id_tipo_usuario) from tipo_usuarios);
			set p_id_tipo_usuario=(p_id_tipo_usuario +1);

		INSERT INTO tipo_usuarios VALUES(p_id_tipo_usuario,nom, est);
		set estado =1;
		else
		set estado =2;
		end if;
	end if;
	if(indice=2)THEN
		if EXISTS(SELECT nombre from tipo_usuarios where id_tipo_usuario=id)THEN
		update tipo_usuarios set nombre=nom,estado=est;
		set estado =1;
		end if;
	end if;
	if(indice=3)THEN
		if EXISTS(SELECT nombre from tipo_usuarios where id_tipo_usuario=id)THEN
		DELETE from tipo_usuarios WHERE nombre=nom;
		set estado =1;
		end if;
	end if;
	
	select estado ;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for estados_cama
-- ----------------------------
DROP PROCEDURE IF EXISTS `estados_cama`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `estados_cama`(pid_cama int, pestado varchar(10))
begin


update camas  set estado=pestado where id_cama=pid_cama;


end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ingreso_bitacora
-- ----------------------------
DROP PROCEDURE IF EXISTS `ingreso_bitacora`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_bitacora`(pnumero_afiliacion VARCHAR(8),pnombre_paciente VARCHAR(100),papellido_paciente VARCHAR(100),pdui VARCHAR(10),psexo CHAR,pid_movimiento INT,
pedad INT, pcalidad_paciente VARCHAR(50),pservicio VARCHAR(100),pnivel VARCHAR(10),pcama VARCHAR(10),pusuario VARCHAR(100),phospital_traslado VARCHAR(100))
BEGIN


INSERT INTO bitacora (numero_afiliacion,nombre_paciente,apellidos_paciente ,dui, sexo, id_movimiento, edad,calidad_paciente,servicio,nivel,cama,usuario,fecha_movimiento,hospital_traslado) 
VALUES (pnumero_afiliacion,pnombre_paciente,papellidos_paciente ,pdui, psexo, pid_movimiento, pedad,pcalidad_paciente,pservicio,pnivel,pcama,pusuario,pfecha_movimiento,phospital_traslado);


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for listar_camas
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_camas`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_camas`(indice INT)
BEGIN
		
	IF(indice=1)THEN
	
			SELECT * FROM camas;

	END IF;

	IF(indice=2)THEN

		SELECT * FROM camas WHERE estado='Disponible';

	END IF;
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for listar_camas_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_camas_servicios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_camas_servicios`(pnivel INT)
BEGIN
	/*PROCEDIMIENTO PARA LISTAR CAMAS SEGUN NIVEL*/
	SELECT camas.* ,servicios.nombre_servicio, servicios.nivel FROM camas 
	INNER JOIN servicios
	ON camas.id_servicio=servicios.id_servicio
	WHERE servicios.nivel=pnivel;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for listar_pacientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_pacientes`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_pacientes`(indice INT)
BEGIN
		
	IF(indice=1)THEN
	
			SELECT * FROM pacientes;

	END IF;

	IF(indice=2)THEN

		SELECT * FROM pacientes WHERE estado=1;

	END IF;
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for listar_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_servicios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_servicios`(indice INT)
BEGIN 	

	IF(indice=1)THEN

			SELECT * FROM servicios;
		
	
	END IF;

	IF(indice=2)THEN

			SELECT * FROM servicios WHERE estado=1;

	END IF;
	

	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for listar_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_usuarios`(indice INT)
BEGIN
	
	IF(indice=1)THEN
	
		SELECT usuarios.*, tipo_usuarios.nombre AS nombre_tipo, especialidades.nombre AS nombre_especialidades
		FROM usuarios
		JOIN tipo_usuarios
		ON usuarios.id_tipo_usuario=tipo_usuarios.id_tipo_usuario
		JOIN especialidades
		ON usuarios.id_especialidad=especialidades.id_especialidad;

	END IF;
	IF(indice=2)THEN
	
		SELECT * FROM usuarios WHERE estado=1;

	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for llenarCamasDisponibles
-- ----------------------------
DROP PROCEDURE IF EXISTS `llenarCamasDisponibles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenarCamasDisponibles`(pid_servicio int)
begin 


	DECLARE correlativo INT DEFAULT 1;
	DECLARE pala INT DEFAULT 1;	
	DECLARE idcama INT DEFAULT 0;
	

	llenar:LOOP


		IF((SELECT COUNT(*) FROM camas)=0)THEN
				SET idcama=(SELECT COUNT(id_cama)+1 FROM camas);
			ELSE 
				SET idcama=(SELECT MAX(id_cama)+1 FROM camas);
		END IF;

		IF(correlativo=33)THEN
			SET pala=2;
		END IF;


		IF(correlativo=65)THEN
				LEAVE llenar;
		END IF;


			insert into camas  (id_cama, id_servicio, estado, observaciones , ala , correlativo)
			values (idcama,pid_servicio,'Disponible','Observaciones',pala,correlativo);	
	
		SET correlativo=(correlativo+1);
	END LOOP llenar;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for llenar_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `llenar_servicios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_servicios`()
BEGIN

/*************NIVEL 3*******/
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (1,'Observacion 1',1,3);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (2,'Observacion 2',1,3);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (3,'Observacion 3',1,3);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (4,'Observacion 4',1,3);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (5,'Recuperación',1,3);
/*************NIVEL 3*******/


/*************NIVEL 4*******/
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (6,'Medicina 4',1,4);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (7,'UCI',1,4);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (8,'UCIN',1,4);
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (9,'Recuperación',1,4);

/*************NIVEL 4*******/


/*************NIVEL 5*******/
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (10,'Medicina 3',1,5);
/*************NIVEL 5*******/

/************NIVEL 6***********/
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (11,'Neurologia',1,6);
/************NIVEL 6***********/

/************NIVEL 7***********/
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (12,'Ortopedia',1,6);
/************NIVEL 7***********/

/************NIVEL 8***********/
INSERT INTO servicios (id_servicio,nombre_servicio,estado,nivel)
VALUES (11,'Cirugia',1,6);
/************NIVEL 8***********/

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for llenar_tipos_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `llenar_tipos_usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar_tipos_usuarios`()
begin 

insert into tipo_usuarios values (1,'Recepcionista',1);
insert into tipo_usuarios values (2,'Jefe Archivo',1);
insert into tipo_usuarios values (3,'Jefe Emergencia',1);
insert into tipo_usuarios values (4,'Medico',1);
insert into tipo_usuarios values (5,'Enfermeria',1);
insert into tipo_usuarios values (6,'Jefe de Servicio',1);


end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for login
-- ----------------------------
DROP PROCEDURE IF EXISTS `login`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(usu VARCHAR(7), contra VARCHAR(100))
BEGIN
DECLARE estado INT;

SET estado=0;

if EXISTS(select * from usuarios where usuario=usu and clave=contra) THEN

	SELECT usuarios.*, especialidades.nombre AS nombre_espe, tipo_usuarios.nombre AS nombre_tipo
	FROM usuarios 
	INNER JOIN especialidades
	ON usuarios.id_especialidad=especialidades.id_especialidad
	INNER JOIN tipo_usuarios
	ON usuarios.id_tipo_usuario=tipo_usuarios.id_tipo_usuario
	WHERE usuario=usu AND clave=contra;

	SET estado = 1;	
END IF;

SELECT estado;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtener_cama
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_cama`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_cama`(id int(11))
begin


select * from camas where id_cama=id;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtener_especialidad
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_especialidad`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_especialidad`(id int(11))
begin


select * from especialidades where id_especialidad=id;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtener_pacientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_pacientes`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_pacientes`(pid_paciente INT)
BEGIN
	
	SELECT * FROM pacientes WHERE id_paciente=pid_paciente;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtener_servicio
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_servicio`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_servicio`(pid_servicio INT)
BEGIN

	SELECT * FROM servicios WHERE id_servicio=pid_servicio;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtener_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_usuarios`(pid_usuario INT)
BEGIN
	
		SELECT * FROM usuarios WHERE id_usuario=pid_usuario;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for reestablecer_contrasena
-- ----------------------------
DROP PROCEDURE IF EXISTS `reestablecer_contrasena`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reestablecer_contrasena`(pid_usuario VARCHAR(100), pclave VARCHAR(100))
BEGIN
		UPDATE usuarios SET clave=pclave WHERE id_usuario=pid_usuario;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios`(pid_usuario INT, id_espe int, idtipo int, usu varchar(7), contra varchar(100), nom varchar(100), apell varchar(100), pestado INT, indice int)
BEGIN

	DECLARE id INT;
	DECLARE fecha_actual DATE;
	DECLARE bandera INT;
	SET fecha_actual = SYSDATE();

	SET id =(SELECT COUNT(id_usuario) FROM usuarios);
	SET id=(id+1);
	
	IF(indice=1)THEN
	IF NOT EXISTS(SELECT id_usuario FROM usuarios WHERE id_usuario = id)THEN	

					INSERT INTO usuarios VALUES(id, id_espe, idtipo, usu, contra, nom , apell, fecha_actual,1);
					SET bandera=1;
													
			END IF;
	END IF;

	IF(indice=2)THEN

		IF EXISTS(SELECT * FROM usuarios WHERE id_usuario=pid_usuario) THEN
		
UPDATE usuarios SET id_especialidad=id_espe, id_tipo_usuario=idtipo, usuario=usu, clave=contra,nombres=nom, apellidos=apell, estado=pestado WHERE id_usuario=pid_usuario;
			SET bandera=1;
		else 
		
		set bandera =2;
		END IF;
	
	END IF;	
	
SELECT bandera;
	
	
	
END
;;
DELIMITER ;
