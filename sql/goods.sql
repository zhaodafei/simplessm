SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goodsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `unitPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `goodsNumber` int(10) NULL DEFAULT NULL COMMENT '数量',
  `countPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `consumeWay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费途径[线下;线上]',
  `goodsComment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `consumeTime` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  `createdTime` datetime(0) NULL DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (3, '荷兰豆', 2.00, 3, 6.00, '线下', '无', '2020-08-01 09:00:00', '2020-10-22 10:52:22');
INSERT INTO `goods` VALUES (4, '伊丽莎白', 4.00, 6, 24.00, '线下', '无', '2020-08-01 09:00:00', '2020-10-22 10:52:57');
INSERT INTO `goods` VALUES (5, '火龙果', 8.00, 12, 96.00, '线下', '无', '2020-08-01 09:00:00', '2020-10-22 10:54:14');
INSERT INTO `goods` VALUES (6, '西瓜', 2.00, 20, 40.00, '线下', '无', '2020-08-01 09:36:13', '2020-10-25 16:25:55');
INSERT INTO `goods` VALUES (7, '西瓜', 2.00, 20, 40.00, '线下', '无', '2020-08-01 09:36:13', '2020-10-25 16:28:48');

SET FOREIGN_KEY_CHECKS = 1;
