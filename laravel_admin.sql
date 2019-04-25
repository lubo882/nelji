/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : laravel_admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-25 19:24:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Dashboard', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户信息', 'fa-users', 'auth/users', null, null, '2019-04-24 09:02:52');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色设置', 'fa-user', 'auth/roles', null, null, '2019-04-24 09:02:59');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限设置', 'fa-ban', 'auth/permissions', null, null, '2019-04-24 09:02:44');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2019-04-24 09:03:10');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '日志设置', 'fa-history', 'auth/logs', null, null, '2019-04-24 09:04:09');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '公司网站', 'fa fa-home', null, null, '2019-04-24 09:10:16', '2019-04-25 06:18:41');
INSERT INTO `admin_menu` VALUES ('9', '8', '10', '文章分类', 'fa-filter', 'website/categories', null, '2019-04-25 03:21:35', '2019-04-25 06:18:41');
INSERT INTO `admin_menu` VALUES ('10', '8', '9', '文章列表', 'fa-align-justify', 'website/articles', null, '2019-04-25 03:24:37', '2019-04-25 06:18:41');
INSERT INTO `admin_menu` VALUES ('11', '8', '0', '轮播图', 'fa-image', 'website/slide_images', null, '2019-04-25 09:18:34', '2019-04-25 09:23:08');
INSERT INTO `admin_menu` VALUES ('12', '8', '0', 'SOE', 'fa-cog', 'website/setting', null, '2019-04-25 10:28:30', '2019-04-25 10:28:30');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 08:55:16', '2019-04-24 08:55:16');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 08:56:54', '2019-04-24 08:56:54');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-24 09:01:15', '2019-04-24 09:01:15');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:01:29', '2019-04-24 09:01:29');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:01:30', '2019-04-24 09:01:30');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:01:33', '2019-04-24 09:01:33');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:01:37', '2019-04-24 09:01:37');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:01:48', '2019-04-24 09:01:48');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:01:48', '2019-04-24 09:01:48');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:01:50', '2019-04-24 09:01:50');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:01:58', '2019-04-24 09:01:58');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:02:02', '2019-04-24 09:02:02');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:02:06', '2019-04-24 09:02:06');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:02:18', '2019-04-24 09:02:18');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:02:19', '2019-04-24 09:02:19');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:02:20', '2019-04-24 09:02:20');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:02:34', '2019-04-24 09:02:34');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u8bbe\\u7f6e\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:02:44', '2019-04-24 09:02:44');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:02:45', '2019-04-24 09:02:45');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:02:48', '2019-04-24 09:02:48');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u4fe1\\u606f\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:02:52', '2019-04-24 09:02:52');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:02:52', '2019-04-24 09:02:52');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:02:55', '2019-04-24 09:02:55');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u8bbe\\u7f6e\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:02:59', '2019-04-24 09:02:59');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:02:59', '2019-04-24 09:02:59');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:03:03', '2019-04-24 09:03:03');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:03:10', '2019-04-24 09:03:10');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:03:10', '2019-04-24 09:03:10');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:03:48', '2019-04-24 09:03:48');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:03:57', '2019-04-24 09:03:57');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\\u8bbe\\u7f6e\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:04:08', '2019-04-24 09:04:08');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:04:09', '2019-04-24 09:04:09');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:04:13', '2019-04-24 09:04:13');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '[]', '2019-04-24 09:04:26', '2019-04-24 09:04:26');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:04:32', '2019-04-24 09:04:32');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:09:52', '2019-04-24 09:09:52');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:09:57', '2019-04-24 09:09:57');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Demo\",\"icon\":\"fa-bars\",\"uri\":\"demo\\/user\",\"roles\":[null],\"permission\":null,\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\"}', '2019-04-24 09:10:16', '2019-04-24 09:10:16');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:10:16', '2019-04-24 09:10:16');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:10:18', '2019-04-24 09:10:18');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:10:29', '2019-04-24 09:10:29');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:10:30', '2019-04-24 09:10:30');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:10:56', '2019-04-24 09:10:56');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:11:01', '2019-04-24 09:11:01');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:11:15', '2019-04-24 09:11:15');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:11:18', '2019-04-24 09:11:18');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:11:40', '2019-04-24 09:11:40');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:11:42', '2019-04-24 09:11:42');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:11:44', '2019-04-24 09:11:44');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:12:32', '2019-04-24 09:12:32');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:12:52', '2019-04-24 09:12:52');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:13:01', '2019-04-24 09:13:01');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:13:03', '2019-04-24 09:13:03');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:13:26', '2019-04-24 09:13:26');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:34:02', '2019-04-24 09:34:02');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:34:26', '2019-04-24 09:34:26');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:34:28', '2019-04-24 09:34:28');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:34:40', '2019-04-24 09:34:40');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:34:42', '2019-04-24 09:34:42');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:12', '2019-04-24 09:35:12');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:13', '2019-04-24 09:35:13');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:14', '2019-04-24 09:35:14');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:15', '2019-04-24 09:35:15');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:18', '2019-04-24 09:35:18');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:46', '2019-04-24 09:35:46');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/permissions/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:56', '2019-04-24 09:35:56');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:58', '2019-04-24 09:35:58');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/permissions/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:35:59', '2019-04-24 09:35:59');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:36:01', '2019-04-24 09:36:01');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/permissions/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:36:02', '2019-04-24 09:36:02');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:36:06', '2019-04-24 09:36:06');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:36:07', '2019-04-24 09:36:07');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-04-24 09:36:43', '2019-04-24 09:36:43');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-24 09:36:51', '2019-04-24 09:36:51');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:36:57', '2019-04-24 09:36:57');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:37:11', '2019-04-24 09:37:11');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:37:14', '2019-04-24 09:37:14');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/permissions/4', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"\\u4e2a\\u4eba\\u8bbe\\u7f6e\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/auth\\/setting\",\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/permissions\"}', '2019-04-24 09:37:29', '2019-04-24 09:37:29');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-04-24 09:37:29', '2019-04-24 09:37:29');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:37:45', '2019-04-24 09:37:45');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/permissions/5', 'PUT', '127.0.0.1', '{\"slug\":\"auth.management\",\"name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/logs\",\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/permissions\"}', '2019-04-24 09:37:51', '2019-04-24 09:37:51');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-04-24 09:37:52', '2019-04-24 09:37:52');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/permissions/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:37:54', '2019-04-24 09:37:54');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:37:57', '2019-04-24 09:37:57');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:38:06', '2019-04-24 09:38:06');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:38:09', '2019-04-24 09:38:09');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:38:13', '2019-04-24 09:38:13');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:38:16', '2019-04-24 09:38:16');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"erp\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u8005\",\"permissions\":[\"4\",null],\"_token\":\"9HaAsTRz7f1K86Rwq4UWgnVfqlR9V0PjTY9DOsQh\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/roles\"}', '2019-04-24 09:38:36', '2019-04-24 09:38:36');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-24 09:38:37', '2019-04-24 09:38:37');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:39:52', '2019-04-24 09:39:52');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:39:56', '2019-04-24 09:39:56');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:40:11', '2019-04-24 09:40:11');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:40:15', '2019-04-24 09:40:15');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:40:17', '2019-04-24 09:40:17');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"lubo882\",\"name\":\"\\u5362\\u535a\",\"password\":\"882882\",\"password_confirmation\":\"882882\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"kpcdhJ98zIEbuXBTSPrseIo8wQvwYLLkFNal2Klq\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/users\"}', '2019-04-24 09:40:43', '2019-04-24 09:40:43');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-24 09:40:43', '2019-04-24 09:40:43');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:40:49', '2019-04-24 09:40:49');
INSERT INTO `admin_operation_log` VALUES ('99', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:40:53', '2019-04-24 09:40:53');
INSERT INTO `admin_operation_log` VALUES ('100', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:40:55', '2019-04-24 09:40:55');
INSERT INTO `admin_operation_log` VALUES ('101', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:40:57', '2019-04-24 09:40:57');
INSERT INTO `admin_operation_log` VALUES ('102', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:40:58', '2019-04-24 09:40:58');
INSERT INTO `admin_operation_log` VALUES ('103', '2', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:41:04', '2019-04-24 09:41:04');
INSERT INTO `admin_operation_log` VALUES ('104', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:41:17', '2019-04-24 09:41:17');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:41:21', '2019-04-24 09:41:21');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:41:23', '2019-04-24 09:41:23');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:41:26', '2019-04-24 09:41:26');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:41:29', '2019-04-24 09:41:29');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:42:21', '2019-04-24 09:42:21');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:42:27', '2019-04-24 09:42:27');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:44:53', '2019-04-24 09:44:53');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:44:56', '2019-04-24 09:44:56');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:01', '2019-04-24 09:45:01');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:03', '2019-04-24 09:45:03');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237(\\u6743\\u9650\\u6d4b\\u8bd5)\",\"http_method\":[null],\"http_path\":\"\\/demo\\/user\",\"_token\":\"8UdEL4XYgLzrCube8AFyJOwhEJMCWVkssOiNhkHr\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/permissions\"}', '2019-04-24 09:45:15', '2019-04-24 09:45:15');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-04-24 09:45:15', '2019-04-24 09:45:15');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:20', '2019-04-24 09:45:20');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:23', '2019-04-24 09:45:23');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:25', '2019-04-24 09:45:25');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:28', '2019-04-24 09:45:28');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"erp\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u8005\",\"permissions\":[\"4\",\"6\",null],\"_token\":\"8UdEL4XYgLzrCube8AFyJOwhEJMCWVkssOiNhkHr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/roles\"}', '2019-04-24 09:45:34', '2019-04-24 09:45:34');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-24 09:45:35', '2019-04-24 09:45:35');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:42', '2019-04-24 09:45:42');
INSERT INTO `admin_operation_log` VALUES ('124', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:45:45', '2019-04-24 09:45:45');
INSERT INTO `admin_operation_log` VALUES ('125', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:45:47', '2019-04-24 09:45:47');
INSERT INTO `admin_operation_log` VALUES ('126', '2', 'admin/demo/user', 'GET', '127.0.0.1', '[]', '2019-04-24 09:46:30', '2019-04-24 09:46:30');
INSERT INTO `admin_operation_log` VALUES ('127', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:32', '2019-04-24 09:46:32');
INSERT INTO `admin_operation_log` VALUES ('128', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:33', '2019-04-24 09:46:33');
INSERT INTO `admin_operation_log` VALUES ('129', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:46', '2019-04-24 09:46:46');
INSERT INTO `admin_operation_log` VALUES ('130', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:48', '2019-04-24 09:46:48');
INSERT INTO `admin_operation_log` VALUES ('131', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:49', '2019-04-24 09:46:49');
INSERT INTO `admin_operation_log` VALUES ('132', '2', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:53', '2019-04-24 09:46:53');
INSERT INTO `admin_operation_log` VALUES ('133', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:46:55', '2019-04-24 09:46:55');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:46:59', '2019-04-24 09:46:59');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:00', '2019-04-24 09:47:00');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:02', '2019-04-24 09:47:02');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:06', '2019-04-24 09:47:06');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:08', '2019-04-24 09:47:08');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"erp\",\"name\":\"\\u6743\\u9650\\u6d4b\\u8bd5\\u8005\",\"permissions\":[\"4\",null],\"_token\":\"RAcBptUrrla48WgXomnRAXOIUeyWYWOd4DMQEPwn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/roles\"}', '2019-04-24 09:47:11', '2019-04-24 09:47:11');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-24 09:47:12', '2019-04-24 09:47:12');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:16', '2019-04-24 09:47:16');
INSERT INTO `admin_operation_log` VALUES ('142', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:47:20', '2019-04-24 09:47:20');
INSERT INTO `admin_operation_log` VALUES ('143', '2', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:28', '2019-04-24 09:47:28');
INSERT INTO `admin_operation_log` VALUES ('144', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:32', '2019-04-24 09:47:32');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:47:36', '2019-04-24 09:47:36');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:37', '2019-04-24 09:47:37');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:44', '2019-04-24 09:47:44');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:47:48', '2019-04-24 09:47:48');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Demo\",\"icon\":\"fa-bars\",\"uri\":\"demo\\/user\",\"roles\":[null],\"permission\":\"user\",\"_token\":\"kC17Ow7rD6kQT1SnGTEWIf34qcW2WT599j0A2JCA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-24 09:48:12', '2019-04-24 09:48:12');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-24 09:48:12', '2019-04-24 09:48:12');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:48:15', '2019-04-24 09:48:15');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:48:27', '2019-04-24 09:48:27');
INSERT INTO `admin_operation_log` VALUES ('153', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:48:31', '2019-04-24 09:48:31');
INSERT INTO `admin_operation_log` VALUES ('154', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:48:33', '2019-04-24 09:48:33');
INSERT INTO `admin_operation_log` VALUES ('155', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:48:47', '2019-04-24 09:48:47');
INSERT INTO `admin_operation_log` VALUES ('156', '2', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:48:50', '2019-04-24 09:48:50');
INSERT INTO `admin_operation_log` VALUES ('157', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:48:55', '2019-04-24 09:48:55');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 09:49:00', '2019-04-24 09:49:00');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:01', '2019-04-24 09:49:01');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:04', '2019-04-24 09:49:04');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:07', '2019-04-24 09:49:07');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:13', '2019-04-24 09:49:13');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:16', '2019-04-24 09:49:16');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:29', '2019-04-24 09:49:29');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:31', '2019-04-24 09:49:31');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:33', '2019-04-24 09:49:33');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:37', '2019-04-24 09:49:37');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 09:49:55', '2019-04-24 09:49:55');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-25 03:17:47', '2019-04-25 03:17:47');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/demo/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 03:17:56', '2019-04-25 03:17:56');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 03:18:25', '2019-04-25 03:18:25');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 03:18:28', '2019-04-25 03:18:28');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u516c\\u53f8\\u7f51\\u7ad9\",\"icon\":\"fa fa-home\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 03:20:21', '2019-04-25 03:20:21');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 03:20:21', '2019-04-25 03:20:21');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 03:20:27', '2019-04-25 03:20:27');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u516c\\u53f8\\u7f51\\u7ad9\",\"icon\":\"fa fa-home\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 03:20:33', '2019-04-25 03:20:33');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 03:20:34', '2019-04-25 03:20:34');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8bbe\\u7f6e\",\"icon\":\"fa-cog\",\"uri\":\"website\\/setting\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\"}', '2019-04-25 03:21:35', '2019-04-25 03:21:35');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 03:21:35', '2019-04-25 03:21:35');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u884c\\u4e1a\\u65b0\\u95fb\",\"icon\":\"fa-align-justify\",\"uri\":\"website\\/news\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\"}', '2019-04-25 03:24:37', '2019-04-25 03:24:37');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 03:24:37', '2019-04-25 03:24:37');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 03:24:43', '2019-04-25 03:24:43');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 03:25:07', '2019-04-25 03:25:07');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 03:26:43', '2019-04-25 03:26:43');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 03:26:46', '2019-04-25 03:26:46');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:36:55', '2019-04-25 03:36:55');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:37:02', '2019-04-25 03:37:02');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:37:08', '2019-04-25 03:37:08');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:38:05', '2019-04-25 03:38:05');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:40:41', '2019-04-25 03:40:41');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:40:49', '2019-04-25 03:40:49');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:41:05', '2019-04-25 03:41:05');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:41:13', '2019-04-25 03:41:13');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:41:21', '2019-04-25 03:41:21');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:43:39', '2019-04-25 03:43:39');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 03:44:06', '2019-04-25 03:44:06');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:14:50', '2019-04-25 04:14:50');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:47:20', '2019-04-25 04:47:20');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:48:30', '2019-04-25 04:48:30');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:55:17', '2019-04-25 04:55:17');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:56:53', '2019-04-25 04:56:53');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:58:16', '2019-04-25 04:58:16');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:58:18', '2019-04-25 04:58:18');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:58:19', '2019-04-25 04:58:19');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:58:49', '2019-04-25 04:58:49');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:58:50', '2019-04-25 04:58:50');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:59:54', '2019-04-25 04:59:54');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 04:59:58', '2019-04-25 04:59:58');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 05:00:41', '2019-04-25 05:00:41');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:00:44', '2019-04-25 05:00:44');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:00:50', '2019-04-25 05:00:50');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:01:21', '2019-04-25 05:01:21');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:01:25', '2019-04-25 05:01:25');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:01:44', '2019-04-25 05:01:44');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/website/setting/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5c0f\\u660e\",\"email\":\"xm@18888883.com\",\"email_verified_at\":\"2019-04-25 05:01:44\",\"password\":\"11111111\",\"remember_token\":\"22222\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/setting\"}', '2019-04-25 05:01:56', '2019-04-25 05:01:56');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 05:01:57', '2019-04-25 05:01:57');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/website/setting/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:02:33', '2019-04-25 05:02:33');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:02:37', '2019-04-25 05:02:37');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 05:03:44', '2019-04-25 05:03:44');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 05:13:32', '2019-04-25 05:13:32');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:13:38', '2019-04-25 05:13:38');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:13:46', '2019-04-25 05:13:46');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:14:22', '2019-04-25 05:14:22');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/website/setting/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u4f01\\u4e1a\\u6587\\u5316\",\"description\":\"\\u4f01\\u4e1a\\u6587\\u5316\",\"content\":\"\\u6d59\\u6c5f\\u8010\\u800c\\u6377\\u5de5\\u5177\\u6709\\u9650\\u516c\\u53f8\\u4ee5\\u5148\\u8fdb\\u7684\\u751f\\u4ea7\\u6280\\u672f\\u548c\\u7cbe\\u6e5b\\u7684\\u5236\\u9020\\u5de5\\u827a\\u3001\\u4e13\\u4e1a\\u751f\\u4ea7\\u5404\\u79cd\\u786c\\u8d28\\u5408\\u91d1\\u5706\\u952f\\u7247\\uff0c\\u5305\\u62ec\\u6728\\u7528\\u3001\\u94dd\\u7528\\u3001\\u952f\\u94a2\\u7528\\u3001\\u5272\\u8349\\u7528\\u7b49\\u7cfb\\u5217\\u4ea7\\u54c1\\u3002\\u516c\\u53f8\\u79c9\\u627f\\u79d1\\u6280\\u5f15\\u9886\\u6280\\u672f\\uff0c\\u6001\\u5ea6\\u6210\\u5c31\\u5b8c\\u7f8e\\u7684\\u56e2\\u961f\\u7cbe\\u795e\\uff0c\\u4ee5\\u8d28\\u91cf\\u4e3a\\u6839\\u3001\\u8bda\\u4fe1\\u4e3a\\u672c\\u3001\\u643a\\u624b\\u53d1\\u5c55\\u3001\\u5171\\u540c\\u521b\\u65b0\\u7684\\u7406\\u5ff5\\uff0c\\u4f7f\\u79d1\\u6280\\u521b\\u65b0\\u5185\\u6db5\\u3001\\u54c1\\u8d28\\u6210\\u5c31\\u8c61\\u6052\\uff0c\\u4ece\\u800c\\u6ee1\\u8db3\\u5404\\u4e2a\\u884c\\u4e1a\\u5728\\u5207\\u5272\\u9886\\u57df\\u7684\\u9700\\u6c42\\u3002 \\r\\n \\r\\n\\u4f01\\u4e1a\\u4f7f\\u547d\\uff1a\\u4e3a\\u8010\\u800c\\u6377\\u7acb\\u5fc3\\u3001\\u4e3a\\u968f\\u8005\\u7acb\\u547d\\u3001\\u4e3a\\u660c\\u76db\\u7ee7\\u8d24\\u624d\\u3001\\u4e3a\\u767b\\u9ad8\\u5f00\\u5148\\u6cb3\\r\\n\\u4f01\\u4e1a\\u613f\\u666f\\uff1a\\u7528\\u6709\\u9650\\u7684\\u8d44\\u6e90\\u521b\\u9020\\u65e0\\u9650\\u7684\\u4ef7\\u503c\\r\\n\\u6838\\u5fc3\\u4ef7\\u503c\\u89c2\\uff1a\\u4ee5\\u8bda\\u4fe1\\u4e3a\\u6839\\u672c\\uff0c\\u4ee5\\u8d28\\u91cf\\u6c42\\u751f\\u5b58\\r\\n\\u4f01\\u4e1a\\u7cbe\\u795e\\uff1a\\u4f19\\u4f34\\u3001\\u81ea\\u7531\\u3001\\u68a6\\u60f3\\r\\n\\u884c\\u4e3a\\u51c6\\u5219\\uff1a\\u8bda\\u4fe1\\u8d62\\u5f97\\u4fe1\\u8a89\\uff0c\\u4e13\\u4e1a\\u8d62\\u5f97\\u53e3\\u7891\\r\\n \\r\\n\\u8010\\u800c\\u6377\\u65f6\\u523b\\u7262\\u8bb0\\u4fdd\\u62a4\\u5730\\u7403\\u73af\\u5883\\u8fd9\\u4e00\\u4eba\\u7c7b\\u6700\\u91cd\\u8981\\u7684\\u5171\\u540c\\u8bfe\\u9898\\uff0c\\u575a\\u6301\\u5728\\u53d1\\u5c55\\u4e2d\\u4fdd\\u62a4\\u3001\\u5728\\u4fdd\\u62a4\\u4e2d\\u53d1\\u5c55\\uff0c\\u6301\\u7eed\\u63a8\\u8fdb\\u751f\\u6001\\u6587\\u660e\\u5efa\\u8bbe,\\u5728\\u4e1a\\u52a1\\u8fdb\\u884c\\u7684\\u5404\\u4e2a\\u73af\\u8282\\uff0c\\u8282\\u80fd\\u5148\\u884c\\uff0c\\u7eff\\u8272\\u5148\\u884c\\u3002\\r\\n\\r\\n\\u8010\\u800c\\u6377\\u56e0\\u4e3a\\u4e13\\u6ce8\\uff0c\\u6240\\u4ee5\\u4e13\\u4e1a\\uff0c\\u4ee5\\u6700\\u4f18\\u7684\\u8d28\\u91cf\\u3001\\u6700\\u4f18\\u7684\\u4ef7\\u683c\\u3001\\u6700\\u77ed\\u7684\\u4f9b\\u8d27\\u65f6\\u95f4\\uff0c\\u6700\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u7ed9\\u5ba2\\u6237\\uff0c\\u987e\\u5ba2\\u7684\\u9700\\u8981\\u5c31\\u662f\\u6211\\u4eec\\u7684\\u4f7f\\u547d\\uff0c\\u4e00\\u5207\\u4e3a\\u60a8\\u7740\\u60f3\\uff0c\\u4e00\\u5207\\u4e3a\\u60a8\\u6240\\u53ca\\u3002\\u6b22\\u8fce\\u6765\\u7535\\u54a8\\u8be2\\u6d3d\\u8c08\\uff01\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/setting\"}', '2019-04-25 05:14:33', '2019-04-25 05:14:33');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 05:14:34', '2019-04-25 05:14:34');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-04-25 05:15:28', '2019-04-25 05:15:28');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:15:36', '2019-04-25 05:15:36');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:15:39', '2019-04-25 05:15:39');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-justify\",\"uri\":\"website\\/article\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 05:15:56', '2019-04-25 05:15:56');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 05:15:57', '2019-04-25 05:15:57');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:16:01', '2019-04-25 05:16:01');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-justify\",\"uri\":\"website\\/articles\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 05:16:04', '2019-04-25 05:16:04');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 05:16:04', '2019-04-25 05:16:04');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 05:16:30', '2019-04-25 05:16:30');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 05:17:41', '2019-04-25 05:17:41');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:17:43', '2019-04-25 05:17:43');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:20:18', '2019-04-25 05:20:18');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:20:34', '2019-04-25 05:20:34');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:20:50', '2019-04-25 05:20:50');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:22:21', '2019-04-25 05:22:21');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:22:42', '2019-04-25 05:22:42');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:23:42', '2019-04-25 05:23:42');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:23:44', '2019-04-25 05:23:44');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:23:45', '2019-04-25 05:23:45');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-04-25 05:26:20', '2019-04-25 05:26:20');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:26:30', '2019-04-25 05:26:30');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-04-25 05:27:14', '2019-04-25 05:27:14');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/website/articles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:27:33', '2019-04-25 05:27:33');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:27:37', '2019-04-25 05:27:37');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_columns_\":\"id,title,description,content\",\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:27:43', '2019-04-25 05:27:43');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_columns_\":\"id,title,description,content\",\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:27:44', '2019-04-25 05:27:44');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:27:47', '2019-04-25 05:27:47');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-04-25 05:28:59', '2019-04-25 05:28:59');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/website/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:29:48', '2019-04-25 05:29:48');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/website/articles', 'POST', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"description\":null,\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2019-04-25 05:30:07', '2019-04-25 05:30:07');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2019-04-25 05:30:07', '2019-04-25 05:30:07');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:43:13', '2019-04-25 05:43:13');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:43:17', '2019-04-25 05:43:17');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"icon\":\"fa-filter\",\"uri\":\"website\\/categories\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 05:44:21', '2019-04-25 05:44:21');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 05:44:21', '2019-04-25 05:44:21');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 05:44:23', '2019-04-25 05:44:23');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:44:26', '2019-04-25 05:44:26');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:45:11', '2019-04-25 05:45:11');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:45:26', '2019-04-25 05:45:26');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/website/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:45:32', '2019-04-25 05:45:32');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/website/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u4f01\\u4e1a\\u6587\\u5316\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/categories\"}', '2019-04-25 05:45:33', '2019-04-25 05:45:33');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:45:34', '2019-04-25 05:45:34');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:45:35', '2019-04-25 05:45:35');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/website/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:45:37', '2019-04-25 05:45:37');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/website/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u4f01\\u4e1a\\u6587\\u53161\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/categories\"}', '2019-04-25 05:45:39', '2019-04-25 05:45:39');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:45:39', '2019-04-25 05:45:39');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/website/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:45:42', '2019-04-25 05:45:42');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/website/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u4f01\\u4e1a\\u6587\\u5316\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/categories\"}', '2019-04-25 05:45:45', '2019-04-25 05:45:45');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:45:45', '2019-04-25 05:45:45');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 05:47:33', '2019-04-25 05:47:33');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:47:37', '2019-04-25 05:47:37');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:48:48', '2019-04-25 05:48:48');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 05:50:07', '2019-04-25 05:50:07');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/website/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:50:22', '2019-04-25 05:50:22');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:50:28', '2019-04-25 05:50:28');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:56:34', '2019-04-25 05:56:34');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:56:35', '2019-04-25 05:56:35');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:56:37', '2019-04-25 05:56:37');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:56:42', '2019-04-25 05:56:42');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:56:47', '2019-04-25 05:56:47');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 05:56:49', '2019-04-25 05:56:49');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:01:25', '2019-04-25 06:01:25');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:12:17', '2019-04-25 06:12:17');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:17:37', '2019-04-25 06:17:37');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/auth/permissions/5/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 06:18:31', '2019-04-25 06:18:31');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:18:36', '2019-04-25 06:18:36');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9}]}]\"}', '2019-04-25 06:18:41', '2019-04-25 06:18:41');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:18:41', '2019-04-25 06:18:41');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:19:27', '2019-04-25 06:19:27');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:20:37', '2019-04-25 06:20:37');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:20:43', '2019-04-25 06:20:43');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:20:44', '2019-04-25 06:20:44');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:21:02', '2019-04-25 06:21:02');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:21:03', '2019-04-25 06:21:03');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:26:34', '2019-04-25 06:26:34');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:27:40', '2019-04-25 06:27:40');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:28:44', '2019-04-25 06:28:44');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:28:51', '2019-04-25 06:28:51');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:28:54', '2019-04-25 06:28:54');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:28:56', '2019-04-25 06:28:56');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:29:32', '2019-04-25 06:29:32');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:30:23', '2019-04-25 06:30:23');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:30:41', '2019-04-25 06:30:41');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:32:03', '2019-04-25 06:32:03');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:35:46', '2019-04-25 06:35:46');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:36:27', '2019-04-25 06:36:27');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:43:09', '2019-04-25 06:43:09');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 06:43:46', '2019-04-25 06:43:46');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:43:49', '2019-04-25 06:43:49');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:43:57', '2019-04-25 06:43:57');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 06:44:45', '2019-04-25 06:44:45');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:44:48', '2019-04-25 06:44:48');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 06:44:49', '2019-04-25 06:44:49');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/website/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:44:51', '2019-04-25 06:44:51');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:44:57', '2019-04-25 06:44:57');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:45:01', '2019-04-25 06:45:01');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/website/articles/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"\\u6587\\u7ae0\\u5206\\u7c7b\":\"3\",\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles\"}', '2019-04-25 06:45:05', '2019-04-25 06:45:05');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 06:45:06', '2019-04-25 06:45:06');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 06:46:10', '2019-04-25 06:46:10');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/website/articles/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"categroy_id\":\"3\",\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\"}', '2019-04-25 06:46:15', '2019-04-25 06:46:15');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 06:46:15', '2019-04-25 06:46:15');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 06:46:31', '2019-04-25 06:46:31');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/website/articles/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"category_id\":\"3\",\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\"}', '2019-04-25 06:46:34', '2019-04-25 06:46:34');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 06:46:34', '2019-04-25 06:46:34');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:46:37', '2019-04-25 06:46:37');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/website/articles/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"category_id\":\"0\",\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles\"}', '2019-04-25 06:46:51', '2019-04-25 06:46:51');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 06:46:51', '2019-04-25 06:46:51');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 06:46:54', '2019-04-25 06:46:54');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/website/articles/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"category_id\":\"3\",\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles\"}', '2019-04-25 06:46:58', '2019-04-25 06:46:58');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 06:46:58', '2019-04-25 06:46:58');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:04:09', '2019-04-25 07:04:09');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:09:16', '2019-04-25 07:09:16');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:09:17', '2019-04-25 07:09:17');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:09:35', '2019-04-25 07:09:35');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:09:48', '2019-04-25 07:09:48');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:25', '2019-04-25 07:10:25');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:26', '2019-04-25 07:10:26');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:29', '2019-04-25 07:10:29');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:33', '2019-04-25 07:10:33');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:34', '2019-04-25 07:10:34');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:37', '2019-04-25 07:10:37');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/website/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:39', '2019-04-25 07:10:39');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/website/categories/3', 'PUT', '127.0.0.1', '{\"title\":\"\\u884c\\u4e1a\\u65b0\\u95fb\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/categories\"}', '2019-04-25 07:10:47', '2019-04-25 07:10:47');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 07:10:47', '2019-04-25 07:10:47');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:10:49', '2019-04-25 07:10:49');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:11:34', '2019-04-25 07:11:34');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:11:35', '2019-04-25 07:11:35');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 07:34:16', '2019-04-25 07:34:16');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/website/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:34:17', '2019-04-25 07:34:17');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/website/articles', 'POST', '127.0.0.1', '{\"title\":\"1111\",\"category_id\":\"3\",\"content\":\"11111111111111\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles\"}', '2019-04-25 07:34:35', '2019-04-25 07:34:35');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/website/articles/create', 'GET', '127.0.0.1', '[]', '2019-04-25 07:34:35', '2019-04-25 07:34:35');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/website/articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 07:34:52', '2019-04-25 07:34:52');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:09:56', '2019-04-25 08:09:56');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:09:57', '2019-04-25 08:09:57');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:09:58', '2019-04-25 08:09:58');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 08:31:48', '2019-04-25 08:31:48');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:31:56', '2019-04-25 08:31:56');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/website/articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:32:03', '2019-04-25 08:32:03');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/website/articles/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8010\\u800c\\u6377\\u4f01\\u4e1a\\u6587\\u5316\",\"category_id\":\"19\",\"content\":\"\\u6d59\\u6c5f\\u8010\\u800c\\u6377\\u5de5\\u5177\\u6709\\u9650\\u516c\\u53f8\\u4ee5\\u5148\\u8fdb\\u7684\\u751f\\u4ea7\\u6280\\u672f\\u548c\\u7cbe\\u6e5b\\u7684\\u5236\\u9020\\u5de5\\u827a\\u3001\\u4e13\\u4e1a\\u751f\\u4ea7\\u5404\\u79cd\\u786c\\u8d28\\u5408\\u91d1\\u5706\\u952f\\u7247\\uff0c\\u5305\\u62ec\\u6728\\u7528\\u3001\\u94dd\\u7528\\u3001\\u952f\\u94a2\\u7528\\u3001\\u5272\\u8349\\u7528\\u7b49\\u7cfb\\u5217\\u4ea7\\u54c1\\u3002\\u516c\\u53f8\\u79c9\\u627f\\u79d1\\u6280\\u5f15\\u9886\\u6280\\u672f\\uff0c\\u6001\\u5ea6\\u6210\\u5c31\\u5b8c\\u7f8e\\u7684\\u56e2\\u961f\\u7cbe\\u795e\\uff0c\\u4ee5\\u8d28\\u91cf\\u4e3a\\u6839\\u3001\\u8bda\\u4fe1\\u4e3a\\u672c\\u3001\\u643a\\u624b\\u53d1\\u5c55\\u3001\\u5171\\u540c\\u521b\\u65b0\\u7684\\u7406\\u5ff5\\uff0c\\u4f7f\\u79d1\\u6280\\u521b\\u65b0\\u5185\\u6db5\\u3001\\u54c1\\u8d28\\u6210\\u5c31\\u8c61\\u6052\\uff0c\\u4ece\\u800c\\u6ee1\\u8db3\\u5404\\u4e2a\\u884c\\u4e1a\\u5728\\u5207\\u5272\\u9886\\u57df\\u7684\\u9700\\u6c42\\u3002 \\r\\n \\r\\n\\u4f01\\u4e1a\\u4f7f\\u547d\\uff1a\\u4e3a\\u8010\\u800c\\u6377\\u7acb\\u5fc3\\u3001\\u4e3a\\u968f\\u8005\\u7acb\\u547d\\u3001\\u4e3a\\u660c\\u76db\\u7ee7\\u8d24\\u624d\\u3001\\u4e3a\\u767b\\u9ad8\\u5f00\\u5148\\u6cb3\\r\\n\\u4f01\\u4e1a\\u613f\\u666f\\uff1a\\u7528\\u6709\\u9650\\u7684\\u8d44\\u6e90\\u521b\\u9020\\u65e0\\u9650\\u7684\\u4ef7\\u503c\\r\\n\\u6838\\u5fc3\\u4ef7\\u503c\\u89c2\\uff1a\\u4ee5\\u8bda\\u4fe1\\u4e3a\\u6839\\u672c\\uff0c\\u4ee5\\u8d28\\u91cf\\u6c42\\u751f\\u5b58\\r\\n\\u4f01\\u4e1a\\u7cbe\\u795e\\uff1a\\u4f19\\u4f34\\u3001\\u81ea\\u7531\\u3001\\u68a6\\u60f3\\r\\n\\u884c\\u4e3a\\u51c6\\u5219\\uff1a\\u8bda\\u4fe1\\u8d62\\u5f97\\u4fe1\\u8a89\\uff0c\\u4e13\\u4e1a\\u8d62\\u5f97\\u53e3\\u7891\\r\\n \\r\\n\\u8010\\u800c\\u6377\\u65f6\\u523b\\u7262\\u8bb0\\u4fdd\\u62a4\\u5730\\u7403\\u73af\\u5883\\u8fd9\\u4e00\\u4eba\\u7c7b\\u6700\\u91cd\\u8981\\u7684\\u5171\\u540c\\u8bfe\\u9898\\uff0c\\u575a\\u6301\\u5728\\u53d1\\u5c55\\u4e2d\\u4fdd\\u62a4\\u3001\\u5728\\u4fdd\\u62a4\\u4e2d\\u53d1\\u5c55\\uff0c\\u6301\\u7eed\\u63a8\\u8fdb\\u751f\\u6001\\u6587\\u660e\\u5efa\\u8bbe,\\u5728\\u4e1a\\u52a1\\u8fdb\\u884c\\u7684\\u5404\\u4e2a\\u73af\\u8282\\uff0c\\u8282\\u80fd\\u5148\\u884c\\uff0c\\u7eff\\u8272\\u5148\\u884c\\u3002\\r\\n\\r\\n\\u8010\\u800c\\u6377\\u56e0\\u4e3a\\u4e13\\u6ce8\\uff0c\\u6240\\u4ee5\\u4e13\\u4e1a\\uff0c\\u4ee5\\u6700\\u4f18\\u7684\\u8d28\\u91cf\\u3001\\u6700\\u4f18\\u7684\\u4ef7\\u683c\\u3001\\u6700\\u77ed\\u7684\\u4f9b\\u8d27\\u65f6\\u95f4\\uff0c\\u6700\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u7ed9\\u5ba2\\u6237\\uff0c\\u987e\\u5ba2\\u7684\\u9700\\u8981\\u5c31\\u662f\\u6211\\u4eec\\u7684\\u4f7f\\u547d\\uff0c\\u4e00\\u5207\\u4e3a\\u60a8\\u7740\\u60f3\\uff0c\\u4e00\\u5207\\u4e3a\\u60a8\\u6240\\u53ca\\u3002\\u6b22\\u8fce\\u6765\\u7535\\u54a8\\u8be2\\u6d3d\\u8c08\\uff01\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles\"}', '2019-04-25 08:32:15', '2019-04-25 08:32:15');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 08:32:15', '2019-04-25 08:32:15');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:32:26', '2019-04-25 08:32:26');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/website/articles/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\",\"category_id\":\"12\",\"content\":\"\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\r\\n\\u5408\\u91d1\\u952f\\u7247\\u4f7f\\u7528\\u6ce8\\u610f\\u4e8b\\u9879\\u6709\\u54ea\\u4e9b\\uff1f\\u4e0b\\u9762\\u8be6\\u7ec6\\u4ecb\\u7ecd\\uff1a\\r\\n1.\\u4f7f\\u7528\\u524d\\u5fc5\\u987b\\u8ba4\\u771f\\u9605\\u8bfb\\u4f7f\\u7528\\u8bf4\\u660e\\u4e66\\u548c\\u5305\\u88c5\\u5916\\u58f3\\u4e0a\\u7684\\u8bb0\\u8f7d\\u4e8b\\u9879\\u3002 \\r\\n2.\\u6839\\u636e\\u88ab\\u5207\\u5272\\u6750\\u6599\\u9009\\u62e9\\u952f\\u7247\\u54c1\\u79cd\\uff0c\\u5e76\\u68c0\\u67e5\\u952f\\u7247\\u662f\\u5426\\u6709\\u88c2\\u7f1d\\uff0c\\u6b6a\\u66f2\\uff0c\\u6389\\u9f7f\\uff0c\\u82e5\\u952f\\u7247\\u7834\\u635f\\u5207\\u52ff\\u4f7f\\u7528\\u3002 \\r\\n3.\\u4f7f\\u7528\\u65f6\\u52a1\\u5fc5\\u5b89\\u88c5\\u597d\\u5207\\u5272\\u673a\\u952f\\u7247\\u5916\\u58f3\\u4fdd\\u62a4\\u7f69\\uff0c\\u5e76\\u4f69\\u6234\\u597d\\u53e3\\u7f69\\u6216\\u9632\\u62a4\\u773c\\u775b\\u3002 \\r\\n4.\\u952f\\u7247\\u5b89\\u88c5\\u524d\\u8bf7\\u68c0\\u67e5\\u5207\\u5272\\u673a\\u7684\\u4e3b\\u8f74\\u662f\\u5426\\u6709\\u8df3\\u52a8\\uff0c\\u5b89\\u88c5\\u65f6\\u5c06\\u952f\\u7247\\u7528\\u6cd5\\u5170\\u76d8\\u548c\\u87ba\\u6bcd\\u5b9a\\u7d27\\uff0c\\u5b89\\u88c5\\u540e\\u5fc5\\u987b\\u4e14\\u4eba\\u952f\\u7247\\u7684\\u4e2d\\u5fc3\\u5b54\\u662f\\u5426\\u7262\\u56fa\\u56fa\\u5b9a\\u5728\\u636e\\u53f0\\u6cd5\\u5170\\u76d8\\u4e0a\\uff0c\\u6709\\u57ab\\u5708\\u65f6\\u5fc5\\u987b\\u5c06\\u57ab\\u5708\\u5957\\u597d\\u4e70\\u5165\\u540e\\u8f7b\\u8f7b\\u7528\\u624b\\u63a8\\u52a8\\u952f\\u7247\\u786e\\u8ba4\\u8f6c\\u52a8\\u662f\\u5426\\u504f\\u5fc3\\u6643\\u52a8\\u3002 \\r\\n5.\\u5b89\\u88c5\\u5408\\u91d1\\u952f\\u7247\\u540e\\u4f7f\\u7528\\u524d\\u9700\\u9884\\u8f6c\\u4e00\\u5206\\u949f\\uff0c\\u5f85\\u673a\\u5668\\u8fdb\\u5165\\u5de5\\u4f5c\\u72b6\\u6001\\u65f6\\u624d\\u80fd\\u8fdb\\u884c\\u5207\\u5272\\u4f5c\\u4e1a\\u3002 \\r\\n6.\\u975e\\u81ea\\u52a8\\u5207\\u5272\\u4f5c\\u4e1a\\u65f6\\uff0c\\u5fc5\\u987b\\u8f7b\\u8f7b\\u5c06\\u6b63\\u5e38\\u8fd0\\u884c\\u4e2d\\u7684\\u952f\\u7247\\u5207\\u5165\\u6750\\u6599\\uff0c\\u7981\\u6b62\\u4f7f\\u52b2\\u5f3a\\u538b\\u786c\\u63a8\\u3002\\u5e76\\u7981\\u6b62\\u5012\\u8f6c\\uff0c\\u7981\\u6b62\\u7a81\\u7136\\u628a\\u952f\\u7247\\u505c\\u5728\\u88ab\\u5207\\u5272\\u7269\\u4e2d\\u95f4\\uff0c\\u5426\\u5219\\u5bfc\\u81f4\\u952f\\u9f7f\\u8131\\u843d\\uff0c\\u952f\\u4f53\\u53d8\\u5f62\\uff0c\\u5bb9\\u6613\\u53d1\\u751f\\u5371\\u9669\\u3002 \\r\\n7.\\u4f7f\\u7528\\u4e2d\\u542c\\u5230\\u5f02\\u5e38\\u58f0\\u97f3\\uff0c\\u770b\\u5230\\u5f02\\u5e38\\u6643\\u52a8\\u6216\\u5207\\u9762\\u4e0d\\u5e73\\u65f6\\u8bf7\\u505c\\u6b62\\u4f5c\\u4e1a\\u5e76\\u67e5\\u627e\\u5f02\\u5e38\\u539f\\u56e0\\uff0c\\u53ca\\u65f6\\u66f4\\u6362\\u952f\\u7247\\u3002 \\r\\n8.\\u5207\\u5272\\u540e\\u8bf7\\u53ca\\u65f6\\u64e6\\u62b9\\u9632\\u9508\\u6cb9\\uff0c\\u4ee5\\u9632\\u952f\\u7247\\u56e0\\u957f\\u65f6\\u95f4\\u4e0d\\u4f7f\\u7528\\u800c\\u751f\\u9508\\u3002 \\r\\n9.\\u8bf7\\u5c06\\u952f\\u7247\\u5782\\u76f4\\u6302\\u4e8e\\u5e72\\u71e5\\u7684\\u5de5\\u5177\\u67b6\\uff0c\\u907f\\u5f00\\u6f6e\\u6e7f\\u533a\\u57df\\u3002\\u52ff\\u5c06\\u952f\\u7247\\u5e73\\u653e\\u5728\\u5730\\u4e0a\\uff0c\\u5426\\u5219\\u5bb9\\u6613\\u5bfc\\u81f4\\u952f\\u7247\\u53d8\\u5f62\\u3002\\u591a\\u7247\\u952f\\u7247\\u52ff\\u76f4\\u63a5\\u53e0\\u653e\\uff0c\\u987b\\u95f4\\u9694\\u5305\\u88c5\\uff0c\\u4ee5\\u514d\\u952f\\u9f7f\\u53d1\\u751f\\u78b0\\u649e\\uff0c\\u5e94\\u8f7b\\u62ff\\u8f7b\\u653e\\u3002\\r\\n10.\\u952f\\u7247\\u4e0d\\u950b\\u5229\\u65f6\\u8981\\u518d\\u7814\\u78e8\\u952f\\u9f7f\\uff0c\\u4e0d\\u53ca\\u65f6\\u7814\\u78e8\\u5bb9\\u6613\\u7834\\u574f\\u952f\\u9f7f\\u539f\\u6709\\u89d2\\u5ea6\\uff0c\\u5f71\\u54cd\\u5207\\u5272\\u7cbe\\u5ea6\\uff0c\\u7f29\\u77ed\\u952f\\u7247\\u4f7f\\u7528\\u5bff\\u547d\\u3002\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/articles\"}', '2019-04-25 08:32:37', '2019-04-25 08:32:37');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/website/articles', 'GET', '127.0.0.1', '[]', '2019-04-25 08:32:37', '2019-04-25 08:32:37');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/website/articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:32:40', '2019-04-25 08:32:40');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:32:54', '2019-04-25 08:32:54');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:34:19', '2019-04-25 08:34:19');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:34:22', '2019-04-25 08:34:22');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:34:25', '2019-04-25 08:34:25');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:34:29', '2019-04-25 08:34:29');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 08:34:40', '2019-04-25 08:34:40');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:01:29', '2019-04-25 09:01:29');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:01:33', '2019-04-25 09:01:33');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:01:33', '2019-04-25 09:01:33');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:03:00', '2019-04-25 09:03:00');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:03:02', '2019-04-25 09:03:02');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:03:03', '2019-04-25 09:03:03');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:05:06', '2019-04-25 09:05:06');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:05:08', '2019-04-25 09:05:08');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/website/categories', 'POST', '127.0.0.1', '{\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_order\":\"[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":4},{\\\"id\\\":3},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":1},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":16}]},{\\\"id\\\":17,\\\"children\\\":[{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":21},{\\\"id\\\":22}]}]\"}', '2019-04-25 09:05:31', '2019-04-25 09:05:31');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:05:32', '2019-04-25 09:05:32');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/website/categories', 'POST', '127.0.0.1', '{\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":4},{\\\"id\\\":3},{\\\"id\\\":5},{\\\"id\\\":6}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":16}]},{\\\"id\\\":17,\\\"children\\\":[{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":21},{\\\"id\\\":22}]}]\"}', '2019-04-25 09:05:37', '2019-04-25 09:05:37');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:05:38', '2019-04-25 09:05:38');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-04-25 09:05:55', '2019-04-25 09:05:55');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-04-25 09:05:59', '2019-04-25 09:05:59');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:13:02', '2019-04-25 09:13:02');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 09:14:51', '2019-04-25 09:14:51');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/website/categories', 'GET', '127.0.0.1', '[]', '2019-04-25 09:15:53', '2019-04-25 09:15:53');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:16:18', '2019-04-25 09:16:18');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:16:20', '2019-04-25 09:16:20');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:17:16', '2019-04-25 09:17:16');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8f6e\\u64ad\\u56fe\",\"icon\":\"fa-image\",\"uri\":\"website\\/silde_image\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\"}', '2019-04-25 09:18:34', '2019-04-25 09:18:34');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:18:34', '2019-04-25 09:18:34');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:20:35', '2019-04-25 09:20:35');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8f6e\\u64ad\\u56fe\",\"icon\":\"fa-image\",\"uri\":\"website\\/slide_image\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 09:20:44', '2019-04-25 09:20:44');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:20:44', '2019-04-25 09:20:44');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:20:49', '2019-04-25 09:20:49');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:20:53', '2019-04-25 09:20:53');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:22:36', '2019-04-25 09:22:36');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:23:04', '2019-04-25 09:23:04');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u8f6e\\u64ad\\u56fe\",\"icon\":\"fa-image\",\"uri\":\"website\\/slide_images\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/auth\\/menu\"}', '2019-04-25 09:23:08', '2019-04-25 09:23:08');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:23:08', '2019-04-25 09:23:08');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 09:23:16', '2019-04-25 09:23:16');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:23:18', '2019-04-25 09:23:18');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:27:42', '2019-04-25 09:27:42');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/website/slide_images/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:27:43', '2019-04-25 09:27:43');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/website/slide_images/create', 'GET', '127.0.0.1', '[]', '2019-04-25 09:43:33', '2019-04-25 09:43:33');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/website/slide_images', 'POST', '127.0.0.1', '{\"title\":\"aaaaa\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\"}', '2019-04-25 09:43:43', '2019-04-25 09:43:43');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:43:43', '2019-04-25 09:43:43');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:44:15', '2019-04-25 09:44:15');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/website/slide_images/1', 'PUT', '127.0.0.1', '{\"title\":\"1111\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 09:44:56', '2019-04-25 09:44:56');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:44:56', '2019-04-25 09:44:56');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:47:06', '2019-04-25 09:47:06');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:47:21', '2019-04-25 09:47:21');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:47:41', '2019-04-25 09:47:41');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:48:17', '2019-04-25 09:48:17');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:48:42', '2019-04-25 09:48:42');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:49:24', '2019-04-25 09:49:24');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 09:49:30', '2019-04-25 09:49:30');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:49:39', '2019-04-25 09:49:39');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:49:43', '2019-04-25 09:49:43');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 09:49:59', '2019-04-25 09:49:59');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:06:30', '2019-04-25 10:06:30');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:18:09', '2019-04-25 10:18:09');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:18:11', '2019-04-25 10:18:11');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:18:14', '2019-04-25 10:18:14');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:19:18', '2019-04-25 10:19:18');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:19:22', '2019-04-25 10:19:22');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:19:34', '2019-04-25 10:19:34');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:20:06', '2019-04-25 10:20:06');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:20:18', '2019-04-25 10:20:18');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:21:07', '2019-04-25 10:21:07');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:21:19', '2019-04-25 10:21:19');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/website/slide_images/1', 'PUT', '127.0.0.1', '{\"title\":\"1111\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\"}', '2019-04-25 10:21:27', '2019-04-25 10:21:27');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:21:28', '2019-04-25 10:21:28');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:21:30', '2019-04-25 10:21:30');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:21:34', '2019-04-25 10:21:34');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/website/slide_images/1', 'PUT', '127.0.0.1', '{\"title\":\"1111\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 10:21:41', '2019-04-25 10:21:41');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:21:41', '2019-04-25 10:21:41');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:22:16', '2019-04-25 10:22:16');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/website/slide_images/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u5382\\u533a\\u6548\\u679c\\u56fe\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 10:22:28', '2019-04-25 10:22:28');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:22:28', '2019-04-25 10:22:28');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/website/slide_images/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:22:49', '2019-04-25 10:22:49');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/website/slide_images/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u8f6e\\u64ad\\u56fe-\\u8fdb\\u53e3\\u8bbe\\u5907\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 10:23:20', '2019-04-25 10:23:20');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:23:20', '2019-04-25 10:23:20');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/website/slide_images/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:23:24', '2019-04-25 10:23:24');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/website/slide_images/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8f6e\\u64ad\\u56fe-\\u5382\\u533a\\u6548\\u679c\\u56fe\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 10:23:29', '2019-04-25 10:23:29');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:23:29', '2019-04-25 10:23:29');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/website/slide_images/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:23:32', '2019-04-25 10:23:32');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/website/slide_images', 'POST', '127.0.0.1', '{\"title\":\"\\u8f6e\\u64ad\\u56fe-\\u68c0\\u6d4b\\u6280\\u672f\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 10:23:49', '2019-04-25 10:23:49');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:23:49', '2019-04-25 10:23:49');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/website/slide_images/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:23:56', '2019-04-25 10:23:56');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/website/slide_images', 'POST', '127.0.0.1', '{\"title\":\"\\u8f6e\\u64ad\\u56fe-\\u952f\\u7247\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/slide_images\"}', '2019-04-25 10:24:13', '2019-04-25 10:24:13');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '[]', '2019-04-25 10:24:13', '2019-04-25 10:24:13');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/website/slide_images/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:24:16', '2019-04-25 10:24:16');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/website/slide_images', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:24:27', '2019-04-25 10:24:27');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/website/articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:26:48', '2019-04-25 10:26:48');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/website/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:26:51', '2019-04-25 10:26:51');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:27:25', '2019-04-25 10:27:25');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"SOE\",\"icon\":\"fa-cog\",\"uri\":\"website\\/setting\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\"}', '2019-04-25 10:28:30', '2019-04-25 10:28:30');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 10:28:30', '2019-04-25 10:28:30');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 10:28:33', '2019-04-25 10:28:33');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-25 10:36:27', '2019-04-25 10:36:27');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:36:30', '2019-04-25 10:36:30');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:40:29', '2019-04-25 10:40:29');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:40:53', '2019-04-25 10:40:53');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 10:41:38', '2019-04-25 10:41:38');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 10:49:39', '2019-04-25 10:49:39');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 10:49:52', '2019-04-25 10:49:52');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 10:50:03', '2019-04-25 10:50:03');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 10:50:11', '2019-04-25 10:50:11');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 10:50:29', '2019-04-25 10:50:29');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:52:20', '2019-04-25 10:52:20');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 10:53:49', '2019-04-25 10:53:49');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/website/setting/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-25 11:02:32', '2019-04-25 11:02:32');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/website/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 11:02:32', '2019-04-25 11:02:32');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/website/setting/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 11:03:14', '2019-04-25 11:03:14');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/website/setting/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u5e95\\u90e8\",\"value\":\"\\u7248\\u6743\\u6240\\u6709\\u00a92016\\u6d59\\u6c5f\\u8010\\u800c\\u6377\\u5de5\\u5177\\u6709\\u9650\\u516c\\u53f8\\uff08\\u6d59\\u6c5f\\u91d1\\u535a\\u5de5\\u5177\\u6709\\u9650\\u516c\\u53f8\\uff09.All Rights Reserved\",\"type\":\"text\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/setting\"}', '2019-04-25 11:03:17', '2019-04-25 11:03:17');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 11:03:18', '2019-04-25 11:03:18');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/website/setting/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 11:03:32', '2019-04-25 11:03:32');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/website/setting', 'POST', '127.0.0.1', '{\"title\":\"\\u7f51\\u7ad9\\u5730\\u5740\",\"value\":\"admin.com\",\"type\":\"text\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/setting\"}', '2019-04-25 11:03:43', '2019-04-25 11:03:43');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 11:03:44', '2019-04-25 11:03:44');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 11:04:17', '2019-04-25 11:04:17');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/website/setting/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-25 11:04:25', '2019-04-25 11:04:25');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/website/setting/3', 'PUT', '127.0.0.1', '{\"title\":\"Site\",\"value\":\"admin.com\",\"type\":\"text\",\"_token\":\"n9Wp1JWJMGSxlj31VGJe1JBVbjtNjsuELdxz3t9E\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.com\\/admin\\/website\\/setting\"}', '2019-04-25 11:04:30', '2019-04-25 11:04:30');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/website/setting', 'GET', '127.0.0.1', '[]', '2019-04-25 11:04:30', '2019-04-25 11:04:30');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', '个人设置', 'auth.setting', 'GET,PUT', '/auth/setting', null, '2019-04-24 09:37:29');
INSERT INTO `admin_permissions` VALUES ('5', '权限管理', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, '2019-04-24 09:37:51');
INSERT INTO `admin_permissions` VALUES ('6', '用户(权限测试)', 'user', '', '/demo/user', '2019-04-24 09:45:15', '2019-04-24 09:45:15');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-04-24 08:52:31', '2019-04-24 08:52:31');
INSERT INTO `admin_roles` VALUES ('2', '权限测试者', 'erp', '2019-04-24 09:38:37', '2019-04-24 09:38:37');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '11', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '12', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$i5OOF/lmVtXA.cJdHtRJW.d.LhnKLW4s.4.tZeatLsbbvIYHDi/CK', 'Administrator', null, 'RqNz6ZY0n4nJWDP8Q1OYxJqFhy59z14wvkiIseZn66WAjiMaWvOnDkocuhOV', '2019-04-24 08:52:31', '2019-04-24 08:52:31');
INSERT INTO `admin_users` VALUES ('2', 'lubo882', '$2y$10$nGiOhxGPPqkFFkSMGThkU.ctJF9krPKncptPH1KQKncDFj33fjg7C', '卢博', null, 'T3UcGkdWvXUi6e5IudMWEFqgB1HPx7HAh2bJv8PRf7st1WvMV1k3BwsUuhTa', '2019-04-24 09:40:43', '2019-04-24 09:40:43');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '19', '耐而捷企业文化', '浙江耐而捷工具有限公司以先进的生产技术和精湛的制造工艺、专业生产各种硬质合金圆锯片，包括木用、铝用、锯钢用、割草用等系列产品。公司秉承科技引领技术，态度成就完美的团队精神，以质量为根、诚信为本、携手发展、共同创新的理念，使科技创新内涵、品质成就象恒，从而满足各个行业在切割领域的需求。 \r\n \r\n企业使命：为耐而捷立心、为随者立命、为昌盛继贤才、为登高开先河\r\n企业愿景：用有限的资源创造无限的价值\r\n核心价值观：以诚信为根本，以质量求生存\r\n企业精神：伙伴、自由、梦想\r\n行为准则：诚信赢得信誉，专业赢得口碑\r\n \r\n耐而捷时刻牢记保护地球环境这一人类最重要的共同课题，坚持在发展中保护、在保护中发展，持续推进生态文明建设,在业务进行的各个环节，节能先行，绿色先行。\r\n\r\n耐而捷因为专注，所以专业，以最优的质量、最优的价格、最短的供货时间，最优质的服务给客户，顾客的需要就是我们的使命，一切为您着想，一切为您所及。欢迎来电咨询洽谈！', null, '2019-04-25 08:32:15');
INSERT INTO `articles` VALUES ('2', '12', '合金锯片使用注意事项有哪些？', '合金锯片使用注意事项有哪些？\r\n合金锯片使用注意事项有哪些？下面详细介绍：\r\n1.使用前必须认真阅读使用说明书和包装外壳上的记载事项。 \r\n2.根据被切割材料选择锯片品种，并检查锯片是否有裂缝，歪曲，掉齿，若锯片破损切勿使用。 \r\n3.使用时务必安装好切割机锯片外壳保护罩，并佩戴好口罩或防护眼睛。 \r\n4.锯片安装前请检查切割机的主轴是否有跳动，安装时将锯片用法兰盘和螺母定紧，安装后必须且人锯片的中心孔是否牢固固定在据台法兰盘上，有垫圈时必须将垫圈套好买入后轻轻用手推动锯片确认转动是否偏心晃动。 \r\n5.安装合金锯片后使用前需预转一分钟，待机器进入工作状态时才能进行切割作业。 \r\n6.非自动切割作业时，必须轻轻将正常运行中的锯片切入材料，禁止使劲强压硬推。并禁止倒转，禁止突然把锯片停在被切割物中间，否则导致锯齿脱落，锯体变形，容易发生危险。 \r\n7.使用中听到异常声音，看到异常晃动或切面不平时请停止作业并查找异常原因，及时更换锯片。 \r\n8.切割后请及时擦抹防锈油，以防锯片因长时间不使用而生锈。 \r\n9.请将锯片垂直挂于干燥的工具架，避开潮湿区域。勿将锯片平放在地上，否则容易导致锯片变形。多片锯片勿直接叠放，须间隔包装，以免锯齿发生碰撞，应轻拿轻放。\r\n10.锯片不锋利时要再研磨锯齿，不及时研磨容易破坏锯齿原有角度，影响切割精度，缩短锯片使用寿命。', '2019-04-25 05:30:07', '2019-04-25 08:32:37');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `is_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:否 1:是',
  `order` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '0', '首页', '1', '1', null, '2019-04-25 09:05:37');
INSERT INTO `categories` VALUES ('3', '2', '钢铁、有色金属加工', '0', '4', null, '2019-04-25 09:05:37');
INSERT INTO `categories` VALUES ('4', '2', '木材、纸品加工', '0', '3', null, '2019-04-25 09:05:37');
INSERT INTO `categories` VALUES ('5', '2', '建材、石材加工', '0', '5', null, '2019-04-25 09:05:37');
INSERT INTO `categories` VALUES ('6', '2', '新型、复合材料加工', '0', '6', null, '2019-04-25 09:05:37');
INSERT INTO `categories` VALUES ('2', '0', '产品', '1', '2', null, '2019-04-25 09:05:37');
INSERT INTO `categories` VALUES ('7', '0', '服务', '1', '7', null, null);
INSERT INTO `categories` VALUES ('8', '7', '技术支持', '0', '8', null, null);
INSERT INTO `categories` VALUES ('9', '7', '修磨服务', '0', '9', null, null);
INSERT INTO `categories` VALUES ('10', '7', '生产设备', '0', '10', null, null);
INSERT INTO `categories` VALUES ('11', '0', '新闻', '1', '11', null, null);
INSERT INTO `categories` VALUES ('12', '11', '公司新闻', '0', '12', null, null);
INSERT INTO `categories` VALUES ('13', '11', '行业资讯', '0', '13', null, null);
INSERT INTO `categories` VALUES ('14', '0', '人才', '1', '14', null, null);
INSERT INTO `categories` VALUES ('15', '14', '人才理念', '0', '15', null, null);
INSERT INTO `categories` VALUES ('16', '14', '人才招聘', '0', '16', null, null);
INSERT INTO `categories` VALUES ('17', '0', '关于耐而捷', '1', '17', null, null);
INSERT INTO `categories` VALUES ('18', '17', '企业简介', '0', '18', null, null);
INSERT INTO `categories` VALUES ('19', '17', '企业文化', '0', '19', null, null);
INSERT INTO `categories` VALUES ('20', '17', '荣誉证书', '0', '20', null, null);
INSERT INTO `categories` VALUES ('21', '17', '在线留言', '0', '21', null, null);
INSERT INTO `categories` VALUES ('22', '17', '联系我们', '0', '22', null, null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for slide_images
-- ----------------------------
DROP TABLE IF EXISTS `slide_images`;
CREATE TABLE `slide_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of slide_images
-- ----------------------------
INSERT INTO `slide_images` VALUES ('1', '轮播图-厂区效果图', 'images/b1.jpg', null, '2019-04-25 10:23:29');
INSERT INTO `slide_images` VALUES ('2', '轮播图-进口设备', 'images/b2.jpg', '2019-04-25 09:43:43', '2019-04-25 10:23:20');
INSERT INTO `slide_images` VALUES ('3', '轮播图-检测技术', 'images/b3.jpg', '2019-04-25 10:23:49', '2019-04-25 10:23:49');
INSERT INTO `slide_images` VALUES ('4', '轮播图-锯片', 'images/b4.jpg', '2019-04-25 10:24:13', '2019-04-25 10:24:13');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '小明', 'xm@18888883.com', '2019-04-25 05:01:44', '11111111', '22222', null, '2019-04-25 05:01:57');
INSERT INTO `users` VALUES ('2', '小红', 'xiaohong@163.com', null, '', null, null, null);

-- ----------------------------
-- Table structure for website_sets
-- ----------------------------
DROP TABLE IF EXISTS `website_sets`;
CREATE TABLE `website_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'text',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of website_sets
-- ----------------------------
INSERT INTO `website_sets` VALUES ('1', '网页标题', '耐而捷工具有限公司', 'text', null, null);
INSERT INTO `website_sets` VALUES ('2', '底部', '版权所有©2016浙江耐而捷工具有限公司（浙江金博工具有限公司）.All Rights Reserved', 'text', null, '2019-04-25 11:03:17');
INSERT INTO `website_sets` VALUES ('3', 'Site', 'admin.com', 'text', '2019-04-25 11:03:44', '2019-04-25 11:04:30');
