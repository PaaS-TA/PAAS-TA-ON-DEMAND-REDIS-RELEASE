    UPDATE mysql.user SET password=PASSWORD('<%= p("mariadb.admin_user.password") %>') WHERE user='root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '<%= p("mariadb.admin_user.password") %>' WITH GRANT OPTION;
FLUSH PRIVILEGES;


CREATE DATABASE /*!32312 IF NOT EXISTS*/`on-demand` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `on-demand`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for on_demand_info
-- ----------------------------
DROP TABLE IF EXISTS `on_demand_info`;
CREATE TABLE `on_demand_info`  (
  `service_instance_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashboard_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `use_yn` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y',
  `plan_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `service_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `space_guid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `organization_guid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vm_instance_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_guid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_parameter` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`service_instance_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
