/*
Navicat MySQL Data Transfer

Source Server         : huobiapi
Source Server Version : 50722
Source Host           : 47.75.160.151:3306
Source Database       : tokenview

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-05-03 11:15:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lara_kline_btceos
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_btceos`;
CREATE TABLE `lara_kline_btceos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `type` varchar(255) DEFAULT NULL,
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lara_kline_btceos_defina
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_btceos_defina`;
CREATE TABLE `lara_kline_btceos_defina` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `type` varchar(255) DEFAULT NULL COMMENT '时期',
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lara_kline_btceth
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_btceth`;
CREATE TABLE `lara_kline_btceth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lara_kline_btcltc
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_btcltc`;
CREATE TABLE `lara_kline_btcltc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `type` varchar(255) DEFAULT NULL,
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lara_kline_btcusdt
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_btcusdt`;
CREATE TABLE `lara_kline_btcusdt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `type` varchar(255) DEFAULT NULL COMMENT '时期',
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109900 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lara_kline_ethbtc
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_ethbtc`;
CREATE TABLE `lara_kline_ethbtc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `type` varchar(255) DEFAULT NULL COMMENT '时期',
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5767 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lara_kline_ethusdt
-- ----------------------------
DROP TABLE IF EXISTS `lara_kline_ethusdt`;
CREATE TABLE `lara_kline_ethusdt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(255) NOT NULL COMMENT '货币对',
  `type` varchar(255) DEFAULT NULL COMMENT '时期',
  `open` decimal(25,6) NOT NULL,
  `close` decimal(25,6) NOT NULL COMMENT '收盘价,当K线为最晚的一根时，是最新成交价',
  `low` decimal(25,6) NOT NULL,
  `high` decimal(25,6) NOT NULL,
  `count` decimal(25,6) NOT NULL COMMENT '成交笔数',
  `amount` decimal(25,6) NOT NULL COMMENT '成交量',
  `vol` decimal(25,6) DEFAULT NULL COMMENT '成交额, 即 sum(每一笔成交价 * 该笔的成交量)',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41203 DEFAULT CHARSET=utf8;
