/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100134
 Source Host           : localhost:3306
 Source Schema         : censo2

 Target Server Type    : MySQL
 Target Server Version : 100134
 File Encoding         : 65001

 Date: 14/11/2018 14:21:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bitacora
-- ----------------------------
DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora`  (
  `id_bitacora` int(11) NOT NULL,
  `numero_afiliacion` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre_paciente` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido_paciente` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dui` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `calidad_paciente` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `servicio` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nivel` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cama` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `usuario` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_movimiento` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `hospital_traslado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_bitacora`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bitacora_movimiento
-- ----------------------------
DROP TABLE IF EXISTS `bitacora_movimiento`;
CREATE TABLE `bitacora_movimiento`  (
  `id_bitacora_movimiento` int(11) NOT NULL,
  `id_bitacora` int(11) NULL DEFAULT NULL,
  `id_movimiento` int(11) NULL DEFAULT NULL,
  `fecha_movimiento` date NULL DEFAULT NULL,
  `observaciones` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_bitacora_movimiento`) USING BTREE,
  INDEX `id_movimiento`(`id_movimiento`) USING BTREE,
  INDEX `id_bitacora`(`id_bitacora`) USING BTREE,
  CONSTRAINT `bitacora_movimiento_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bitacora_movimiento_ibfk_2` FOREIGN KEY (`id_bitacora`) REFERENCES `bitacora` (`id_bitacora`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for calidad_pacientes
-- ----------------------------
DROP TABLE IF EXISTS `calidad_pacientes`;
CREATE TABLE `calidad_pacientes`  (
  `id_calidad_paciente` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_calidad_paciente`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of calidad_pacientes
-- ----------------------------
INSERT INTO `calidad_pacientes` VALUES (1, 'Cotizante');
INSERT INTO `calidad_pacientes` VALUES (2, 'Beneficiario');
INSERT INTO `calidad_pacientes` VALUES (3, 'Pensionado');
INSERT INTO `calidad_pacientes` VALUES (4, 'Beneficiario de Pensionado');
INSERT INTO `calidad_pacientes` VALUES (5, 'Beneficiario de Empleado');

-- ----------------------------
-- Table structure for camas
-- ----------------------------
DROP TABLE IF EXISTS `camas`;
CREATE TABLE `camas`  (
  `id_cama` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `estado` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `observaciones` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ala` int(11) NULL DEFAULT NULL,
  `correlativo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cama`) USING BTREE,
  INDEX `id_servicio`(`id_servicio`) USING BTREE,
  CONSTRAINT `camas_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of camas
-- ----------------------------
INSERT INTO `camas` VALUES (1, 1, 'Ocupada', 'Ocupada por alguien', 1, 12);
INSERT INTO `camas` VALUES (2, 1, 'Disponible', 'Disponible para paciente', 1, 12);
INSERT INTO `camas` VALUES (3, 1, 'Disponible', 'Ocupada por cirugia', 1, 12);
INSERT INTO `camas` VALUES (4, 1, 'Disponible', 'Reservada desde recepcion', 1, 12);
INSERT INTO `camas` VALUES (5, 1, 'Disponible', 'En Mantenimiento por desperfecto', 1, 12);
INSERT INTO `camas` VALUES (6, 1, 'Reservada', 'Ocupada por batman', 1, 12);
INSERT INTO `camas` VALUES (7, 1, 'Mantenimiento', 'Mantenimiento por Jorge', 1, 12);
INSERT INTO `camas` VALUES (8, 1, 'Disponible', 'Disponible', 1, 12);
INSERT INTO `camas` VALUES (9, 1, 'Ocupada', 'Hola', 1, 12);
INSERT INTO `camas` VALUES (10, 2, 'Reservada', 'Cama', 2, 1);
INSERT INTO `camas` VALUES (11, 2, 'Disponible', 'Cama', 1, 12);
INSERT INTO `camas` VALUES (12, 2, 'Ocupada', 'Cama', 2, 12);
INSERT INTO `camas` VALUES (13, 2, 'Disponible', 'Cama', 1, 12);
INSERT INTO `camas` VALUES (14, 2, 'Disponible', 'Cama', 1, 12);
INSERT INTO `camas` VALUES (15, 2, 'Disponible', 'Cama', 1, 12);
INSERT INTO `camas` VALUES (16, 2, 'Disponible', 'Cama', 1, 12);
INSERT INTO `camas` VALUES (17, 3, 'Disponible', 'cama', 2, 12);

-- ----------------------------
-- Table structure for certificados
-- ----------------------------
DROP TABLE IF EXISTS `certificados`;
CREATE TABLE `certificados`  (
  `id_certificado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_detalle` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `canton` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `local_de_defuncion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `servicio` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_etapa` int(11) NULL DEFAULT NULL,
  `id_departamento` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_certificado`) USING BTREE,
  INDEX `id_detalle`(`id_detalle`) USING BTREE,
  INDEX `id_etapa`(`id_etapa`) USING BTREE,
  INDEX `id_departamento`(`id_departamento`) USING BTREE,
  CONSTRAINT `certificados_ibfk_1` FOREIGN KEY (`id_detalle`) REFERENCES `detalle_doctores` (`id_detalle`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `certificados_ibfk_3` FOREIGN KEY (`id_etapa`) REFERENCES `etapas` (`id_etapa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `certificados_ibfk_4` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of certificados
-- ----------------------------
INSERT INTO `certificados` VALUES ('1', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos`  (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_municipio` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_departamento`) USING BTREE,
  INDEX `id_municipio`(`id_municipio`) USING BTREE,
  CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for detalle_doctores
-- ----------------------------
DROP TABLE IF EXISTS `detalle_doctores`;
CREATE TABLE `detalle_doctores`  (
  `id_detalle` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_defuncion` datetime(0) NOT NULL,
  `causa_defuncion_linea` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `causa_defuncion_intervalo_aproximado` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `causa_defuncion_otros_estados` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `causa_de_muerte` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `asistencia_enfermedad` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `defuncion_por_medico` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `defuncion_medico_forense` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_detalle`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for especialidades
-- ----------------------------
DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades`  (
  `id_especialidad` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_especialidad`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of especialidades
-- ----------------------------
INSERT INTO `especialidades` VALUES (1, 'Medicina I', 'Inactivo');
INSERT INTO `especialidades` VALUES (2, 'Medicina II', 'Activo');
INSERT INTO `especialidades` VALUES (3, 'Medicina III', 'Inactivo');
INSERT INTO `especialidades` VALUES (4, 'Ortopedia', 'Activo');
INSERT INTO `especialidades` VALUES (5, 'Cirugia General', 'Inactivo');
INSERT INTO `especialidades` VALUES (6, 'Neurocirugia', 'Activo');

-- ----------------------------
-- Table structure for etapas
-- ----------------------------
DROP TABLE IF EXISTS `etapas`;
CREATE TABLE `etapas`  (
  `id_etapa` int(11) NOT NULL,
  `etapa` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_etapa`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for movimiento
-- ----------------------------
DROP TABLE IF EXISTS `movimiento`;
CREATE TABLE `movimiento`  (
  `id_movimiento` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for municipios
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios`  (
  `id_municipio` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_municipio`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pacientes
-- ----------------------------
DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes`  (
  `id_paciente` int(11) NOT NULL,
  `numero_afiliacion` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dui` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombres` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sexo` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `observaciones` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `edad` int(11) NOT NULL,
  `ocupacion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado_civil` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_calidad_paciente` int(11) NULL DEFAULT NULL,
  `id_certificado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_paciente`) USING BTREE,
  INDEX `id_calidad_paciente`(`id_calidad_paciente`) USING BTREE,
  INDEX `id_certificado`(`id_certificado`) USING BTREE,
  CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_calidad_paciente`) REFERENCES `calidad_pacientes` (`id_calidad_paciente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pacientes_ibfk_2` FOREIGN KEY (`id_certificado`) REFERENCES `certificados` (`id_certificado`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pacientes
-- ----------------------------
INSERT INTO `pacientes` VALUES (1, '12354667', '13245054', 'Jorge Alberto ', 'De La Cruz HenÃ¡ndez', 'M', '1', 'Observaciones\r\n                          ', 24, 'trabajador', 'casado', 1, '1');
INSERT INTO `pacientes` VALUES (2, '02118674', '02123454', 'William Elenilson', 'Martinez Solorzano', 'M', '1', 'Observaciones\r\n                          ', 27, 'estudiante', 'casado', 1, '1');
INSERT INTO `pacientes` VALUES (3, '01213544', '20286451', 'Kevin Antonio', 'Guzman Diaz', 'M', '1', 'Observaciones\r\n                          ', 21, 'estudiante', 'viudo', 1, '1');
INSERT INTO `pacientes` VALUES (4, '54547867', '01213487', 'Julio ', 'Descartez', 'M', '1', 'Observaciones\r\n                          ', 40, 'trabajador', 'casado', 1, '1');
INSERT INTO `pacientes` VALUES (5, '01321457', '13553543', 'Raul Ernesto', 'Menjivar ', 'M', '1', 'Observaciones\r\n                          ', 30, 'estudiante', 'casado', 1, '1');

-- ----------------------------
-- Table structure for reservas
-- ----------------------------
DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas`  (
  `id_reserva` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cama` int(11) NOT NULL,
  `estado` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_ingreso` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `observaciones` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_reserva`) USING BTREE,
  INDEX `id_paciente`(`id_paciente`) USING BTREE,
  INDEX `id_usuario`(`id_usuario`) USING BTREE,
  INDEX `id_cama`(`id_cama`) USING BTREE,
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`id_cama`) REFERENCES `camas` (`id_cama`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reservas
-- ----------------------------
INSERT INTO `reservas` VALUES (1, 1, 1, 10, '1', '2018-10-11 13:57:09', NULL);

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios`  (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id_servicio`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO `servicios` VALUES (1, 'Otros', 1, 4);
INSERT INTO `servicios` VALUES (2, 'Medicina 4', 0, 5);
INSERT INTO `servicios` VALUES (3, 'Medicina 3.55', 0, 5);
INSERT INTO `servicios` VALUES (5, 'Ortoperdia', 0, 7);
INSERT INTO `servicios` VALUES (6, 'Medicina I', 1, 4);
INSERT INTO `servicios` VALUES (7, 'Medicina II', 1, 4);
INSERT INTO `servicios` VALUES (8, 'Observaciones', 1, 4);
INSERT INTO `servicios` VALUES (9, 'Otros', 1, 4);
INSERT INTO `servicios` VALUES (10, 'Nombre servicio', 1, 1);
INSERT INTO `servicios` VALUES (11, 'Nombre servicio 1', 1, 1);
INSERT INTO `servicios` VALUES (12, 'Medicina 3', 0, 5);
INSERT INTO `servicios` VALUES (13, 'Medicina 4.555', 0, 5);
INSERT INTO `servicios` VALUES (14, 'Nombre servicio 1', 1, 8);
INSERT INTO `servicios` VALUES (15, 'Servicio de medicina forence', 0, 2);
INSERT INTO `servicios` VALUES (16, 'Medicina 3.55', 0, 8);
INSERT INTO `servicios` VALUES (17, 'Medicina 3', 0, 2);
INSERT INTO `servicios` VALUES (18, 'Medicina 3', 0, 2);
INSERT INTO `servicios` VALUES (19, 'Medicina II', 1, 7);
INSERT INTO `servicios` VALUES (20, 'Medicina 8', 1, 3);
INSERT INTO `servicios` VALUES (21, 'Medicina 8', 1, 1);
INSERT INTO `servicios` VALUES (22, 'Medicina 8', 0, 3);
INSERT INTO `servicios` VALUES (23, 'Medicina 345454545', 0, 5);
INSERT INTO `servicios` VALUES (24, 'Medicina 345454545', 0, 2);
INSERT INTO `servicios` VALUES (25, 'Medicina 345454545', 1, 5);
INSERT INTO `servicios` VALUES (26, 'Medicina 345454545', 1, 5);
INSERT INTO `servicios` VALUES (27, 'Medicina 3.55', 0, 8);
INSERT INTO `servicios` VALUES (28, 'Medicina 345454545', 1, 5);

-- ----------------------------
-- Table structure for tipo_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `tipo_usuarios`;
CREATE TABLE `tipo_usuarios`  (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id_tipo_usuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tipo_usuarios
-- ----------------------------
INSERT INTO `tipo_usuarios` VALUES (1, 'Administrador', 1);
INSERT INTO `tipo_usuarios` VALUES (2, 'Jefe de Servicio', 1);
INSERT INTO `tipo_usuarios` VALUES (3, 'Jefe de Archivo', 1);
INSERT INTO `tipo_usuarios` VALUES (4, 'Recepcionista', 1);
INSERT INTO `tipo_usuarios` VALUES (5, 'Enfermeria', 1);
INSERT INTO `tipo_usuarios` VALUES (6, 'Supervision', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id_usuario` int(11) NOT NULL,
  `id_especialidad` int(11) NULL DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `usuario` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombres` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_creacion` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `estado` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  INDEX `id_especialidad`(`id_especialidad`) USING BTREE,
  INDEX `id_tipo_usuario`(`id_tipo_usuario`) USING BTREE,
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuarios` (`id_tipo_usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 2, 1, 'JD0007', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Jorge Alberto', 'De La Cruz Hernandez', '2018-10-11 00:00:00', 1);
INSERT INTO `usuarios` VALUES (2, 1, 1, 'DG0017', '', 'Douglas Ricardo', 'Guzman Barahona', '2018-10-19 13:46:49', 1);

-- ----------------------------
-- View structure for listar_cama
-- ----------------------------
DROP VIEW IF EXISTS `listar_cama`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_cama` AS SELECT camas.*, servicios.nombre_servicio AS nom_serv, servicios.id_servicio AS id_serv, servicios.nivel AS nivel
FROM camas
JOIN servicios
ON camas.id_servicio=servicios.id_servicio ;

-- ----------------------------
-- View structure for listar_especialidades
-- ----------------------------
DROP VIEW IF EXISTS `listar_especialidades`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_especialidades` AS SELECT * from especialidades ;

-- ----------------------------
-- View structure for listar_paciente
-- ----------------------------
DROP VIEW IF EXISTS `listar_paciente`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_paciente` AS SELECT * FROM pacientes ;

-- ----------------------------
-- View structure for listar_reservas
-- ----------------------------
DROP VIEW IF EXISTS `listar_reservas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_reservas` AS SELECT * FROM reservas ;

-- ----------------------------
-- View structure for listar_servicios
-- ----------------------------
DROP VIEW IF EXISTS `listar_servicios`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_servicios` AS SELECT * FROM servicios ;

-- ----------------------------
-- View structure for listar_tipo_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `listar_tipo_usuarios`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_tipo_usuarios` AS SELECT * FROM tipo_usuarios ;

-- ----------------------------
-- View structure for listar_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `listar_usuarios`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `listar_usuarios` AS SELECT usuarios.*, especialidades.nombre AS nom_espe, especialidades.id_especialidad AS id_espe, tipo_usuarios.nombre AS nom_tipo, tipo_usuarios.id_tipo_usuario AS id_tipo 
FROM usuarios
JOIN especialidades
ON usuarios.id_especialidad=especialidades.id_especialidad
JOIN tipo_usuarios
ON usuarios.id_tipo_usuario=tipo_usuarios.id_tipo_usuario ;

-- ----------------------------
-- Procedure structure for consultar_paciente_cama
-- ----------------------------
DROP PROCEDURE IF EXISTS `consultar_paciente_cama`;
delimiter ;;
CREATE PROCEDURE `consultar_paciente_cama`(pid_cama INT)
BEGIN
	
	
	DECLARE pid_paciente INT;
	
	SET pid_paciente=(SELECT id_paciente FROM reservas WHERE id_cama=pid_cama);
	
	SELECT * FROM pacientes WHERE id_paciente=pid_paciente;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for crud_calidad_paciente
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_calidad_paciente`;
delimiter ;;
CREATE PROCEDURE `crud_calidad_paciente`(indice INT ,id_paciente_ca int, pnombre VARCHAR(100))
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_camas
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_camas`;
delimiter ;;
CREATE PROCEDURE `crud_camas`(indice INT, pid_cama INT, pid_servicio INT, pcorrelativo VARCHAR(100), pestado VARCHAR(100), pobservaciones VARCHAR(250))
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_certificado
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_certificado`;
delimiter ;;
CREATE PROCEDURE `crud_certificado`(indice INT, pid_certificado VARCHAR(100), pid_detalle VARCHAR(100), pid_municipio INT, pcanton VARCHAR(100), plocalde_defuncion VARCHAR(250), pservicio VARCHAR(30), pid_etapa INT)
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_detalle_doctor
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_detalle_doctor`;
delimiter ;;
CREATE PROCEDURE `crud_detalle_doctor`(indice INT, pid int,pfecha_ingreso DATE, pfecha_defncion DATETIME, pcausa_defuncion_linea MEDIUMTEXT, pcausa_defuncion_intervalo_aproximado MEDIUMTEXT, pcausa_defuncion_otros_estado MEDIUMTEXT, pcausa_de_muerte VARCHAR(40), pasistencia_enfermedad VARCHAR(3), pdifuncion_por_medico VARCHAR(3), pdifuncion_medico_forense VARCHAR(3),pfirma_responsable VARCHAR(50))
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_especialidad
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_especialidad`;
delimiter ;;
CREATE PROCEDURE `crud_especialidad`(pnombre varchar(100),pestado varchar(10), indice int,pid_especialidad INT)
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_pacientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_pacientes`;
delimiter ;;
CREATE PROCEDURE `crud_pacientes`(numero_afi VARCHAR(8), dui VARCHAR(10), nom VARCHAR(100), ape VARCHAR(100), sex CHAR(1), esta VARCHAR(10), obser LONGTEXT, ed INT, ocu VARCHAR(100), estac VARCHAR(15), id_ca_pa INT, id_cer VARCHAR(100), indice INT ,id_pa INT)
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_servicios`;
delimiter ;;
CREATE PROCEDURE `crud_servicios`(indice INT,pid_servicios INT,pnombre_servicio VARCHAR(100),pestado INT,pnivel INT)
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
delimiter ;

-- ----------------------------
-- Procedure structure for crud_tipo_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `crud_tipo_usuario`;
delimiter ;;
CREATE PROCEDURE `crud_tipo_usuario`(id int, nom varchar(100), est int, indice int)
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
delimiter ;

-- ----------------------------
-- Procedure structure for estados_cama
-- ----------------------------
DROP PROCEDURE IF EXISTS `estados_cama`;
delimiter ;;
CREATE PROCEDURE `estados_cama`(pid_cama int, pestado varchar(10))
begin


update camas  set estado=pestado where id_cama=pid_cama;


end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ingreso_bitacora
-- ----------------------------
DROP PROCEDURE IF EXISTS `ingreso_bitacora`;
delimiter ;;
CREATE PROCEDURE `ingreso_bitacora`(pnumero_afiliacion VARCHAR(8),pnombre_paciente VARCHAR(100),papellido_paciente VARCHAR(100),pdui VARCHAR(10),psexo CHAR,pid_movimiento INT,
pedad INT, pcalidad_paciente VARCHAR(50),pservicio VARCHAR(100),pnivel VARCHAR(10),pcama VARCHAR(10),pusuario VARCHAR(100),phospital_traslado VARCHAR(100))
BEGIN


INSERT INTO bitacora (numero_afiliacion,nombre_paciente,apellidos_paciente ,dui, sexo, id_movimiento, edad,calidad_paciente,servicio,nivel,cama,usuario,fecha_movimiento,hospital_traslado) 
VALUES (pnumero_afiliacion,pnombre_paciente,papellidos_paciente ,pdui, psexo, pid_movimiento, pedad,pcalidad_paciente,pservicio,pnivel,pcama,pusuario,pfecha_movimiento,phospital_traslado);


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for listar_camas
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_camas`;
delimiter ;;
CREATE PROCEDURE `listar_camas`(indice INT)
BEGIN
		
	IF(indice=1)THEN
	
			SELECT * FROM camas;

	END IF;

	IF(indice=2)THEN

		SELECT * FROM camas WHERE estado='Disponible';

	END IF;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for listar_camas_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_camas_servicios`;
delimiter ;;
CREATE PROCEDURE `listar_camas_servicios`(pnivel INT)
BEGIN
	/*PROCEDIMIENTO PARA LISTAR CAMAS SEGUN NIVEL*/
	SELECT camas.* ,servicios.nombre_servicio, servicios.nivel FROM camas 
	INNER JOIN servicios
	ON camas.id_servicio=servicios.id_servicio
	WHERE servicios.nivel=pnivel;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for listar_pacientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_pacientes`;
delimiter ;;
CREATE PROCEDURE `listar_pacientes`(indice INT)
BEGIN
		
	IF(indice=1)THEN
	
			SELECT * FROM pacientes;

	END IF;

	IF(indice=2)THEN

		SELECT * FROM pacientes WHERE estado=1;

	END IF;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for listar_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_servicios`;
delimiter ;;
CREATE PROCEDURE `listar_servicios`(indice INT)
BEGIN 	

	IF(indice=1)THEN

			SELECT * FROM servicios;
		
	
	END IF;

	IF(indice=2)THEN

			SELECT * FROM servicios WHERE estado=1;

	END IF;
	

	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for listar_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `listar_usuarios`;
delimiter ;;
CREATE PROCEDURE `listar_usuarios`(indice INT)
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
delimiter ;

-- ----------------------------
-- Procedure structure for login
-- ----------------------------
DROP PROCEDURE IF EXISTS `login`;
delimiter ;;
CREATE PROCEDURE `login`(usu VARCHAR(7), contra VARCHAR(100))
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
delimiter ;

-- ----------------------------
-- Procedure structure for obtener_cama
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_cama`;
delimiter ;;
CREATE PROCEDURE `obtener_cama`(id int(11))
begin


select * from camas where id_cama=id;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for obtener_especialidad
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_especialidad`;
delimiter ;;
CREATE PROCEDURE `obtener_especialidad`(id int(11))
begin


select * from especialidades where id_especialidad=id;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for obtener_pacientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_pacientes`;
delimiter ;;
CREATE PROCEDURE `obtener_pacientes`(pid_paciente INT)
BEGIN
	
	SELECT * FROM pacientes WHERE id_paciente=pid_paciente;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for obtener_servicio
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_servicio`;
delimiter ;;
CREATE PROCEDURE `obtener_servicio`(pid_servicio INT)
BEGIN

	SELECT * FROM servicios WHERE id_servicio=pid_servicio;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for obtener_usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtener_usuarios`;
delimiter ;;
CREATE PROCEDURE `obtener_usuarios`(pid_usuario INT)
BEGIN
	
		SELECT * FROM usuarios WHERE id_usuario=pid_usuario;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for reestablecer_contrasena
-- ----------------------------
DROP PROCEDURE IF EXISTS `reestablecer_contrasena`;
delimiter ;;
CREATE PROCEDURE `reestablecer_contrasena`(pid_usuario VARCHAR(100), pclave VARCHAR(100))
BEGIN
		UPDATE usuarios SET clave=pclave WHERE id_usuario=pid_usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarios`;
delimiter ;;
CREATE PROCEDURE `usuarios`(pid_usuario INT, id_espe int, idtipo int, usu varchar(7), contra varchar(100), nom varchar(100), apell varchar(100), pestado INT, indice int)
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
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
