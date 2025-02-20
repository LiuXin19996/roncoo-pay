/*
 Navicat Premium Data Transfer

 Source Server         : VMware
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : 192.168.9.100:13306
 Source Schema         : roncoo_mini_pay_demo

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 20/02/2025 15:56:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_menu
-- ----------------------------
DROP TABLE IF EXISTS `pms_menu`;
CREATE TABLE `pms_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_leaf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` smallint NULL DEFAULT NULL,
  `parent_id` bigint NOT NULL,
  `target_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_menu
-- ----------------------------
INSERT INTO `pms_menu` VALUES (1, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '001', '权限管理', '##');
INSERT INTO `pms_menu` VALUES (2, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'cdgl', '00101', '菜单管理', 'pms/menu/list');
INSERT INTO `pms_menu` VALUES (3, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'qxgl', '00102', '权限管理', 'pms/permission/list');
INSERT INTO `pms_menu` VALUES (4, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'jsgl', '00103', '角色管理', 'pms/role/list');
INSERT INTO `pms_menu` VALUES (5, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 1, 'czygl', '00104', '操作员管理', 'pms/operator/list');
INSERT INTO `pms_menu` VALUES (10, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '002', '账户管理', '##');
INSERT INTO `pms_menu` VALUES (12, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 10, 'zhxx', '00201', '账户信息', 'account/list');
INSERT INTO `pms_menu` VALUES (13, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 10, 'zhlsxx', '00202', '账户历史信息', 'account/historyList');
INSERT INTO `pms_menu` VALUES (20, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '003', '用户管理', '##');
INSERT INTO `pms_menu` VALUES (22, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 20, 'yhxx', '00301', '用户信息', 'user/info/list');
INSERT INTO `pms_menu` VALUES (30, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '004', '支付管理', '##');
INSERT INTO `pms_menu` VALUES (32, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 30, 'zfcpgl', '00401', '支付产品信息', 'pay/product/list');
INSERT INTO `pms_menu` VALUES (33, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 30, 'yhzfpz', '00402', '用户支付配置', 'pay/config/list');
INSERT INTO `pms_menu` VALUES (40, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '005', '交易管理', '##');
INSERT INTO `pms_menu` VALUES (42, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 40, 'zfddgl', '00501', '支付订单管理', 'trade/listPaymentOrder');
INSERT INTO `pms_menu` VALUES (43, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 40, 'zfjjgl', '00502', '支付记录管理', 'trade/listPaymentRecord');
INSERT INTO `pms_menu` VALUES (47, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 40, 'jjjlgl', '00107', '进件记录管理', '/trade/micro/submit/record/list');
INSERT INTO `pms_menu` VALUES (50, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '006', '结算管理', '##');
INSERT INTO `pms_menu` VALUES (52, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 50, 'jsjlgl', '00601', '结算记录管理', 'sett/list');
INSERT INTO `pms_menu` VALUES (60, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'NO', 1, 0, '#', '007', '对账管理', '##');
INSERT INTO `pms_menu` VALUES (62, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 60, 'dzcclb', '00701', '对账差错列表', 'reconciliation/list/mistake');
INSERT INTO `pms_menu` VALUES (63, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 60, 'dzpclb', '00702', '对账批次列表', 'reconciliation/list/checkbatch');
INSERT INTO `pms_menu` VALUES (64, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '', 'YES', 2, 60, 'dzhcclb', '00703', '对账缓冲池列表', 'reconciliation/list/scratchPool');

-- ----------------------------
-- Table structure for pms_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `pms_menu_role`;
CREATE TABLE `pms_menu_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`role_id` ASC, `menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1062 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限与角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_menu_role
-- ----------------------------
INSERT INTO `pms_menu_role` VALUES (1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO `pms_menu_role` VALUES (1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO `pms_menu_role` VALUES (1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO `pms_menu_role` VALUES (1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO `pms_menu_role` VALUES (1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO `pms_menu_role` VALUES (1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10);
INSERT INTO `pms_menu_role` VALUES (1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12);
INSERT INTO `pms_menu_role` VALUES (1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13);
INSERT INTO `pms_menu_role` VALUES (1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20);
INSERT INTO `pms_menu_role` VALUES (1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 22);
INSERT INTO `pms_menu_role` VALUES (1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 30);
INSERT INTO `pms_menu_role` VALUES (1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32);
INSERT INTO `pms_menu_role` VALUES (1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33);
INSERT INTO `pms_menu_role` VALUES (1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 40);
INSERT INTO `pms_menu_role` VALUES (1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 42);
INSERT INTO `pms_menu_role` VALUES (1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 43);
INSERT INTO `pms_menu_role` VALUES (1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 47);
INSERT INTO `pms_menu_role` VALUES (1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50);
INSERT INTO `pms_menu_role` VALUES (1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52);
INSERT INTO `pms_menu_role` VALUES (1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60);
INSERT INTO `pms_menu_role` VALUES (1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 62);
INSERT INTO `pms_menu_role` VALUES (1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 63);
INSERT INTO `pms_menu_role` VALUES (1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 64);
INSERT INTO `pms_menu_role` VALUES (1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1);
INSERT INTO `pms_menu_role` VALUES (1032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO `pms_menu_role` VALUES (1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3);
INSERT INTO `pms_menu_role` VALUES (1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4);
INSERT INTO `pms_menu_role` VALUES (1035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5);
INSERT INTO `pms_menu_role` VALUES (1036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 10);
INSERT INTO `pms_menu_role` VALUES (1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 12);
INSERT INTO `pms_menu_role` VALUES (1038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13);
INSERT INTO `pms_menu_role` VALUES (1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 20);
INSERT INTO `pms_menu_role` VALUES (1040, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 22);
INSERT INTO `pms_menu_role` VALUES (1041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 30);
INSERT INTO `pms_menu_role` VALUES (1042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 32);
INSERT INTO `pms_menu_role` VALUES (1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 33);
INSERT INTO `pms_menu_role` VALUES (1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 40);
INSERT INTO `pms_menu_role` VALUES (1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 42);
INSERT INTO `pms_menu_role` VALUES (1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 43);
INSERT INTO `pms_menu_role` VALUES (1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 47);
INSERT INTO `pms_menu_role` VALUES (1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 50);
INSERT INTO `pms_menu_role` VALUES (1049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 52);
INSERT INTO `pms_menu_role` VALUES (1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 60);
INSERT INTO `pms_menu_role` VALUES (1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 62);
INSERT INTO `pms_menu_role` VALUES (1052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 63);
INSERT INTO `pms_menu_role` VALUES (1053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 64);

-- ----------------------------
-- Table structure for pms_operator
-- ----------------------------
DROP TABLE IF EXISTS `pms_operator`;
CREATE TABLE `pms_operator`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NOT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login_pwd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`login_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_operator
-- ----------------------------
INSERT INTO `pms_operator` VALUES (1, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '超级管理员', '超级管理员', '18620936193', 'admin', 'd3c59d25033dbf980d29554025c23a75', 'ADMIN', '8d78869f470951332959580424d4bf4f');
INSERT INTO `pms_operator` VALUES (2, 0, 'roncoo', '2016-06-03 11:07:43', 'guest', '2016-06-03 11:07:43', 'ACTIVE', '游客', '游客', '18926215592', 'guest', '3f0dbf580ee39ec03b632cb33935a363', 'USER', '183d9f2f0f2ce760e98427a5603d1c73');

-- ----------------------------
-- Table structure for pms_operator_log
-- ----------------------------
DROP TABLE IF EXISTS `pms_operator_log`;
CREATE TABLE `pms_operator_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NOT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operator_id` bigint NOT NULL,
  `operator_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `operate_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作类型（1:增加，2:修改，3:删除，4:查询）',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限_操作员操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_operator_log
-- ----------------------------

-- ----------------------------
-- Table structure for pms_permission
-- ----------------------------
DROP TABLE IF EXISTS `pms_permission`;
CREATE TABLE `pms_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NOT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `permission_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`permission` ASC) USING BTREE,
  INDEX `ak_key_3`(`permission_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_permission
-- ----------------------------
INSERT INTO `pms_permission` VALUES (1, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-查看', '权限管理-菜单-查看', 'pms:menu:view');
INSERT INTO `pms_permission` VALUES (2, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-添加', '权限管理-菜单-添加', 'pms:menu:add');
INSERT INTO `pms_permission` VALUES (3, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-查看', '权限管理-菜单-修改', 'pms:menu:edit');
INSERT INTO `pms_permission` VALUES (4, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-菜单-删除', '权限管理-菜单-删除', 'pms:menu:delete');
INSERT INTO `pms_permission` VALUES (11, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-查看', '权限管理-权限-查看', 'pms:permission:view');
INSERT INTO `pms_permission` VALUES (12, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-添加', '权限管理-权限-添加', 'pms:permission:add');
INSERT INTO `pms_permission` VALUES (13, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-修改', '权限管理-权限-修改', 'pms:permission:edit');
INSERT INTO `pms_permission` VALUES (14, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-权限-删除', '权限管理-权限-删除', 'pms:permission:delete');
INSERT INTO `pms_permission` VALUES (21, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-查看', '权限管理-角色-查看', 'pms:role:view');
INSERT INTO `pms_permission` VALUES (22, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-添加', '权限管理-角色-添加', 'pms:role:add');
INSERT INTO `pms_permission` VALUES (23, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-修改', '权限管理-角色-修改', 'pms:role:edit');
INSERT INTO `pms_permission` VALUES (24, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-删除', '权限管理-角色-删除', 'pms:role:delete');
INSERT INTO `pms_permission` VALUES (25, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-角色-分配权限', '权限管理-角色-分配权限', 'pms:role:assignpermission');
INSERT INTO `pms_permission` VALUES (31, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-查看', '权限管理-操作员-查看', 'pms:operator:view');
INSERT INTO `pms_permission` VALUES (32, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-添加', '权限管理-操作员-添加', 'pms:operator:add');
INSERT INTO `pms_permission` VALUES (33, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-查看', '权限管理-操作员-修改', 'pms:operator:edit');
INSERT INTO `pms_permission` VALUES (34, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-冻结与解冻', '权限管理-操作员-冻结与解冻', 'pms:operator:changestatus');
INSERT INTO `pms_permission` VALUES (35, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '权限管理-操作员-重置密码', '权限管理-操作员-重置密码', 'pms:operator:resetpwd');
INSERT INTO `pms_permission` VALUES (51, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-查看', '账户管理-账户-查看', 'account:accountInfo:view');
INSERT INTO `pms_permission` VALUES (52, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-添加', '账户管理-账户-添加', 'account:accountInfo:add');
INSERT INTO `pms_permission` VALUES (53, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-查看', '账户管理-账户-修改', 'account:accountInfo:edit');
INSERT INTO `pms_permission` VALUES (54, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户-删除', '账户管理-账户-删除', 'account:accountInfo:delete');
INSERT INTO `pms_permission` VALUES (61, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '账户管理-账户历史-查看', '账户管理-账户历史-查看', 'account:accountHistory:view');
INSERT INTO `pms_permission` VALUES (71, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-查看', '用户管理-用户信息-查看', 'user:userInfo:view');
INSERT INTO `pms_permission` VALUES (72, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-添加', '用户管理-用户信息-添加', 'user:userInfo:add');
INSERT INTO `pms_permission` VALUES (73, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-查看', '用户管理-用户信息-修改', 'user:userInfo:edit');
INSERT INTO `pms_permission` VALUES (74, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '用户管理-用户信息-删除', '用户管理-用户信息-删除', 'user:userInfo:delete');
INSERT INTO `pms_permission` VALUES (81, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-查看', '支付管理-支付产品-查看', 'pay:product:view');
INSERT INTO `pms_permission` VALUES (82, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-添加', '支付管理-支付产品-添加', 'pay:product:add');
INSERT INTO `pms_permission` VALUES (83, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-查看', '支付管理-支付产品-修改', 'pay:product:edit');
INSERT INTO `pms_permission` VALUES (84, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付产品-删除', '支付管理-支付产品-删除', 'pay:product:delete');
INSERT INTO `pms_permission` VALUES (85, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-查看', '支付管理-支付方式-查看', 'pay:way:view');
INSERT INTO `pms_permission` VALUES (86, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-添加', '支付管理-支付方式-添加', 'pay:way:add');
INSERT INTO `pms_permission` VALUES (87, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-查看', '支付管理-支付方式-修改', 'pay:way:edit');
INSERT INTO `pms_permission` VALUES (88, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付方式-删除', '支付管理-支付方式-删除', 'pay:way:delete');
INSERT INTO `pms_permission` VALUES (91, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-查看', '支付管理-支付配置-查看', 'pay:config:view');
INSERT INTO `pms_permission` VALUES (92, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-添加', '支付管理-支付配置-添加', 'pay:config:add');
INSERT INTO `pms_permission` VALUES (93, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-查看', '支付管理-支付配置-修改', 'pay:config:edit');
INSERT INTO `pms_permission` VALUES (94, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '支付管理-支付配置-删除', '支付管理-支付配置-删除', 'pay:config:delete');
INSERT INTO `pms_permission` VALUES (101, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-查看', '交易管理-订单-查看', 'trade:order:view');
INSERT INTO `pms_permission` VALUES (102, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-添加', '交易管理-订单-添加', 'trade:order:add');
INSERT INTO `pms_permission` VALUES (103, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-查看', '交易管理-订单-修改', 'trade:order:edit');
INSERT INTO `pms_permission` VALUES (104, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-订单-删除', '交易管理-订单-删除', 'trade:order:delete');
INSERT INTO `pms_permission` VALUES (111, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-查看', '交易管理-记录-查看', 'trade:record:view');
INSERT INTO `pms_permission` VALUES (112, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-添加', '交易管理-记录-添加', 'trade:record:add');
INSERT INTO `pms_permission` VALUES (113, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-查看', '交易管理-记录-修改', 'trade:record:edit');
INSERT INTO `pms_permission` VALUES (114, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '交易管理-记录-删除', '交易管理-记录-删除', 'trade:record:delete');
INSERT INTO `pms_permission` VALUES (121, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-查看', '结算管理-记录-查看', 'sett:record:view');
INSERT INTO `pms_permission` VALUES (122, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-添加', '结算管理-记录-添加', 'sett:record:add');
INSERT INTO `pms_permission` VALUES (123, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-查看', '结算管理-记录-修改', 'sett:record:edit');
INSERT INTO `pms_permission` VALUES (124, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '结算管理-记录-删除', '结算管理-记录-删除', 'sett:record:delete');
INSERT INTO `pms_permission` VALUES (131, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-查看', '对账管理-差错-查看', 'recon:mistake:view');
INSERT INTO `pms_permission` VALUES (132, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-添加', '对账管理-差错-添加', 'recon:mistake:add');
INSERT INTO `pms_permission` VALUES (133, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-查看', '对账管理-差错-修改', 'recon:mistake:edit');
INSERT INTO `pms_permission` VALUES (134, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-差错-删除', '对账管理-差错-删除', 'recon:mistake:delete');
INSERT INTO `pms_permission` VALUES (141, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-查看', '对账管理-批次-查看', 'recon:batch:view');
INSERT INTO `pms_permission` VALUES (142, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-添加', '对账管理-批次-添加', 'recon:batch:add');
INSERT INTO `pms_permission` VALUES (143, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-查看', '对账管理-批次-修改', 'recon:batch:edit');
INSERT INTO `pms_permission` VALUES (144, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-批次-删除', '对账管理-批次-删除', 'recon:batch:delete');
INSERT INTO `pms_permission` VALUES (151, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-查看', '对账管理-缓冲池-查看', 'recon:scratchPool:view');
INSERT INTO `pms_permission` VALUES (152, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-添加', '对账管理-缓冲池-添加', 'recon:scratchPool:add');
INSERT INTO `pms_permission` VALUES (153, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-查看', '对账管理-缓冲池-修改', 'recon:scratchPool:edit');
INSERT INTO `pms_permission` VALUES (154, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '对账管理-缓冲池-删除', '对账管理-缓冲池-删除', 'recon:scratchPool:delete');
INSERT INTO `pms_permission` VALUES (266, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '进件记录管理--查看', '进件记录管理--查看', 'trade:micro:submit:record:list');
INSERT INTO `pms_permission` VALUES (267, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '进件记录管理--添加', '进件记录管理--添加', 'trade:micro:submit:record:add');
INSERT INTO `pms_permission` VALUES (268, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '进件记录管理--查询', '进件记录管理--查询', 'trade:micro:submit:record:query');

-- ----------------------------
-- Table structure for pms_role
-- ----------------------------
DROP TABLE IF EXISTS `pms_role`;
CREATE TABLE `pms_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色类型（1:超级管理员角色，0:普通操作员角色）',
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`role_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_role
-- ----------------------------
INSERT INTO `pms_role` VALUES (1, 0, 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', 'ACTIVE', '超级管理员角色', 'admin', '超级管理员角色');
INSERT INTO `pms_role` VALUES (2, 0, 'roncoo', '2016-06-03 11:07:43', 'guest', '2016-06-03 11:07:43', 'ACTIVE', '游客角色', 'guest', '游客角色');

-- ----------------------------
-- Table structure for pms_role_operator
-- ----------------------------
DROP TABLE IF EXISTS `pms_role_operator`;
CREATE TABLE `pms_role_operator`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NOT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_id` bigint NOT NULL,
  `operator_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`role_id` ASC, `operator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作员与角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_role_operator
-- ----------------------------
INSERT INTO `pms_role_operator` VALUES (1, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 1, 1);
INSERT INTO `pms_role_operator` VALUES (2, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 1);
INSERT INTO `pms_role_operator` VALUES (3, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 2);

-- ----------------------------
-- Table structure for pms_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `pms_role_permission`;
CREATE TABLE `pms_role_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `version` bigint NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`role_id` ASC, `permission_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1144 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限与角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_role_permission
-- ----------------------------
INSERT INTO `pms_role_permission` VALUES (1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 61);
INSERT INTO `pms_role_permission` VALUES (1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52);
INSERT INTO `pms_role_permission` VALUES (1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 54);
INSERT INTO `pms_role_permission` VALUES (1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 53);
INSERT INTO `pms_role_permission` VALUES (1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 51);
INSERT INTO `pms_role_permission` VALUES (1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 92);
INSERT INTO `pms_role_permission` VALUES (1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 94);
INSERT INTO `pms_role_permission` VALUES (1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 93);
INSERT INTO `pms_role_permission` VALUES (1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 91);
INSERT INTO `pms_role_permission` VALUES (1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 82);
INSERT INTO `pms_role_permission` VALUES (1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 84);
INSERT INTO `pms_role_permission` VALUES (1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 83);
INSERT INTO `pms_role_permission` VALUES (1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 81);
INSERT INTO `pms_role_permission` VALUES (1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 86);
INSERT INTO `pms_role_permission` VALUES (1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 88);
INSERT INTO `pms_role_permission` VALUES (1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 87);
INSERT INTO `pms_role_permission` VALUES (1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 85);
INSERT INTO `pms_role_permission` VALUES (1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO `pms_role_permission` VALUES (1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO `pms_role_permission` VALUES (1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO `pms_role_permission` VALUES (1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO `pms_role_permission` VALUES (1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32);
INSERT INTO `pms_role_permission` VALUES (1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 34);
INSERT INTO `pms_role_permission` VALUES (1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33);
INSERT INTO `pms_role_permission` VALUES (1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35);
INSERT INTO `pms_role_permission` VALUES (1025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31);
INSERT INTO `pms_role_permission` VALUES (1026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12);
INSERT INTO `pms_role_permission` VALUES (1027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14);
INSERT INTO `pms_role_permission` VALUES (1028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13);
INSERT INTO `pms_role_permission` VALUES (1029, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11);
INSERT INTO `pms_role_permission` VALUES (1030, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 22);
INSERT INTO `pms_role_permission` VALUES (1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25);
INSERT INTO `pms_role_permission` VALUES (1032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24);
INSERT INTO `pms_role_permission` VALUES (1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23);
INSERT INTO `pms_role_permission` VALUES (1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 21);
INSERT INTO `pms_role_permission` VALUES (1035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 142);
INSERT INTO `pms_role_permission` VALUES (1036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 144);
INSERT INTO `pms_role_permission` VALUES (1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 143);
INSERT INTO `pms_role_permission` VALUES (1038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 141);
INSERT INTO `pms_role_permission` VALUES (1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 132);
INSERT INTO `pms_role_permission` VALUES (1040, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 134);
INSERT INTO `pms_role_permission` VALUES (1041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 133);
INSERT INTO `pms_role_permission` VALUES (1042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 131);
INSERT INTO `pms_role_permission` VALUES (1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 152);
INSERT INTO `pms_role_permission` VALUES (1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 154);
INSERT INTO `pms_role_permission` VALUES (1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 153);
INSERT INTO `pms_role_permission` VALUES (1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 151);
INSERT INTO `pms_role_permission` VALUES (1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 122);
INSERT INTO `pms_role_permission` VALUES (1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 124);
INSERT INTO `pms_role_permission` VALUES (1049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 123);
INSERT INTO `pms_role_permission` VALUES (1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 121);
INSERT INTO `pms_role_permission` VALUES (1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 267);
INSERT INTO `pms_role_permission` VALUES (1052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 266);
INSERT INTO `pms_role_permission` VALUES (1053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 268);
INSERT INTO `pms_role_permission` VALUES (1054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 102);
INSERT INTO `pms_role_permission` VALUES (1055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 104);
INSERT INTO `pms_role_permission` VALUES (1056, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 103);
INSERT INTO `pms_role_permission` VALUES (1057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 101);
INSERT INTO `pms_role_permission` VALUES (1058, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 112);
INSERT INTO `pms_role_permission` VALUES (1059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 114);
INSERT INTO `pms_role_permission` VALUES (1060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 113);
INSERT INTO `pms_role_permission` VALUES (1061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 111);
INSERT INTO `pms_role_permission` VALUES (1062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 72);
INSERT INTO `pms_role_permission` VALUES (1063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 74);
INSERT INTO `pms_role_permission` VALUES (1064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 73);
INSERT INTO `pms_role_permission` VALUES (1065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 71);
INSERT INTO `pms_role_permission` VALUES (1127, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 1);
INSERT INTO `pms_role_permission` VALUES (1128, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 11);
INSERT INTO `pms_role_permission` VALUES (1129, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 21);
INSERT INTO `pms_role_permission` VALUES (1130, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 31);
INSERT INTO `pms_role_permission` VALUES (1131, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 41);
INSERT INTO `pms_role_permission` VALUES (1132, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 51);
INSERT INTO `pms_role_permission` VALUES (1133, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 61);
INSERT INTO `pms_role_permission` VALUES (1134, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 71);
INSERT INTO `pms_role_permission` VALUES (1135, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 81);
INSERT INTO `pms_role_permission` VALUES (1136, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 85);
INSERT INTO `pms_role_permission` VALUES (1137, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 91);
INSERT INTO `pms_role_permission` VALUES (1138, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 101);
INSERT INTO `pms_role_permission` VALUES (1139, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 111);
INSERT INTO `pms_role_permission` VALUES (1140, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 121);
INSERT INTO `pms_role_permission` VALUES (1141, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 131);
INSERT INTO `pms_role_permission` VALUES (1142, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 141);
INSERT INTO `pms_role_permission` VALUES (1143, 0, 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', 'ACTIVE', '', 2, 151);

-- ----------------------------
-- Table structure for rp_account
-- ----------------------------
DROP TABLE IF EXISTS `rp_account`;
CREATE TABLE `rp_account`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(20, 6) NOT NULL,
  `unbalance` decimal(20, 6) NOT NULL,
  `security_money` decimal(20, 6) NOT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `total_income` decimal(20, 6) NOT NULL,
  `total_expend` decimal(20, 6) NOT NULL,
  `today_income` decimal(20, 6) NOT NULL,
  `today_expend` decimal(20, 6) NOT NULL,
  `account_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sett_amount` decimal(20, 6) NOT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资金账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_account
-- ----------------------------
INSERT INTO `rp_account` VALUES ('09849041d138420b9d4fe03b070a6e8a', '2025-02-20 15:53:50', '2025-02-20 15:53:50', 0, NULL, '91892482780364345347', 0.000000, 0.000000, 0.000000, 'ACTIVE', 0.000000, 0.000000, 0.000000, 0.000000, '0', 0.000000, '81892482780364345346');

-- ----------------------------
-- Table structure for rp_account_check_batch
-- ----------------------------
DROP TABLE IF EXISTS `rp_account_check_batch`;
CREATE TABLE `rp_account_check_batch`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `batch_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_date` date NOT NULL,
  `bill_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `handle_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mistake_count` int NULL DEFAULT NULL,
  `unhandle_mistake_count` int NULL DEFAULT NULL,
  `trade_count` int NULL DEFAULT NULL,
  `bank_trade_count` int NULL DEFAULT NULL,
  `trade_amount` decimal(20, 6) NULL DEFAULT NULL,
  `bank_trade_amount` decimal(20, 6) NULL DEFAULT NULL,
  `refund_amount` decimal(20, 6) NULL DEFAULT NULL,
  `bank_refund_amount` decimal(20, 6) NULL DEFAULT NULL,
  `bank_fee` decimal(20, 6) NULL DEFAULT NULL,
  `org_check_file_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `release_check_file_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `release_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `check_fail_msg` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_err_msg` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '对账批次表 rp_account_check_batch' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_account_check_batch
-- ----------------------------

-- ----------------------------
-- Table structure for rp_account_check_mistake
-- ----------------------------
DROP TABLE IF EXISTS `rp_account_check_mistake`;
CREATE TABLE `rp_account_check_mistake`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `account_check_batch_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_date` date NOT NULL,
  `bank_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_time` datetime NULL DEFAULT NULL,
  `merchant_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trade_time` datetime NULL DEFAULT NULL,
  `trx_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_amount` decimal(20, 6) NULL DEFAULT NULL,
  `refund_amount` decimal(20, 6) NULL DEFAULT NULL,
  `trade_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fee` decimal(20, 6) NULL DEFAULT NULL,
  `bank_trade_time` datetime NULL DEFAULT NULL,
  `bank_order_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_trx_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_trade_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_amount` decimal(20, 6) NULL DEFAULT NULL,
  `bank_refund_amount` decimal(20, 6) NULL DEFAULT NULL,
  `bank_fee` decimal(20, 6) NULL DEFAULT NULL,
  `err_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `handle_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `handle_value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `handle_remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operator_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operator_account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '对账差错表 rp_account_check_mistake' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_account_check_mistake
-- ----------------------------

-- ----------------------------
-- Table structure for rp_account_check_mistake_scratch_pool
-- ----------------------------
DROP TABLE IF EXISTS `rp_account_check_mistake_scratch_pool`;
CREATE TABLE `rp_account_check_mistake_scratch_pool`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户订单号',
  `trx_no` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付流水号',
  `bank_order_no` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行流水号',
  `order_amount` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '订单金额',
  `plat_income` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台收入',
  `fee_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '费率',
  `plat_cost` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台成本',
  `plat_profit` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台利润',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  `pay_way_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付通道编号',
  `pay_way_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付通道名称',
  `pay_success_time` datetime NULL DEFAULT NULL COMMENT '支付成功时间',
  `complete_time` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `is_refund` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` smallint NULL DEFAULT 0 COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20, 6) NULL DEFAULT NULL COMMENT '成功退款总金额',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `batch_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bill_date` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '差错暂存池' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_account_check_mistake_scratch_pool
-- ----------------------------

-- ----------------------------
-- Table structure for rp_account_history
-- ----------------------------
DROP TABLE IF EXISTS `rp_account_history`;
CREATE TABLE `rp_account_history`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(20, 6) NOT NULL,
  `balance` decimal(20, 6) NOT NULL,
  `fund_direction` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_allow_sett` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_complete_sett` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `request_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_trx_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trx_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `risk_day` int NULL DEFAULT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资金账户流水表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_account_history
-- ----------------------------

-- ----------------------------
-- Table structure for rp_micro_submit_record
-- ----------------------------
DROP TABLE IF EXISTS `rp_micro_submit_record`;
CREATE TABLE `rp_micro_submit_record`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `business_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业务申请编号',
  `sub_mch_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小微商户号',
  `id_card_copy` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证人像面照片',
  `id_card_national` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证国徽面照片',
  `id_card_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证姓名',
  `id_card_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号码',
  `id_card_valid_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证有效期限',
  `account_bank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开户名称',
  `bank_address_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开户银行省市编码',
  `account_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行账号',
  `store_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '门店名称',
  `store_address_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '门店省市编码',
  `store_street` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '门店街道名称',
  `store_entrance_pic` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '门店门口照片',
  `indoor_pic` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店内环境照片',
  `merchant_shortname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户简称',
  `service_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客服电话',
  `product_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '服务描述',
  `rate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '费率',
  `contact_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小微商户进件记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_micro_submit_record
-- ----------------------------

-- ----------------------------
-- Table structure for rp_notify_record
-- ----------------------------
DROP TABLE IF EXISTS `rp_notify_record`;
CREATE TABLE `rp_notify_record`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `version` int NOT NULL,
  `create_time` datetime NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `notify_times` int NOT NULL,
  `limit_notify_times` int NOT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `merchant_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '100:成功 101:失败',
  `notify_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '通知类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ak_key_2`(`merchant_order_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知记录表 rp_notify_record' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_notify_record
-- ----------------------------

-- ----------------------------
-- Table structure for rp_notify_record_log
-- ----------------------------
DROP TABLE IF EXISTS `rp_notify_record_log`;
CREATE TABLE `rp_notify_record_log`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `version` int NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `create_time` datetime NOT NULL,
  `notify_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `request` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `merchant_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户订单号',
  `http_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'http状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知记录日志表 rp_notify_record_log' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_notify_record_log
-- ----------------------------

-- ----------------------------
-- Table structure for rp_pay_product
-- ----------------------------
DROP TABLE IF EXISTS `rp_pay_product`;
CREATE TABLE `rp_pay_product`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付产品名称',
  `audit_status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_pay_product
-- ----------------------------

-- ----------------------------
-- Table structure for rp_pay_way
-- ----------------------------
DROP TABLE IF EXISTS `rp_pay_way`;
CREATE TABLE `rp_pay_way`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `version` bigint NOT NULL DEFAULT 0 COMMENT 'version',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `pay_way_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式名称',
  `pay_type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付类型名称',
  `pay_product_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付产品编号',
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态(100:正常状态,101非正常状态)',
  `sorts` int NULL DEFAULT 1000 COMMENT '排序(倒序排序,默认值1000)',
  `pay_rate` double NOT NULL COMMENT '商户支付费率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付方式' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_pay_way
-- ----------------------------

-- ----------------------------
-- Table structure for rp_refund_record
-- ----------------------------
DROP TABLE IF EXISTS `rp_refund_record`;
CREATE TABLE `rp_refund_record`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `version` int NOT NULL COMMENT '版本号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `org_merchant_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原商户订单号',
  `org_trx_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原支付流水号',
  `org_bank_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原银行订单号',
  `org_bank_trx_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原银行流水号',
  `merchant_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商家编号',
  `org_product_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原商品名称',
  `org_biz_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原业务类型',
  `org_payment_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原支付方式类型',
  `refund_amount` decimal(20, 6) NULL DEFAULT NULL COMMENT '订单退款金额',
  `refund_trx_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退款流水号',
  `refund_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退款订单号',
  `bank_refund_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行退款订单号',
  `bank_refund_trx_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行退款流水号',
  `result_notify_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款结果通知url',
  `refund_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款状态',
  `refund_from` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款来源（分发平台）',
  `refund_way` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款方式',
  `refund_request_time` datetime NULL DEFAULT NULL COMMENT '退款请求时间',
  `refund_success_time` datetime NULL DEFAULT NULL COMMENT ' 退款成功时间',
  `refund_complete_time` datetime NULL DEFAULT NULL COMMENT '退款完成时间',
  `request_apply_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款请求,申请人登录名',
  `request_apply_user_name` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款请求,申请人姓名',
  `refund_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `remark` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ak_key_2`(`refund_trx_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退款记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_refund_record
-- ----------------------------

-- ----------------------------
-- Table structure for rp_sett_daily_collect
-- ----------------------------
DROP TABLE IF EXISTS `rp_sett_daily_collect`;
CREATE TABLE `rp_sett_daily_collect`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `account_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账户编号',
  `user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `collect_date` date NOT NULL COMMENT '汇总日期',
  `collect_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '汇总类型(参考枚举:settdailycollecttypeenum)',
  `total_amount` decimal(24, 10) NOT NULL COMMENT '交易总金额',
  `total_count` int NOT NULL COMMENT '交易总笔数',
  `sett_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结算状态(参考枚举:settdailycollectstatusenum)',
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `risk_day` int NULL DEFAULT NULL COMMENT '风险预存期天数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '每日待结算汇总' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_sett_daily_collect
-- ----------------------------

-- ----------------------------
-- Table structure for rp_sett_record
-- ----------------------------
DROP TABLE IF EXISTS `rp_sett_record`;
CREATE TABLE `rp_sett_record`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `edit_time` datetime NOT NULL COMMENT '修改时间',
  `sett_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结算发起方式(参考settmodetypeenum)',
  `account_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账户编号',
  `user_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `user_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  `sett_date` date NULL DEFAULT NULL COMMENT '结算日期',
  `bank_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行编码',
  `bank_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行名称',
  `bank_account_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户名',
  `bank_account_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户账户',
  `bank_account_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户账户',
  `country` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行所在国家',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行所在省份',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行所在城市',
  `areas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行所在区',
  `bank_account_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行全称',
  `mobile_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款人手机号',
  `sett_amount` decimal(24, 10) NULL DEFAULT NULL COMMENT '结算金额',
  `sett_fee` decimal(16, 6) NULL DEFAULT NULL COMMENT '结算手续费',
  `remit_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '结算打款金额',
  `sett_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结算状态(参考枚举:settrecordstatusenum)',
  `remit_confirm_time` datetime NULL DEFAULT NULL COMMENT '打款确认时间',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `remit_remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '打款备注',
  `operator_loginname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作员登录名',
  `operator_realname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作员姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '结算记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_sett_record
-- ----------------------------

-- ----------------------------
-- Table structure for rp_sett_record_annex
-- ----------------------------
DROP TABLE IF EXISTS `rp_sett_record_annex`;
CREATE TABLE `rp_sett_record_annex`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_delete` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `annex_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `annex_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `settlement_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_sett_record_annex
-- ----------------------------

-- ----------------------------
-- Table structure for rp_trade_payment_order
-- ----------------------------
DROP TABLE IF EXISTS `rp_trade_payment_order`;
CREATE TABLE `rp_trade_payment_order`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态(参考枚举:orderstatusenum)',
  `product_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户订单号',
  `order_amount` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '订单金额',
  `order_from` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单来源',
  `merchant_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户编号',
  `order_time` datetime NULL DEFAULT NULL COMMENT '下单时间',
  `order_date` date NULL DEFAULT NULL COMMENT '下单日期',
  `order_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '下单ip(客户端ip,在网关页面获取)',
  `order_referer_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `return_url` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面回调通知url',
  `notify_url` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后台异步通知url',
  `cancel_reason` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单撤销原因',
  `order_period` smallint NULL DEFAULT NULL COMMENT '订单有效期(单位分钟)',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '到期时间',
  `pay_way_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付备注',
  `trx_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `trx_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付流水号',
  `pay_type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付类型名称',
  `fund_into_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资金流入类型',
  `is_refund` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` int NULL DEFAULT 0 COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20, 6) NULL DEFAULT NULL COMMENT '成功退款总金额',
  `field1` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field3` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field4` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field5` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ak_key_2`(`merchant_order_no` ASC, `merchant_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'roncoo pay 龙果支付 支付订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_trade_payment_order
-- ----------------------------

-- ----------------------------
-- Table structure for rp_trade_payment_record
-- ----------------------------
DROP TABLE IF EXISTS `rp_trade_payment_record`;
CREATE TABLE `rp_trade_payment_record`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `version` int NOT NULL DEFAULT 0 COMMENT '版本号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `creater` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `merchant_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户订单号',
  `trx_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付流水号',
  `bank_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行订单号',
  `bank_trx_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行流水号',
  `merchant_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `merchant_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商家编号',
  `payer_user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款人编号',
  `payer_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款人名称',
  `payer_pay_amount` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '付款方支付金额',
  `payer_fee` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '付款方手续费',
  `payer_account_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款方账户类型(参考账户类型枚举:accounttypeenum)',
  `receiver_user_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款人编号',
  `receiver_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `receiver_pay_amount` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '收款方支付金额',
  `receiver_fee` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '收款方手续费',
  `receiver_account_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款方账户类型(参考账户类型枚举:accounttypeenum)',
  `order_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '下单ip(客户端ip,从网关中获取)',
  `order_referer_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `order_amount` decimal(20, 6) NULL DEFAULT 0.000000 COMMENT '订单金额',
  `plat_income` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台收入',
  `fee_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '费率',
  `plat_cost` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台成本',
  `plat_profit` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台利润',
  `return_url` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面回调通知url',
  `notify_url` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后台异步通知url',
  `pay_way_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式名称',
  `pay_success_time` datetime NULL DEFAULT NULL COMMENT '支付成功时间',
  `complete_time` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `is_refund` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '101' COMMENT '是否退款(100:是,101:否,默认值为:101)',
  `refund_times` int NULL DEFAULT 0 COMMENT '退款次数(默认值为:0)',
  `success_refund_amount` decimal(20, 6) NULL DEFAULT NULL COMMENT '成功退款总金额',
  `trx_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `order_from` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单来源',
  `pay_type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付类型编号',
  `pay_type_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付类型名称',
  `fund_into_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资金流入类型',
  `remark` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `field1` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field3` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field4` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field5` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_return_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行返回信息',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ak_key_2`(`trx_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_trade_payment_record
-- ----------------------------

-- ----------------------------
-- Table structure for rp_user_bank_account
-- ----------------------------
DROP TABLE IF EXISTS `rp_user_bank_account`;
CREATE TABLE `rp_user_bank_account`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `card_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `card_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `areas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `street` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_account_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户银行账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_user_bank_account
-- ----------------------------

-- ----------------------------
-- Table structure for rp_user_info
-- ----------------------------
DROP TABLE IF EXISTS `rp_user_info`;
CREATE TABLE `rp_user_info`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '123456' COMMENT '支付密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ak_key_2`(`account_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '该表用来存放用户的基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_user_info
-- ----------------------------
INSERT INTO `rp_user_info` VALUES ('2189fc91191149f0978d9934e38d0969', '2025-02-20 15:53:50', 'ACTIVE', '81892482780364345346', 'admin', '91892482780364345347', '18681693421', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for rp_user_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `rp_user_pay_config`;
CREATE TABLE `rp_user_pay_config`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `audit_status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_auto_sett` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'no',
  `product_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付产品编号',
  `product_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付产品名称',
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `risk_day` int NULL DEFAULT NULL,
  `pay_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fund_into_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_secret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `security_rating` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'MD5' COMMENT '安全等级',
  `merchant_server_ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户服务器IP',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_user_pay_config
-- ----------------------------

-- ----------------------------
-- Table structure for rp_user_pay_info
-- ----------------------------
DROP TABLE IF EXISTS `rp_user_pay_info`;
CREATE TABLE `rp_user_pay_info`  (
  `id_` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `edit_time` datetime NULL DEFAULT NULL,
  `version` bigint NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `app_sectet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `merchant_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `app_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `partner_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_way_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式编号',
  `pay_way_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式名称',
  `offline_app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rsa_private_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rsa_public_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '该表用来存放用户开通的第三方支付信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_user_pay_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
