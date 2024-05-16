/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : shuju

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 16/05/2024 17:31:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 20_tactics
-- ----------------------------
DROP TABLE IF EXISTS `20_tactics`;
CREATE TABLE `20_tactics`  (
  `gpcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票代码',
  `gpname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票简称',
  `zxj` decimal(50, 5) NULL DEFAULT NULL COMMENT '最新价',
  `zdf` decimal(50, 5) NULL DEFAULT NULL COMMENT '最新涨跌幅',
  `jx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '均线(条件说明)',
  `zsz` decimal(50, 5) NULL DEFAULT NULL COMMENT '总市值',
  `ltsz` decimal(50, 5) NULL DEFAULT NULL COMMENT 'a股市值(不含限售股)',
  `mrxh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '买入信号inter',
  `jd` double(255, 5) NULL DEFAULT NULL COMMENT '20日均线角度',
  `hy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属同花顺行业',
  `jsxt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '技术形态',
  `xg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选股动向',
  `jishu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '技术形态',
  `market_code` int NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `create_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idsy`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 5_tactics
-- ----------------------------
DROP TABLE IF EXISTS `5_tactics`;
CREATE TABLE `5_tactics`  (
  `stock_code` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票代码',
  `stock_abbreviation` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票简称',
  `stock_latest_price` decimal(20, 5) NULL DEFAULT NULL COMMENT '最新价',
  `stock_latest_rise_and _fall` decimal(20, 5) NULL DEFAULT NULL COMMENT '最新涨跌幅',
  `shrinkage` decimal(20, 5) NULL DEFAULT NULL COMMENT '缩量',
  `average` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '均线条件说明',
  `10_angle` decimal(20, 5) NULL DEFAULT NULL COMMENT '10日均线角度',
  `20_angle` decimal(20, 5) NULL DEFAULT NULL COMMENT '20日均线角度',
  `30_angle` decimal(20, 5) NULL DEFAULT NULL COMMENT '30日均线角度',
  `60_angle` decimal(20, 5) NULL DEFAULT NULL COMMENT '60日均线角度',
  `macd` decimal(20, 5) NULL DEFAULT NULL COMMENT '(macd值)',
  `volume_ratio` decimal(20, 5) NULL DEFAULT NULL COMMENT '量比',
  `turnover_rate` decimal(20, 5) NULL DEFAULT NULL COMMENT '换手率',
  `total_market_value` decimal(20, 2) NULL DEFAULT NULL COMMENT '总市值',
  `circulating_market_value` decimal(20, 8) NULL DEFAULT NULL COMMENT 'a股市值(不含限售股)',
  `circulation_ratio` decimal(20, 8) NULL DEFAULT NULL COMMENT '流通股合计占总股本比例',
  `general_capital` bigint NULL DEFAULT NULL COMMENT '总股本',
  `stock_circulation` bigint NULL DEFAULT NULL COMMENT '流通a股',
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属同花顺行业',
  `inter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '买入信号',
  `technical_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '技术形态',
  `amplitude` decimal(20, 5) NULL DEFAULT NULL COMMENT '振幅',
  `price_limit` decimal(20, 5) NULL DEFAULT NULL COMMENT '涨跌幅',
  `ups_and_downs` decimal(20, 5) NULL DEFAULT NULL COMMENT '涨跌',
  `trading_volume` int NULL DEFAULT NULL COMMENT '成交量',
  `market_code` int NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票代码',
  `trading_day` date NULL DEFAULT NULL COMMENT '交易日当天日期',
  `trading_day_1` date NULL DEFAULT NULL COMMENT '1个交易日之后的日期',
  `trading_day_2` date NULL DEFAULT NULL COMMENT '2个交易日之后的日期',
  `trading_day_3` date NULL DEFAULT NULL COMMENT '3个交易日之后的日期',
  `trading_day_4` date NULL DEFAULT NULL COMMENT '4个交易日之后的日期',
  `trading_day_5` date NULL DEFAULT NULL COMMENT '5个交易日之后的日期',
  `trading_day_6` date NULL DEFAULT NULL COMMENT '6个交易日之后的日期',
  `trading_day_7` date NULL DEFAULT NULL COMMENT '7个交易日之后的日期',
  `trading_day_8` date NULL DEFAULT NULL COMMENT '8个交易日之后的日期',
  `trading_day_9` date NULL DEFAULT NULL COMMENT '9个交易日之后的日期',
  `trading_day_10` date NULL DEFAULT NULL COMMENT '10个交易日之后的日期',
  `trading_day_11` date NULL DEFAULT NULL COMMENT '11个交易日之后的日期',
  `trading_day_12` date NULL DEFAULT NULL COMMENT '12个交易日之后的日期',
  `trading_day_13` date NULL DEFAULT NULL COMMENT '13个交易日之后的日期',
  `trading_day_14` date NULL DEFAULT NULL COMMENT '14个交易日之后的日期',
  `trading_day_15` date NULL DEFAULT NULL COMMENT '15个交易日之后的日期',
  `trading_day_16` date NULL DEFAULT NULL COMMENT '16个交易日之后的日期',
  `trading_day_17` date NULL DEFAULT NULL COMMENT '17个交易日之后的日期',
  `trading_day_18` date NULL DEFAULT NULL COMMENT '18个交易日之后的日期',
  `trading_day_19` date NULL DEFAULT NULL COMMENT '19个交易日之后的日期',
  `trading_day_20` date NULL DEFAULT NULL COMMENT '20个交易日之后的日期',
  `trading_day_21` date NULL DEFAULT NULL COMMENT '21个交易日之后的日期',
  `trading_day_22` date NULL DEFAULT NULL COMMENT '22个交易日之后的日期',
  `trading_day_23` date NULL DEFAULT NULL COMMENT '23个交易日之后的日期',
  `trading_day_24` date NULL DEFAULT NULL COMMENT '24个交易日之后的日期',
  `trading_day_25` date NULL DEFAULT NULL COMMENT '25个交易日之后的日期',
  `trading_day_26` date NULL DEFAULT NULL COMMENT '26个交易日之后的日期',
  `trading_day_27` date NULL DEFAULT NULL COMMENT '27个交易日之后的日期',
  `trading_day_28` date NULL DEFAULT NULL COMMENT '28个交易日之后的日期',
  `trading_day_29` date NULL DEFAULT NULL COMMENT '29个交易日之后的日期',
  `trading_day_30` date NULL DEFAULT NULL COMMENT '30个交易日之后的日期',
  `trading_day_40` date NULL DEFAULT NULL COMMENT '40个交易日之后的日期',
  `trading_day_50` date NULL DEFAULT NULL COMMENT '50个交易日之后的日期',
  `trading_day_60` date NULL DEFAULT NULL COMMENT '60个交易日之后的日期',
  `trading_day_80` date NULL DEFAULT NULL COMMENT '80个交易日之后的日期',
  `trading_day__id_1` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1个交易日之后的历史行情数据ID',
  `trading_day__id_2` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '2个交易日之后的历史行情数据ID',
  `trading_day__id_3` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '3个交易日之后的历史行情数据ID',
  `trading_day__id_4` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '4个交易日之后的历史行情数据ID',
  `trading_day__id_5` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '5个交易日之后的历史行情数据ID',
  `trading_day__id_6` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '6个交易日之后的历史行情数据ID',
  `trading_day__id_7` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '7个交易日之后的历史行情数据ID',
  `trading_day__id_8` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '8个交易日之后的历史行情数据ID',
  `trading_day__id_9` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '9个交易日之后的历史行情数据ID',
  `trading_day__id_10` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '10个交易日之后的历史行情数据ID',
  `trading_day__id_11` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '11个交易日之后的历史行情数据ID',
  `trading_day__id_12` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '12个交易日之后的历史行情数据ID',
  `trading_day__id_13` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '13个交易日之后的历史行情数据ID',
  `trading_day__id_14` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '14个交易日之后的历史行情数据ID',
  `trading_day__id_15` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '15个交易日之后的历史行情数据ID',
  `trading_day__id_16` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '16个交易日之后的历史行情数据ID',
  `trading_day__id_17` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '17个交易日之后的历史行情数据ID',
  `trading_day__id_18` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '18个交易日之后的历史行情数据ID',
  `trading_day__id_19` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '19个交易日之后的历史行情数据ID',
  `trading_day__id_20` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '20个交易日之后的历史行情数据ID',
  `trading_day__id_21` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '21个交易日之后的历史行情数据ID',
  `trading_day__id_22` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '22个交易日之后的历史行情数据ID',
  `trading_day__id_23` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '23个交易日之后的历史行情数据ID',
  `trading_day__id_24` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '24个交易日之后的历史行情数据ID',
  `trading_day__id_25` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '25个交易日之后的历史行情数据ID',
  `trading_day__id_26` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '26个交易日之后的历史行情数据ID',
  `trading_day__id_27` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '27个交易日之后的历史行情数据ID',
  `trading_day__id_28` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '28个交易日之后的历史行情数据ID',
  `trading_day__id_29` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '29个交易日之后的历史行情数据ID',
  `trading_day__id_30` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '30个交易日之后的历史行情数据ID',
  `trading_day__id_40` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '40个交易日之后的历史行情数据ID',
  `trading_day__id_50` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '50个交易日之后的历史行情数据ID',
  `trading_day__id_60` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '60个交易日之后的历史行情数据ID',
  `trading_day__id_80` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '80个交易日之后的历史行情数据ID',
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `create_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_average` int NULL DEFAULT 5 COMMENT '获取的是几日均线数据'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 5_tactics1
-- ----------------------------
DROP TABLE IF EXISTS `5_tactics1`;
CREATE TABLE `5_tactics1`  (
  `股票代码` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `股票简称` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `最新价` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `最新涨跌幅` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `缩量[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `均线(条件说明)[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `10日均线角度[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `20日均线角度[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `30日均线角度[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `60日均线角度[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `macd(macd值)[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `量比[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `换手率[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `总市值[19980216]` double NULL DEFAULT NULL,
  `a股市值(不含限售股)[19980216]` double NULL DEFAULT NULL,
  `流通股合计占总股本比例[20240515]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `总股本[20240515]` bigint NULL DEFAULT NULL,
  `流通a股[20240515]` bigint NULL DEFAULT NULL,
  `所属同花顺行业` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `买入信号inter[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `技术形态[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `振幅[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `涨跌幅:前复权[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `涨跌[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `成交量[19980216]` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `market_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day` date NULL DEFAULT NULL,
  `trading_day_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_7` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_8` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_9` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_10` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_11` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_12` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_13` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_14` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_15` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_16` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_17` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_18` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_19` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_20` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_21` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_22` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_23` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_24` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_25` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_26` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_27` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_28` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_29` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_30` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_40` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_50` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_60` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trading_day_80` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exponent_trading_data
-- ----------------------------
DROP TABLE IF EXISTS `exponent_trading_data`;
CREATE TABLE `exponent_trading_data`  (
  `index_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '代码',
  `trade_date` date NULL DEFAULT NULL COMMENT '交易时间	1990-01-01 00:00:00；分时图使用具体的时间',
  `trade_time` datetime NULL DEFAULT NULL COMMENT '交易日期',
  `open` decimal(10, 2) NULL DEFAULT NULL COMMENT '开盘价',
  `high` decimal(10, 2) NULL DEFAULT NULL COMMENT '收盘价',
  `low` decimal(10, 2) NULL DEFAULT NULL COMMENT '最高价',
  `close` decimal(10, 2) NULL DEFAULT NULL COMMENT '最低价',
  `volume` decimal(30, 2) NULL DEFAULT NULL COMMENT '成交量(股)',
  `amount` decimal(30, 2) NULL DEFAULT NULL COMMENT '成交额(元)',
  `change` decimal(10, 2) NULL DEFAULT NULL COMMENT '涨跌额(元)	',
  `change_pct` decimal(10, 2) NULL DEFAULT NULL COMMENT '涨跌幅(%)',
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主键',
  `create_date` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for szlshq
-- ----------------------------
DROP TABLE IF EXISTS `szlshq`;
CREATE TABLE `szlshq`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `gp_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票代码',
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `price_closed` decimal(50, 5) NULL DEFAULT NULL COMMENT '收盘价',
  `price_open` decimal(50, 5) NULL DEFAULT NULL COMMENT '开盘价',
  `price_max` decimal(50, 5) NULL DEFAULT NULL COMMENT '最高价',
  `price_min` decimal(50, 5) NULL DEFAULT NULL COMMENT '最低价',
  `volume` decimal(50, 5) NULL DEFAULT NULL COMMENT 'volume',
  `chg` decimal(50, 5) NULL DEFAULT NULL COMMENT 'chg',
  `percent` decimal(50, 5) NULL DEFAULT NULL COMMENT 'percent',
  `turnoverrate` decimal(50, 5) NULL DEFAULT NULL COMMENT 'turnoverrate',
  `amount` decimal(50, 5) NULL DEFAULT NULL COMMENT 'amount',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trading_day
-- ----------------------------
DROP TABLE IF EXISTS `trading_day`;
CREATE TABLE `trading_day`  (
  `trade_date` date NULL DEFAULT NULL COMMENT '交易日',
  `trade_status` int NULL DEFAULT NULL COMMENT '交易状态：0.非交易日；1.交易日',
  `day_week` int NULL DEFAULT NULL COMMENT '一周第几天'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '2005-2024A股交易日' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for trading_day_date
-- ----------------------------
DROP TABLE IF EXISTS `trading_day_date`;
CREATE TABLE `trading_day_date`  (
  `trade_date` date NULL DEFAULT NULL COMMENT '日期',
  `id` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `is_5` int NULL DEFAULT NULL COMMENT '0未获取1已获取',
  `is_10` int NULL DEFAULT NULL COMMENT '0未获取1已获取',
  `is_20` int NULL DEFAULT NULL COMMENT '0未获取1已获取',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trading_day_own
-- ----------------------------
DROP TABLE IF EXISTS `trading_day_own`;
CREATE TABLE `trading_day_own`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `is_zm` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否周末0是1不是',
  `is_jjr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否节假日0是1不是',
  `create_date` datetime(5) NULL DEFAULT CURRENT_TIMESTAMP(5) COMMENT '创建时间',
  `zhouji` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '周几',
  `is_trading_day` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否交易日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Triggers structure for table 20_tactics
-- ----------------------------
DROP TRIGGER IF EXISTS `id_trigger`;
delimiter ;;
CREATE TRIGGER `id_trigger` BEFORE INSERT ON `20_tactics` FOR EACH ROW BEGIN
		SET new.id=REPLACE(UUID(),'-',''); -- 触发器执行的逻辑
    END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 5_tactics
-- ----------------------------
DROP TRIGGER IF EXISTS `id`;
delimiter ;;
CREATE TRIGGER `id` BEFORE INSERT ON `5_tactics` FOR EACH ROW BEGIN
SET new.id=REPLACE(UUID(),'-',''); -- 触发器执行的逻辑
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table exponent_trading_data
-- ----------------------------
DROP TRIGGER IF EXISTS `exponent_id`;
delimiter ;;
CREATE TRIGGER `exponent_id` BEFORE INSERT ON `exponent_trading_data` FOR EACH ROW BEGIN
		SET new.id=REPLACE(UUID(),'-',''); -- 触发器执行的逻辑
    END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table szlshq
-- ----------------------------
DROP TRIGGER IF EXISTS `id_triggerszlshq`;
delimiter ;;
CREATE TRIGGER `id_triggerszlshq` BEFORE INSERT ON `szlshq` FOR EACH ROW BEGIN
		SET new.id=REPLACE(UUID(),'-',''); -- 触发器执行的逻辑
    END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
