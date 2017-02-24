/*
 Navicat MySQL Data Transfer

 Source Server         : 本机
 Source Server Version : 50716
 Source Host           : localhost
 Source Database       : schoolcms_2.2

 Target Server Version : 50716
 File Encoding         : utf-8

 Date: 02/22/2017 11:40:06 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `sc_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sc_admin`;
CREATE TABLE `sc_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `login_pwd` char(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `login_salt` char(6) NOT NULL DEFAULT '' COMMENT '登录密码配合加密字符串',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别（0保密，1女，2男）',
  `login_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `role_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属角色组',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员';

-- ----------------------------
--  Records of `sc_admin`
-- ----------------------------
BEGIN;
INSERT INTO `sc_admin` VALUES ('1', 'admin', 'dcc9cb7f05fa8d6f118c3291ec6bc807', '802091', '', '0', '205', '1487657262', '1', '1481350313', '2017-02-21 14:07:42'), ('3', 'testtest', 'd4dc946b6bf6b485efa14ac4ab44ebf5', '364506', '', '0', '20', '1484402389', '13', '1483947758', '2017-01-14 21:59:49');
COMMIT;

-- ----------------------------
--  Table structure for `sc_article`
-- ----------------------------
DROP TABLE IF EXISTS `sc_article`;
CREATE TABLE `sc_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '标题',
  `title_color` char(7) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `article_class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类',
  `jump_url` char(255) NOT NULL DEFAULT '' COMMENT '跳转url地址',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `content` text COMMENT '内容',
  `image` text COMMENT '图片数据（一维数组序列化）',
  `image_count` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文章图片数量',
  `access_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `article_class_id` (`article_class_id`),
  KEY `is_enable` (`is_enable`),
  KEY `access_count` (`access_count`),
  KEY `image_count` (`image_count`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章';

-- ----------------------------
--  Records of `sc_article`
-- ----------------------------
BEGIN;
INSERT INTO `sc_article` VALUES ('1', '贾玲爆10年旧照 胖瘦之间你最看重的是什么', '', '16', '', '1', '<p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \">秀，身材苗条！</span></p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \"><img src=\"/Public/Upload/Article/image/2017/01/19/1484838701122098.jpeg\" alt=\"1484838701122098.jpeg\"/></p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><img src=\"/Public/Upload/Article/image/2017/01/19/1484838069829535.jpg\"/></p><p><img src=\"/Public/Upload/Article/image/2017/01/19/1484837827472781.png\"/></p><p><br/></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_xls.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838395412066.xls\" title=\"1484838395412066.xls\">1484838395412066.xls</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375767083.jpg\" title=\"1484838375767083.jpg\">1484838375767083.jpg</a></p><p><br/></p><p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=121.606,31.210187&zoom=14&width=530&height=340&markers=121.606,31.210187\"/></p><p><img src=\"/Public/Upload/Article/image/2017/01/22/1485065400518737.png\" alt=\"1485065400518737.png\"/></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_xls.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838395412066.xls\" title=\"1484838395412066.xls\">1484838395412066.xls</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375880355.txt\" title=\"1484838375880355.txt\">1484838375880355.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375867255.pdf\" title=\"1484838375867255.pdf\">1484838375867255.pdf</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375797315.txt\" title=\"1484838375797315.txt\">1484838375797315.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375767083.jpg\" title=\"1484838375767083.jpg\">1484838375767083.jpg</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375727274.txt\" title=\"1484838375727274.txt\">1484838375727274.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375604001.txt\" title=\"1484838375604001.txt\">1484838375604001.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375468644.txt\" title=\"1484838375468644.txt\">1484838375468644.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375453307.png\" title=\"1484838375453307.png\">1484838375453307.png</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375345152.txt\" title=\"1484838375345152.txt\">1484838375345152.txt</a></p>', 'a:4:{i:0;s:61:\"/Public/Upload/Article/image/2017/01/19/1484838701122098.jpeg\";i:1;s:60:\"/Public/Upload/Article/image/2017/01/19/1484838069829535.jpg\";i:2;s:60:\"/Public/Upload/Article/image/2017/01/19/1484837827472781.png\";i:3;s:60:\"/Public/Upload/Article/image/2017/01/22/1485065400518737.png\";}', '4', '0', '1484965691', '0'), ('3', '跳转到其它网站，祝大家新年快乐哦~', '#FF0000', '7', 'http://gong.gg', '1', '<p>跳转到其它网站，祝大家新年快乐哦~</p><p>跳转到其它网站，祝大家新年快乐哦~</p><p>跳转到其它网站，祝大家新年快乐哦~</p>', null, '0', '0', '1484985139', '0'), ('4', '我们家的喵咪，好可爱哦~', '', '17', '', '1', '<p><video class=\"edui-upload-video  vjs-default-skin      video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/Public/Upload/Article/video/2017/01/21/1484990258421599.mp4\" data-setup=\"{}\"></video></p><p>漂亮吧哈哈哈哈</p><p>sf凤飞飞</p><p>喜欢就下载这个视频</p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/26/1485399063513152.mp4\" title=\"1484990258421599.mp4\">1484990258421599.mp4</a></p><p><br/></p>', 'a:0:{}', '0', '0', '1484989903', '0'), ('5', '优酷视频观看的哦', '', '17', '', '1', '<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XMzQxNzA3OTQw/v.swf\" width=\"420\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p><p>欢迎观看唯乐淘推广视频，这只是一个演示视频，配合字符数量满足50个</p><p><br/></p>', null, '0', '0', '1485064767', '0'), ('6', 'SchoolCMS祝大家新年快乐，心想事成，生体健康', '', '17', '', '1', '<p><video class=\"edui-upload-video  vjs-default-skin video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/Public/Upload/Article/video/2017/01/22/1485074306725412.mp4\" data-setup=\"{}\"></video></p><p><br/></p><p><br/></p><p><img src=\"/Public/Upload/Article/image/2017/01/22/1485073394594307.jpeg\" title=\"1485073394594307.jpeg\" alt=\"a.jpeg\"/></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_rar.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/22/1485073455226735.zip\" title=\"SchoolCMS_Upgrade_2.0-2.1_UTF8.zip\">SchoolCMS_Upgrade_2.0-2.1_UTF8.zip</a></p><p><br/></p>', null, '0', '0', '1485073500', '0');
COMMIT;

-- ----------------------------
--  Table structure for `sc_article_class`
-- ----------------------------
DROP TABLE IF EXISTS `sc_article_class`;
CREATE TABLE `sc_article_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='教室类别';

-- ----------------------------
--  Records of `sc_article_class`
-- ----------------------------
BEGIN;
INSERT INTO `sc_article_class` VALUES ('7', '0', '关于我们', '1', '0', '0', '2016-12-25 14:41:23'), ('10', '0', '客户服务', '1', '0', '0', '2016-12-25 14:42:31'), ('16', '0', '学校风光', '1', '0', '1482840545', '2016-12-27 20:09:05'), ('17', '0', '生活栏目', '1', '0', '1482840557', '2016-12-27 20:09:17'), ('18', '0', '关于学生', '1', '0', '1482840577', '2016-12-27 20:09:37'), ('24', '0', '领导文章', '0', '0', '1483951541', '2017-01-09 16:45:41');
COMMIT;

-- ----------------------------
--  Table structure for `sc_class`
-- ----------------------------
DROP TABLE IF EXISTS `sc_class`;
CREATE TABLE `sc_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `is_enable` (`is_enable`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='班级类别';

-- ----------------------------
--  Records of `sc_class`
-- ----------------------------
BEGIN;
INSERT INTO `sc_class` VALUES ('7', '0', '一年级', '1', '0', '0', '2016-12-25 14:41:23'), ('10', '0', '二年级', '1', '0', '0', '2016-12-25 14:42:31'), ('16', '0', '三年级', '1', '0', '1482840545', '2016-12-27 20:09:05'), ('17', '7', '一班', '1', '0', '1482840557', '2016-12-27 20:09:17'), ('18', '7', '二班', '1', '0', '1482840577', '2016-12-27 20:09:37'), ('19', '10', '天才班', '1', '0', '1482922284', '2016-12-28 18:51:24'), ('20', '10', '优秀班', '1', '0', '1482922305', '2016-12-28 18:51:45'), ('21', '10', '普通班', '1', '0', '1482922320', '2016-12-28 18:52:00'), ('22', '7', 'NickName', '1', '0', '1483927006', '2017-01-09 09:56:46'), ('23', '10', 'ddd', '1', '0', '1483927617', '2017-01-09 10:06:57'), ('24', '16', '1班', '1', '0', '1483951541', '2017-01-09 16:45:41');
COMMIT;

-- ----------------------------
--  Table structure for `sc_config`
-- ----------------------------
DROP TABLE IF EXISTS `sc_config`;
CREATE TABLE `sc_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '基本设置id',
  `value` text COMMENT '值',
  `name` char(60) NOT NULL DEFAULT '' COMMENT '名称',
  `describe` char(255) NOT NULL DEFAULT '' COMMENT '描述',
  `error_tips` char(150) NOT NULL DEFAULT '' COMMENT '错误提示',
  `type` char(30) NOT NULL DEFAULT '' COMMENT '类型（admin后台, home前台）',
  `only_tag` char(60) NOT NULL DEFAULT '' COMMENT '唯一的标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `only_tag` (`only_tag`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='基本配置参数';

-- ----------------------------
--  Records of `sc_config`
-- ----------------------------
BEGIN;
INSERT INTO `sc_config` VALUES ('15', '10', '分页数量', '分页显示数量', '分页不能超过3位数', 'admin', 'admin_page_number'), ('3', '20', '成绩等级', '差', '差,较差,中,良,优，不能超过3位数', 'admin', 'admin_fraction_weak'), ('4', '40', '成绩等级', '较差', '', 'admin', 'admin_fraction_poor'), ('5', '60', '成绩等级', '中', '', 'admin', 'admin_fraction_commonly'), ('6', '80', '成绩等级', '良', '', 'admin', 'admin_fraction_good'), ('7', '100', '成绩等级', '优', '', 'admin', 'admin_fraction_excellent'), ('8', '7', '学期', '当前学期类id', '请选择学期', 'admin', 'admin_semester_id'), ('11', '1', 'Excel编码', 'excel模块编码选择', '请选择编码', 'admin', 'admin_excel_charset'), ('16', 'SchoolCMS标题', '站点标题', 'title', '站点标题不能为空', 'home', 'home_site_title'), ('17', 'SchoolCMS,学校管理系统,教务管理系统', '站点关键字', 'keywords', '站点关键字不能为空', 'home', 'home_site_keywords'), ('18', 'SchoolCMS国内首个开源教务管理系统', '站点描述', 'description', '站点描述不能为空', 'home', 'home_site_description'), ('19', '', 'ICP证书号', 'ICP域名备案号', 'ICP证书号不能为空', 'home', 'home_site_icp'), ('20', '', '底部统计代码', '支持html，可用于添加流量统计代码', '', 'home', 'home_statistics_code'), ('21', '1', '站点状态', '可暂时将站点关闭，其他人无法访问，但不影响管理员访问后台', '站点状态不能为空', 'home', 'home_site_state'), ('22', '升级中……', '关闭原因', '当网站处于关闭状态时，关闭原因将显示在前台', '', 'home', 'home_site_close_reason'), ('23', 'Asia/Shanghai', '默认时区', '默认 亚洲/上海（8）', '请选择默认时区', 'common', 'common_timezone');
COMMIT;

-- ----------------------------
--  Table structure for `sc_course`
-- ----------------------------
DROP TABLE IF EXISTS `sc_course`;
CREATE TABLE `sc_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `semester_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学期id',
  `teacher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教师id',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '班级id',
  `subject_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '科目id',
  `week_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '周天id',
  `interval_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时段id',
  `room_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教室id',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态（0不可用，1可用）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `semester_teacher_class_subject_week_interval` (`semester_id`,`teacher_id`,`class_id`,`subject_id`,`week_id`,`interval_id`),
  UNIQUE KEY `semester_week_interval_room` (`semester_id`,`week_id`,`interval_id`,`room_id`) USING BTREE,
  KEY `teacher_id` (`teacher_id`),
  KEY `class_id` (`class_id`),
  KEY `subject_id` (`subject_id`),
  KEY `week_id` (`week_id`),
  KEY `interval_id` (`interval_id`),
  KEY `semester_id` (`semester_id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='教师课程';

-- ----------------------------
--  Records of `sc_course`
-- ----------------------------
BEGIN;
INSERT INTO `sc_course` VALUES ('11', '7', '4', '18', '17', '12', '14', '18', '1', '1484219105', '2017-01-14 18:00:16'), ('12', '7', '1', '17', '19', '12', '14', '17', '1', '1484367651', '2017-01-14 18:34:57'), ('13', '7', '2', '18', '20', '12', '14', '19', '1', '1484367695', '2017-01-14 12:21:35'), ('14', '7', '2', '19', '20', '14', '14', '17', '1', '1484367735', '2017-01-14 12:22:15');
COMMIT;

-- ----------------------------
--  Table structure for `sc_custom_view`
-- ----------------------------
DROP TABLE IF EXISTS `sc_custom_view`;
CREATE TABLE `sc_custom_view` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `is_header` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否包含头部（0否, 1是）',
  `is_footer` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否包含尾部（0否, 1是）',
  `image` text COMMENT '图片数据（一维数组序列化）',
  `image_count` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文章图片数量',
  `access_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `is_enable` (`is_enable`),
  KEY `access_count` (`access_count`),
  KEY `image_count` (`image_count`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='自定义页面';

-- ----------------------------
--  Records of `sc_custom_view`
-- ----------------------------
BEGIN;
INSERT INTO `sc_custom_view` VALUES ('1', 'customview_贾玲爆10年旧照 胖瘦之间你最看重的是', '<p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \">秀，身材苗条！</span></p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \"><img src=\"/Public/Upload/Article/image/2017/01/19/1484838701122098.jpeg\" alt=\"1484838701122098.jpeg\"/></p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><span style=\"color: rgb(38, 38, 38); font-family: 微软雅黑, \"><br/></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">在欧美的排版业界中，使用 Arial 的作品意即是「不使用 Helvetica 的作品」，会被认為是设计师对字体的使用没有概念或是太容易妥协，基本上我大致也是同意。</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \">因為 Helvetica 只有 Mac 上才有內建，Windows 用戶除非花錢買，不然是沒有 Helvetica 能用，所以使用 Arial 的設計師往往被看成是不願意對 Typography 花錢，專業素養不到家的人。除了在確保網頁相容性等絕對必需的情況外，幾乎可以說是不應該使用的字體。</p><p><img src=\"/Public/Upload/Article/image/2017/01/19/1484838069829535.jpg\"/></p><p><img src=\"/Public/Upload/Article/image/2017/01/19/1484837827472781.png\"/></p><p><br/></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_xls.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838395412066.xls\" title=\"1484838395412066.xls\">1484838395412066.xls</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375767083.jpg\" title=\"1484838375767083.jpg\">1484838375767083.jpg</a></p><p><br/></p><p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=121.606,31.210187&zoom=14&width=530&height=340&markers=121.606,31.210187\"/></p><p><img src=\"/Public/Upload/Article/image/2017/01/22/1485065400518737.png\" alt=\"1485065400518737.png\"/></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_xls.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838395412066.xls\" title=\"1484838395412066.xls\">1484838395412066.xls</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375880355.txt\" title=\"1484838375880355.txt\">1484838375880355.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375867255.pdf\" title=\"1484838375867255.pdf\">1484838375867255.pdf</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375797315.txt\" title=\"1484838375797315.txt\">1484838375797315.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375767083.jpg\" title=\"1484838375767083.jpg\">1484838375767083.jpg</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375727274.txt\" title=\"1484838375727274.txt\">1484838375727274.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375604001.txt\" title=\"1484838375604001.txt\">1484838375604001.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375468644.txt\" title=\"1484838375468644.txt\">1484838375468644.txt</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375453307.png\" title=\"1484838375453307.png\">1484838375453307.png</a></p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/19/1484838375345152.txt\" title=\"1484838375345152.txt\">1484838375345152.txt</a></p>', '1', '0', '0', 'a:4:{i:0;s:61:\"/Public/Upload/Article/image/2017/01/19/1484838701122098.jpeg\";i:1;s:60:\"/Public/Upload/Article/image/2017/01/19/1484838069829535.jpg\";i:2;s:60:\"/Public/Upload/Article/image/2017/01/19/1484837827472781.png\";i:3;s:60:\"/Public/Upload/Article/image/2017/01/22/1485065400518737.png\";}', '4', '0', '1484965691', '2017-02-06 15:38:16'), ('3', '跳转到其它网站，祝大家新年快乐哦~', '<p>跳转到其它网站，祝大家新年快乐哦~</p><p>跳转到其它网站，祝大家新年快乐哦~</p><p>跳转到其它网站，祝大家新年快乐哦~</p>', '0', '1', '1', null, '0', '0', '1484985139', '2017-01-29 17:17:04'), ('4', '我们家的喵咪，好可爱哦~', '<p><video class=\"edui-upload-video  vjs-default-skin      video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/Public/Upload/Article/video/2017/01/21/1484990258421599.mp4\" data-setup=\"{}\"></video></p><p>漂亮吧哈哈哈哈</p><p>sf凤飞飞</p><p>喜欢就下载这个视频</p><p style=\"line-height: 16px;\"><img src=\"/Public/Common/Lib/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/Public/Upload/Article/file/2017/01/26/1485399063513152.mp4\" title=\"1484990258421599.mp4\">1484990258421599.mp4</a></p><p><br/></p>', '1', '1', '1', 'a:0:{}', '0', '0', '1484989903', '2017-01-29 17:17:06'), ('5', '优酷视频观看的哦', '<p><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XMzQxNzA3OTQw/v.swf\" width=\"420\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p><p>欢迎观看唯乐淘推广视频，这只是一个演示视频，配合字符数量满足50个</p><p><br/></p>', '1', '1', '1', null, '0', '0', '1485064767', '2017-02-06 21:51:26');
COMMIT;

-- ----------------------------
--  Table structure for `sc_fraction`
-- ----------------------------
DROP TABLE IF EXISTS `sc_fraction`;
CREATE TABLE `sc_fraction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '成绩id',
  `semester_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学期id',
  `student_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学生id',
  `subject_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '科目id',
  `score_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '成绩期号',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分数',
  `comment` char(255) NOT NULL DEFAULT '' COMMENT '教师点评',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `semester_student_subject_score` (`semester_id`,`student_id`,`subject_id`,`score_id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  KEY `score_id` (`score_id`),
  KEY `score` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学生成绩';

-- ----------------------------
--  Records of `sc_fraction`
-- ----------------------------
BEGIN;
INSERT INTO `sc_fraction` VALUES ('14', '7', '8', '19', '14', '88', '', '1483957162', '2017-01-09 18:19:22'), ('15', '7', '8', '19', '12', '98', 'sss', '1484041760', '2017-01-10 17:52:04'), ('16', '7', '8', '17', '14', '87', 'dd', '1484041823', '2017-01-10 17:50:23'), ('17', '7', '9', '17', '14', '77', '不错，比以前进步多了&lt;script&gt;alert(\'hello\');&lt;/script&gt;', '1484041940', '2017-01-10 17:52:20'), ('18', '7', '11', '20', '17', '78', '还不错的哦~', '1484056861', '2017-01-10 22:01:01'), ('19', '7', '10', '19', '14', '84', '', '1484057026', '2017-01-10 22:03:46'), ('20', '7', '12', '17', '14', '78', '哈哈哈很好的孩子', '1484393740', '2017-01-14 19:35:40');
COMMIT;

-- ----------------------------
--  Table structure for `sc_interval`
-- ----------------------------
DROP TABLE IF EXISTS `sc_interval`;
CREATE TABLE `sc_interval` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='时段类别';

-- ----------------------------
--  Records of `sc_interval`
-- ----------------------------
BEGIN;
INSERT INTO `sc_interval` VALUES ('14', '10:00-10:45', '1', '0', '0', '2016-12-25 17:19:00'), ('17', '11:00-11:45', '1', '0', '1482840012', '2016-12-27 20:00:12'), ('19', '13:00-13:45', '1', '0', '1482851842', '2016-12-27 23:17:22'), ('20', '14:00-14:45', '1', '0', '1482851855', '2016-12-27 23:17:35'), ('21', '15:00-15:45', '1', '0', '1482852585', '2016-12-27 23:29:45'), ('22', '16:00-16:45', '1', '0', '1482852593', '2016-12-27 23:29:53');
COMMIT;

-- ----------------------------
--  Table structure for `sc_layout`
-- ----------------------------
DROP TABLE IF EXISTS `sc_layout`;
CREATE TABLE `sc_layout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` char(60) NOT NULL DEFAULT '' COMMENT '布局类型',
  `value` char(60) NOT NULL DEFAULT '' COMMENT '布局类型值',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `upd_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `value` (`value`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8 COMMENT='布局管理';

-- ----------------------------
--  Records of `sc_layout`
-- ----------------------------
BEGIN;
INSERT INTO `sc_layout` VALUES ('1', 'home_link', '', '255', '1487657767', '0'), ('2', 'channel_link', '', '255', '1487657767', '1'), ('3', 'detail_link', '', '255', '1487657767', '1'), ('468', 'home', '122', '0', '1487657767', '0'), ('470', 'home', '124', '3', '1487664695', '1'), ('473', 'home', '336', '2', '1487671173', '1'), ('474', 'home', '100', '1', '1487672390', '1'), ('475', 'home', '84', '0', '1487728772', '0'), ('476', 'detail', '122', '0', '1487733797', '1'), ('477', 'channel', '122', '0', '1487734619', '0');
COMMIT;

-- ----------------------------
--  Table structure for `sc_layout_module`
-- ----------------------------
DROP TABLE IF EXISTS `sc_layout_module`;
CREATE TABLE `sc_layout_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `layout_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '布局id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模块名称',
  `right_title` char(255) NOT NULL DEFAULT '' COMMENT '右标题+链接（名称;链接）',
  `article_id` char(255) NOT NULL DEFAULT '' COMMENT '指定主题id（1,2,3）',
  `keyword` char(255) NOT NULL DEFAULT '' COMMENT '标题包含的关键字（win-unix;win|unix）',
  `show_number` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '显示条数',
  `abstract_number` int(10) unsigned NOT NULL DEFAULT '80' COMMENT '摘要字数',
  `article_class_id` char(255) NOT NULL DEFAULT '' COMMENT '文章分类（序列化数据,一维数组）',
  `sort_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '排序方式',
  `add_time_interval` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间段',
  `upd_time_interval` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间段',
  `title_style` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '标题样式',
  `link_open_way` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '打开方式',
  `date_format` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '日期格式',
  `data_cache_time` int(10) unsigned NOT NULL DEFAULT '60' COMMENT '数据缓存时间（单位分钟）',
  `summary` text COMMENT '自定义内容',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=794 DEFAULT CHARSET=utf8 COMMENT='布局模块';

-- ----------------------------
--  Records of `sc_layout_module`
-- ----------------------------
BEGIN;
INSERT INTO `sc_layout_module` VALUES ('773', '468', '教师管', '更多;http://gong.gg', '', '', '10', '80', 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:2:\"16\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487657769', '1487663533'), ('774', '468', '', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487657769', '1487660237'), ('778', '468', '', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487663652', '1487688401'), ('779', '470', '', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487664696', '1487664702'), ('780', '470', '', '', '', '', '10', '80', 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:2:\"16\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487664697', '1487664745'), ('781', '470', '', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487664697', '1487664707'), ('782', '470', '', '', '', '', '10', '80', 'a:4:{i:0;s:2:\"10\";i:1;s:2:\"16\";i:2;s:2:\"17\";i:3;s:2:\"18\";}', '0', '0', '0', '0', '0', '0', '80', '', '1487664699', '1487688368'), ('784', '473', '对方', '', '', '', '30', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '颠倒是非', '1487671173', '1487688289'), ('785', '473', '发广告', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '凤飞飞', '1487671173', '1487688308'), ('786', '473', '', '', '', '', '10', '80', '', '0', '0', '0', '0', '0', '0', '60', null, '1487671173', '1487671173'), ('787', '474', '333', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487672391', '1487674240'), ('788', '475', '', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487728772', '1487734736'), ('789', '475', '', '', '', '', '10', '80', '', '0', '0', '0', '0', '0', '0', '60', null, '1487728772', '1487728772'), ('790', '476', '', '', '', '', '10', '80', 'a:1:{i:0;s:1:\"0\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487733798', '1487733803'), ('791', '476', '模块名称detail', '更多;http://gong.gg', '', '', '10', '80', 'a:3:{i:0;s:2:\"10\";i:1;s:2:\"16\";i:2;s:2:\"17\";}', '0', '0', '0', '0', '0', '0', '60', '', '1487733799', '1487733830');
COMMIT;

-- ----------------------------
--  Table structure for `sc_link`
-- ----------------------------
DROP TABLE IF EXISTS `sc_link`;
CREATE TABLE `sc_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '导航名称',
  `url` char(255) NOT NULL DEFAULT '' COMMENT 'url地址',
  `describe` char(60) NOT NULL DEFAULT '' COMMENT '数据类型（custom:自定义导航, article_class:文章分类, customview:自定义页面）',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `is_new_window_open` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否新窗口打开（0否，1是）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`),
  KEY `is_enable` (`is_enable`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
--  Records of `sc_link`
-- ----------------------------
BEGIN;
INSERT INTO `sc_link` VALUES ('1', 'SchoolCMS', 'http://schoolcms.org/', 'SchoolCMS学校教务管理系统', '0', '1', '1', '1486292373', '2017-02-22 10:31:03'), ('12', 'AmazeUI', 'http://amazeui.org/', 'AmazeUI国内首个HTML5框架', '2', '1', '0', '1486353476', '2017-02-08 21:43:55'), ('13', '龚哥哥的博客', 'http://gong.gg/', '龚哥哥的博客', '1', '1', '0', '1486353528', '2017-02-08 21:27:47');
COMMIT;

-- ----------------------------
--  Table structure for `sc_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `sc_navigation`;
CREATE TABLE `sc_navigation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '导航名称',
  `url` char(255) NOT NULL DEFAULT '' COMMENT 'url地址',
  `value` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `data_type` char(30) NOT NULL DEFAULT '' COMMENT '数据类型（custom:自定义导航, article_class:文章分类, customview:自定义页面）',
  `nav_type` char(30) NOT NULL DEFAULT '' COMMENT '导航类型（header:顶部导航, footer:底部导航）',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0否，1是）',
  `is_new_window_open` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否新窗口打开（0否，1是）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `is_show` (`is_show`),
  KEY `sort` (`sort`),
  KEY `nav_type` (`nav_type`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='导航';

-- ----------------------------
--  Records of `sc_navigation`
-- ----------------------------
BEGIN;
INSERT INTO `sc_navigation` VALUES ('1', '0', '一级导航', 'http://schoolcms.org/', '0', 'custom', 'header', '0', '1', '0', '1486292373', '2017-02-08 11:24:49'), ('2', '0', '学校风采', '', '18', 'article_class', 'header', '0', '1', '0', '1486297310', '2017-02-08 11:35:40'), ('3', '0', '学校风光', '', '16', 'article_class', 'header', '0', '1', '0', '1486298744', '2017-02-08 11:28:08'), ('6', '1', '关于学生', '', '18', 'article_class', 'header', '0', '1', '1', '1486302580', '2017-02-06 11:09:28'), ('7', '1', '客户服务', '', '10', 'article_class', 'header', '0', '1', '0', '1486351011', '2017-02-06 11:16:51'), ('8', '0', '胖瘦之间你的', '', '1', 'customview', 'header', '0', '0', '0', '1486352254', '2017-02-08 11:35:17'), ('9', '0', '大家新年快乐', '', '6', 'customview', 'header', '0', '1', '0', '1486352437', '2017-02-08 11:34:50'), ('10', '9', '优酷视频观', '', '5', 'customview', 'header', '0', '1', '0', '1486352476', '2017-02-08 11:34:52'), ('12', '0', '底部导航测试', 'http://schoolcms.org/', '0', 'custom', 'footer', '2', '1', '0', '1486353476', '2017-02-06 12:00:32'), ('13', '0', '客户服务', '', '10', 'article_class', 'footer', '1', '1', '0', '1486353528', '2017-02-06 11:59:05'), ('14', '0', '龚哥哥的博客', 'http://gong.gg/', '0', 'custom', 'footer', '0', '1', '1', '1486525988', '2017-02-08 11:53:29'), ('15', '0', '联系我们', 'http://schoolcms.org/', '0', 'custom', 'footer', '0', '1', '0', '1486544708', '2017-02-08 17:05:08'), ('16', '0', '关于学生', '', '18', 'article_class', 'footer', '0', '1', '0', '1486544740', '2017-02-08 17:05:40');
COMMIT;

-- ----------------------------
--  Table structure for `sc_power`
-- ----------------------------
DROP TABLE IF EXISTS `sc_power`;
CREATE TABLE `sc_power` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '权限父级id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '权限名称',
  `control` char(30) NOT NULL DEFAULT '' COMMENT '控制器名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名称',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0否，1是）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限';

-- ----------------------------
--  Records of `sc_power`
-- ----------------------------
BEGIN;
INSERT INTO `sc_power` VALUES ('1', '0', '权限控制', 'Power', 'Index', '1', '1', '1481612301'), ('4', '1', '角色管理', 'Power', 'Role', '11', '1', '1481639037'), ('8', '0', '类别管理', 'Routine', 'Index', '20', '1', '1481697671'), ('10', '8', '班级分类', 'Class', 'Index', '20', '1', '1481727987'), ('11', '8', '科目分类', 'Subject', 'Index', '30', '1', '1481728003'), ('12', '8', '学期分类', 'Semester', 'Index', '0', '1', '1481728021'), ('13', '1', '权限分配', 'Power', 'Index', '21', '1', '1482156143'), ('15', '1', '权限添加/编辑', 'Power', 'PowerSave', '22', '0', '1482243750'), ('16', '1', '权限删除', 'Power', 'PowerDelete', '23', '0', '1482243797'), ('17', '1', '角色组添加/编辑页面', 'Power', 'RoleSaveInfo', '12', '0', '1482243855'), ('18', '1', '角色组添加/编辑', 'Power', 'RoleSave', '13', '0', '1482243888'), ('19', '1', '管理员添加/编辑页面', 'Admin', 'SaveInfo', '2', '0', '1482244637'), ('20', '1', '管理员添加/编辑', 'Admin', 'Save', '3', '0', '1482244666'), ('21', '1', '管理员删除', 'Admin', 'Delete', '4', '0', '1482244688'), ('22', '1', '管理员列表', 'Admin', 'Index', '1', '1', '1482568868'), ('23', '1', '角色删除', 'Power', 'RoleDelete', '14', '0', '1482569155'), ('24', '8', '成绩分类', 'Score', 'Index', '40', '1', '1482638641'), ('25', '8', '周分类', 'Week', 'Index', '50', '1', '1482638899'), ('26', '8', '时段分类', 'Interval', 'Index', '60', '1', '1482638982'), ('27', '8', '地区管理', 'Region', 'Index', '70', '1', '1482639024'), ('28', '0', '学生管理', 'Student', 'Index', '2', '1', '1482854151'), ('29', '28', '学生列表', 'Student', 'Index', '1', '1', '1482854186'), ('30', '0', '成绩管理', 'Fraction', 'Index', '3', '1', '1482854384'), ('31', '30', '学生成绩', 'Fraction', 'Index', '1', '1', '1482854429'), ('32', '28', '学生添加/编辑页面', 'Student', 'SaveInfo', '2', '0', '1482915262'), ('33', '28', '学生添加/编辑', 'Student', 'Save', '3', '0', '1482915761'), ('34', '28', '学生删除', 'Student', 'Delete', '4', '0', '1482915804'), ('35', '30', '成绩录入页面', 'Fraction', 'SaveInfo', '2', '0', '1483096318'), ('36', '30', '成绩删除', 'Fraction', 'Delete', '4', '0', '1483096348'), ('37', '30', '成绩添加/编辑', 'Fraction', 'Save', '3', '0', '1483176255'), ('38', '0', '教师管理', 'Teacher', 'Index', '4', '1', '1483283430'), ('39', '38', '教师管理', 'Teacher', 'Index', '1', '1', '1483283546'), ('40', '38', '课程安排', 'Course', 'Index', '20', '1', '1483283640'), ('41', '0', '配置设置', 'Config', 'Index', '0', '1', '1483362358'), ('42', '41', '配置保存', 'Config', 'Save', '1', '0', '1483432335'), ('43', '8', '学期添加/编辑', 'Semester', 'Save', '1', '0', '1483456550'), ('44', '8', '班级添加/编辑', 'Class', 'Save', '21', '0', '1483456605'), ('45', '8', '科目添加/编辑', 'Subject', 'Save', '31', '0', '1483456640'), ('46', '8', '成绩添加/编辑', 'Score', 'Save', '41', '0', '1483456687'), ('47', '8', '周添加/编辑', 'Week', 'Save', '51', '0', '1483456721'), ('48', '8', '时段添加/编辑', 'Interval', 'Save', '61', '0', '1483456748'), ('49', '8', '地区添加/编辑', 'Region', 'Save', '71', '0', '1483456778'), ('50', '8', '学期删除', 'Semester', 'Delete', '2', '0', '1483457140'), ('51', '8', '班级删除', 'Class', 'Delete', '22', '0', '1483457222'), ('52', '8', '科目删除', 'Subject', 'Delete', '32', '0', '1483457265'), ('53', '8', '成绩删除', 'Score', 'Delete', '42', '0', '1483457291'), ('54', '8', '周删除', 'Week', 'Delete', '52', '0', '1483457365'), ('55', '8', '时段删除', 'Interval', 'Delete', '62', '0', '1483457405'), ('56', '8', '地区删除', 'Region', 'Delete', '72', '0', '1483457442'), ('57', '38', '教师添加/编辑页面', 'Teacher', 'SaveInfo', '2', '0', '1483616439'), ('58', '38', '教师添加/编辑', 'Teacher', 'Save', '3', '0', '1483616492'), ('59', '38', '教师删除', 'Teacher', 'Delete', '4', '0', '1483616569'), ('60', '38', '课程添加/编辑页面', 'Course', 'SaveInfo', '21', '0', '1483790861'), ('61', '38', '课程添加/编辑', 'Course', 'Save', '22', '0', '1483790940'), ('62', '38', '课程删除', 'Course', 'Delete', '23', '0', '1483790962'), ('63', '28', 'Excel导出', 'Student', 'ExcelExport', '5', '0', '1484058295'), ('64', '30', 'Excel导出', 'Fraction', 'ExcelExport', '5', '0', '1484058375'), ('65', '38', 'Excel导出', 'Teacher', 'ExcelExport', '5', '0', '1484058437'), ('66', '38', 'Excel导出', 'Course', 'ExcelExport', '24', '0', '1484058488'), ('67', '38', '课程状态更新', 'Course', 'StateUpdate', '25', '0', '1484231130'), ('68', '8', '教室管理', 'Room', 'Index', '80', '1', '1484304475'), ('69', '8', '教室添加/编辑', 'Room', 'Save', '81', '0', '1484304519'), ('70', '8', '教室删除', 'Room', 'Delete', '82', '0', '1484304545'), ('71', '8', '文章分类', 'ArticleClass', 'Index', '90', '1', '1484580289'), ('72', '8', '文章分类编辑/添加', 'ArticleClass', 'Save', '91', '0', '1484580380'), ('73', '8', '文章分类删除', 'ArticleClass', 'Delete', '92', '0', '1484580436'), ('74', '0', '文章管理', 'Article', 'Index', '5', '1', '1484581913'), ('75', '74', '文章管理', 'Article', 'Index', '0', '1', '1484581938'), ('76', '74', '文章添加/编辑页面', 'Article', 'SaveInfo', '1', '0', '1484740785'), ('77', '74', '文章添加/编辑', 'Article', 'Save', '2', '0', '1484740810'), ('78', '74', '文章删除', 'Article', 'Delete', '3', '0', '1484740826'), ('79', '74', 'Excel导出', 'Article', 'ExcelExport', '6', '0', '1484981822'), ('80', '74', '文章状态更新', 'Article', 'StateUpdate', '7', '0', '1484982416'), ('81', '0', '站点管理', 'Site', 'Index', '9', '1', '1486182943'), ('82', '102', '中间导航', 'NavHeader', 'Index', '0', '1', '1486183114'), ('83', '102', '底部导航', 'NavFooter', 'Index', '11', '1', '1486183145'), ('84', '102', '导航添加/编辑页面', 'NavHeader', 'SaveInfo', '1', '0', '1486183347'), ('85', '102', '导航添加/编辑', 'NavHeader', 'Save', '2', '0', '1486183367'), ('86', '102', '导航删除', 'NavHeader', 'Delete', '3', '0', '1486183410'), ('87', '102', '导航状态更新', 'NavHeader', 'StateUpdate', '4', '0', '1486183462'), ('88', '102', '导航添加/编辑页面', 'NavFooter', 'SaveInfo', '12', '0', '1486183538'), ('89', '102', '导航添加/编辑', 'NavFooter', 'Save', '13', '0', '1486183800'), ('90', '102', '导航删除', 'NavFooter', 'Delete', '14', '0', '1486192992'), ('91', '102', '导航状态更新', 'NavFooter', 'StateUpdate', '15', '0', '1486193042'), ('92', '102', '自定义页面', 'CustomView', 'Index', '21', '1', '1486193400'), ('93', '102', '自定义页面添加/编辑页面', 'CustomView', 'SaveInfo', '22', '0', '1486193449'), ('94', '102', '自定义页面添加/编辑', 'CustomView', 'Save', '23', '0', '1486193473'), ('95', '102', '自定义页面删除', 'CustomView', 'Delete', '24', '0', '1486193516'), ('96', '102', '自定义页面状态更新', 'CustomView', 'StateUpdate', '25', '0', '1486193582'), ('97', '102', '友情链接', 'Link', 'Index', '31', '1', '1486194358'), ('98', '102', '友情链接添加/编辑页面', 'Link', 'SaveInfo', '32', '0', '1486194392'), ('99', '102', '友情链接添加/编辑', 'Link', 'Save', '33', '0', '1486194413'), ('100', '102', '友情链接删除', 'Link', 'Delete', '34', '0', '1486194435'), ('101', '102', '友情链接状态更新', 'Link', 'StateUpdate', '35', '0', '1486194479'), ('102', '0', '网站管理', 'NavHeader', 'Index', '10', '1', '1486561030'), ('103', '81', '站点设置', 'Site', 'Index', '0', '1', '1486561470'), ('104', '81', '站点设置添加/编辑页面', 'Site', 'SaveInfo', '1', '0', '1486561615'), ('105', '81', '站点设置添加/编辑', 'Site', 'Save', '2', '0', '1486561780'), ('106', '81', 'SEO设置', 'Seo', 'Index', '11', '1', '1486561958'), ('107', '81', 'SEO设置添加/编辑页面', 'Seo', 'SaveInfo', '12', '0', '1486562011'), ('108', '81', 'SEO设置添加/编辑', 'Seo', 'Save', '13', '0', '1486562038'), ('109', '102', '页面设置', 'View', 'Index', '41', '1', '1486562396'), ('110', '102', '获取模块数据', 'View', 'GetLayoutModuleData', '42', '0', '1486562436'), ('111', '102', '布局添加/编辑', 'View', 'LayoutSave', '43', '0', '1486562480'), ('112', '102', '模块添加', 'View', 'ModuleAdd', '47', '0', '1487341698'), ('113', '102', '模块保存', 'View', 'ModuleSave', '48', '0', '1487341728'), ('114', '102', '布局状态更新', 'View', 'StateUpdate', '44', '0', '1487563663'), ('115', '102', '布局删除', 'View', 'LayoutDelete', '45', '0', '1487569443'), ('116', '102', '模块删除', 'View', 'ModuleDelete', '49', '0', '1487569470'), ('117', '102', '布局排序保存', 'View', 'LayoutSortSave', '46', '0', '1487578045');
COMMIT;

-- ----------------------------
--  Table structure for `sc_region`
-- ----------------------------
DROP TABLE IF EXISTS `sc_region`;
CREATE TABLE `sc_region` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `is_enable` (`is_enable`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='地区';

-- ----------------------------
--  Records of `sc_region`
-- ----------------------------
BEGIN;
INSERT INTO `sc_region` VALUES ('7', '0', '谯家镇2', '1', '2', '0', '2016-12-25 14:41:23'), ('8', '7', '印山村2', '1', '0', '0', '2016-12-25 14:41:38'), ('9', '8', '康家坨', '1', '0', '0', '2016-12-25 14:41:54'), ('10', '0', '夹石镇', '0', '1', '0', '2016-12-25 14:42:31'), ('11', '10', '水进湾', '1', '0', '0', '2016-12-25 14:42:53'), ('12', '0', '小垫矮', '1', '0', '0', '2016-12-25 14:43:30'), ('14', '8', '麻池', '1', '0', '0', '2016-12-25 17:19:00'), ('15', '8', '并蛋鸭', '1', '0', '0', '2016-12-25 17:19:17'), ('17', '0', '试试水', '1', '0', '1482847113', '2016-12-27 21:58:33'), ('18', '7', '时代复分', '1', '0', '1482850246', '2016-12-27 22:50:46'), ('19', '9', '的方法发', '1', '0', '1482851116', '2016-12-27 23:05:16'), ('20', '17', 'sdfsd', '1', '0', '1484204770', '2017-01-12 15:06:10');
COMMIT;

-- ----------------------------
--  Table structure for `sc_role`
-- ----------------------------
DROP TABLE IF EXISTS `sc_role`;
CREATE TABLE `sc_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色组id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '角色名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色组';

-- ----------------------------
--  Records of `sc_role`
-- ----------------------------
BEGIN;
INSERT INTO `sc_role` VALUES ('1', '系统管理员', '1', '1481350313', '2017-01-08 17:06:24'), ('13', '超级管理员', '1', '1484402362', '2017-01-14 21:59:22');
COMMIT;

-- ----------------------------
--  Table structure for `sc_role_power`
-- ----------------------------
DROP TABLE IF EXISTS `sc_role_power`;
CREATE TABLE `sc_role_power` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '关联id',
  `role_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `power_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '权限id',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `power_id` (`power_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1034 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色与权限管理';

-- ----------------------------
--  Records of `sc_role_power`
-- ----------------------------
BEGIN;
INSERT INTO `sc_role_power` VALUES ('980', '13', '41', '1484402362'), ('981', '13', '42', '1484402362'), ('982', '13', '1', '1484402362'), ('983', '13', '22', '1484402362'), ('984', '13', '4', '1484402362'), ('985', '13', '28', '1484402362'), ('986', '13', '29', '1484402362'), ('987', '13', '32', '1484402362'), ('988', '13', '33', '1484402362'), ('989', '13', '34', '1484402362'), ('990', '13', '63', '1484402362'), ('991', '13', '30', '1484402362'), ('992', '13', '31', '1484402362'), ('993', '13', '35', '1484402362'), ('994', '13', '37', '1484402362'), ('995', '13', '36', '1484402362'), ('996', '13', '64', '1484402362'), ('997', '13', '38', '1484402362'), ('998', '13', '39', '1484402362'), ('999', '13', '57', '1484402362'), ('1000', '13', '58', '1484402362'), ('1001', '13', '59', '1484402362'), ('1002', '13', '65', '1484402362'), ('1003', '13', '40', '1484402362'), ('1004', '13', '60', '1484402362'), ('1005', '13', '61', '1484402362'), ('1006', '13', '62', '1484402362'), ('1007', '13', '66', '1484402362'), ('1008', '13', '67', '1484402362'), ('1009', '13', '8', '1484402362'), ('1010', '13', '12', '1484402362'), ('1011', '13', '43', '1484402362'), ('1012', '13', '50', '1484402362'), ('1013', '13', '10', '1484402362'), ('1014', '13', '44', '1484402362'), ('1015', '13', '51', '1484402362'), ('1016', '13', '11', '1484402362'), ('1017', '13', '45', '1484402362'), ('1018', '13', '52', '1484402362'), ('1019', '13', '24', '1484402362'), ('1020', '13', '46', '1484402362'), ('1021', '13', '53', '1484402362'), ('1022', '13', '25', '1484402362'), ('1023', '13', '47', '1484402362'), ('1024', '13', '54', '1484402362'), ('1025', '13', '26', '1484402362'), ('1026', '13', '48', '1484402362'), ('1027', '13', '55', '1484402362'), ('1028', '13', '27', '1484402362'), ('1029', '13', '49', '1484402362'), ('1030', '13', '56', '1484402362'), ('1031', '13', '68', '1484402362'), ('1032', '13', '69', '1484402362'), ('1033', '13', '70', '1484402362');
COMMIT;

-- ----------------------------
--  Table structure for `sc_room`
-- ----------------------------
DROP TABLE IF EXISTS `sc_room`;
CREATE TABLE `sc_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `is_enable` (`is_enable`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='教室类别';

-- ----------------------------
--  Records of `sc_room`
-- ----------------------------
BEGIN;
INSERT INTO `sc_room` VALUES ('7', '0', '东区', '1', '0', '0', '2016-12-25 14:41:23'), ('10', '0', '西北区', '1', '0', '0', '2016-12-25 14:42:31'), ('16', '0', '天才班专用教室1号', '1', '0', '1482840545', '2016-12-27 20:09:05'), ('17', '7', '教室一', '1', '0', '1482840557', '2016-12-27 20:09:17'), ('18', '7', '教室二', '1', '0', '1482840577', '2016-12-27 20:09:37'), ('19', '10', '教室一', '1', '0', '1482922284', '2016-12-28 18:51:24'), ('20', '10', '教室二', '1', '0', '1482922305', '2016-12-28 18:51:45'), ('21', '10', '教室三', '1', '0', '1482922320', '2016-12-28 18:52:00'), ('24', '0', 'VIP教室', '1', '0', '1483951541', '2017-01-09 16:45:41');
COMMIT;

-- ----------------------------
--  Table structure for `sc_score`
-- ----------------------------
DROP TABLE IF EXISTS `sc_score`;
CREATE TABLE `sc_score` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='成绩类别';

-- ----------------------------
--  Records of `sc_score`
-- ----------------------------
BEGIN;
INSERT INTO `sc_score` VALUES ('12', '第一期', '1', '0', '0', '2016-12-25 14:43:30'), ('14', '第二期', '1', '0', '0', '2016-12-25 17:19:00'), ('17', '第三期', '1', '0', '1482840012', '2016-12-27 20:00:12'), ('19', '第四期', '1', '0', '1482851842', '2016-12-27 23:17:22'), ('20', '第五期', '1', '0', '1482851855', '2016-12-27 23:17:35');
COMMIT;

-- ----------------------------
--  Table structure for `sc_semester`
-- ----------------------------
DROP TABLE IF EXISTS `sc_semester`;
CREATE TABLE `sc_semester` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学期类别';

-- ----------------------------
--  Records of `sc_semester`
-- ----------------------------
BEGIN;
INSERT INTO `sc_semester` VALUES ('7', '2016上学期', '1', '1', '0', '2016-12-25 14:41:23'), ('8', '2016下学期', '1', '0', '0', '2016-12-25 14:41:38'), ('18', 'dsdsa', '1', '0', '1483952728', '2017-01-09 17:05:28');
COMMIT;

-- ----------------------------
--  Table structure for `sc_student`
-- ----------------------------
DROP TABLE IF EXISTS `sc_student`;
CREATE TABLE `sc_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `username` char(32) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card` char(18) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别（0保密，1女，2男）',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `semester_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '学期id',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '班级id',
  `region_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区id',
  `address` char(150) NOT NULL DEFAULT '' COMMENT '详细地址',
  `tel` char(15) NOT NULL DEFAULT '' COMMENT '联系方式（手机或座机）',
  `state` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '学生状态（0待入学, 1在读, 2已毕业, 3弃学, 4已开除）',
  `tuition_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '学费缴纳状态（0未缴费，1缴费）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_card_semester_id` (`id_card`,`semester_id`),
  KEY `class_id` (`class_id`),
  KEY `region_id` (`region_id`),
  KEY `state` (`state`),
  KEY `tuition_state` (`tuition_state`),
  KEY `birthday` (`birthday`),
  KEY `gender` (`gender`),
  KEY `semester_id` (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学生';

-- ----------------------------
--  Records of `sc_student`
-- ----------------------------
BEGIN;
INSERT INTO `sc_student` VALUES ('8', '留洋', '142613199904234622', '2', '917452800', '7', '17', '7', '', '03667879265', '0', '0', '1483932878', '2017-01-10 22:58:05'), ('9', '张三', '533338198988888888', '2', '736012800', '7', '19', '8', '学校附近的888号', '17000000000', '1', '1', '1483936027', '2017-01-09 12:27:07'), ('10', '武松打虎', '677771999999999992', '2', '633801600', '7', '20', '9', '', '17666666666', '1', '1', '1483936080', '2017-01-09 12:28:00'), ('11', '小花', '211118199102111666', '1', '736012800', '7', '19', '11', '住校', '13199999999', '1', '1', '1483936138', '2017-01-09 12:28:58'), ('12', '大哥哥', '399998198898998887', '2', '839433600', '7', '16', '14', '', '13222222222', '1', '1', '1483936199', '2017-01-09 12:29:59'), ('13', '地地道道', '441801198810252656', '2', '1483891200', '7', '18', '9', '111', '15915110562', '3', '1', '1483948630', '2017-01-19 11:36:41');
COMMIT;

-- ----------------------------
--  Table structure for `sc_subject`
-- ----------------------------
DROP TABLE IF EXISTS `sc_subject`;
CREATE TABLE `sc_subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='科目类别';

-- ----------------------------
--  Records of `sc_subject`
-- ----------------------------
BEGIN;
INSERT INTO `sc_subject` VALUES ('17', '政治', '1', '0', '1482840012', '2016-12-27 20:00:12'), ('19', '化学', '1', '0', '1482851842', '2016-12-27 23:17:22'), ('20', '地理', '1', '0', '1482851855', '2016-12-27 23:17:35');
COMMIT;

-- ----------------------------
--  Table structure for `sc_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `sc_teacher`;
CREATE TABLE `sc_teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `username` char(32) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card` char(18) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别（0保密，1女，2男）',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `address` char(150) NOT NULL DEFAULT '' COMMENT '详细地址',
  `tel` char(15) NOT NULL DEFAULT '' COMMENT '联系方式（手机或座机）',
  `state` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '教师状态（0待报道, 1在职, 2已离职, 3已退休, 4已开除）',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_card` (`id_card`),
  KEY `state` (`state`),
  KEY `birthday` (`birthday`),
  KEY `gender` (`gender`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='教师';

-- ----------------------------
--  Records of `sc_teacher`
-- ----------------------------
BEGIN;
INSERT INTO `sc_teacher` VALUES ('1', '张老师', '222228198888888888', '0', '318182400', '', '13888888888', '2', '1483936487', '2017-01-10 23:12:08'), ('2', '刘老师', '822228198999999999', '2', '2390400', '哈哈呵呵', '021-33333333', '1', '1483957038', '2017-01-10 23:17:21'), ('3', 'hello', '522228198888888888', '2', '1367424000', '梵蒂冈', '17602128368', '2', '1484211799', '2017-01-12 17:03:19'), ('4', '的方法', '522229199999999933', '2', '1367424000', '电饭锅sdfsfsdfdfs', '021-33333333', '1', '1484211920', '2017-01-12 17:13:46');
COMMIT;

-- ----------------------------
--  Table structure for `sc_teacher_subject`
-- ----------------------------
DROP TABLE IF EXISTS `sc_teacher_subject`;
CREATE TABLE `sc_teacher_subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '关联id',
  `teacher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教师id',
  `subject_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '科目id',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_subject` (`teacher_id`,`subject_id`),
  KEY `teacher_id` (`teacher_id`) USING BTREE,
  KEY `subject_id` (`subject_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='教师科目关联';

-- ----------------------------
--  Records of `sc_teacher_subject`
-- ----------------------------
BEGIN;
INSERT INTO `sc_teacher_subject` VALUES ('14', '4', '17', '1484212426'), ('15', '4', '20', '1484212426'), ('16', '3', '19', '1484212442'), ('17', '3', '20', '1484212442'), ('18', '1', '17', '1484367612'), ('19', '1', '19', '1484367612'), ('20', '1', '20', '1484367612'), ('21', '2', '20', '1484367657');
COMMIT;

-- ----------------------------
--  Table structure for `sc_week`
-- ----------------------------
DROP TABLE IF EXISTS `sc_week`;
CREATE TABLE `sc_week` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` char(30) NOT NULL COMMENT '名称',
  `is_enable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（0否，1是）',
  `sort` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='周天类别';

-- ----------------------------
--  Records of `sc_week`
-- ----------------------------
BEGIN;
INSERT INTO `sc_week` VALUES ('12', '星期一', '1', '0', '0', '2016-12-25 14:43:30'), ('14', '星期二', '1', '0', '0', '2016-12-25 17:19:00'), ('17', '星期三', '1', '0', '1482840012', '2016-12-27 20:00:12'), ('19', '星期四', '1', '0', '1482851842', '2016-12-27 23:17:22'), ('20', '星期五', '1', '0', '1482851855', '2016-12-27 23:17:35'), ('21', '星期六', '1', '0', '1482852585', '2016-12-27 23:29:45'), ('22', '星期日', '1', '0', '1482852593', '2016-12-27 23:29:53');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;