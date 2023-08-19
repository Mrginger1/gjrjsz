/*
Navicat MySQL Data Transfer

Source Server         : mysql_5
Source Server Version : 50560
Source Host           : localhost:3307
Source Database       : sboot_zxgwpt

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2021-03-29 21:26:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('A20200424045842519', 'admin', 'admin', 'admin', '-', '2020-04-24');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `bannerid` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('A20200424050534256', '测试标题222', 'B20200424050328255', 'upfiles/20200424050531.jpg', '<p>打分公司电饭锅水电费</p>\r\n', '2020-04-24', '3');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `bannerid` varchar(255) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('B20200424050328255', '新闻公告', '2020-04-24', '新闻公告');
INSERT INTO `banner` VALUES ('B20200424050340919', '购物知识', '2020-04-24', '购物知识');

-- ----------------------------
-- Table structure for `bbs`
-- ----------------------------
DROP TABLE IF EXISTS `bbs`;
CREATE TABLE `bbs` (
  `bbsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `repnum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs
-- ----------------------------
INSERT INTO `bbs` VALUES ('B20200424063448276', 'U20200424063256116', '给发货的复古混搭风', '<p>在此添加内容大三点发水电费</p>\r\n', '2020-04-24 06:34:48', '2', '1');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `cate`
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('C20200424062604542', '化妆品', '化妆品');
INSERT INTO `cate` VALUES ('C20200424062944965', '工艺品', '工艺品');
INSERT INTO `cate` VALUES ('C20200424072634540', '首饰配饰', '首饰配饰');

-- ----------------------------
-- Table structure for `complains`
-- ----------------------------
DROP TABLE IF EXISTS `complains`;
CREATE TABLE `complains` (
  `complainsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reps` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`complainsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complains
-- ----------------------------

-- ----------------------------
-- Table structure for `details`
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `detailsid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('202004240635143698.7483578963875', 'PD20200424063514', 'G20200424063104914', '56.9', '1');
INSERT INTO `details` VALUES ('202004240635149441.26848681818', 'PD20200424063514', 'G20200424062740217', '449', '1');
INSERT INTO `details` VALUES ('202004240635149811.005078831378', 'PD20200424063514', 'G20200424063005978', '54.9', '1');
INSERT INTO `details` VALUES ('202103292047011649.0926863804027', 'PD20210329204701', 'G20200424062820582', '489', '1');
INSERT INTO `details` VALUES ('202103292047014943.717250823194', 'PD20210329204701', 'G20200424072733547', '699', '1');
INSERT INTO `details` VALUES ('202103292047015940.262639341624', 'PD20210329204701', 'G20200424072847476', '599', '1');
INSERT INTO `details` VALUES ('202103292047231710.2254865832542', 'PD20210329204723', 'G20200424063005978', '54.9', '1');
INSERT INTO `details` VALUES ('202103292047233402.7316062407635', 'PD20210329204723', 'G20200424063050458', '76.9', '1');
INSERT INTO `details` VALUES ('202103292047238029.280529249622', 'PD20210329204723', 'G20200424063137285', '65.9', '1');
INSERT INTO `details` VALUES ('202103292047238708.82413766181', 'PD20210329204723', 'G20200424072909272', '1299', '1');
INSERT INTO `details` VALUES ('202103292047415198.335701238852', 'PD20210329204741', 'G20200424072733547', '699', '1');
INSERT INTO `details` VALUES ('202103292047416488.281156799913', 'PD20210329204741', 'G20200424062835817', '459', '1');
INSERT INTO `details` VALUES ('202103292047416910.20702632645', 'PD20210329204741', 'G20200424062909609', '439', '1');
INSERT INTO `details` VALUES ('202103292048006325.243315348131', 'PD20210329204800', 'G20200424062740217', '449', '1');
INSERT INTO `details` VALUES ('202103292048007057.173262404907', 'PD20210329204800', 'G20200424062835817', '459', '1');
INSERT INTO `details` VALUES ('202103292048007171.441081905462', 'PD20210329204800', 'G20200424062820582', '489', '1');
INSERT INTO `details` VALUES ('202103292048009810.670070077334', 'PD20210329204800', 'G20200424062851870', '429', '1');
INSERT INTO `details` VALUES ('202103292048271065.9294618949748', 'PD20210329204827', 'G20200424063050458', '76.9', '1');
INSERT INTO `details` VALUES ('202103292048272315.5669432949694', 'PD20210329204827', 'G20200424063137285', '65.9', '1');
INSERT INTO `details` VALUES ('202103292048274789.200586598335', 'PD20210329204827', 'G20200424063033392', '43.8', '1');
INSERT INTO `details` VALUES ('202103292048279609.020254921916', 'PD20210329204827', 'G20200424063019629', '65.9', '1');
INSERT INTO `details` VALUES ('202103292109092268.2093774073237', 'PD20210329210909', 'G20200424072909272', '1299', '1');
INSERT INTO `details` VALUES ('202103292109095218.656076321333', 'PD20210329210909', 'G20200424072847476', '599', '1');
INSERT INTO `details` VALUES ('202103292109095981.596711788005', 'PD20210329210909', 'G20200424063137285', '65.9', '1');
INSERT INTO `details` VALUES ('202103292109099467.163390032627', 'PD20210329210909', 'G20200424072958368', '489', '1');

-- ----------------------------
-- Table structure for `fav`
-- ----------------------------
DROP TABLE IF EXISTS `fav`;
CREATE TABLE `fav` (
  `favid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fav
-- ----------------------------
INSERT INTO `fav` VALUES ('F20200424063518968', 'U20200424063256116', 'G20200424062820582', '2020-04-24');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` varchar(255) NOT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('G20200424062740217', '邂逅活力淡香水(手袋装）', 'upfiles/20200424062721.jpg', 'C20200424062604542', '449', '是', '是', '98', '2', '2020-04-24', '5', '<p>CHANCE EAU VIVE香奈儿邂逅活力淡香水(手袋装）</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424062820582', '香奈儿邂逅活力淡香水', 'upfiles/20200424062809.jpg', 'C20200424062604542', '489', '是', '是', '98', '2', '2020-04-24', '3', '<p>CHANCE EAU VIVE香奈儿邂逅活力淡香水</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424062835817', '香奈儿邂逅活力发香雾', 'upfiles/20200424062826.jpg', 'C20200424062604542', '459', '是', '是', '98', '2', '2020-04-24', '3', '<p>CHANCE EAU VIVE香奈儿邂逅活力发香雾</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424062851870', '香奈儿邂逅活力沐浴凝露', 'upfiles/20200424062840.jpg', 'C20200424062604542', '429', '是', '是', '99', '1', '2020-04-24', '1', '<p>CHANCE EAU VIVE香奈儿邂逅活力沐浴凝露</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424062909609', '香奈儿邂逅活力润体乳', 'upfiles/20200424062857.jpg', 'C20200424062604542', '439', '是', '是', '99', '1', '2020-04-24', '2', '<p>CHANCE EAU VIVE香奈儿邂逅活力润体乳&lsquo;&rsquo;</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063005978', '创意办公室摆件', 'upfiles/20200424062957.jpg', 'C20200424062944965', '54.9', '是', '是', '98', '2', '2020-04-24', '4', '<p>创意办公室摆件</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063019629', '创意欧式田园小清新陶瓷花瓶', 'upfiles/20200424063011.jpg', 'C20200424062944965', '65.9', '是', '是', '99', '1', '2020-04-24', '2', '<p>创意欧式田园小清新陶瓷花瓶</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063033392', '工艺品烟灰缸摆设', 'upfiles/20200424063025.jpg', 'C20200424062944965', '43.8', '是', '是', '99', '1', '2020-04-24', '1', '<p>工艺品烟灰缸摆设</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063050458', '古典粉彩装饰盘', 'upfiles/20200424063041.jpg', 'C20200424062944965', '76.9', '是', '是', '98', '2', '2020-04-24', '3', '<p>古典粉彩装饰盘</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063104914', '葫芦貔貅工艺品摆件', 'upfiles/20200424063055.jpg', 'C20200424062944965', '56.9', '是', '是', '99', '1', '2020-04-24', '1', '<p>葫芦貔貅工艺品摆件</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063118735', '假山流水摆件', 'upfiles/20200424063110.jpg', 'C20200424062944965', '43.8', '是', '是', '100', '0', '2020-04-24', '0', '<p>假山流水摆件</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424063137285', '富贵图装饰盘工艺品摆件', 'upfiles/20200424063124.jpg', 'C20200424062944965', '65.9', '是', '是', '97', '3', '2020-04-24', '4', '<p>景德镇陶瓷器 富贵图装饰盘工艺品摆件</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072733547', 'Iconic Swan黑女款黑天鹅戒指', 'upfiles/20200424072721.jpg', 'C20200424072634540', '699', '是', '是', '98', '2', '2020-04-24', '2', '<p>SWAROVSKI 施华洛世奇 Iconic Swan黑女款黑天鹅戒指 女友礼物5366574</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072806807', 'Greeting 女款戒指 58号 女友礼物', 'upfiles/20200424072751.jpg', 'C20200424072634540', '999', '是', '是', '100', '0', '2020-04-24', '0', '<p>SWAROVSKI 施华洛世奇 编制心形 镀玫瑰金色 Greeting 女款戒指 58号 女友礼物 5371892</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072825205', 'Iconic Swan女闪亮银色天鹅水晶质感戒指', 'upfiles/20200424072812.jpg', 'C20200424072634540', '799', '是', '是', '100', '0', '2020-04-24', '0', '<p>SWAROVSKI 施华洛世奇Iconic Swan女闪亮银色天鹅水晶质感戒指 55号 5215040</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072847476', 'I Do 套装戒指5184979', 'upfiles/20200424072833.jpg', 'C20200424072634540', '599', '是', '是', '98', '2', '2020-04-24', '2', '<p>全球购全球购施华洛世奇（SWAROVSKI）时尚浪漫 I Do 套装戒指5184979</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072909272', '2020时尚渐变天鹅手镯', 'upfiles/20200424072853.jpg', 'C20200424072634540', '1299', '是', '是', '98', '2', '2020-04-24', '2', '<p>施华洛世奇 2020时尚渐变天鹅手镯</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072939508', '2020新款 Iconic Swan 黑色女士黑天鹅项链', 'upfiles/20200424072924.jpg', 'C20200424072634540', '499', '是', '是', '100', '0', '2020-04-24', '1', '<p>施华洛世奇 2020新款 Iconic Swan 黑色女士黑天鹅项链</p>\r\n');
INSERT INTO `goods` VALUES ('G20200424072958368', 'Angelic Square镀白金女款耳饰', 'upfiles/20200424072945.jpg', 'C20200424072634540', '489', '是', '是', '99', '1', '2020-04-24', '1', '<p>施华洛世奇 Angelic Square镀白金女款耳饰</p>\r\n');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('O20200424063514205', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2020-04-24', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O202004240635142051', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2021-03-23', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O202004240635142057', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2021-03-24', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20200424063514205e', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2021-03-25', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20200424063514205g', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2021-03-27', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20200424063514205o', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2021-03-26', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20200424063514205x', 'PD20200424063514', 'U20200424063256116', '560.8', '已评价', '2021-03-28', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204701948', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-29', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O202103292047019482', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-23', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O202103292047019488', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-24', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204701948c', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-28', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204701948h', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-27', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204701948p', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-26', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204701948r', 'PD20210329204701', 'U20200424063256116', '1787.0', '已评价', '2021-03-25', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204723490', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-29', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O202103292047234903', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-23', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O202103292047234909', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-25', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204723490a', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-27', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204723490j', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-27', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204723490t', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-26', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204723490v', 'PD20210329204723', 'U20200424063256116', '1496.7', '已评价', '2021-03-28', '123123', '123123', '123123');
INSERT INTO `orders` VALUES ('O20210329204741819', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-29', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O202103292047418190', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-25', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O202103292047418194', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-23', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204741819b', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-28', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204741819k', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-27', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204741819s', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-27', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204741819y', 'PD20210329204741', 'U20200424063256116', '1597.0', '已评价', '2021-03-26', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204800471', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-29', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O202103292048004715', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-23', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204800471d', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-27', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204800471l', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-27', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204800471n', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-28', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204800471q', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-25', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204800471u', 'PD20210329204800', 'U20200424063256116', '1826.0', '已评价', '2021-03-26', '234234', '234234', '234234');
INSERT INTO `orders` VALUES ('O20210329204827862', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-29', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O202103292048278626', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-24', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O20210329204827862f', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-27', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O20210329204827862i', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-26', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O20210329204827862m', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-28', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O20210329204827862w', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-25', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O20210329204827862z', 'PD20210329204827', 'U20200424063256116', '252.5', '已评价', '2021-03-28', '345345', '345345', '34535');
INSERT INTO `orders` VALUES ('O20210329210909987', 'PD20210329210909', 'U20200424063256116', '2452.9', '已收货', '2021-03-29', '234234', '345345', '456456');

-- ----------------------------
-- Table structure for `rebbs`
-- ----------------------------
DROP TABLE IF EXISTS `rebbs`;
CREATE TABLE `rebbs` (
  `rebbsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `bbsid` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rebbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rebbs
-- ----------------------------
INSERT INTO `rebbs` VALUES ('R20200424063451918', 'U20200424063256116', 'B20200424063448276', '<p>在此添加内容打分公司电饭锅水电费个</p>\r\n', '2020-04-24 06:34:51');

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `ordersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('112332b8-2bf9-49ae-8696-82000c5508af', 'U20200424063256116', 'O20210329204827862', 'G20200424063033392', '3', '7', '2021-03-29');
INSERT INTO `topic` VALUES ('11f34b6b-8ca1-4ec2-95da-addd672937b8', 'U20200424063256116', 'O20210329204701948', 'G20200424072733547', '3', '2', '2021-03-29');
INSERT INTO `topic` VALUES ('32c02eef-4f40-462a-a6b3-dc47f57b1ed1', 'U20200424063256116', 'O20210329204800471', 'G20200424062820582', '5', '3', '2021-03-29');
INSERT INTO `topic` VALUES ('3cf78f11-118e-4046-bc78-641707a2bd26', 'U20200424063256116', 'O20210329204701948', 'G20200424072847476', '4', '3', '2021-03-29');
INSERT INTO `topic` VALUES ('4f8accbe-d3d1-4ad8-ad9d-1e2152632e97', 'U20200424063256116', 'O20200424063514205', 'G20200424063104914', '5', '撒的发斯蒂芬', '2020-04-24');
INSERT INTO `topic` VALUES ('634714c2-8b92-45ba-ab4b-3b6805229502', 'U20200424063256116', 'O20210329204741819', 'G20200424062909609', '3', '7', '2021-03-29');
INSERT INTO `topic` VALUES ('70410cec-0eb1-42ad-be27-f72c6233d99a', 'U20200424063256116', 'O20210329204827862', 'G20200424063019629', '5', '8', '2021-03-29');
INSERT INTO `topic` VALUES ('77f0d1dd-fafa-4430-9bd0-d776f6754497', 'U20200424063256116', 'O20210329204723490', 'G20200424063005978', '4', '2', '2021-03-29');
INSERT INTO `topic` VALUES ('7abeb07e-0abb-499f-bbf5-f8a06105c1d0', 'U20200424063256116', 'O20210329204827862', 'G20200424063050458', '4', '5', '2021-03-29');
INSERT INTO `topic` VALUES ('7f763cda-fa9a-4794-b327-0ca10fbe5794', 'U20200424063256116', 'O20210329204827862', 'G20200424063137285', '4', '6', '2021-03-29');
INSERT INTO `topic` VALUES ('85e575d1-7dc3-4383-95ad-ebacc8aafc4a', 'U20200424063256116', 'O20210329204723490', 'G20200424063050458', '3', '3', '2021-03-29');
INSERT INTO `topic` VALUES ('92f82200-adf3-4ba0-b85c-1298b60179e9', 'U20200424063256116', 'O20210329204741819', 'G20200424072733547', '5', '5', '2021-03-29');
INSERT INTO `topic` VALUES ('942bfff3-5eba-43a0-a5b3-842cf6cb724f', 'U20200424063256116', 'O20210329204723490', 'G20200424063137285', '2', '4', '2021-03-29');
INSERT INTO `topic` VALUES ('97f0fe2f-d5a4-4292-a04e-d8d241c09881', 'U20200424063256116', 'O20210329204800471', 'G20200424062740217', '4', '7', '2021-03-29');
INSERT INTO `topic` VALUES ('9c6458a2-3d72-4562-91e2-c12883e07546', 'U20200424063256116', 'O20200424063514205', 'G20200424063005978', '5', '发斯蒂芬', '2020-04-24');
INSERT INTO `topic` VALUES ('9c9da623-030d-42b5-9098-275286be1b35', 'U20200424063256116', 'O20210329204701948', 'G20200424062820582', '5', '1', '2021-03-29');
INSERT INTO `topic` VALUES ('b0069ec2-e85e-4d7f-937f-91ec55e7d28a', 'U20200424063256116', 'O20210329204723490', 'G20200424072909272', '1', '5', '2021-03-29');
INSERT INTO `topic` VALUES ('b2b64985-748b-4d24-9efb-d2637d07e1cb', 'U20200424063256116', 'O20210329204741819', 'G20200424062835817', '4', '6', '2021-03-29');
INSERT INTO `topic` VALUES ('db3d5aa1-414e-4f43-8806-4745545fd7c7', 'U20200424063256116', 'O20210329204800471', 'G20200424062835817', '3', '5', '2021-03-29');
INSERT INTO `topic` VALUES ('f55cb03d-1c1d-4a77-82dc-96960171867d', 'U20200424063256116', 'O20200424063514205', 'G20200424062740217', '4', '阿斯顿发斯蒂芬', '2020-04-24');
INSERT INTO `topic` VALUES ('fc0f8192-0f14-41cb-b330-16180a0baae5', 'U20200424063256116', 'O20210329204800471', 'G20200424062851870', '4', '5', '2021-03-29');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('U20200424063256116', '123123', '123123', '123123', '男', '2020-04-24', '123123', 'upfiles/20200424063254.jpg', '2020-04-24');
