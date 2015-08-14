/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50090
Source Host           : localhost:3307
Source Database       : jsblog

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2015-08-13 22:54:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for js_blog
-- ----------------------------
DROP TABLE IF EXISTS `js_blog`;
CREATE TABLE `js_blog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` text,
  `add_time` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `category` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_blog
-- ----------------------------

-- ----------------------------
-- Table structure for js_category
-- ----------------------------
DROP TABLE IF EXISTS `js_category`;
CREATE TABLE `js_category` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` varchar(300) default NULL COMMENT '分类描述',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_category
-- ----------------------------

-- ----------------------------
-- Table structure for js_images
-- ----------------------------
DROP TABLE IF EXISTS `js_images`;
CREATE TABLE `js_images` (
  `id` int(11) NOT NULL auto_increment,
  `blog_id` int(11) default NULL,
  `url` varchar(1000) default NULL,
  PRIMARY KEY  (`id`),
  KEY `bog_relate` (`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_images
-- ----------------------------
