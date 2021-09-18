# Host: localhost  (Version: 5.7.26)
# Date: 2021-09-18 15:57:51
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "ims_account"
#

DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `send_account_expire_status` tinyint(1) NOT NULL,
  `send_api_expire_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_account"
#

/*!40000 ALTER TABLE `ims_account` DISABLE KEYS */;
INSERT INTO `ims_account` VALUES (1,1,'uRr8qvQV',1,0,0,0,0,0);
/*!40000 ALTER TABLE `ims_account` ENABLE KEYS */;

#
# Structure for table "ims_account_aliapp"
#

DROP TABLE IF EXISTS `ims_account_aliapp`;
CREATE TABLE `ims_account_aliapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `key` varchar(16) NOT NULL,
  PRIMARY KEY (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_aliapp"
#

/*!40000 ALTER TABLE `ims_account_aliapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_aliapp` ENABLE KEYS */;

#
# Structure for table "ims_account_baiduapp"
#

DROP TABLE IF EXISTS `ims_account_baiduapp`;
CREATE TABLE `ims_account_baiduapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appid` varchar(32) NOT NULL,
  `key` varchar(32) NOT NULL,
  `secret` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_baiduapp"
#

/*!40000 ALTER TABLE `ims_account_baiduapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_baiduapp` ENABLE KEYS */;

#
# Structure for table "ims_account_phoneapp"
#

DROP TABLE IF EXISTS `ims_account_phoneapp`;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_phoneapp"
#

/*!40000 ALTER TABLE `ims_account_phoneapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_phoneapp` ENABLE KEYS */;

#
# Structure for table "ims_account_toutiaoapp"
#

DROP TABLE IF EXISTS `ims_account_toutiaoapp`;
CREATE TABLE `ims_account_toutiaoapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appid` varchar(32) NOT NULL,
  `key` varchar(32) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_toutiaoapp"
#

/*!40000 ALTER TABLE `ims_account_toutiaoapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_toutiaoapp` ENABLE KEYS */;

#
# Structure for table "ims_account_webapp"
#

DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_webapp"
#

/*!40000 ALTER TABLE `ims_account_webapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_webapp` ENABLE KEYS */;

#
# Structure for table "ims_account_wechats"
#

DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_wechats"
#

/*!40000 ALTER TABLE `ims_account_wechats` DISABLE KEYS */;
INSERT INTO `ims_account_wechats` VALUES (1,1,'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','',1,'we7team','','','','','','','','',0,'wx14407ec5855fd78a','c3086f3c08574e084421007b68b1f994',1,'','');
/*!40000 ALTER TABLE `ims_account_wechats` ENABLE KEYS */;

#
# Structure for table "ims_account_wxapp"
#

DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  `auth_refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_wxapp"
#

/*!40000 ALTER TABLE `ims_account_wxapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_wxapp` ENABLE KEYS */;

#
# Structure for table "ims_account_xzapp"
#

DROP TABLE IF EXISTS `ims_account_xzapp`;
CREATE TABLE `ims_account_xzapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `original` varchar(50) NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `xzapp_id` varchar(30) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `key` varchar(80) NOT NULL,
  `secret` varchar(80) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_account_xzapp"
#

/*!40000 ALTER TABLE `ims_account_xzapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_xzapp` ENABLE KEYS */;

#
# Structure for table "ims_activity_clerk_menu"
#

DROP TABLE IF EXISTS `ims_activity_clerk_menu`;
CREATE TABLE `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_activity_clerk_menu"
#

/*!40000 ALTER TABLE `ims_activity_clerk_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_activity_clerk_menu` ENABLE KEYS */;

#
# Structure for table "ims_activity_clerks"
#

DROP TABLE IF EXISTS `ims_activity_clerks`;
CREATE TABLE `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `password` (`password`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_activity_clerks"
#

/*!40000 ALTER TABLE `ims_activity_clerks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_activity_clerks` ENABLE KEYS */;

#
# Structure for table "ims_article_category"
#

DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_article_category"
#

/*!40000 ALTER TABLE `ims_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_category` ENABLE KEYS */;

#
# Structure for table "ims_article_comment"
#

DROP TABLE IF EXISTS `ims_article_comment`;
CREATE TABLE `ims_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_article_comment"
#

/*!40000 ALTER TABLE `ims_article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_comment` ENABLE KEYS */;

#
# Structure for table "ims_article_news"
#

DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_article_news"
#

/*!40000 ALTER TABLE `ims_article_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_news` ENABLE KEYS */;

#
# Structure for table "ims_article_notice"
#

DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_article_notice"
#

/*!40000 ALTER TABLE `ims_article_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_notice` ENABLE KEYS */;

#
# Structure for table "ims_article_unread_notice"
#

DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_article_unread_notice"
#

/*!40000 ALTER TABLE `ims_article_unread_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_unread_notice` ENABLE KEYS */;

#
# Structure for table "ims_attachment_group"
#

DROP TABLE IF EXISTS `ims_attachment_group`;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_attachment_group"
#

/*!40000 ALTER TABLE `ims_attachment_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_attachment_group` ENABLE KEYS */;

#
# Structure for table "ims_basic_reply"
#

DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_basic_reply"
#

/*!40000 ALTER TABLE `ims_basic_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_basic_reply` ENABLE KEYS */;

#
# Structure for table "ims_business"
#

DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_business"
#

/*!40000 ALTER TABLE `ims_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_business` ENABLE KEYS */;

#
# Structure for table "ims_ciyt_hot_video_activity"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_activity`;
CREATE TABLE `ims_ciyt_hot_video_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `merchant` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户',
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '视频标题',
  `desc` text,
  `interface` text COMMENT '接口组',
  `titles` text COMMENT '标题组',
  `videos` text COMMENT '短视频组',
  `cards` text COMMENT '卡券组',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '限制次数',
  `day` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '限制天数',
  `pages` text COMMENT '页面配置',
  `othes` text COMMENT '更多',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ums` (`uniacid`,`merchant`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动表';

#
# Data for table "ims_ciyt_hot_video_activity"
#


#
# Structure for table "ims_ciyt_hot_video_config"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_config`;
CREATE TABLE `ims_ciyt_hot_video_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `license` varchar(200) NOT NULL COMMENT '许可证',
  `settings` longtext COMMENT '配置',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置';

#
# Data for table "ims_ciyt_hot_video_config"
#


#
# Structure for table "ims_ciyt_hot_video_coupon"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_coupon`;
CREATE TABLE `ims_ciyt_hot_video_coupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `shopid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `mid` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `usetime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL,
  `coupon_type` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_content` text NOT NULL,
  `coupon_validity` varchar(233) NOT NULL DEFAULT '',
  `use_condition` varchar(255) NOT NULL DEFAULT '',
  `consume_code` varchar(255) NOT NULL DEFAULT '',
  `check_uid` int(10) NOT NULL DEFAULT '0',
  `use_tip` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `aid` (`aid`),
  KEY `mid` (`mid`),
  KEY `shopid` (`shopid`),
  KEY `status` (`status`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='卡券领取记录表';

#
# Data for table "ims_ciyt_hot_video_coupon"
#

/*!40000 ALTER TABLE `ims_ciyt_hot_video_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_ciyt_hot_video_coupon` ENABLE KEYS */;

#
# Structure for table "ims_ciyt_hot_video_manager"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_manager`;
CREATE TABLE `ims_ciyt_hot_video_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `shopid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `power` varchar(255) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `last_loginip` varchar(50) NOT NULL DEFAULT '',
  `last_logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `shopid` (`shopid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_ciyt_hot_video_manager"
#

/*!40000 ALTER TABLE `ims_ciyt_hot_video_manager` DISABLE KEYS */;
INSERT INTO `ims_ciyt_hot_video_manager` VALUES (1,1,1,'admin','0c7540eb7e65b553ec1ba6b20de79608','1,2,3','',1618483008,'127.0.0.1',1618898975,1);
/*!40000 ALTER TABLE `ims_ciyt_hot_video_manager` ENABLE KEYS */;

#
# Structure for table "ims_ciyt_hot_video_member"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_member`;
CREATE TABLE `ims_ciyt_hot_video_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(64) NOT NULL COMMENT '名称',
  `unionid` varchar(64) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `data` text COMMENT '数据',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uos` (`uniacid`,`openid`,`status`),
  KEY `idx_uus` (`uniacid`,`unionid`,`status`),
  KEY `idx_ups` (`uniacid`,`phone`,`status`),
  KEY `indx_openid` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "ims_ciyt_hot_video_member"
#


#
# Structure for table "ims_ciyt_hot_video_member_info"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_member_info`;
CREATE TABLE `ims_ciyt_hot_video_member_info` (
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(64) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `district` varchar(64) DEFAULT NULL,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mid` (`mid`),
  KEY `nickname` (`nickname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户资料';

#
# Data for table "ims_ciyt_hot_video_member_info"
#

/*!40000 ALTER TABLE `ims_ciyt_hot_video_member_info` DISABLE KEYS */;
INSERT INTO `ims_ciyt_hot_video_member_info` VALUES (1,0,'','','','','','',0);
/*!40000 ALTER TABLE `ims_ciyt_hot_video_member_info` ENABLE KEYS */;

#
# Structure for table "ims_ciyt_hot_video_merchant"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_merchant`;
CREATE TABLE `ims_ciyt_hot_video_merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sign` varchar(32) DEFAULT NULL,
  `staff` varchar(64) DEFAULT NULL COMMENT '工作人员',
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` varchar(80) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_type` tinyint(1) NOT NULL DEFAULT '0',
  `consume_code` varchar(255) NOT NULL DEFAULT '',
  `limit_count` int(10) unsigned NOT NULL DEFAULT '0',
  `set_activity` tinyint(1) NOT NULL DEFAULT '1',
  `set_coupon` tinyint(1) NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `check_activity` tinyint(1) NOT NULL DEFAULT '1',
  `activity_num` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uss` (`uniacid`,`sign`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商户表';

#
# Data for table "ims_ciyt_hot_video_merchant"
#

INSERT INTO `ims_ciyt_hot_video_merchant` VALUES (1,1,NULL,'52222222','dengdeng','158522222222','images/1/ciyt_hot_video/2021/04/8b88b8c08c7ceca11d2752895df8c09a.webp','tg h',NULL,1,1618482953,0,'',0,1,1,0,0,0,0);

#
# Structure for table "ims_ciyt_hot_video_relation"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_relation`;
CREATE TABLE `ims_ciyt_hot_video_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `activity` int(10) unsigned NOT NULL DEFAULT '0',
  `merchant` int(10) unsigned NOT NULL DEFAULT '0',
  `video_id` varchar(64) DEFAULT NULL COMMENT '文件id',
  `item_id` varchar(200) DEFAULT NULL COMMENT '视频id',
  `download_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载量',
  `forward_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏量',
  `play_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '播放量',
  `share_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享量',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论量',
  `digg_count` int(10) unsigned NOT NULL DEFAULT '0',
  `counttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '同步时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_umam` (`uniacid`,`mid`,`activity`,`merchant`),
  KEY `idx_um` (`uniacid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户关联表';

#
# Data for table "ims_ciyt_hot_video_relation"
#


#
# Structure for table "ims_ciyt_hot_video_shop_coupon"
#

DROP TABLE IF EXISTS `ims_ciyt_hot_video_shop_coupon`;
CREATE TABLE `ims_ciyt_hot_video_shop_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `shopid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `coupon_type` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_content` text NOT NULL,
  `coupon_validity` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `coupon_num` int(10) NOT NULL DEFAULT '0',
  `use_condition` varchar(255) NOT NULL DEFAULT '',
  `coupon_times` int(10) NOT NULL DEFAULT '0',
  `consume_type` tinyint(1) NOT NULL DEFAULT '0',
  `show_sort` int(10) NOT NULL DEFAULT '0',
  `use_tip` varchar(1000) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `image_cover` varchar(255) NOT NULL DEFAULT '',
  `image_banner` varchar(255) NOT NULL DEFAULT '',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='卡券表';

#
# Data for table "ims_ciyt_hot_video_shop_coupon"
#

/*!40000 ALTER TABLE `ims_ciyt_hot_video_shop_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_ciyt_hot_video_shop_coupon` ENABLE KEYS */;

#
# Structure for table "ims_core_attachment"
#

DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `displayorder` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_attachment"
#

/*!40000 ALTER TABLE `ims_core_attachment` DISABLE KEYS */;
INSERT INTO `ims_core_attachment` VALUES (1,1,1,'avatar.jpg','images/1/2021/04/aMM5r8nn56IG6Tu9L3irrTgIU53F6i.jpg',1,1618482923,'',-1,0);
/*!40000 ALTER TABLE `ims_core_attachment` ENABLE KEYS */;

#
# Structure for table "ims_core_cache"
#

DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_cache"
#

/*!40000 ALTER TABLE `ims_core_cache` DISABLE KEYS */;
INSERT INTO `ims_core_cache` VALUES ('we7:accesstoken:1','a:2:{s:5:\"token\";s:157:\"44_LbKJ5GmWe2zujofCnouDQSu3FPsmjaSbQ4jt53s1g2eEigOeKT-FddE7aDWDqnGN3gNTpWc40xhthc5ZMBRyckBHBLO-nN8B_Ag7wl67lrOpQBL-plYplg8lOYBcUp7OlxSzTRdJTGjJLxrjFIGdAJANQO\";s:6:\"expire\";i:1618631140;}'),('we7:back_days','a:2:{s:6:\"expire\";i:1622758213;s:4:\"data\";i:-1;}'),('we7:delete_visit_ip:20210315','b:1;'),('we7:delete_visit_ip:20210317','b:1;'),('we7:delete_visit_ip:20210318','b:1;'),('we7:delete_visit_ip:20210321','b:1;'),('we7:delete_visit_ip:20210322','b:1;'),('we7:delete_visit_ip:20210323','b:1;'),('we7:delete_visit_ip:20210324','b:1;'),('we7:delete_visit_ip:20210325','b:1;'),('we7:delete_visit_ip:20210326','b:1;'),('we7:delete_visit_ip:20210414','b:1;'),('we7:delete_visit_ip:20210416','b:1;'),('we7:delete_visit_ip:20210419','b:1;'),('we7:module_entry_call:kyl_mon','a:2:{s:6:\"expire\";i:1618483637;s:4:\"data\";a:2:{s:6:\"expire\";i:1618483632;s:4:\"data\";a:0:{}}}'),('we7:module_info:basic','a:38:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:50:\"http://we7.c/addons/basic/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:chats','a:38:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:50:\"http://we7.c/addons/chats/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:ciyt_hot_video','a:39:{s:3:\"mid\";s:2:\"14\";s:4:\"name\";s:14:\"ciyt_hot_video\";s:16:\"application_type\";s:1:\"1\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"同城霸屏码\";s:7:\"version\";s:5:\"1.3.2\";s:7:\"ability\";s:30:\"视频引流、短视频活动\";s:11:\"description\";s:45:\"短视频同城霸屏，获客引流系统。\";s:6:\"author\";s:6:\"微擎\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:4:\"view\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}s:7:\"handles\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:14:\"merchant_order\";i:11;s:13:\"user_get_card\";i:12;s:13:\"user_del_card\";i:13;s:17:\"user_consume_card\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"T\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:43:\"http://we7.c/addons/ciyt_hot_video/icon.jpg\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:5:\"local\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:59:\"http://we7.c/addons/ciyt_hot_video/preview.jpg?v=1618482856\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:14:\"is_receive_ban\";b:1;s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:custom','a:38:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:51:\"http://we7.c/addons/custom/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:images','a:38:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:51:\"http://we7.c/addons/images/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:kyl_mon','a:38:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:7:\"kyl_mon\";s:16:\"application_type\";s:1:\"1\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:16:\"客云来-登录\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"ability\";s:16:\"客云来-登录\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:36:\"http://we7.c/addons/kyl_mon/icon.jpg\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:5:\"local\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:52:\"http://we7.c/addons/kyl_mon/preview.jpg?v=1615859809\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:music','a:38:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:50:\"http://we7.c/addons/music/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:news','a:38:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:49:\"http://we7.c/addons/news/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:recharge','a:38:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:53:\"http://we7.c/addons/recharge/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:store','a:38:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:50:\"http://we7.c/addons/store/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:userapi','a:38:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:52:\"http://we7.c/addons/userapi/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:video','a:38:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:50:\"http://we7.c/addons/video/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:voice','a:38:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:50:\"http://we7.c/addons/voice/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_info:wxcard','a:38:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:51:\"http://we7.c/addons/wxcard/preview.jpg?v=1615859813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:12:\"recycle_info\";a:0:{}}'),('we7:module_receive_enable','a:14:{s:5:\"image\";a:0:{}s:5:\"voice\";a:0:{}s:5:\"video\";a:0:{}s:10:\"shortvideo\";a:0:{}s:8:\"location\";a:0:{}s:4:\"link\";a:0:{}s:2:\"qr\";a:0:{}s:5:\"trace\";a:0:{}s:5:\"click\";a:0:{}s:4:\"view\";a:0:{}s:14:\"merchant_order\";a:0:{}s:13:\"user_get_card\";a:0:{}s:13:\"user_del_card\";a:0:{}s:17:\"user_consume_card\";a:0:{}}'),('we7:module_setting:basic:1','a:1:{s:6:\"module\";s:5:\"basic\";}'),('we7:module_setting:chats:1','a:1:{s:6:\"module\";s:5:\"chats\";}'),('we7:module_setting:ciyt_hot_video:1','a:1:{s:6:\"module\";s:14:\"ciyt_hot_video\";}'),('we7:module_setting:custom:1','a:1:{s:6:\"module\";s:6:\"custom\";}'),('we7:module_setting:images:1','a:1:{s:6:\"module\";s:6:\"images\";}'),('we7:module_setting:kyl_mon:1','a:1:{s:6:\"module\";s:7:\"kyl_mon\";}'),('we7:module_setting:music:1','a:1:{s:6:\"module\";s:5:\"music\";}'),('we7:module_setting:news:1','a:1:{s:6:\"module\";s:4:\"news\";}'),('we7:module_setting:recharge:1','a:1:{s:6:\"module\";s:8:\"recharge\";}'),('we7:module_setting:store:1','a:1:{s:6:\"module\";s:5:\"store\";}'),('we7:module_setting:userapi:1','a:1:{s:6:\"module\";s:7:\"userapi\";}'),('we7:module_setting:video:1','a:1:{s:6:\"module\";s:5:\"video\";}'),('we7:module_setting:voice:1','a:1:{s:6:\"module\";s:5:\"voice\";}'),('we7:module_setting:wxcard:1','a:1:{s:6:\"module\";s:6:\"wxcard\";}'),('we7:setting','a:6:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";a:6:{s:3:\"key\";s:6:\"8f1e03\";s:5:\"token\";s:32:\"22139865e06e1a7258bc241ab6c6ad74\";s:3:\"url\";s:12:\"http://we7.c\";s:7:\"version\";s:5:\"2.0.0\";s:6:\"family\";s:1:\"x\";s:4:\"type\";s:8:\"register\";}s:18:\"module_receive_ban\";a:1:{s:14:\"ciyt_hot_video\";s:14:\"ciyt_hot_video\";}}'),('we7:site_store_buy:6:1','i:0;'),('we7:stat_todaylock:1','a:1:{s:6:\"expire\";i:1618897801;}'),('we7:system_frame:0','a:19:{s:7:\"welcome\";a:7:{s:5:\"title\";s:6:\"首页\";s:4:\"icon\";s:10:\"wi wi-home\";s:3:\"url\";s:48:\"./index.php?c=home&a=welcome&do=system&page=home\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:2;}s:14:\"account_manage\";a:8:{s:5:\"title\";s:12:\"平台管理\";s:4:\"icon\";s:21:\"wi wi-platform-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:7:\"section\";a:1:{s:14:\"account_manage\";a:2:{s:5:\"title\";s:12:\"平台管理\";s:4:\"menu\";a:4:{s:22:\"account_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台列表\";s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:15:\"permission_name\";s:22:\"account_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:12:\"帐号停用\";s:15:\"permission_name\";s:19:\"account_manage_stop\";}}}s:22:\"account_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:32:\"./index.php?c=account&a=recycle&\";s:15:\"permission_name\";s:22:\"account_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"帐号删除\";s:15:\"permission_name\";s:21:\"account_manage_delete\";}i:1;a:2:{s:5:\"title\";s:12:\"帐号恢复\";s:15:\"permission_name\";s:22:\"account_manage_recover\";}}}s:30:\"account_manage_system_platform\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:30:\"account_manage_system_platform\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:30:\"account_manage_expired_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\" 自定义到期提示\";s:3:\"url\";s:40:\"./index.php?c=account&a=expired-message&\";s:15:\"permission_name\";s:30:\"account_manage_expired_message\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:3;}s:13:\"module_manage\";a:8:{s:5:\"title\";s:12:\"应用管理\";s:4:\"icon\";s:19:\"wi wi-module-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:7:\"section\";a:1:{s:13:\"module_manage\";a:2:{s:5:\"title\";s:12:\"应用管理\";s:4:\"menu\";a:6:{s:23:\"module_manage_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已安装列表\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:15:\"permission_name\";s:23:\"module_manage_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_stoped\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已停用列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=1\";s:15:\"permission_name\";s:20:\"module_manage_stoped\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:27:\"module_manage_not_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"未安装列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=not_installed&\";s:15:\"permission_name\";s:27:\"module_manage_not_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"module_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=2\";s:15:\"permission_name\";s:21:\"module_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:23:\"module_manage_subscribe\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"订阅管理\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=subscribe&\";s:15:\"permission_name\";s:23:\"module_manage_subscribe\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_expire\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"应用停用提醒\";s:3:\"url\";s:30:\"./index.php?c=module&a=expire&\";s:15:\"permission_name\";s:20:\"module_manage_expire\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:4;}s:11:\"user_manage\";a:8:{s:5:\"title\";s:12:\"用户管理\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:7:\"section\";a:1:{s:11:\"user_manage\";a:2:{s:5:\"title\";s:12:\"用户管理\";s:4:\"menu\";a:6:{s:19:\"user_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"普通用户\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:19:\"user_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"user_manage_founder\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"副站长\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:19:\"user_manage_founder\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_clerk\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"店员管理\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=clerk\";s:15:\"permission_name\";s:17:\"user_manage_clerk\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"审核用户\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=check\";s:15:\"permission_name\";s:17:\"user_manage_check\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"user_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:41:\"./index.php?c=user&a=display&type=recycle\";s:15:\"permission_name\";s:19:\"user_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"user_manage_fields\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户属性设置\";s:3:\"url\";s:39:\"./index.php?c=user&a=fields&do=display&\";s:15:\"permission_name\";s:18:\"user_manage_fields\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:5;}s:10:\"permission\";a:8:{s:5:\"title\";s:9:\"权限组\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:7:\"section\";a:1:{s:10:\"permission\";a:2:{s:5:\"title\";s:9:\"权限组\";s:4:\"menu\";a:4:{s:23:\"permission_module_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:23:\"permission_module_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:31:\"permission_create_account_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号权限组\";s:3:\"url\";s:34:\"./index.php?c=user&a=create-group&\";s:15:\"permission_name\";s:31:\"permission_create_account_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"permission_user_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户权限组合\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:21:\"permission_user_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:24:\"permission_founder_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"副站长权限组合\";s:3:\"url\";s:30:\"./index.php?c=founder&a=group&\";s:15:\"permission_name\";s:24:\"permission_founder_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:6;}s:6:\"system\";a:8:{s:5:\"title\";s:12:\"系统功能\";s:4:\"icon\";s:13:\"wi wi-setting\";s:9:\"dimension\";i:3;s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:7:\"section\";a:3:{s:7:\"article\";a:3:{s:5:\"title\";s:12:\"站内公告\";s:4:\"menu\";a:1:{s:14:\"system_article\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站内公告\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:14:\"system_article\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"公告列表\";s:15:\"permission_name\";s:26:\"system_article_notice_list\";}i:1;a:2:{s:5:\"title\";s:12:\"公告分类\";s:15:\"permission_name\";s:30:\"system_article_notice_category\";}}}}s:7:\"founder\";b:1;}s:14:\"system_welcome\";a:3:{s:5:\"title\";s:12:\"系统新闻\";s:4:\"menu\";a:1:{s:11:\"system_news\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统新闻\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:11:\"system_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:13:\"新闻列表 \";s:15:\"permission_name\";s:24:\"system_article_news_list\";}i:1;a:2:{s:5:\"title\";s:13:\"新闻分类 \";s:15:\"permission_name\";s:28:\"system_article_news_category\";}}}}s:7:\"founder\";b:1;}s:17:\"system_statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:7;}s:4:\"site\";a:9:{s:5:\"title\";s:12:\"站点设置\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:9:\"dimension\";i:3;s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"全局借用权限\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:6:{s:24:\"system_utility_filecheck\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_utility_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统常规检测\";s:3:\"url\";s:29:\"./index.php?c=system&a=check&\";s:15:\"permission_name\";s:20:\"system_utility_check\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:8;}s:6:\"myself\";a:8:{s:5:\"title\";s:12:\"我的账户\";s:4:\"icon\";s:10:\"wi wi-bell\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:9;}s:7:\"message\";a:8:{s:5:\"title\";s:12:\"消息管理\";s:4:\"icon\";s:12:\"wi wi-xiaoxi\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:7:\"section\";a:1:{s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息管理\";s:4:\"menu\";a:3:{s:14:\"message_notice\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:14:\"message_notice\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"message_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息设置\";s:3:\"url\";s:42:\"./index.php?c=message&a=notice&do=setting&\";s:15:\"permission_name\";s:15:\"message_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"message_wechat_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"微信提醒设置\";s:3:\"url\";s:49:\"./index.php?c=message&a=notice&do=wechat_setting&\";s:15:\"permission_name\";s:22:\"message_wechat_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:10;}s:7:\"account\";a:8:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:9:\"dimension\";i:3;s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:8:\"platform\";a:4:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:22:\"platform_reply_keyword\";a:4:{s:5:\"title\";s:21:\"关键字自动回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=keyword\";s:15:\"permission_name\";s:22:\"platform_reply_keyword\";s:6:\"active\";s:7:\"keyword\";}s:22:\"platform_reply_special\";a:4:{s:5:\"title\";s:24:\"非关键字自动回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=special\";s:15:\"permission_name\";s:22:\"platform_reply_special\";s:6:\"active\";s:7:\"special\";}s:22:\"platform_reply_welcome\";a:4:{s:5:\"title\";s:24:\"首次访问自动回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=welcome\";s:15:\"permission_name\";s:22:\"platform_reply_welcome\";s:6:\"active\";s:7:\"welcome\";}s:22:\"platform_reply_default\";a:4:{s:5:\"title\";s:12:\"默认回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=default\";s:15:\"permission_name\";s:22:\"platform_reply_default\";s:6:\"active\";s:7:\"default\";}s:22:\"platform_reply_service\";a:4:{s:5:\"title\";s:12:\"常用服务\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=service\";s:15:\"permission_name\";s:22:\"platform_reply_service\";s:6:\"active\";s:7:\"service\";}s:22:\"platform_reply_userapi\";a:5:{s:5:\"title\";s:21:\"自定义接口回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=userapi\";s:15:\"permission_name\";s:22:\"platform_reply_userapi\";s:6:\"active\";s:7:\"userapi\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"platform_reply_setting\";a:4:{s:5:\"title\";s:12:\"回复设置\";s:3:\"url\";s:38:\"./index.php?c=profile&a=reply-setting&\";s:15:\"permission_name\";s:22:\"platform_reply_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:13:\"platform_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:21:\"platform_menu_default\";a:4:{s:5:\"title\";s:12:\"默认菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:21:\"platform_menu_default\";s:6:\"active\";s:4:\"post\";}s:25:\"platform_menu_conditional\";a:5:{s:5:\"title\";s:15:\"个性化菜单\";s:3:\"url\";s:47:\"./index.php?c=platform&a=menu&do=display&type=3\";s:15:\"permission_name\";s:25:\"platform_menu_conditional\";s:6:\"active\";s:7:\"display\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:11:\"platform_qr\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:14:\"platform_qr_qr\";a:4:{s:5:\"title\";s:9:\"二维码\";s:3:\"url\";s:36:\"./index.php?c=platform&a=qr&do=list&\";s:15:\"permission_name\";s:14:\"platform_qr_qr\";s:6:\"active\";s:4:\"list\";}s:22:\"platform_qr_statistics\";a:4:{s:5:\"title\";s:21:\"二维码扫描统计\";s:3:\"url\";s:39:\"./index.php?c=platform&a=qr&do=display&\";s:15:\"permission_name\";s:22:\"platform_qr_statistics\";s:6:\"active\";s:7:\"display\";}}}s:17:\"platform_masstask\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:17:\"platform_masstask\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:22:\"platform_masstask_post\";a:4:{s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=post&\";s:15:\"permission_name\";s:22:\"platform_masstask_post\";s:6:\"active\";s:4:\"post\";}s:22:\"platform_masstask_send\";a:4:{s:5:\"title\";s:12:\"群发记录\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=send&\";s:15:\"permission_name\";s:22:\"platform_masstask_send\";s:6:\"active\";s:4:\"send\";}}}s:17:\"platform_material\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"platform_material_news\";a:4:{s:5:\"title\";s:6:\"图文\";s:3:\"url\";s:43:\"./index.php?c=platform&a=material&type=news\";s:15:\"permission_name\";s:22:\"platform_material_news\";s:6:\"active\";s:4:\"news\";}s:23:\"platform_material_image\";a:4:{s:5:\"title\";s:6:\"图片\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=image\";s:15:\"permission_name\";s:23:\"platform_material_image\";s:6:\"active\";s:5:\"image\";}s:23:\"platform_material_voice\";a:4:{s:5:\"title\";s:6:\"语音\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=voice\";s:15:\"permission_name\";s:23:\"platform_material_voice\";s:6:\"active\";s:5:\"voice\";}s:23:\"platform_material_video\";a:5:{s:5:\"title\";s:6:\"视频\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=video\";s:15:\"permission_name\";s:23:\"platform_material_video\";s:6:\"active\";s:5:\"video\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"platform_material_delete\";a:3:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";s:10:\"is_display\";i:0;}}}s:13:\"platform_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:27:\"./index.php?c=site&a=multi&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:19:\"platform_site_multi\";a:4:{s:5:\"title\";s:9:\"微官网\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:19:\"platform_site_multi\";s:6:\"active\";s:5:\"multi\";}s:19:\"platform_site_style\";a:4:{s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:39:\"./index.php?c=site&a=style&do=template&\";s:15:\"permission_name\";s:19:\"platform_site_style\";s:6:\"active\";s:5:\"style\";}s:21:\"platform_site_article\";a:4:{s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:40:\"./index.php?c=site&a=article&do=display&\";s:15:\"permission_name\";s:21:\"platform_site_article\";s:6:\"active\";s:7:\"article\";}s:22:\"platform_site_category\";a:4:{s:5:\"title\";s:18:\"文章分类管理\";s:3:\"url\";s:41:\"./index.php?c=site&a=category&do=display&\";s:15:\"permission_name\";s:22:\"platform_site_category\";s:6:\"active\";s:8:\"category\";}}}}s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:4:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:3:{s:7:\"mc_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:15:\"mc_fans_display\";a:4:{s:5:\"title\";s:12:\"全部粉丝\";s:3:\"url\";s:35:\"./index.php?c=mc&a=fans&do=display&\";s:15:\"permission_name\";s:15:\"mc_fans_display\";s:6:\"active\";s:7:\"display\";}s:21:\"mc_fans_fans_sync_set\";a:4:{s:5:\"title\";s:18:\"粉丝同步设置\";s:3:\"url\";s:41:\"./index.php?c=mc&a=fans&do=fans_sync_set&\";s:15:\"permission_name\";s:21:\"mc_fans_fans_sync_set\";s:6:\"active\";s:13:\"fans_sync_set\";}}}s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:12:\"mc_member_uc\";a:5:{s:5:\"title\";s:12:\"会员中心\";s:3:\"url\";s:34:\"./index.php?c=site&a=editor&do=uc&\";s:15:\"permission_name\";s:12:\"mc_member_uc\";s:6:\"active\";s:2:\"uc\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:19:\"mc_member_quickmenu\";a:5:{s:5:\"title\";s:12:\"快捷菜单\";s:3:\"url\";s:41:\"./index.php?c=site&a=editor&do=quickmenu&\";s:15:\"permission_name\";s:19:\"mc_member_quickmenu\";s:6:\"active\";s:9:\"quickmenu\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"mc_member_register_seting\";a:5:{s:5:\"title\";s:12:\"注册设置\";s:3:\"url\";s:46:\"./index.php?c=mc&a=member&do=register_setting&\";s:15:\"permission_name\";s:25:\"mc_member_register_seting\";s:6:\"active\";s:16:\"register_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}s:10:\"mc_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"留言管理\";s:3:\"url\";s:27:\"./index.php?c=mc&a=message&\";s:15:\"permission_name\";s:10:\"mc_message\";s:4:\"icon\";s:13:\"wi wi-message\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:0;}s:7:\"profile\";a:4:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:7:{s:15:\"profile_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"profile_setting_remote\";a:4:{s:5:\"title\";s:12:\"远程附件\";s:3:\"url\";s:42:\"./index.php?c=profile&a=remote&do=display&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:6:\"active\";s:7:\"display\";}s:24:\"profile_setting_passport\";a:5:{s:5:\"title\";s:12:\"借用权限\";s:3:\"url\";s:42:\"./index.php?c=profile&a=passport&do=oauth&\";s:15:\"permission_name\";s:24:\"profile_setting_passport\";s:6:\"active\";s:5:\"oauth\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"profile_setting_tplnotice\";a:5:{s:5:\"title\";s:18:\"微信通知设置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=tplnotice&do=list&\";s:15:\"permission_name\";s:25:\"profile_setting_tplnotice\";s:6:\"active\";s:4:\"list\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"profile_setting_notify\";a:5:{s:5:\"title\";s:18:\"邮件通知参数\";s:3:\"url\";s:39:\"./index.php?c=profile&a=notify&do=mail&\";s:15:\"permission_name\";s:22:\"profile_setting_notify\";s:6:\"active\";s:4:\"mail\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:27:\"profile_setting_upload_file\";a:5:{s:5:\"title\";s:20:\"上传JS接口文件\";s:3:\"url\";s:46:\"./index.php?c=profile&a=common&do=upload_file&\";s:15:\"permission_name\";s:27:\"profile_setting_upload_file\";s:6:\"active\";s:11:\"upload_file\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:15:\"profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:15:\"profile_payment\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:19:\"profile_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付配置\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:22:\"profile_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=refund&do=display&\";s:15:\"permission_name\";s:22:\"profile_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:23:\"profile_app_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"profile_bind_domain\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:18:\"webapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:0;}s:10:\"statistics\";a:4:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:16:\"statistics_visit\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:16:\"statistics_visit\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{s:20:\"statistics_visit_app\";a:4:{s:5:\"title\";s:24:\"app端访问统计信息\";s:3:\"url\";s:42:\"./index.php?c=statistics&a=app&do=display&\";s:15:\"permission_name\";s:20:\"statistics_visit_app\";s:6:\"active\";s:3:\"app\";}s:21:\"statistics_visit_site\";a:4:{s:5:\"title\";s:24:\"所有用户访问统计\";s:3:\"url\";s:51:\"./index.php?c=statistics&a=site&do=current_account&\";s:15:\"permission_name\";s:21:\"statistics_visit_site\";s:6:\"active\";s:4:\"site\";}s:24:\"statistics_visit_setting\";a:4:{s:5:\"title\";s:18:\"访问统计设置\";s:3:\"url\";s:46:\"./index.php?c=statistics&a=setting&do=display&\";s:15:\"permission_name\";s:24:\"statistics_visit_setting\";s:6:\"active\";s:7:\"setting\";}}}s:15:\"statistics_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:0;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:11;}s:5:\"wxapp\";a:8:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:9:\"dimension\";i:3;s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:4:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:4:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:15:\"mc_wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:33:\"wxapp_profile_module_link_uniacid\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:33:\"wxapp_profile_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"wxapp_profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:21:\"wxapp_profile_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:17:\"wxapp_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:41:\"./index.php?c=wxapp&a=payment&do=display&\";s:15:\"permission_name\";s:17:\"wxapp_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:20:\"wxapp_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:40:\"./index.php?c=wxapp&a=refund&do=display&\";s:15:\"permission_name\";s:20:\"wxapp_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:28:\"wxapp_profile_front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"下载程序包\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:28:\"wxapp_profile_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_profile_domainset\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名设置\";s:3:\"url\";s:32:\"./index.php?c=wxapp&a=domainset&\";s:15:\"permission_name\";s:23:\"wxapp_profile_domainset\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"profile_setting_remote\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}}s:10:\"statistics\";a:4:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:16:\"statistics_visit\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:22:\"statistics_visit_wxapp\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{s:20:\"statistics_visit_app\";a:4:{s:5:\"title\";s:24:\"app端访问统计信息\";s:3:\"url\";s:42:\"./index.php?c=statistics&a=app&do=display&\";s:15:\"permission_name\";s:20:\"statistics_visit_app\";s:6:\"active\";s:3:\"app\";}s:21:\"statistics_visit_site\";a:4:{s:5:\"title\";s:24:\"所有用户访问统计\";s:3:\"url\";s:51:\"./index.php?c=statistics&a=site&do=current_account&\";s:15:\"permission_name\";s:21:\"statistics_visit_site\";s:6:\"active\";s:4:\"site\";}s:24:\"statistics_visit_setting\";a:4:{s:5:\"title\";s:18:\"访问统计设置\";s:3:\"url\";s:46:\"./index.php?c=statistics&a=setting&do=display&\";s:15:\"permission_name\";s:24:\"statistics_visit_setting\";s:6:\"active\";s:7:\"setting\";}}}s:15:\"statistics_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:21:\"statistics_fans_wxapp\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:12;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:13;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:16:\"phoneapp_profile\";a:4:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:2:{s:28:\"profile_phoneapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:28:\"profile_phoneapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:14;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:15;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:16;}s:8:\"baiduapp\";a:7:{s:5:\"title\";s:15:\"百度小程序\";s:4:\"icon\";s:14:\"wi wi-baiduapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:17;}s:10:\"toutiaoapp\";a:7:{s:5:\"title\";s:15:\"头条小程序\";s:4:\"icon\";s:16:\"wi wi-toutiaoapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:18;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:7:{s:11:\"store_goods\";a:2:{s:5:\"title\";s:12:\"商品分类\";s:4:\"menu\";a:8:{s:18:\"store_goods_module\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"应用模块\";s:3:\"url\";s:69:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=module\";s:15:\"permission_name\";s:18:\"store_goods_module\";s:4:\"icon\";s:11:\"wi wi-apply\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"store_goods_account\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台个数\";s:3:\"url\";s:74:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=account_num\";s:15:\"permission_name\";s:19:\"store_goods_account\";s:4:\"icon\";s:13:\"wi wi-account\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"store_goods_account_renew\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台续费\";s:3:\"url\";s:68:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=renew\";s:15:\"permission_name\";s:25:\"store_goods_account_renew\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"store_goods_package\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:64:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=5\";s:15:\"permission_name\";s:19:\"store_goods_package\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:24:\"store_goods_user_account\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号权限组\";s:3:\"url\";s:65:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=10\";s:15:\"permission_name\";s:24:\"store_goods_user_account\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"store_goods_user_renew\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号有效期\";s:3:\"url\";s:65:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=29\";s:15:\"permission_name\";s:22:\"store_goods_user_renew\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"store_goods_users_package\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:64:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=9\";s:15:\"permission_name\";s:25:\"store_goods_users_package\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"store_goods_api\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:23:\"应用访问流量(API)\";s:3:\"url\";s:64:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=6\";s:15:\"permission_name\";s:15:\"store_goods_api\";s:4:\"icon\";s:9:\"wi wi-api\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:16:\"store_wish_goods\";a:2:{s:5:\"title\";s:12:\"预购应用\";s:4:\"menu\";a:2:{s:21:\"store_wish_goods_list\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"应用列表\";s:3:\"url\";s:84:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=module_wish&is_wish=1\";s:15:\"permission_name\";s:21:\"store_wish_goods_list\";s:4:\"icon\";s:11:\"wi wi-apply\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"store_wish_goods_edit\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\"添加/设置应用\";s:3:\"url\";s:82:\"./index.php?c=site&a=entry&do=wishgoodsEdit&m=store&direct=1&op=wishgoods&status=1\";s:15:\"permission_name\";s:21:\"store_wish_goods_edit\";s:4:\"icon\";s:15:\"wi wi-goods-add\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:12:\"store_manage\";a:3:{s:5:\"title\";s:12:\"商城管理\";s:7:\"founder\";b:1;s:4:\"menu\";a:4:{s:18:\"store_manage_goods\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"添加商品\";s:3:\"url\";s:58:\"./index.php?c=site&a=entry&do=goodsSeller&m=store&direct=1\";s:15:\"permission_name\";s:18:\"store_manage_goods\";s:4:\"icon\";s:15:\"wi wi-goods-add\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"store_manage_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"商城设置\";s:3:\"url\";s:54:\"./index.php?c=site&a=entry&do=setting&m=store&direct=1\";s:15:\"permission_name\";s:20:\"store_manage_setting\";s:4:\"icon\";s:11:\"wi wi-store\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"store_manage_payset\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付设置\";s:3:\"url\";s:57:\"./index.php?c=site&a=entry&do=paySetting&m=store&direct=1\";s:15:\"permission_name\";s:19:\"store_manage_payset\";s:4:\"icon\";s:11:\"wi wi-money\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"store_manage_permission\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"商城访问权限\";s:3:\"url\";s:57:\"./index.php?c=site&a=entry&do=permission&m=store&direct=1\";s:15:\"permission_name\";s:23:\"store_manage_permission\";s:4:\"icon\";s:15:\"wi wi-blacklist\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:12:\"store_orders\";a:2:{s:5:\"title\";s:12:\"订单管理\";s:4:\"menu\";a:2:{s:15:\"store_orders_my\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的订单\";s:3:\"url\";s:53:\"./index.php?c=site&a=entry&do=orders&m=store&direct=1\";s:15:\"permission_name\";s:15:\"store_orders_my\";s:4:\"icon\";s:17:\"wi wi-sale-record\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"store_cash_orders\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"分销订单\";s:3:\"url\";s:71:\"./index.php?c=site&a=entry&do=cash&m=store&operate=cash_orders&direct=1\";s:15:\"permission_name\";s:17:\"store_cash_orders\";s:4:\"icon\";s:11:\"wi wi-order\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:14:\"store_payments\";a:3:{s:5:\"title\";s:12:\"收入明细\";s:7:\"founder\";b:1;s:4:\"menu\";a:1:{s:8:\"payments\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"收入明细\";s:3:\"url\";s:55:\"./index.php?c=site&a=entry&do=payments&m=store&direct=1\";s:15:\"permission_name\";s:8:\"payments\";s:4:\"icon\";s:17:\"wi wi-sale-record\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"store_cash_manage\";a:3:{s:5:\"title\";s:12:\"分销管理\";s:7:\"founder\";b:1;s:4:\"menu\";a:2:{s:25:\"store_manage_cash_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"分销设置\";s:3:\"url\";s:58:\"./index.php?c=site&a=entry&do=cashsetting&m=store&direct=1\";s:15:\"permission_name\";s:25:\"store_manage_cash_setting\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:16:\"store_check_cash\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"提现审核\";s:3:\"url\";s:73:\"./index.php?c=site&a=entry&do=cash&m=store&operate=consume_order&direct=1\";s:15:\"permission_name\";s:16:\"store_check_cash\";s:4:\"icon\";s:18:\"wi wi-check-select\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"store_cash\";a:3:{s:5:\"title\";s:12:\"佣金管理\";s:12:\"vice_founder\";b:1;s:4:\"menu\";a:1:{s:8:\"payments\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的佣金\";s:3:\"url\";s:66:\"./index.php?c=site&a=entry&do=cash&m=store&operate=mycash&direct=1\";s:15:\"permission_name\";s:8:\"payments\";s:4:\"icon\";s:10:\"wi wi-list\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:19;}s:11:\"custom_help\";a:7:{s:5:\"title\";s:12:\"本站帮助\";s:4:\"icon\";s:13:\"wi wi-bangzhu\";s:3:\"url\";s:39:\"./index.php?c=help&a=display&do=custom&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:20;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:1','a:19:{s:7:\"welcome\";a:7:{s:5:\"title\";s:6:\"首页\";s:4:\"icon\";s:10:\"wi wi-home\";s:3:\"url\";s:48:\"./index.php?c=home&a=welcome&do=system&page=home\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:2;}s:14:\"account_manage\";a:8:{s:5:\"title\";s:12:\"平台管理\";s:4:\"icon\";s:21:\"wi wi-platform-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:7:\"section\";a:1:{s:14:\"account_manage\";a:2:{s:5:\"title\";s:12:\"平台管理\";s:4:\"menu\";a:4:{s:22:\"account_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台列表\";s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:15:\"permission_name\";s:22:\"account_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:12:\"帐号停用\";s:15:\"permission_name\";s:19:\"account_manage_stop\";}}}s:22:\"account_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:32:\"./index.php?c=account&a=recycle&\";s:15:\"permission_name\";s:22:\"account_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"帐号删除\";s:15:\"permission_name\";s:21:\"account_manage_delete\";}i:1;a:2:{s:5:\"title\";s:12:\"帐号恢复\";s:15:\"permission_name\";s:22:\"account_manage_recover\";}}}s:30:\"account_manage_system_platform\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:30:\"account_manage_system_platform\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:30:\"account_manage_expired_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\" 自定义到期提示\";s:3:\"url\";s:40:\"./index.php?c=account&a=expired-message&\";s:15:\"permission_name\";s:30:\"account_manage_expired_message\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:3;}s:13:\"module_manage\";a:8:{s:5:\"title\";s:12:\"应用管理\";s:4:\"icon\";s:19:\"wi wi-module-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:7:\"section\";a:1:{s:13:\"module_manage\";a:2:{s:5:\"title\";s:12:\"应用管理\";s:4:\"menu\";a:6:{s:23:\"module_manage_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已安装列表\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:15:\"permission_name\";s:23:\"module_manage_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_stoped\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已停用列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=1\";s:15:\"permission_name\";s:20:\"module_manage_stoped\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:27:\"module_manage_not_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"未安装列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=not_installed&\";s:15:\"permission_name\";s:27:\"module_manage_not_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"module_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=2\";s:15:\"permission_name\";s:21:\"module_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:23:\"module_manage_subscribe\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"订阅管理\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=subscribe&\";s:15:\"permission_name\";s:23:\"module_manage_subscribe\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_expire\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"应用停用提醒\";s:3:\"url\";s:30:\"./index.php?c=module&a=expire&\";s:15:\"permission_name\";s:20:\"module_manage_expire\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:4;}s:11:\"user_manage\";a:8:{s:5:\"title\";s:12:\"用户管理\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:7:\"section\";a:1:{s:11:\"user_manage\";a:2:{s:5:\"title\";s:12:\"用户管理\";s:4:\"menu\";a:6:{s:19:\"user_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"普通用户\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:19:\"user_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"user_manage_founder\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"副站长\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:19:\"user_manage_founder\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_clerk\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"店员管理\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=clerk\";s:15:\"permission_name\";s:17:\"user_manage_clerk\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"审核用户\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=check\";s:15:\"permission_name\";s:17:\"user_manage_check\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"user_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:41:\"./index.php?c=user&a=display&type=recycle\";s:15:\"permission_name\";s:19:\"user_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"user_manage_fields\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户属性设置\";s:3:\"url\";s:39:\"./index.php?c=user&a=fields&do=display&\";s:15:\"permission_name\";s:18:\"user_manage_fields\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:5;}s:10:\"permission\";a:8:{s:5:\"title\";s:9:\"权限组\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:7:\"section\";a:1:{s:10:\"permission\";a:2:{s:5:\"title\";s:9:\"权限组\";s:4:\"menu\";a:4:{s:23:\"permission_module_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:23:\"permission_module_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:31:\"permission_create_account_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号权限组\";s:3:\"url\";s:34:\"./index.php?c=user&a=create-group&\";s:15:\"permission_name\";s:31:\"permission_create_account_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"permission_user_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户权限组合\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:21:\"permission_user_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:24:\"permission_founder_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"副站长权限组合\";s:3:\"url\";s:30:\"./index.php?c=founder&a=group&\";s:15:\"permission_name\";s:24:\"permission_founder_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:6;}s:6:\"system\";a:8:{s:5:\"title\";s:12:\"系统功能\";s:4:\"icon\";s:13:\"wi wi-setting\";s:9:\"dimension\";i:3;s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:7:\"section\";a:3:{s:7:\"article\";a:3:{s:5:\"title\";s:12:\"站内公告\";s:4:\"menu\";a:1:{s:14:\"system_article\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站内公告\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:14:\"system_article\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"公告列表\";s:15:\"permission_name\";s:26:\"system_article_notice_list\";}i:1;a:2:{s:5:\"title\";s:12:\"公告分类\";s:15:\"permission_name\";s:30:\"system_article_notice_category\";}}}}s:7:\"founder\";b:1;}s:14:\"system_welcome\";a:3:{s:5:\"title\";s:12:\"系统新闻\";s:4:\"menu\";a:1:{s:11:\"system_news\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统新闻\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:11:\"system_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:13:\"新闻列表 \";s:15:\"permission_name\";s:24:\"system_article_news_list\";}i:1;a:2:{s:5:\"title\";s:13:\"新闻分类 \";s:15:\"permission_name\";s:28:\"system_article_news_category\";}}}}s:7:\"founder\";b:1;}s:17:\"system_statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:7;}s:4:\"site\";a:9:{s:5:\"title\";s:12:\"站点设置\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:9:\"dimension\";i:3;s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"全局借用权限\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:6:{s:24:\"system_utility_filecheck\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_utility_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统常规检测\";s:3:\"url\";s:29:\"./index.php?c=system&a=check&\";s:15:\"permission_name\";s:20:\"system_utility_check\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:8;}s:6:\"myself\";a:8:{s:5:\"title\";s:12:\"我的账户\";s:4:\"icon\";s:10:\"wi wi-bell\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:9;}s:7:\"message\";a:8:{s:5:\"title\";s:12:\"消息管理\";s:4:\"icon\";s:12:\"wi wi-xiaoxi\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:7:\"section\";a:1:{s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息管理\";s:4:\"menu\";a:3:{s:14:\"message_notice\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:14:\"message_notice\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"message_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息设置\";s:3:\"url\";s:42:\"./index.php?c=message&a=notice&do=setting&\";s:15:\"permission_name\";s:15:\"message_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"message_wechat_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"微信提醒设置\";s:3:\"url\";s:49:\"./index.php?c=message&a=notice&do=wechat_setting&\";s:15:\"permission_name\";s:22:\"message_wechat_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:10;}s:7:\"account\";a:8:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:9:\"dimension\";i:3;s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:8:\"platform\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:22:\"platform_reply_keyword\";a:4:{s:5:\"title\";s:21:\"关键字自动回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=keyword\";s:15:\"permission_name\";s:22:\"platform_reply_keyword\";s:6:\"active\";s:7:\"keyword\";}s:22:\"platform_reply_special\";a:4:{s:5:\"title\";s:24:\"非关键字自动回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=special\";s:15:\"permission_name\";s:22:\"platform_reply_special\";s:6:\"active\";s:7:\"special\";}s:22:\"platform_reply_welcome\";a:4:{s:5:\"title\";s:24:\"首次访问自动回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=welcome\";s:15:\"permission_name\";s:22:\"platform_reply_welcome\";s:6:\"active\";s:7:\"welcome\";}s:22:\"platform_reply_default\";a:4:{s:5:\"title\";s:12:\"默认回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=default\";s:15:\"permission_name\";s:22:\"platform_reply_default\";s:6:\"active\";s:7:\"default\";}s:22:\"platform_reply_service\";a:4:{s:5:\"title\";s:12:\"常用服务\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=service\";s:15:\"permission_name\";s:22:\"platform_reply_service\";s:6:\"active\";s:7:\"service\";}s:22:\"platform_reply_userapi\";a:5:{s:5:\"title\";s:21:\"自定义接口回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=userapi\";s:15:\"permission_name\";s:22:\"platform_reply_userapi\";s:6:\"active\";s:7:\"userapi\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"platform_reply_setting\";a:4:{s:5:\"title\";s:12:\"回复设置\";s:3:\"url\";s:38:\"./index.php?c=profile&a=reply-setting&\";s:15:\"permission_name\";s:22:\"platform_reply_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:13:\"platform_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:21:\"platform_menu_default\";a:4:{s:5:\"title\";s:12:\"默认菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:21:\"platform_menu_default\";s:6:\"active\";s:4:\"post\";}s:25:\"platform_menu_conditional\";a:5:{s:5:\"title\";s:15:\"个性化菜单\";s:3:\"url\";s:47:\"./index.php?c=platform&a=menu&do=display&type=3\";s:15:\"permission_name\";s:25:\"platform_menu_conditional\";s:6:\"active\";s:7:\"display\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:11:\"platform_qr\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:14:\"platform_qr_qr\";a:4:{s:5:\"title\";s:9:\"二维码\";s:3:\"url\";s:36:\"./index.php?c=platform&a=qr&do=list&\";s:15:\"permission_name\";s:14:\"platform_qr_qr\";s:6:\"active\";s:4:\"list\";}s:22:\"platform_qr_statistics\";a:4:{s:5:\"title\";s:21:\"二维码扫描统计\";s:3:\"url\";s:39:\"./index.php?c=platform&a=qr&do=display&\";s:15:\"permission_name\";s:22:\"platform_qr_statistics\";s:6:\"active\";s:7:\"display\";}}}s:17:\"platform_masstask\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:17:\"platform_masstask\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:22:\"platform_masstask_post\";a:4:{s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=post&\";s:15:\"permission_name\";s:22:\"platform_masstask_post\";s:6:\"active\";s:4:\"post\";}s:22:\"platform_masstask_send\";a:4:{s:5:\"title\";s:12:\"群发记录\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=send&\";s:15:\"permission_name\";s:22:\"platform_masstask_send\";s:6:\"active\";s:4:\"send\";}}}s:17:\"platform_material\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"platform_material_news\";a:4:{s:5:\"title\";s:6:\"图文\";s:3:\"url\";s:43:\"./index.php?c=platform&a=material&type=news\";s:15:\"permission_name\";s:22:\"platform_material_news\";s:6:\"active\";s:4:\"news\";}s:23:\"platform_material_image\";a:4:{s:5:\"title\";s:6:\"图片\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=image\";s:15:\"permission_name\";s:23:\"platform_material_image\";s:6:\"active\";s:5:\"image\";}s:23:\"platform_material_voice\";a:4:{s:5:\"title\";s:6:\"语音\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=voice\";s:15:\"permission_name\";s:23:\"platform_material_voice\";s:6:\"active\";s:5:\"voice\";}s:23:\"platform_material_video\";a:5:{s:5:\"title\";s:6:\"视频\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=video\";s:15:\"permission_name\";s:23:\"platform_material_video\";s:6:\"active\";s:5:\"video\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"platform_material_delete\";a:3:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";s:10:\"is_display\";i:0;}}}s:13:\"platform_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:27:\"./index.php?c=site&a=multi&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:19:\"platform_site_multi\";a:4:{s:5:\"title\";s:9:\"微官网\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:19:\"platform_site_multi\";s:6:\"active\";s:5:\"multi\";}s:19:\"platform_site_style\";a:4:{s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:39:\"./index.php?c=site&a=style&do=template&\";s:15:\"permission_name\";s:19:\"platform_site_style\";s:6:\"active\";s:5:\"style\";}s:21:\"platform_site_article\";a:4:{s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:40:\"./index.php?c=site&a=article&do=display&\";s:15:\"permission_name\";s:21:\"platform_site_article\";s:6:\"active\";s:7:\"article\";}s:22:\"platform_site_category\";a:4:{s:5:\"title\";s:18:\"文章分类管理\";s:3:\"url\";s:41:\"./index.php?c=site&a=category&do=display&\";s:15:\"permission_name\";s:22:\"platform_site_category\";s:6:\"active\";s:8:\"category\";}}}}s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:3:{s:7:\"mc_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:15:\"mc_fans_display\";a:4:{s:5:\"title\";s:12:\"全部粉丝\";s:3:\"url\";s:35:\"./index.php?c=mc&a=fans&do=display&\";s:15:\"permission_name\";s:15:\"mc_fans_display\";s:6:\"active\";s:7:\"display\";}s:21:\"mc_fans_fans_sync_set\";a:4:{s:5:\"title\";s:18:\"粉丝同步设置\";s:3:\"url\";s:41:\"./index.php?c=mc&a=fans&do=fans_sync_set&\";s:15:\"permission_name\";s:21:\"mc_fans_fans_sync_set\";s:6:\"active\";s:13:\"fans_sync_set\";}}}s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:12:\"mc_member_uc\";a:5:{s:5:\"title\";s:12:\"会员中心\";s:3:\"url\";s:34:\"./index.php?c=site&a=editor&do=uc&\";s:15:\"permission_name\";s:12:\"mc_member_uc\";s:6:\"active\";s:2:\"uc\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:19:\"mc_member_quickmenu\";a:5:{s:5:\"title\";s:12:\"快捷菜单\";s:3:\"url\";s:41:\"./index.php?c=site&a=editor&do=quickmenu&\";s:15:\"permission_name\";s:19:\"mc_member_quickmenu\";s:6:\"active\";s:9:\"quickmenu\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"mc_member_register_seting\";a:5:{s:5:\"title\";s:12:\"注册设置\";s:3:\"url\";s:46:\"./index.php?c=mc&a=member&do=register_setting&\";s:15:\"permission_name\";s:25:\"mc_member_register_seting\";s:6:\"active\";s:16:\"register_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}s:10:\"mc_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"留言管理\";s:3:\"url\";s:27:\"./index.php?c=mc&a=message&\";s:15:\"permission_name\";s:10:\"mc_message\";s:4:\"icon\";s:13:\"wi wi-message\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:7:{s:15:\"profile_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"profile_setting_remote\";a:4:{s:5:\"title\";s:12:\"远程附件\";s:3:\"url\";s:42:\"./index.php?c=profile&a=remote&do=display&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:6:\"active\";s:7:\"display\";}s:24:\"profile_setting_passport\";a:5:{s:5:\"title\";s:12:\"借用权限\";s:3:\"url\";s:42:\"./index.php?c=profile&a=passport&do=oauth&\";s:15:\"permission_name\";s:24:\"profile_setting_passport\";s:6:\"active\";s:5:\"oauth\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"profile_setting_tplnotice\";a:5:{s:5:\"title\";s:18:\"微信通知设置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=tplnotice&do=list&\";s:15:\"permission_name\";s:25:\"profile_setting_tplnotice\";s:6:\"active\";s:4:\"list\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"profile_setting_notify\";a:5:{s:5:\"title\";s:18:\"邮件通知参数\";s:3:\"url\";s:39:\"./index.php?c=profile&a=notify&do=mail&\";s:15:\"permission_name\";s:22:\"profile_setting_notify\";s:6:\"active\";s:4:\"mail\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:27:\"profile_setting_upload_file\";a:5:{s:5:\"title\";s:20:\"上传JS接口文件\";s:3:\"url\";s:46:\"./index.php?c=profile&a=common&do=upload_file&\";s:15:\"permission_name\";s:27:\"profile_setting_upload_file\";s:6:\"active\";s:11:\"upload_file\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:15:\"profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:15:\"profile_payment\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:19:\"profile_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付配置\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:22:\"profile_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=refund&do=display&\";s:15:\"permission_name\";s:22:\"profile_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:23:\"profile_app_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"profile_bind_domain\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:18:\"webapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:16:\"statistics_visit\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:16:\"statistics_visit\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{s:20:\"statistics_visit_app\";a:4:{s:5:\"title\";s:24:\"app端访问统计信息\";s:3:\"url\";s:42:\"./index.php?c=statistics&a=app&do=display&\";s:15:\"permission_name\";s:20:\"statistics_visit_app\";s:6:\"active\";s:3:\"app\";}s:21:\"statistics_visit_site\";a:4:{s:5:\"title\";s:24:\"所有用户访问统计\";s:3:\"url\";s:51:\"./index.php?c=statistics&a=site&do=current_account&\";s:15:\"permission_name\";s:21:\"statistics_visit_site\";s:6:\"active\";s:4:\"site\";}s:24:\"statistics_visit_setting\";a:4:{s:5:\"title\";s:18:\"访问统计设置\";s:3:\"url\";s:46:\"./index.php?c=statistics&a=setting&do=display&\";s:15:\"permission_name\";s:24:\"statistics_visit_setting\";s:6:\"active\";s:7:\"setting\";}}}s:15:\"statistics_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:4:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:5:{i:0;i:1;i:1;i:3;i:2;i:9;i:3;i:10;i:4;i:5;}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:11;}s:5:\"wxapp\";a:8:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:9:\"dimension\";i:3;s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:4:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:4:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:15:\"mc_wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:33:\"wxapp_profile_module_link_uniacid\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:33:\"wxapp_profile_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"wxapp_profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:21:\"wxapp_profile_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:17:\"wxapp_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:41:\"./index.php?c=wxapp&a=payment&do=display&\";s:15:\"permission_name\";s:17:\"wxapp_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:20:\"wxapp_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:40:\"./index.php?c=wxapp&a=refund&do=display&\";s:15:\"permission_name\";s:20:\"wxapp_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:28:\"wxapp_profile_front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"下载程序包\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:28:\"wxapp_profile_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_profile_domainset\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名设置\";s:3:\"url\";s:32:\"./index.php?c=wxapp&a=domainset&\";s:15:\"permission_name\";s:23:\"wxapp_profile_domainset\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"profile_setting_remote\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}}s:10:\"statistics\";a:4:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:16:\"statistics_visit\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:22:\"statistics_visit_wxapp\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{s:20:\"statistics_visit_app\";a:4:{s:5:\"title\";s:24:\"app端访问统计信息\";s:3:\"url\";s:42:\"./index.php?c=statistics&a=app&do=display&\";s:15:\"permission_name\";s:20:\"statistics_visit_app\";s:6:\"active\";s:3:\"app\";}s:21:\"statistics_visit_site\";a:4:{s:5:\"title\";s:24:\"所有用户访问统计\";s:3:\"url\";s:51:\"./index.php?c=statistics&a=site&do=current_account&\";s:15:\"permission_name\";s:21:\"statistics_visit_site\";s:6:\"active\";s:4:\"site\";}s:24:\"statistics_visit_setting\";a:4:{s:5:\"title\";s:18:\"访问统计设置\";s:3:\"url\";s:46:\"./index.php?c=statistics&a=setting&do=display&\";s:15:\"permission_name\";s:24:\"statistics_visit_setting\";s:6:\"active\";s:7:\"setting\";}}}s:15:\"statistics_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:21:\"statistics_fans_wxapp\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:12;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:13;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:16:\"phoneapp_profile\";a:4:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:2:{s:28:\"profile_phoneapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:28:\"profile_phoneapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:14;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:15;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:16;}s:8:\"baiduapp\";a:7:{s:5:\"title\";s:15:\"百度小程序\";s:4:\"icon\";s:14:\"wi wi-baiduapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:17;}s:10:\"toutiaoapp\";a:7:{s:5:\"title\";s:15:\"头条小程序\";s:4:\"icon\";s:16:\"wi wi-toutiaoapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:18;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:7:{s:11:\"store_goods\";a:2:{s:5:\"title\";s:12:\"商品分类\";s:4:\"menu\";a:8:{s:18:\"store_goods_module\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"应用模块\";s:3:\"url\";s:69:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=module\";s:15:\"permission_name\";s:18:\"store_goods_module\";s:4:\"icon\";s:11:\"wi wi-apply\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"store_goods_account\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台个数\";s:3:\"url\";s:74:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=account_num\";s:15:\"permission_name\";s:19:\"store_goods_account\";s:4:\"icon\";s:13:\"wi wi-account\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"store_goods_account_renew\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台续费\";s:3:\"url\";s:68:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=renew\";s:15:\"permission_name\";s:25:\"store_goods_account_renew\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"store_goods_package\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:64:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=5\";s:15:\"permission_name\";s:19:\"store_goods_package\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:24:\"store_goods_user_account\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号权限组\";s:3:\"url\";s:65:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=10\";s:15:\"permission_name\";s:24:\"store_goods_user_account\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"store_goods_user_renew\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号有效期\";s:3:\"url\";s:65:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=29\";s:15:\"permission_name\";s:22:\"store_goods_user_renew\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"store_goods_users_package\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:64:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=9\";s:15:\"permission_name\";s:25:\"store_goods_users_package\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"store_goods_api\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:23:\"应用访问流量(API)\";s:3:\"url\";s:64:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=6\";s:15:\"permission_name\";s:15:\"store_goods_api\";s:4:\"icon\";s:9:\"wi wi-api\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:16:\"store_wish_goods\";a:2:{s:5:\"title\";s:12:\"预购应用\";s:4:\"menu\";a:2:{s:21:\"store_wish_goods_list\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"应用列表\";s:3:\"url\";s:84:\"./index.php?c=site&a=entry&do=goodsbuyer&m=store&direct=1&type=module_wish&is_wish=1\";s:15:\"permission_name\";s:21:\"store_wish_goods_list\";s:4:\"icon\";s:11:\"wi wi-apply\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"store_wish_goods_edit\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\"添加/设置应用\";s:3:\"url\";s:82:\"./index.php?c=site&a=entry&do=wishgoodsEdit&m=store&direct=1&op=wishgoods&status=1\";s:15:\"permission_name\";s:21:\"store_wish_goods_edit\";s:4:\"icon\";s:15:\"wi wi-goods-add\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:12:\"store_manage\";a:3:{s:5:\"title\";s:12:\"商城管理\";s:7:\"founder\";b:1;s:4:\"menu\";a:4:{s:18:\"store_manage_goods\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"添加商品\";s:3:\"url\";s:58:\"./index.php?c=site&a=entry&do=goodsSeller&m=store&direct=1\";s:15:\"permission_name\";s:18:\"store_manage_goods\";s:4:\"icon\";s:15:\"wi wi-goods-add\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"store_manage_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"商城设置\";s:3:\"url\";s:54:\"./index.php?c=site&a=entry&do=setting&m=store&direct=1\";s:15:\"permission_name\";s:20:\"store_manage_setting\";s:4:\"icon\";s:11:\"wi wi-store\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"store_manage_payset\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付设置\";s:3:\"url\";s:57:\"./index.php?c=site&a=entry&do=paySetting&m=store&direct=1\";s:15:\"permission_name\";s:19:\"store_manage_payset\";s:4:\"icon\";s:11:\"wi wi-money\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"store_manage_permission\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"商城访问权限\";s:3:\"url\";s:57:\"./index.php?c=site&a=entry&do=permission&m=store&direct=1\";s:15:\"permission_name\";s:23:\"store_manage_permission\";s:4:\"icon\";s:15:\"wi wi-blacklist\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:12:\"store_orders\";a:2:{s:5:\"title\";s:12:\"订单管理\";s:4:\"menu\";a:2:{s:15:\"store_orders_my\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的订单\";s:3:\"url\";s:53:\"./index.php?c=site&a=entry&do=orders&m=store&direct=1\";s:15:\"permission_name\";s:15:\"store_orders_my\";s:4:\"icon\";s:17:\"wi wi-sale-record\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"store_cash_orders\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"分销订单\";s:3:\"url\";s:71:\"./index.php?c=site&a=entry&do=cash&m=store&operate=cash_orders&direct=1\";s:15:\"permission_name\";s:17:\"store_cash_orders\";s:4:\"icon\";s:11:\"wi wi-order\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:14:\"store_payments\";a:3:{s:5:\"title\";s:12:\"收入明细\";s:7:\"founder\";b:1;s:4:\"menu\";a:1:{s:8:\"payments\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"收入明细\";s:3:\"url\";s:55:\"./index.php?c=site&a=entry&do=payments&m=store&direct=1\";s:15:\"permission_name\";s:8:\"payments\";s:4:\"icon\";s:17:\"wi wi-sale-record\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"store_cash_manage\";a:3:{s:5:\"title\";s:12:\"分销管理\";s:7:\"founder\";b:1;s:4:\"menu\";a:2:{s:25:\"store_manage_cash_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"分销设置\";s:3:\"url\";s:58:\"./index.php?c=site&a=entry&do=cashsetting&m=store&direct=1\";s:15:\"permission_name\";s:25:\"store_manage_cash_setting\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:16:\"store_check_cash\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"提现审核\";s:3:\"url\";s:73:\"./index.php?c=site&a=entry&do=cash&m=store&operate=consume_order&direct=1\";s:15:\"permission_name\";s:16:\"store_check_cash\";s:4:\"icon\";s:18:\"wi wi-check-select\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"store_cash\";a:3:{s:5:\"title\";s:12:\"佣金管理\";s:12:\"vice_founder\";b:1;s:4:\"menu\";a:1:{s:8:\"payments\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的佣金\";s:3:\"url\";s:66:\"./index.php?c=site&a=entry&do=cash&m=store&operate=mycash&direct=1\";s:15:\"permission_name\";s:8:\"payments\";s:4:\"icon\";s:10:\"wi wi-list\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:19;}s:11:\"custom_help\";a:7:{s:5:\"title\";s:12:\"本站帮助\";s:4:\"icon\";s:13:\"wi wi-bangzhu\";s:3:\"url\";s:39:\"./index.php?c=help&a=display&do=custom&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:20;}}'),('we7:uniaccount:','a:1:{s:11:\"encrypt_key\";N;}'),('we7:uniaccount:1','a:21:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx14407ec5855fd78a\";s:6:\"secret\";s:32:\"c3086f3c08574e084421007b68b1f994\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wx14407ec5855fd78a\";}'),('we7:unimodules:1','a:2:{i:0;s:14:\"ciyt_hot_video\";i:1;s:7:\"kyl_mon\";}'),('we7:unisetting:1','a:30:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"1\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"1\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";s:1:\"0\";s:15:\"attachment_size\";s:2:\"31\";s:11:\"sync_member\";s:1:\"0\";s:6:\"remote\";s:0:\"\";}'),('we7:unisetting:2','a:0:{}'),('we7:user_accounts:account:1','a:1:{i:1;a:8:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:4:\"type\";s:1:\"1\";s:5:\"level\";s:1:\"1\";s:3:\"key\";s:18:\"wx14407ec5855fd78a\";s:6:\"secret\";s:32:\"c3086f3c08574e084421007b68b1f994\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";}}'),('we7:user_accounts:aliapp:1','a:0:{}'),('we7:user_accounts:baiduapp:1','a:0:{}'),('we7:user_accounts:phoneapp:1','a:0:{}'),('we7:user_accounts:toutiaoapp:1','a:0:{}'),('we7:user_accounts:webapp:1','a:0:{}'),('we7:user_accounts:wxapp:1','a:0:{}'),('we7:user_accounts:xzapp:1','a:0:{}'),('we7:user_modules:1','a:2:{s:14:\"ciyt_hot_video\";s:3:\"all\";s:7:\"kyl_mon\";s:3:\"all\";}');
/*!40000 ALTER TABLE `ims_core_cache` ENABLE KEYS */;

#
# Structure for table "ims_core_cron"
#

DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_cron"
#

/*!40000 ALTER TABLE `ims_core_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron` ENABLE KEYS */;

#
# Structure for table "ims_core_cron_record"
#

DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_cron_record"
#

/*!40000 ALTER TABLE `ims_core_cron_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron_record` ENABLE KEYS */;

#
# Structure for table "ims_core_job"
#

DROP TABLE IF EXISTS `ims_core_job`;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_job"
#

/*!40000 ALTER TABLE `ims_core_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_job` ENABLE KEYS */;

#
# Structure for table "ims_core_menu"
#

DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_menu"
#

/*!40000 ALTER TABLE `ims_core_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu` ENABLE KEYS */;

#
# Structure for table "ims_core_menu_shortcut"
#

DROP TABLE IF EXISTS `ims_core_menu_shortcut`;
CREATE TABLE `ims_core_menu_shortcut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_menu_shortcut"
#

/*!40000 ALTER TABLE `ims_core_menu_shortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu_shortcut` ENABLE KEYS */;

#
# Structure for table "ims_core_paylog"
#

DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_paylog"
#

/*!40000 ALTER TABLE `ims_core_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_paylog` ENABLE KEYS */;

#
# Structure for table "ims_core_performance"
#

DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_performance"
#

/*!40000 ALTER TABLE `ims_core_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_performance` ENABLE KEYS */;

#
# Structure for table "ims_core_queue"
#

DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_queue"
#

/*!40000 ALTER TABLE `ims_core_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_queue` ENABLE KEYS */;

#
# Structure for table "ims_core_refundlog"
#

DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_refundlog"
#

/*!40000 ALTER TABLE `ims_core_refundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_refundlog` ENABLE KEYS */;

#
# Structure for table "ims_core_resource"
#

DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_resource"
#

/*!40000 ALTER TABLE `ims_core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_resource` ENABLE KEYS */;

#
# Structure for table "ims_core_sendsms_log"
#

DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_sendsms_log"
#

/*!40000 ALTER TABLE `ims_core_sendsms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_sendsms_log` ENABLE KEYS */;

#
# Structure for table "ims_core_sessions"
#

DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(2000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_sessions"
#

/*!40000 ALTER TABLE `ims_core_sessions` DISABLE KEYS */;
INSERT INTO `ims_core_sessions` VALUES ('212db5f99b34bed3fd74f97bccb26cad',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uotN\";i:1616753633;}',1616757233),('273353fb71f6f40cac80a98c184630a1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"HauV\";i:1618901773;s:4:\"cdKB\";i:1618901775;s:4:\"d4n4\";i:1618901776;}hotvideo_manager_user|a:10:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:6:\"shopid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:5:\"power\";s:5:\"1,2,3\";s:6:\"openid\";s:0:\"\";s:10:\"createtime\";s:10:\"1618483008\";s:12:\"last_loginip\";s:9:\"127.0.0.1\";s:14:\"last_logintime\";s:10:\"1618890647\";s:6:\"status\";s:1:\"1\";}',1618905376),('3d6dfd5fd8ddf029ed59b30bcde3bdbd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EOG6\";i:1616569033;}',1616572633),('3f392f9186d4969047baff58ae8a3d50',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:4:{s:4:\"t3r9\";i:1618484084;s:4:\"I3bM\";i:1618484196;s:4:\"cK44\";i:1618484217;s:4:\"K2ZD\";i:1618484217;}hotvideo_manager_user|a:10:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:6:\"shopid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:5:\"power\";s:5:\"1,2,3\";s:6:\"openid\";s:0:\"\";s:10:\"createtime\";s:10:\"1618483008\";s:12:\"last_loginip\";s:0:\"\";s:14:\"last_logintime\";s:1:\"0\";s:6:\"status\";s:1:\"1\";}',1618487817),('4ab3e9175f0282e9618491560d958720',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"i45s\";i:1616571339;s:4:\"m53F\";i:1616571339;s:4:\"KJ7P\";i:1616571340;s:4:\"a7SQ\";i:1616571340;s:4:\"hiZe\";i:1616571343;s:4:\"hmP1\";i:1616571344;}',1616574944),('7c63fe1e9c2dbcba0104d0febfff8f6a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"TWj7\";i:1616146971;s:4:\"mFSg\";i:1616146972;s:4:\"zqR0\";i:1616146975;s:4:\"QULf\";i:1616146977;s:4:\"NPOj\";i:1616147249;s:4:\"eL90\";i:1616147266;}',1616150867),('861cc2048acf82bfa754258857d203de',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"MJ6n\";i:1616062419;s:4:\"egG1\";i:1616062600;s:4:\"y4Ia\";i:1616062610;s:4:\"a1I1\";i:1616062611;s:4:\"kz8r\";i:1616062623;s:4:\"st3B\";i:1616062623;}',1616066223),('9bffe74ecdab0e82c83d165180b303bf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GhkG\";i:1616836431;}',1616840031),('a5f52e5f037dbb5d0ddda44e8a2424bb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"SW5G\";i:1618627912;s:4:\"i3bb\";i:1618627915;s:4:\"stt3\";i:1618627986;}hotvideo_manager_user|a:10:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:6:\"shopid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:5:\"power\";s:5:\"1,2,3\";s:6:\"openid\";s:0:\"\";s:10:\"createtime\";s:10:\"1618483008\";s:12:\"last_loginip\";s:9:\"127.0.0.1\";s:14:\"last_logintime\";s:10:\"1618483014\";s:6:\"status\";s:1:\"1\";}video_title|s:0:\"\";video_url|s:0:\"\";',1618631587),('d541086b145bfa1c8c5a9ec4d1502eba',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"Jst5\";i:1616409546;s:4:\"Fekk\";i:1616409570;s:4:\"gZk0\";i:1616409581;s:4:\"XOlY\";i:1616409581;s:4:\"pmOM\";i:1616409582;s:4:\"t22o\";i:1616409590;}',1616413190),('e866fcbddedcf7bc706b849794b910a3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"lJMy\";i:1616665716;s:4:\"toQQ\";i:1616665720;s:4:\"C3T4\";i:1616665726;}',1616669327);
/*!40000 ALTER TABLE `ims_core_sessions` ENABLE KEYS */;

#
# Structure for table "ims_core_settings"
#

DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_core_settings"
#

/*!40000 ALTER TABLE `ims_core_settings` DISABLE KEYS */;
INSERT INTO `ims_core_settings` VALUES ('authmode','i:1;'),('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('module_receive_ban','a:1:{s:14:\"ciyt_hot_video\";s:14:\"ciyt_hot_video\";}'),('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),('site','a:6:{s:3:\"key\";s:6:\"8f1e03\";s:5:\"token\";s:32:\"22139865e06e1a7258bc241ab6c6ad74\";s:3:\"url\";s:12:\"http://we7.c\";s:7:\"version\";s:5:\"2.0.0\";s:6:\"family\";s:1:\"x\";s:4:\"type\";s:8:\"register\";}');
/*!40000 ALTER TABLE `ims_core_settings` ENABLE KEYS */;

#
# Structure for table "ims_coupon_location"
#

DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_coupon_location"
#

/*!40000 ALTER TABLE `ims_coupon_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_coupon_location` ENABLE KEYS */;

#
# Structure for table "ims_cover_reply"
#

DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "ims_cover_reply"
#

/*!40000 ALTER TABLE `ims_cover_reply` DISABLE KEYS */;
INSERT INTO `ims_cover_reply` VALUES (1,1,0,7,'mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),(2,1,1,8,'site','','进入首页','','','./index.php?c=home&i=1&t=1');
/*!40000 ALTER TABLE `ims_cover_reply` ENABLE KEYS */;

#
# Structure for table "ims_custom_reply"
#

DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_custom_reply"
#

/*!40000 ALTER TABLE `ims_custom_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_custom_reply` ENABLE KEYS */;

#
# Structure for table "ims_images_reply"
#

DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_images_reply"
#

/*!40000 ALTER TABLE `ims_images_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_images_reply` ENABLE KEYS */;

#
# Structure for table "ims_kyl_adv"
#

DROP TABLE IF EXISTS `ims_kyl_adv`;
CREATE TABLE `ims_kyl_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_adv"
#

/*!40000 ALTER TABLE `ims_kyl_adv` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_adv` ENABLE KEYS */;

#
# Structure for table "ims_kyl_article"
#

DROP TABLE IF EXISTS `ims_kyl_article`;
CREATE TABLE `ims_kyl_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `title` varchar(100) DEFAULT NULL COMMENT '文章标题',
  `intro` varchar(255) DEFAULT '' COMMENT '文章简介',
  `categoryid` int(10) DEFAULT '0' COMMENT '文章分类',
  `picarr` text COMMENT '文章图片',
  `content` mediumtext COMMENT '文章详情',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_article"
#

/*!40000 ALTER TABLE `ims_kyl_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_article` ENABLE KEYS */;

#
# Structure for table "ims_kyl_category"
#

DROP TABLE IF EXISTS `ims_kyl_category`;
CREATE TABLE `ims_kyl_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_category"
#

/*!40000 ALTER TABLE `ims_kyl_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_category` ENABLE KEYS */;

#
# Structure for table "ims_kyl_goodslist"
#

DROP TABLE IF EXISTS `ims_kyl_goodslist`;
CREATE TABLE `ims_kyl_goodslist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `categoryid` int(10) DEFAULT '0' COMMENT '拍品分类',
  `sh_price` int(10) DEFAULT '0' COMMENT '起拍金额',
  `add_price` int(10) DEFAULT '0' COMMENT '默认加价金额',
  `st_price` int(10) DEFAULT '0' COMMENT '成交金额',
  `bond` int(10) DEFAULT '0' COMMENT '保证金',
  `picarr` text COMMENT '商品图片',
  `content` mediumtext COMMENT '商品详情',
  `start_time` int(10) unsigned DEFAULT NULL COMMENT '开始时间',
  `end_time` int(10) unsigned DEFAULT NULL COMMENT '结束时间',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `pos` tinyint(4) unsigned DEFAULT '0' COMMENT '出价次数',
  `status` int(11) NOT NULL COMMENT '1:已付余款',
  `g_status` int(11) NOT NULL COMMENT '2:上架；1：下架',
  `q_uid` varchar(10) DEFAULT NULL COMMENT '成交人昵称',
  `q_user` varchar(50) DEFAULT NULL COMMENT '成交人from_user',
  `send_state` int(4) unsigned NOT NULL COMMENT '1为已发货',
  `send` int(4) unsigned NOT NULL COMMENT '是否需要快递1为需要',
  `express` varchar(20) DEFAULT NULL COMMENT '快递公司',
  `expressn` char(20) DEFAULT NULL COMMENT '快递单',
  `send_time` char(20) DEFAULT NULL COMMENT '发货时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `send_state` (`send_state`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_goodslist"
#

/*!40000 ALTER TABLE `ims_kyl_goodslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_goodslist` ENABLE KEYS */;

#
# Structure for table "ims_kyl_member"
#

DROP TABLE IF EXISTS `ims_kyl_member`;
CREATE TABLE `ims_kyl_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号id',
  `pid` varchar(50) NOT NULL DEFAULT '0' COMMENT '上级openID',
  `balance` int(10) unsigned NOT NULL COMMENT '会员余额',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `realname` varchar(10) NOT NULL COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `avatar` varchar(255) NOT NULL COMMENT '头像',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `pwd_str` varchar(255) NOT NULL DEFAULT '' COMMENT '明文密码',
  `address` varchar(255) NOT NULL COMMENT '邮寄地址',
  `bankcard` varchar(20) NOT NULL,
  `bankname` varchar(10) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `aliname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_member"
#

/*!40000 ALTER TABLE `ims_kyl_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_member` ENABLE KEYS */;

#
# Structure for table "ims_kyl_recharge"
#

DROP TABLE IF EXISTS `ims_kyl_recharge`;
CREATE TABLE `ims_kyl_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `status` smallint(4) NOT NULL DEFAULT '0' COMMENT '0未支付,1为已付款',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额支付,2为支付宝,3为微信支付,4为定价返还',
  `transid` varchar(30) NOT NULL COMMENT '微信订单号',
  `price` int(10) unsigned NOT NULL COMMENT '充值金额',
  `createtime` int(10) unsigned NOT NULL COMMENT '充值时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `from_user` (`from_user`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_recharge"
#

/*!40000 ALTER TABLE `ims_kyl_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_recharge` ENABLE KEYS */;

#
# Structure for table "ims_kyl_record"
#

DROP TABLE IF EXISTS `ims_kyl_record`;
CREATE TABLE `ims_kyl_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `from_user` varchar(50) NOT NULL COMMENT '微信会员openID',
  `nickname` varchar(20) NOT NULL COMMENT '用户昵称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `sid` int(10) unsigned NOT NULL COMMENT '商品编号',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `price` int(10) unsigned NOT NULL COMMENT '交易价格',
  `bond` int(10) unsigned NOT NULL COMMENT '保证金',
  `createtime` int(10) unsigned NOT NULL COMMENT '购买时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_record"
#

/*!40000 ALTER TABLE `ims_kyl_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_record` ENABLE KEYS */;

#
# Structure for table "ims_kyl_withdrawals"
#

DROP TABLE IF EXISTS `ims_kyl_withdrawals`;
CREATE TABLE `ims_kyl_withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '公众账号',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `status` smallint(4) NOT NULL COMMENT '0为提现中,1为提现成功，2提现失败',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为银行卡,2为支付宝',
  `price` int(10) unsigned NOT NULL COMMENT '提现金额',
  `createtime` int(10) unsigned NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_kyl_withdrawals"
#

/*!40000 ALTER TABLE `ims_kyl_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_kyl_withdrawals` ENABLE KEYS */;

#
# Structure for table "ims_mc_cash_record"
#

DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_cash_record"
#

/*!40000 ALTER TABLE `ims_mc_cash_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_cash_record` ENABLE KEYS */;

#
# Structure for table "ims_mc_chats_record"
#

DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_chats_record"
#

/*!40000 ALTER TABLE `ims_mc_chats_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_chats_record` ENABLE KEYS */;

#
# Structure for table "ims_mc_credits_recharge"
#

DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_credits_recharge"
#

/*!40000 ALTER TABLE `ims_mc_credits_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` ENABLE KEYS */;

#
# Structure for table "ims_mc_credits_record"
#

DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_credits_record"
#

/*!40000 ALTER TABLE `ims_mc_credits_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_record` ENABLE KEYS */;

#
# Structure for table "ims_mc_fans_groups"
#

DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_fans_groups"
#

/*!40000 ALTER TABLE `ims_mc_fans_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_groups` ENABLE KEYS */;

#
# Structure for table "ims_mc_fans_tag"
#

DROP TABLE IF EXISTS `ims_mc_fans_tag`;
CREATE TABLE `ims_mc_fans_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `fanid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(150) DEFAULT NULL,
  `subscribe_time` int(11) NOT NULL,
  `unionid` varchar(100) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `groupid` varchar(100) DEFAULT NULL,
  `tagid_list` varchar(250) DEFAULT NULL,
  `subscribe_scene` varchar(100) DEFAULT NULL,
  `qr_scene_str` varchar(250) DEFAULT NULL,
  `qr_scene` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fanid` (`fanid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_fans_tag"
#

/*!40000 ALTER TABLE `ims_mc_fans_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag` ENABLE KEYS */;

#
# Structure for table "ims_mc_fans_tag_mapping"
#

DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_fans_tag_mapping"
#

/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` ENABLE KEYS */;

#
# Structure for table "ims_mc_groups"
#

DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_groups"
#

/*!40000 ALTER TABLE `ims_mc_groups` DISABLE KEYS */;
INSERT INTO `ims_mc_groups` VALUES (1,1,'默认会员组',0,1);
/*!40000 ALTER TABLE `ims_mc_groups` ENABLE KEYS */;

#
# Structure for table "ims_mc_handsel"
#

DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_handsel"
#

/*!40000 ALTER TABLE `ims_mc_handsel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_handsel` ENABLE KEYS */;

#
# Structure for table "ims_mc_mapping_fans"
#

DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(60) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  `user_from` tinyint(1) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid_2` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_mapping_fans"
#

/*!40000 ALTER TABLE `ims_mc_mapping_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` ENABLE KEYS */;

#
# Structure for table "ims_mc_mass_record"
#

DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `msg_id` varchar(50) NOT NULL,
  `msg_data_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_mass_record"
#

/*!40000 ALTER TABLE `ims_mc_mass_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mass_record` ENABLE KEYS */;

#
# Structure for table "ims_mc_member_address"
#

DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_member_address"
#

/*!40000 ALTER TABLE `ims_mc_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_address` ENABLE KEYS */;

#
# Structure for table "ims_mc_member_fields"
#

DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_member_fields"
#

/*!40000 ALTER TABLE `ims_mc_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_fields` ENABLE KEYS */;

#
# Structure for table "ims_mc_member_property"
#

DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_member_property"
#

/*!40000 ALTER TABLE `ims_mc_member_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_property` ENABLE KEYS */;

#
# Structure for table "ims_mc_members"
#

DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  `user_from` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_members"
#

/*!40000 ALTER TABLE `ims_mc_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_members` ENABLE KEYS */;

#
# Structure for table "ims_mc_oauth_fans"
#

DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mc_oauth_fans"
#

/*!40000 ALTER TABLE `ims_mc_oauth_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` ENABLE KEYS */;

#
# Structure for table "ims_menu_event"
#

DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_menu_event"
#

/*!40000 ALTER TABLE `ims_menu_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_menu_event` ENABLE KEYS */;

#
# Structure for table "ims_message_notice_log"
#

DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_message_notice_log"
#

/*!40000 ALTER TABLE `ims_message_notice_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_message_notice_log` ENABLE KEYS */;

#
# Structure for table "ims_mobilenumber"
#

DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_mobilenumber"
#

/*!40000 ALTER TABLE `ims_mobilenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mobilenumber` ENABLE KEYS */;

#
# Structure for table "ims_modules"
#

DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `application_type` tinyint(1) unsigned NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `baiduapp_support` tinyint(1) NOT NULL,
  `toutiaoapp_support` tinyint(1) NOT NULL,
  `from` varchar(10) NOT NULL,
  `cloud_record` tinyint(1) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules"
#

/*!40000 ALTER TABLE `ims_modules` DISABLE KEYS */;
INSERT INTO `ims_modules` VALUES (1,'basic',0,'system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(2,'news',0,'system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(3,'music',0,'system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(4,'userapi',0,'system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(5,'recharge',0,'system','会员中心充值模块','1.0','提供会员充值功能','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(6,'custom',0,'system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc',0,'a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(7,'images',0,'system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(8,'video',0,'system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(9,'voice',0,'system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(10,'chats',0,'system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(11,'wxcard',0,'system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(12,'store',0,'business','站内商城','1.0','站内商城','站内商城','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(13,'kyl_mon',1,'business','客云来-登录','3.5.3','客云来-登录','','','',1,'a:0:{}','a:0:{}',0,0,0,0,'N;','K',1,1,1,1,1,2,1,1,'addons/kyl_mon/icon.jpg',1,1,'local',0,0),(14,'ciyt_hot_video',1,'activity','同城霸屏码','1.3.2','视频引流、短视频活动','短视频同城霸屏，获客引流系统。','微擎','http://www.we7.cc/',1,'a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:4:\"view\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}','a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:14:\"merchant_order\";i:11;s:13:\"user_get_card\";i:12;s:13:\"user_del_card\";i:13;s:17:\"user_consume_card\";}',0,0,0,0,'a:0:{}','T',1,1,1,1,1,2,1,1,'addons/ciyt_hot_video/icon.jpg',1,1,'local',0,0);
/*!40000 ALTER TABLE `ims_modules` ENABLE KEYS */;

#
# Structure for table "ims_modules_bindings"
#

DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  `multilevel` tinyint(1) NOT NULL,
  `parent` varchar(50) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_bindings"
#

/*!40000 ALTER TABLE `ims_modules_bindings` DISABLE KEYS */;
INSERT INTO `ims_modules_bindings` VALUES (1,'kyl_mon','cover','','首页','index','',0,'','',0,0,''),(2,'kyl_mon','cover','','个人中心','profile','',0,'','',0,0,''),(3,'kyl_mon','menu','','拍品管理','goods','',0,'','',0,0,''),(4,'kyl_mon','menu','','拍品分类','category','',0,'','',0,0,''),(5,'kyl_mon','home','getHomeTiles','','','',0,'','wi wi-appsetting',0,0,''),(6,'kyl_mon','home','','首页','index','',0,'','',0,0,''),(7,'kyl_mon','home','','个人中心','profile','',0,'','',0,0,''),(8,'ciyt_hot_video','cover','','商家后台登录(统一入口)','shop','',0,'','',0,0,''),(9,'ciyt_hot_video','menu','','活动管理','activity','',0,'','',0,0,''),(10,'ciyt_hot_video','menu','','用户管理','member','',0,'','',0,0,''),(11,'ciyt_hot_video','menu','','商户管理','merchant','',0,'','',0,0,''),(12,'ciyt_hot_video','menu','','卡券管理','card','',0,'','',0,0,''),(13,'ciyt_hot_video','menu','','发布记录','relation','',0,'','',0,0,'');
/*!40000 ALTER TABLE `ims_modules_bindings` ENABLE KEYS */;

#
# Structure for table "ims_modules_cloud"
#

DROP TABLE IF EXISTS `ims_modules_cloud`;
CREATE TABLE `ims_modules_cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `application_type` tinyint(1) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) NOT NULL,
  `main_module_logo` varchar(100) NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  `baiduapp_support` tinyint(1) NOT NULL,
  `toutiaoapp_support` tinyint(1) NOT NULL,
  `buytime` int(10) NOT NULL,
  `module_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `lastupdatetime` (`lastupdatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_cloud"
#

/*!40000 ALTER TABLE `ims_modules_cloud` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_cloud` ENABLE KEYS */;

#
# Structure for table "ims_modules_ignore"
#

DROP TABLE IF EXISTS `ims_modules_ignore`;
CREATE TABLE `ims_modules_ignore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_ignore"
#

/*!40000 ALTER TABLE `ims_modules_ignore` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_ignore` ENABLE KEYS */;

#
# Structure for table "ims_modules_plugin"
#

DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_plugin"
#

/*!40000 ALTER TABLE `ims_modules_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin` ENABLE KEYS */;

#
# Structure for table "ims_modules_plugin_rank"
#

DROP TABLE IF EXISTS `ims_modules_plugin_rank`;
CREATE TABLE `ims_modules_plugin_rank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  `plugin_name` varchar(200) NOT NULL,
  `main_module_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_plugin_rank"
#

/*!40000 ALTER TABLE `ims_modules_plugin_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin_rank` ENABLE KEYS */;

#
# Structure for table "ims_modules_rank"
#

DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_rank"
#

/*!40000 ALTER TABLE `ims_modules_rank` DISABLE KEYS */;
INSERT INTO `ims_modules_rank` VALUES (1,'kyl_mon',0,0,1),(2,'kyl_mon',0,0,1),(3,'kyl_mon',0,0,1),(4,'kyl_mon',0,0,1),(5,'kyl_mon',0,0,1),(6,'kyl_mon',0,0,1),(7,'kyl_mon',0,0,1),(8,'kyl_mon',0,0,1),(9,'kyl_mon',0,0,1),(10,'kyl_mon',0,0,1),(11,'kyl_mon',0,0,1),(12,'kyl_mon',0,0,1),(13,'kyl_mon',0,0,1),(14,'ciyt_hot_video',0,1,1),(15,'kyl_mon',0,0,1),(16,'ciyt_hot_video',0,1,1),(17,'kyl_mon',0,0,1),(18,'ciyt_hot_video',0,1,1),(19,'kyl_mon',0,0,1),(20,'ciyt_hot_video',0,1,1),(21,'kyl_mon',0,0,1),(22,'ciyt_hot_video',0,1,1),(23,'kyl_mon',0,0,1),(24,'ciyt_hot_video',0,1,1),(25,'kyl_mon',0,0,1),(26,'ciyt_hot_video',0,1,1),(27,'kyl_mon',0,0,1),(28,'ciyt_hot_video',0,1,1),(29,'kyl_mon',0,0,1),(30,'ciyt_hot_video',0,1,1),(31,'kyl_mon',0,0,1),(32,'ciyt_hot_video',0,1,1),(33,'kyl_mon',0,0,1),(34,'ciyt_hot_video',0,1,1),(35,'kyl_mon',0,0,1),(36,'ciyt_hot_video',0,1,1),(37,'kyl_mon',0,0,1),(38,'ciyt_hot_video',0,1,1),(39,'kyl_mon',0,0,1),(40,'ciyt_hot_video',0,1,1),(41,'kyl_mon',0,0,1),(42,'ciyt_hot_video',0,1,1),(43,'kyl_mon',0,0,1);
/*!40000 ALTER TABLE `ims_modules_rank` ENABLE KEYS */;

#
# Structure for table "ims_modules_recycle"
#

DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  `baiduapp_support` tinyint(1) NOT NULL,
  `toutiaoapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_modules_recycle"
#

/*!40000 ALTER TABLE `ims_modules_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_recycle` ENABLE KEYS */;

#
# Structure for table "ims_music_reply"
#

DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_music_reply"
#

/*!40000 ALTER TABLE `ims_music_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_music_reply` ENABLE KEYS */;

#
# Structure for table "ims_news_reply"
#

DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_news_reply"
#

/*!40000 ALTER TABLE `ims_news_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_news_reply` ENABLE KEYS */;

#
# Structure for table "ims_phoneapp_versions"
#

DROP TABLE IF EXISTS `ims_phoneapp_versions`;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_phoneapp_versions"
#

/*!40000 ALTER TABLE `ims_phoneapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_phoneapp_versions` ENABLE KEYS */;

#
# Structure for table "ims_profile_fields"
#

DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "ims_profile_fields"
#

/*!40000 ALTER TABLE `ims_profile_fields` DISABLE KEYS */;
INSERT INTO `ims_profile_fields` VALUES (1,'realname',1,'真实姓名','',0,1,1,1,0),(2,'nickname',1,'昵称','',1,1,0,1,0),(3,'avatar',1,'头像','',1,0,0,0,0),(4,'qq',1,'QQ号','',0,0,0,1,0),(5,'mobile',1,'手机号码','',0,0,0,0,0),(6,'vip',1,'VIP级别','',0,0,0,0,0),(7,'gender',1,'性别','',0,0,0,0,0),(8,'birthyear',1,'出生生日','',0,0,0,0,0),(9,'constellation',1,'星座','',0,0,0,0,0),(10,'zodiac',1,'生肖','',0,0,0,0,0),(11,'telephone',1,'固定电话','',0,0,0,0,0),(12,'idcard',1,'证件号码','',0,0,0,0,0),(13,'studentid',1,'学号','',0,0,0,0,0),(14,'grade',1,'班级','',0,0,0,0,0),(15,'address',1,'邮寄地址','',0,0,0,0,0),(16,'zipcode',1,'邮编','',0,0,0,0,0),(17,'nationality',1,'国籍','',0,0,0,0,0),(18,'resideprovince',1,'居住地址','',0,0,0,0,0),(19,'graduateschool',1,'毕业学校','',0,0,0,0,0),(20,'company',1,'公司','',0,0,0,0,0),(21,'education',1,'学历','',0,0,0,0,0),(22,'occupation',1,'职业','',0,0,0,0,0),(23,'position',1,'职位','',0,0,0,0,0),(24,'revenue',1,'年收入','',0,0,0,0,0),(25,'affectivestatus',1,'情感状态','',0,0,0,0,0),(26,'lookingfor',1,' 交友目的','',0,0,0,0,0),(27,'bloodtype',1,'血型','',0,0,0,0,0),(28,'height',1,'身高','',0,0,0,0,0),(29,'weight',1,'体重','',0,0,0,0,0),(30,'alipay',1,'支付宝帐号','',0,0,0,0,0),(31,'msn',1,'MSN','',0,0,0,0,0),(32,'email',1,'电子邮箱','',0,0,0,0,0),(33,'taobao',1,'阿里旺旺','',0,0,0,0,0),(34,'site',1,'主页','',0,0,0,0,0),(35,'bio',1,'自我介绍','',0,0,0,0,0),(36,'interest',1,'兴趣爱好','',0,0,0,0,0);
/*!40000 ALTER TABLE `ims_profile_fields` ENABLE KEYS */;

#
# Structure for table "ims_qrcode"
#

DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_qrcode"
#

/*!40000 ALTER TABLE `ims_qrcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode` ENABLE KEYS */;

#
# Structure for table "ims_qrcode_stat"
#

DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_qrcode_stat"
#

/*!40000 ALTER TABLE `ims_qrcode_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode_stat` ENABLE KEYS */;

#
# Structure for table "ims_rule"
#

DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "ims_rule"
#

/*!40000 ALTER TABLE `ims_rule` DISABLE KEYS */;
INSERT INTO `ims_rule` VALUES (1,0,'城市天气','userapi',255,1,''),(2,0,'百度百科','userapi',255,1,''),(3,0,'即时翻译','userapi',255,1,''),(4,0,'今日老黄历','userapi',255,1,''),(5,0,'看新闻','userapi',255,1,''),(6,0,'快递查询','userapi',255,1,''),(7,1,'个人中心入口设置','cover',0,1,''),(8,1,'微擎团队入口设置','cover',0,1,'');
/*!40000 ALTER TABLE `ims_rule` ENABLE KEYS */;

#
# Structure for table "ims_rule_keyword"
#

DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "ims_rule_keyword"
#

/*!40000 ALTER TABLE `ims_rule_keyword` DISABLE KEYS */;
INSERT INTO `ims_rule_keyword` VALUES (1,1,0,'userapi','^.+天气$',3,255,1),(2,2,0,'userapi','^百科.+$',3,255,1),(3,2,0,'userapi','^定义.+$',3,255,1),(4,3,0,'userapi','^@.+$',3,255,1),(5,4,0,'userapi','日历',1,255,1),(6,4,0,'userapi','万年历',1,255,1),(7,4,0,'userapi','黄历',1,255,1),(8,4,0,'userapi','几号',1,255,1),(9,5,0,'userapi','新闻',1,255,1),(10,6,0,'userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$',3,255,1),(11,7,1,'cover','个人中心',1,0,1),(12,8,1,'cover','首页',1,0,1);
/*!40000 ALTER TABLE `ims_rule_keyword` ENABLE KEYS */;

#
# Structure for table "ims_site_article"
#

DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_article"
#

/*!40000 ALTER TABLE `ims_site_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article` ENABLE KEYS */;

#
# Structure for table "ims_site_article_comment"
#

DROP TABLE IF EXISTS `ims_site_article_comment`;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_article_comment"
#

/*!40000 ALTER TABLE `ims_site_article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article_comment` ENABLE KEYS */;

#
# Structure for table "ims_site_category"
#

DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_category"
#

/*!40000 ALTER TABLE `ims_site_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_category` ENABLE KEYS */;

#
# Structure for table "ims_site_multi"
#

DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_multi"
#

/*!40000 ALTER TABLE `ims_site_multi` DISABLE KEYS */;
INSERT INTO `ims_site_multi` VALUES (1,1,'微擎团队',1,'',1,'');
/*!40000 ALTER TABLE `ims_site_multi` ENABLE KEYS */;

#
# Structure for table "ims_site_nav"
#

DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_nav"
#

/*!40000 ALTER TABLE `ims_site_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_nav` ENABLE KEYS */;

#
# Structure for table "ims_site_page"
#

DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_page"
#

/*!40000 ALTER TABLE `ims_site_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_page` ENABLE KEYS */;

#
# Structure for table "ims_site_slide"
#

DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_slide"
#

/*!40000 ALTER TABLE `ims_site_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_slide` ENABLE KEYS */;

#
# Structure for table "ims_site_store_cash_log"
#

DROP TABLE IF EXISTS `ims_site_store_cash_log`;
CREATE TABLE `ims_site_store_cash_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `number` char(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_store_cash_log"
#

/*!40000 ALTER TABLE `ims_site_store_cash_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_cash_log` ENABLE KEYS */;

#
# Structure for table "ims_site_store_cash_order"
#

DROP TABLE IF EXISTS `ims_site_store_cash_order`;
CREATE TABLE `ims_site_store_cash_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` char(30) NOT NULL,
  `founder_uid` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `goods_id` int(10) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `cash_log_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_store_cash_order"
#

/*!40000 ALTER TABLE `ims_site_store_cash_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_cash_order` ENABLE KEYS */;

#
# Structure for table "ims_site_store_create_account"
#

DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_store_create_account"
#

/*!40000 ALTER TABLE `ims_site_store_create_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_create_account` ENABLE KEYS */;

#
# Structure for table "ims_site_store_goods"
#

DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  `user_group_price` varchar(1000) NOT NULL,
  `user_group` int(10) NOT NULL,
  `account_group` int(10) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `platform_num` int(10) NOT NULL,
  `aliapp_num` int(10) NOT NULL,
  `baiduapp_num` int(10) NOT NULL,
  `phoneapp_num` int(10) NOT NULL,
  `toutiaoapp_num` int(10) NOT NULL,
  `webapp_num` int(10) NOT NULL,
  `xzapp_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_store_goods"
#

/*!40000 ALTER TABLE `ims_site_store_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods` ENABLE KEYS */;

#
# Structure for table "ims_site_store_goods_cloud"
#

DROP TABLE IF EXISTS `ims_site_store_goods_cloud`;
CREATE TABLE `ims_site_store_goods_cloud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cloud_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `wish_branch` int(10) NOT NULL,
  `is_edited` tinyint(1) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `branchs` varchar(6000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_store_goods_cloud"
#

/*!40000 ALTER TABLE `ims_site_store_goods_cloud` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods_cloud` ENABLE KEYS */;

#
# Structure for table "ims_site_store_order"
#

DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_store_order"
#

/*!40000 ALTER TABLE `ims_site_store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_order` ENABLE KEYS */;

#
# Structure for table "ims_site_styles"
#

DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_styles"
#

/*!40000 ALTER TABLE `ims_site_styles` DISABLE KEYS */;
INSERT INTO `ims_site_styles` VALUES (1,1,1,'微站默认模板_gC5C');
/*!40000 ALTER TABLE `ims_site_styles` ENABLE KEYS */;

#
# Structure for table "ims_site_styles_vars"
#

DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_styles_vars"
#

/*!40000 ALTER TABLE `ims_site_styles_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_styles_vars` ENABLE KEYS */;

#
# Structure for table "ims_site_templates"
#

DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_site_templates"
#

/*!40000 ALTER TABLE `ims_site_templates` DISABLE KEYS */;
INSERT INTO `ims_site_templates` VALUES (1,'default','微站默认模板','','由微擎提供默认微站模板套系','微擎团队','http://we7.cc','1',0);
/*!40000 ALTER TABLE `ims_site_templates` ENABLE KEYS */;

#
# Structure for table "ims_stat_fans"
#

DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

#
# Data for table "ims_stat_fans"
#

/*!40000 ALTER TABLE `ims_stat_fans` DISABLE KEYS */;
INSERT INTO `ims_stat_fans` VALUES (1,1,0,0,0,'20210315'),(2,1,0,0,0,'20210314'),(3,1,0,0,0,'20210313'),(4,1,0,0,0,'20210312'),(5,1,0,0,0,'20210311'),(6,1,0,0,0,'20210310'),(7,1,0,0,0,'20210309'),(8,1,0,0,0,'20210317'),(9,1,0,0,0,'20210316'),(10,1,0,0,0,'20210318'),(11,1,0,0,0,'20210324'),(12,1,0,0,0,'20210323'),(13,1,0,0,0,'20210322'),(14,1,0,0,0,'20210321'),(15,1,0,0,0,'20210320'),(16,1,0,0,0,'20210319'),(17,1,0,0,0,'20210414'),(18,1,0,0,0,'20210413'),(19,1,0,0,0,'20210412'),(20,1,0,0,0,'20210411'),(21,1,0,0,0,'20210410'),(22,1,0,0,0,'20210409'),(23,1,0,0,0,'20210408'),(24,1,0,0,0,'20210416'),(25,1,0,0,0,'20210415'),(26,1,0,0,0,'20210419'),(27,1,0,0,0,'20210418'),(28,1,0,0,0,'20210417');
/*!40000 ALTER TABLE `ims_stat_fans` ENABLE KEYS */;

#
# Structure for table "ims_stat_keyword"
#

DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_stat_keyword"
#

/*!40000 ALTER TABLE `ims_stat_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_keyword` ENABLE KEYS */;

#
# Structure for table "ims_stat_msg_history"
#

DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_stat_msg_history"
#

/*!40000 ALTER TABLE `ims_stat_msg_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_msg_history` ENABLE KEYS */;

#
# Structure for table "ims_stat_rule"
#

DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_stat_rule"
#

/*!40000 ALTER TABLE `ims_stat_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_rule` ENABLE KEYS */;

#
# Structure for table "ims_stat_visit"
#

DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `ip_count` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

#
# Data for table "ims_stat_visit"
#

/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_stat_visit` VALUES (1,0,'',8,20210316,'web',1),(2,1,'we7_account',11,20210316,'web',0),(3,1,'',5,20210316,'web',0),(4,1,'kyl_mon',102,20210316,'app',1),(5,1,'wesite',6,20210316,'app',0),(6,1,'',5,20210318,'web',1),(7,1,'we7_account',4,20210318,'web',0),(8,1,'kyl_mon',201,20210318,'app',1),(9,1,'',8,20210319,'web',1),(10,1,'we7_account',3,20210319,'web',0),(11,1,'kyl_mon',60,20210319,'app',1),(12,1,'',10,20210322,'web',1),(13,1,'we7_account',2,20210322,'web',0),(14,1,'kyl_mon',55,20210322,'app',1),(15,1,'',7,20210323,'web',1),(16,1,'we7_account',3,20210323,'web',0),(17,1,'kyl_mon',19,20210323,'app',1),(18,1,'kyl_mon',21,20210324,'app',1),(19,1,'',3,20210325,'web',1),(20,1,'we7_account',3,20210325,'web',0),(21,1,'kyl_mon',57,20210325,'app',1),(22,1,'kyl_mon',140,20210326,'app',1),(23,1,'kyl_mon',10,20210327,'app',1),(24,0,'',1,20210415,'web',1),(25,1,'',9,20210415,'web',0),(26,1,'we7_account',12,20210415,'web',0),(27,1,'kyl_mon',15,20210415,'app',1),(28,1,'wesite',1,20210415,'app',0),(29,1,'ciyt_hot_video',43,20210415,'app',0),(30,0,'',1,20210417,'web',1),(31,1,'',3,20210417,'web',0),(32,1,'we7_account',5,20210417,'web',0),(33,1,'ciyt_hot_video',24,20210417,'app',1),(34,1,'kyl_mon',5,20210417,'app',0),(35,1,'',6,20210420,'web',1),(36,1,'we7_account',10,20210420,'web',0),(37,1,'ciyt_hot_video',31,20210420,'app',1),(38,0,'',2,20210512,'web',1),(39,1,'',2,20210512,'web',0),(40,0,'',1,20210603,'web',1),(41,1,'',8,20210603,'web',0),(42,1,'we7_account',1,20210603,'web',0);
/*!40000 ALTER TABLE `ims_stat_visit` ENABLE KEYS */;

#
# Structure for table "ims_stat_visit_ip"
#

DROP TABLE IF EXISTS `ims_stat_visit_ip`;
CREATE TABLE `ims_stat_visit_ip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` bigint(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_date_module_uniacid` (`ip`,`date`,`module`,`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "ims_stat_visit_ip"
#

/*!40000 ALTER TABLE `ims_stat_visit_ip` DISABLE KEYS */;
INSERT INTO `ims_stat_visit_ip` VALUES (21,2130706433,1,'app','ciyt_hot_video',20210420),(22,2130706433,0,'web','',20210512),(23,2130706433,0,'web','',20210603);
/*!40000 ALTER TABLE `ims_stat_visit_ip` ENABLE KEYS */;

#
# Structure for table "ims_system_stat_visit"
#

DROP TABLE IF EXISTS `ims_system_stat_visit`;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_system_stat_visit"
#

/*!40000 ALTER TABLE `ims_system_stat_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_system_stat_visit` ENABLE KEYS */;

#
# Structure for table "ims_system_welcome_binddomain"
#

DROP TABLE IF EXISTS `ims_system_welcome_binddomain`;
CREATE TABLE `ims_system_welcome_binddomain` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_system_welcome_binddomain"
#

/*!40000 ALTER TABLE `ims_system_welcome_binddomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_system_welcome_binddomain` ENABLE KEYS */;

#
# Structure for table "ims_uni_account"
#

DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `create_uid` int(11) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account"
#

/*!40000 ALTER TABLE `ims_uni_account` DISABLE KEYS */;
INSERT INTO `ims_uni_account` VALUES (1,-1,'微擎团队','一个朝气蓬勃的团队',1,NULL,'W',0,'','',0);
/*!40000 ALTER TABLE `ims_uni_account` ENABLE KEYS */;

#
# Structure for table "ims_uni_account_extra_modules"
#

DROP TABLE IF EXISTS `ims_uni_account_extra_modules`;
CREATE TABLE `ims_uni_account_extra_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `modules` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account_extra_modules"
#

/*!40000 ALTER TABLE `ims_uni_account_extra_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_extra_modules` ENABLE KEYS */;

#
# Structure for table "ims_uni_account_group"
#

DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account_group"
#

/*!40000 ALTER TABLE `ims_uni_account_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_group` ENABLE KEYS */;

#
# Structure for table "ims_uni_account_menus"
#

DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account_menus"
#

/*!40000 ALTER TABLE `ims_uni_account_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_menus` ENABLE KEYS */;

#
# Structure for table "ims_uni_account_modules"
#

DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account_modules"
#

/*!40000 ALTER TABLE `ims_uni_account_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_modules` ENABLE KEYS */;

#
# Structure for table "ims_uni_account_modules_shortcut"
#

DROP TABLE IF EXISTS `ims_uni_account_modules_shortcut`;
CREATE TABLE `ims_uni_account_modules_shortcut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(250) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `module_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account_modules_shortcut"
#

/*!40000 ALTER TABLE `ims_uni_account_modules_shortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_modules_shortcut` ENABLE KEYS */;

#
# Structure for table "ims_uni_account_users"
#

DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_account_users"
#

/*!40000 ALTER TABLE `ims_uni_account_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_users` ENABLE KEYS */;

#
# Structure for table "ims_uni_group"
#

DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_group"
#

/*!40000 ALTER TABLE `ims_uni_group` DISABLE KEYS */;
INSERT INTO `ims_uni_group` VALUES (1,0,'体验套餐服务','N;','N;',0,0);
/*!40000 ALTER TABLE `ims_uni_group` ENABLE KEYS */;

#
# Structure for table "ims_uni_link_uniacid"
#

DROP TABLE IF EXISTS `ims_uni_link_uniacid`;
CREATE TABLE `ims_uni_link_uniacid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `link_uniacid` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_link_uniacid"
#

/*!40000 ALTER TABLE `ims_uni_link_uniacid` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_link_uniacid` ENABLE KEYS */;

#
# Structure for table "ims_uni_modules"
#

DROP TABLE IF EXISTS `ims_uni_modules`;
CREATE TABLE `ims_uni_modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_modules"
#

/*!40000 ALTER TABLE `ims_uni_modules` DISABLE KEYS */;
INSERT INTO `ims_uni_modules` VALUES (1,1,'kyl_mon'),(2,1,'ciyt_hot_video');
/*!40000 ALTER TABLE `ims_uni_modules` ENABLE KEYS */;

#
# Structure for table "ims_uni_settings"
#

DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(2000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) NOT NULL,
  `attachment_limit` int(11) NOT NULL,
  `attachment_size` varchar(20) NOT NULL,
  `sync_member` tinyint(1) NOT NULL,
  `remote` varchar(2000) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_settings"
#

/*!40000 ALTER TABLE `ims_uni_settings` DISABLE KEYS */;
INSERT INTO `ims_uni_settings` VALUES (1,'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}',0,'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}','',1,0,'','',1,'',0,1,'','','',0,0,'',0,'31',0,'');
/*!40000 ALTER TABLE `ims_uni_settings` ENABLE KEYS */;

#
# Structure for table "ims_uni_verifycode"
#

DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `failed_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_uni_verifycode"
#

/*!40000 ALTER TABLE `ims_uni_verifycode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_verifycode` ENABLE KEYS */;

#
# Structure for table "ims_userapi_cache"
#

DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_userapi_cache"
#

/*!40000 ALTER TABLE `ims_userapi_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_userapi_cache` ENABLE KEYS */;

#
# Structure for table "ims_userapi_reply"
#

DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "ims_userapi_reply"
#

/*!40000 ALTER TABLE `ims_userapi_reply` DISABLE KEYS */;
INSERT INTO `ims_userapi_reply` VALUES (1,1,'\"城市名+天气\", 如: \"北京天气\"','weather.php','','',0),(2,2,'\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','',0),(3,3,'\"@查询内容(中文或英文)\"','translate.php','','',0),(4,4,'\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','',0),(5,5,'\"新闻\"','news.php','','',0),(6,6,'\"快递+单号\", 如: \"申通1200041125\"','express.php','','',0);
/*!40000 ALTER TABLE `ims_userapi_reply` ENABLE KEYS */;

#
# Structure for table "ims_users"
#

DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  `notice_setting` varchar(5000) NOT NULL,
  `is_bind` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "ims_users"
#

/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','ff637d0c15acf1169fbf15d70b210e7666edfa72','d4bfa4dd',0,0,1615859743,'',1622715012,'127.0.0.1','',0,0,0,'',0,'',0);
/*!40000 ALTER TABLE `ims_users` ENABLE KEYS */;

#
# Structure for table "ims_users_bind"
#

DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_bind"
#

/*!40000 ALTER TABLE `ims_users_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_bind` ENABLE KEYS */;

#
# Structure for table "ims_users_create_group"
#

DROP TABLE IF EXISTS `ims_users_create_group`;
CREATE TABLE `ims_users_create_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `maxaccount` int(10) NOT NULL,
  `maxwxapp` int(10) NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_create_group"
#

/*!40000 ALTER TABLE `ims_users_create_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_create_group` ENABLE KEYS */;

#
# Structure for table "ims_users_extra_group"
#

DROP TABLE IF EXISTS `ims_users_extra_group`;
CREATE TABLE `ims_users_extra_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uni_group_id` int(10) NOT NULL,
  `create_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uni_group_id` (`uni_group_id`),
  KEY `create_group_id` (`create_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_extra_group"
#

/*!40000 ALTER TABLE `ims_users_extra_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_group` ENABLE KEYS */;

#
# Structure for table "ims_users_extra_limit"
#

DROP TABLE IF EXISTS `ims_users_extra_limit`;
CREATE TABLE `ims_users_extra_limit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `maxaccount` int(10) NOT NULL,
  `maxwxapp` int(10) NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `timelimit` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_extra_limit"
#

/*!40000 ALTER TABLE `ims_users_extra_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_limit` ENABLE KEYS */;

#
# Structure for table "ims_users_extra_modules"
#

DROP TABLE IF EXISTS `ims_users_extra_modules`;
CREATE TABLE `ims_users_extra_modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `support` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_extra_modules"
#

/*!40000 ALTER TABLE `ims_users_extra_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_modules` ENABLE KEYS */;

#
# Structure for table "ims_users_extra_templates"
#

DROP TABLE IF EXISTS `ims_users_extra_templates`;
CREATE TABLE `ims_users_extra_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `template_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_extra_templates"
#

/*!40000 ALTER TABLE `ims_users_extra_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_templates` ENABLE KEYS */;

#
# Structure for table "ims_users_failed_login"
#

DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_failed_login"
#

/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_failed_login` ENABLE KEYS */;

#
# Structure for table "ims_users_founder_group"
#

DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_founder_group"
#

/*!40000 ALTER TABLE `ims_users_founder_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_group` ENABLE KEYS */;

#
# Structure for table "ims_users_founder_own_create_groups"
#

DROP TABLE IF EXISTS `ims_users_founder_own_create_groups`;
CREATE TABLE `ims_users_founder_own_create_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `create_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`),
  KEY `create_group_id` (`create_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_founder_own_create_groups"
#

/*!40000 ALTER TABLE `ims_users_founder_own_create_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_create_groups` ENABLE KEYS */;

#
# Structure for table "ims_users_founder_own_uni_groups"
#

DROP TABLE IF EXISTS `ims_users_founder_own_uni_groups`;
CREATE TABLE `ims_users_founder_own_uni_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `uni_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`),
  KEY `uni_group_id` (`uni_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_founder_own_uni_groups"
#

/*!40000 ALTER TABLE `ims_users_founder_own_uni_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_uni_groups` ENABLE KEYS */;

#
# Structure for table "ims_users_founder_own_users"
#

DROP TABLE IF EXISTS `ims_users_founder_own_users`;
CREATE TABLE `ims_users_founder_own_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `founder_uid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `founder_uid` (`founder_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_founder_own_users"
#

/*!40000 ALTER TABLE `ims_users_founder_own_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_users` ENABLE KEYS */;

#
# Structure for table "ims_users_founder_own_users_groups"
#

DROP TABLE IF EXISTS `ims_users_founder_own_users_groups`;
CREATE TABLE `ims_users_founder_own_users_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `users_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`),
  KEY `users_group_id` (`users_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_founder_own_users_groups"
#

/*!40000 ALTER TABLE `ims_users_founder_own_users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_users_groups` ENABLE KEYS */;

#
# Structure for table "ims_users_group"
#

DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_group"
#

/*!40000 ALTER TABLE `ims_users_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_group` ENABLE KEYS */;

#
# Structure for table "ims_users_invitation"
#

DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_invitation"
#

/*!40000 ALTER TABLE `ims_users_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_invitation` ENABLE KEYS */;

#
# Structure for table "ims_users_lastuse"
#

DROP TABLE IF EXISTS `ims_users_lastuse`;
CREATE TABLE `ims_users_lastuse` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_lastuse"
#

/*!40000 ALTER TABLE `ims_users_lastuse` DISABLE KEYS */;
INSERT INTO `ims_users_lastuse` VALUES (1,1,1,'','account_display'),(2,1,1,'kyl_mon','module_display');
/*!40000 ALTER TABLE `ims_users_lastuse` ENABLE KEYS */;

#
# Structure for table "ims_users_login_logs"
#

DROP TABLE IF EXISTS `ims_users_login_logs`;
CREATE TABLE `ims_users_login_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `city` varchar(256) NOT NULL,
  `login_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_login_logs"
#

/*!40000 ALTER TABLE `ims_users_login_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_login_logs` ENABLE KEYS */;

#
# Structure for table "ims_users_operate_history"
#

DROP TABLE IF EXISTS `ims_users_operate_history`;
CREATE TABLE `ims_users_operate_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_operate_history"
#

/*!40000 ALTER TABLE `ims_users_operate_history` DISABLE KEYS */;
INSERT INTO `ims_users_operate_history` VALUES (17,2,1,1,'kyl_mon',1618483332),(19,1,1,1,'',1618890600),(21,2,1,1,'ciyt_hot_video',1618890620);
/*!40000 ALTER TABLE `ims_users_operate_history` ENABLE KEYS */;

#
# Structure for table "ims_users_operate_star"
#

DROP TABLE IF EXISTS `ims_users_operate_star`;
CREATE TABLE `ims_users_operate_star` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `rank` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_operate_star"
#

/*!40000 ALTER TABLE `ims_users_operate_star` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_operate_star` ENABLE KEYS */;

#
# Structure for table "ims_users_permission"
#

DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  `modules` text NOT NULL,
  `templates` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_permission"
#

/*!40000 ALTER TABLE `ims_users_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_permission` ENABLE KEYS */;

#
# Structure for table "ims_users_profile"
#

DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_users_profile"
#

/*!40000 ALTER TABLE `ims_users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_profile` ENABLE KEYS */;

#
# Structure for table "ims_video_reply"
#

DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_video_reply"
#

/*!40000 ALTER TABLE `ims_video_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_video_reply` ENABLE KEYS */;

#
# Structure for table "ims_voice_reply"
#

DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_voice_reply"
#

/*!40000 ALTER TABLE `ims_voice_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_voice_reply` ENABLE KEYS */;

#
# Structure for table "ims_wechat_attachment"
#

DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "ims_wechat_attachment"
#

/*!40000 ALTER TABLE `ims_wechat_attachment` DISABLE KEYS */;
INSERT INTO `ims_wechat_attachment` VALUES (2,1,1,1,'222.mp4','videos/1/2021/04/VLBSGD74O9Bh4BToGsaffxnBOn9fsT.mp4','ZHnmDz_RB2D3fXKoyslflfQS_63cy5Y-f57I1idqnTo',0,0,'video','perm','a:2:{s:5:\"title\";s:7:\"222.mp4\";s:3:\"url\";s:0:\"\";}',1618624193,'',0);
/*!40000 ALTER TABLE `ims_wechat_attachment` ENABLE KEYS */;

#
# Structure for table "ims_wechat_news"
#

DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  `need_open_comment` tinyint(1) NOT NULL,
  `only_fans_can_comment` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_wechat_news"
#

/*!40000 ALTER TABLE `ims_wechat_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_news` ENABLE KEYS */;

#
# Structure for table "ims_wxapp_general_analysis"
#

DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_wxapp_general_analysis"
#

/*!40000 ALTER TABLE `ims_wxapp_general_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` ENABLE KEYS */;

#
# Structure for table "ims_wxapp_versions"
#

DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  `last_modules` varchar(1000) DEFAULT NULL,
  `tominiprogram` varchar(1000) NOT NULL,
  `upload_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_wxapp_versions"
#

/*!40000 ALTER TABLE `ims_wxapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_versions` ENABLE KEYS */;

#
# Structure for table "ims_wxcard_reply"
#

DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "ims_wxcard_reply"
#

/*!40000 ALTER TABLE `ims_wxcard_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxcard_reply` ENABLE KEYS */;
