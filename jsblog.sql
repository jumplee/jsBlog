/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50090
Source Host           : localhost:3307
Source Database       : jsblog

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2015-09-02 08:18:03
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
  `add_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `category` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_blog
-- ----------------------------
INSERT INTO `js_blog` VALUES ('3', '心情不错', '<p>还是<span style=\"background-color: rgb(156, 0, 255); color: rgb(255, 255, 255);\">好好学习</span>比较重要。。。。。</p>', '2015-08-26 14:48:46', '1');
INSERT INTO `js_blog` VALUES ('4', 'hah', '<h1 style=\"font-size: 2em; margin-top: 0px; margin-bottom: 0px; color: rgb(92, 107, 119); font-weight: 600; font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif;\">自然运动</h1><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">现实物体照着一定节奏移动，并不是一开始就移动很快的。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">当我们打开现代家具的门或抽屉时，首先会让它加速，然后慢下来。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">当电梯开关门时，它在打开或关闭时都有一段缓冲带，是先加速，然后慢下来。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">当某个东西往下掉时，首先是越掉越快，撞到地上后回弹，最终才又碰触地板。</p><h3 id=\"质量和重量\" style=\"margin-top: 1.8em; margin-bottom: 1em; color: rgb(92, 107, 119); font-weight: 600; font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif;\">质量和重量</h3><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">在物理世界里，是以力量附加到物体对象里，加上自身的质量才完成一段动画。力量的持续时间决定物体的加速，减速与改变方向。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">动画停止与启动都不是瞬间完成的，因它需要一段缓冲的时间来加速或减速，因此，当动画有突然启动，停止或改变方向，都会显得很不自然。</p><blockquote style=\"margin-bottom: 0px; padding: 0px 0px 0px 0.8em; font-size: 12.6000003814697px; color: rgb(153, 153, 153); border-left-width: 4px; border-left-color: rgb(233, 233, 233); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif;\"><p style=\"margin-top: 1.2em; margin-bottom: 1.2em;\">以下图形，红色线与圆环为不推荐示例，蓝色为推荐示例。</p><div><br></div></blockquote>', '2015-08-26 15:13:34', '1');
INSERT INTO `js_blog` VALUES ('5', '自然运动', '<h1 style=\"font-size: 2em; margin-top: 0px; margin-bottom: 0px; color: rgb(92, 107, 119); font-weight: 600; font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif;\">自然运动</h1><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">现实物体照着一定节奏移动，并不是一开始就移动很快的。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">当我们打开现代家具的门或抽屉时，首先会让它加速，然后慢下来。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">当电梯开关门时，它在打开或关闭时都有一段缓冲带，是先加速，然后慢下来。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">当某个东西往下掉时，首先是越掉越快，撞到地上后回弹，最终才又碰触地板。</p><h3 id=\"质量和重量\" style=\"margin-top: 1.8em; margin-bottom: 1em; color: rgb(92, 107, 119); font-weight: 600; font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif;\">质量和重量</h3><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">在物理世界里，是以力量附加到物体对象里，加上自身的质量才完成一段动画。力量的持续时间决定物体的加速，减速与改变方向。</p><p style=\"margin-top: 1.2em; margin-bottom: 1.2em; color: rgb(119, 119, 119); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif; line-height: 25.2000007629395px;\">动画停止与启动都不是瞬间完成的，因它需要一段缓冲的时间来加速或减速，因此，当动画有突然启动，停止或改变方向，都会显得很不自然。</p><blockquote style=\"margin-bottom: 0px; padding: 0px 0px 0px 0.8em; font-size: 12.6000003814697px; color: rgb(153, 153, 153); border-left-width: 4px; border-left-color: rgb(233, 233, 233); font-family: \'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', 微软雅黑, SimSun, sans-serif;\"><p style=\"margin-top: 1.2em; margin-bottom: 1.2em;\">以下图形，红色线与圆环为不推荐示例，蓝色为推荐示例。</p><div><br></div></blockquote>', '2015-08-26 15:13:55', '1');

-- ----------------------------
-- Table structure for js_category
-- ----------------------------
DROP TABLE IF EXISTS `js_category`;
CREATE TABLE `js_category` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` varchar(300) default NULL COMMENT '分类描述',
  `pid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
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

-- ----------------------------
-- Table structure for js_login
-- ----------------------------
DROP TABLE IF EXISTS `js_login`;
CREATE TABLE `js_login` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` char(64) NOT NULL,
  `salt` char(16) NOT NULL,
  `last_login_time` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of js_login
-- ----------------------------
INSERT INTO `js_login` VALUES ('1', '', 'a62bb2899c1c0620f8c078f61efbca86', 't9qhf76zukxo', null);
INSERT INTO `js_login` VALUES ('2', 'admin', '7f07a2c1612253934f9aa3fc93b68989', '6foqz8ast5xn', null);
