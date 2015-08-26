/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50090
Source Host           : localhost:3307
Source Database       : jsblog

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2015-08-26 08:31:43
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
  `pid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_category
-- ----------------------------
INSERT INTO `js_category` VALUES ('1', '默认', '默认分类', '0');
INSERT INTO `js_category` VALUES ('6', '心情', '牢骚而已', '0');
INSERT INTO `js_category` VALUES ('7', '好事', '好事', '6');
INSERT INTO `js_category` VALUES ('11', 'javascript', '', '0');
INSERT INTO `js_category` VALUES ('12', 'css', '', '0');
INSERT INTO `js_category` VALUES ('14', 'nodejs', '', '0');
INSERT INTO `js_category` VALUES ('15', 'gulp', '', '14');
INSERT INTO `js_category` VALUES ('16', 'thinkjs', '小实验', '0');
INSERT INTO `js_category` VALUES ('17', '文学', '哈哈', '0');
INSERT INTO `js_category` VALUES ('18', '骚', '', '17');
INSERT INTO `js_category` VALUES ('19', '语法', '', '11');

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
