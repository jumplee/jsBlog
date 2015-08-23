/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50538
 Source Host           : localhost
 Source Database       : jsblog

 Target Server Type    : MySQL
 Target Server Version : 50538
 File Encoding         : utf-8

 Date: 08/23/2015 19:23:52 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `js_blog`
-- ----------------------------
DROP TABLE IF EXISTS `js_blog`;
CREATE TABLE `js_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `js_category`
-- ----------------------------
DROP TABLE IF EXISTS `js_category`;
CREATE TABLE `js_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` varchar(300) DEFAULT NULL COMMENT '分类描述',
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `js_category`
-- ----------------------------
BEGIN;
INSERT INTO `js_category` VALUES ('1', '默认', '默认分类', '0');
COMMIT;

-- ----------------------------
--  Table structure for `js_images`
-- ----------------------------
DROP TABLE IF EXISTS `js_images`;
CREATE TABLE `js_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bog_relate` (`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
