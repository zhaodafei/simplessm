SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'dafei', '123456', 'dafei@qq.com', '11111111');
INSERT INTO `user` VALUES (2, 'dafei_02', '123456', 'dafei_02@qq.com', '1111111122');
INSERT INTO `user` VALUES (3, 'dafei_03', '123456', 'dafei_03@qq.com', '1111111133');
INSERT INTO `user` VALUES (5, 'fei', '123456', '123456@qq.com', '111111111111');
INSERT INTO `user` VALUES (7, 'fei', '123456', '123456@qq.com', '111111111111');

SET FOREIGN_KEY_CHECKS = 1;
