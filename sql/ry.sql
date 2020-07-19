/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2020-06-22 12:06:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 't_services', '人才服务需求表', 'TServices', 'crud', 'com.ruoyi.project.module', 'module', 'tss', '人才服务需求', 'warren', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-25 13:35:30', '', '2020-03-25 14:02:56', '');
INSERT INTO `gen_table` VALUES ('2', 't_test', '测试', 'TTest', 'crud', 'com.ruoyi.project.module', 'module', 'test', '测试', 'warren', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-14 22:20:57', '', '2020-04-14 22:21:58', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', '唯一标识', 'int(15)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'service_no', '服务编码', 'char(8)', 'String', 'serviceNo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'teacher_no', '工号', 'char(4)', 'String', 'teacherNo', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '3', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'teacher_name', '人才姓名', 'varchar(50)', 'String', 'teacherName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'belong_unit_no', '所在单位Id', 'char(4)', 'String', 'belongUnitNo', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'belong_unit_name', '所在单位名称', 'char(8)', 'String', 'belongUnitName', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '6', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'submit_time', '服务提交时间', 'datetime', 'Date', 'submitTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('9', '1', 'ask_end_time', '要求办结时间', 'datetime', 'Date', 'askEndTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '9', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('10', '1', 'description', '需求描述', 'varchar(1000)', 'String', 'description', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '10', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('11', '1', 'demand', '服务要求', 'varchar(1000)', 'String', 'demand', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '11', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('12', '1', 'remark', '备注', 'varchar(1000)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '12', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('13', '1', 'assignor_no', '分派人工号', 'char(4)', 'String', 'assignorNo', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('14', '1', 'assignor_name', '分派人姓名', 'varchar(50)', 'String', 'assignorName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '14', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('15', '1', 'assign_time', '分派时间', 'datetime', 'Date', 'assignTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '15', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('16', '1', 'assign_remark', '分派备注', 'varchar(1000)', 'String', 'assignRemark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '16', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('17', '1', 'handle_unit_no', '处理单位id', 'char(4)', 'String', 'handleUnitNo', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '17', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('18', '1', 'handle_unit_name', '处理单位名称', 'varchar(100)', 'String', 'handleUnitName', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '18', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('19', '1', 'handler_no', '处理人工号', 'char(4)', 'String', 'handlerNo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '19', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('20', '1', 'handler_name', '处理人姓名', 'varchar(50)', 'String', 'handlerName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '20', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('21', '1', 'apply_end_time', '申请办结时间', 'datetime', 'Date', 'applyEndTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '21', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('22', '1', 'service_end_time', '服务办结时间', 'datetime', 'Date', 'serviceEndTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '22', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('23', '1', 'satisfaction_degree', '满意度:满意、不满意、基本满意', 'char(8)', 'String', 'satisfactionDegree', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '23', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('24', '1', 'service_status', '服务需求状态:待分派，待办理，超时再办，正常在办，正常办结', 'char(8)', 'String', 'serviceStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '24', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('25', '1', 'satisfaction_reason', '满意度理由', 'varchar(1000)', 'String', 'satisfactionReason', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '25', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('26', '1', 'handle_times', '办理次数,本服务提交的次数', 'int(11)', 'Long', 'handleTimes', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '26', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('27', '1', 'del_flag', '逻辑删除标记', 'char(1)', 'String', 'delFlag', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '27', 'admin', '2020-03-25 13:35:30', null, '2020-03-25 14:02:56');
INSERT INTO `gen_table_column` VALUES ('28', '2', 'id', 'null', 'int(11)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-04-14 22:20:57', null, '2020-04-14 22:21:58');
INSERT INTO `gen_table_column` VALUES ('29', '2', 'times', 'null', 'int(2)', 'Integer', 'times', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-04-14 22:20:57', null, '2020-04-14 22:21:58');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0 0 22 * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000C302030203232202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000132740001307800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-938HH801591253453001', '1591255120078', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1591279200000', '-1', '5', 'WAITING', 'CRON', '1591253453000', '0', null, '1', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1591253460000', '-1', '5', 'PAUSED', 'CRON', '1591253453000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1591253460000', '-1', '5', 'PAUSED', 'CRON', '1591253453000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'N', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-08 15:13:59', '是否开启注册用户功能');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader_no` varchar(10) DEFAULT NULL,
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1403 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1000', '0', '0', '华东交通大学', '0', '2756', '万明', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('1001', '1000', '0,1000', '土建学院', '2', '0136', '陈水生', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1002', '1000', '0,1000', '电气学院', '3', '0651', '赵敏', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1003', '1000', '0,1000', '机电学院', '4', '1981', '周建民', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1004', '1000', '0,1000', '经管学院', '5', '0303', '林井萍', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1005', '1000', '0,1000', '体健学院', '6', '0648', '王志斌', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1006', '1000', '0,1000', '信息学院', '7', '1192', '蔡卫平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1007', '1000', '0,1000', '人文学院', '8', '0605', '黄瑜', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1008', '1000', '0,1000', '理学院', '9', '0527', '吴效葵', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1009', '1000', '0,1000', '外语学院', '10', '0616', '陈科', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1011', '1000', '0,1000', '艺术学院', '11', '2564', '田玉兰', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1012', '1000', '0,1000', '国际学院(国交处)', '12', '1570', '郑轶', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1013', '1000', '0,1000', '运输学院', '13', '0716', '丁锋贵', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1014', '1000', '0,1000', '马克思学院', '14', '2945', '张剑锋', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1015', '1000', '0,1000', '材料学院', '15', '0843', '程浩', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1021', '1000', '0,1000', '软件学院', '16', '0408', '曹义亲', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1030', '1000', '0,1000', '继续教育学院', '17', '1473', '胡桃元', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1031', '1000', '0,1000', '天佑学院', '18', '8019', '王冰雪', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1100', '1000', '0,1000', '组织部（党校）', '19', '0646', '凌四宝', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1101', '1000', '0,1000', '两办', '20', '0514', '闵伸', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1102', '1000', '0,1000', '人事处（教工部、教师发展中心）', '21', '2693', '陈磊', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1103', '1000', '0,1000', '宣传部', '22', '1424', '陈沈平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1104', '1000', '0,1000', '纪委机关', '23', '0652', '杨东明', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1105', '1000', '0,1000', '工会（离退处）', '24', '0499', '蓝荣', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1106', '1000', '0,1000', '统战部（机关党委）', '25', '0622', '黄家和', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1107', '1000', '0,1000', '学团（创新创业教育中心）', '26', '2799', '李雪峰', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1108', '1000', '0,1000', '教务处（评估中心）', '27', '1564', '汤兆平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1109', '1000', '0,1000', '研究生院（研工部）', '28', '1762', '朱王海', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1110', '1000', '0,1000', '保卫处（武装部）', '29', '0596', '付自生', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1111', '1000', '0,1000', '科研处', '30', '1683', '徐玉萍', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1112', '1000', '0,1000', '发规处（高教所）', '31', '1576', '陈云萍', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1113', '1000', '0,1000', '招就处', '32', '1727', '王彤', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1114', '1000', '0,1000', '资产处', '33', '0268', '吴志峰', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1115', '1000', '0,1000', '计财处', '34', '1752', '尚军', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1116', '1000', '0,1000', '基建处', '35', '2530', '刘永胜', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1117', '1000', '0,1000', '外联处（校友办）', '36', '0488', '罗侃', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1118', '1000', '0,1000', '招标办', '37', '0612', '阳国诚', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1119', '1000', '0,1000', '审计处', '38', '0550', '赵蔚', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1120', '1000', '0,1000', '科技园', '39', '1548', '李黎青', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1201', '1000', '0,1000', '后勤保障中心', '40', '0474', '薛先庆', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1202', '1000', '0,1000', '设计院', '41', '0604', '雷斌', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1203', '1000', '0,1000', '网络信息中心', '42', '0548', '黄鸿平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1204', '1000', '0,1000', '图书馆', '43', '0546', '喻汉斌', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1205', '1000', '0,1000', '学报', '44', '2473', '赵龙志', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1206', '1000', '0,1000', '档案馆', '45', '0431', '谢剑猛', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1207', '1000', '0,1000', '实训中心', '46', '3030', '康振军', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1208', '1000', '0,1000', '轨道中心', '47', '1330', '肖乾', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1302', '1000', '0,1000', '先进材料研究院', '50', null, null, null, null, '0', '0', 'admin', '2020-05-16 12:01:00', 'admin', '2020-05-16 12:02:00');
INSERT INTO `sys_dept` VALUES ('1401', '1000', '0,1000', '医院', '48', '1130', '姜羔', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept` VALUES ('1402', '1000', '0,1000', '中小学（幼儿园）', '49', '0839', '凌学镜', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');

-- ----------------------------
-- Table structure for sys_dept_copy
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_copy`;
CREATE TABLE `sys_dept_copy` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader_no` varchar(10) DEFAULT NULL,
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1403 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept_copy
-- ----------------------------
INSERT INTO `sys_dept_copy` VALUES ('1000', '0', '0', '华东交通大学', '0', null, '万明', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept_copy` VALUES ('1001', '1000', '0,1000', '土建学院', '2', '', '陈水生', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1002', '1000', '0,1000', '电气学院', '3', '', '赵敏', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1003', '1000', '0,1000', '机电学院', '4', '', '周建民', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1004', '1000', '0,1000', '经管学院', '5', '', '林井萍', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1005', '1000', '0,1000', '体健学院', '6', null, '王志斌', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1006', '1000', '0,1000', '信息学院', '7', null, '蔡卫平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1007', '1000', '0,1000', '人文学院', '8', null, '黄瑜', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1008', '1000', '0,1000', '理学院', '9', null, '吴效葵', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1009', '1000', '0,1000', '外语学院', '10', null, '陈科', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1011', '1000', '0,1000', '艺术学院', '11', null, '田玉兰', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1012', '1000', '0,1000', '国际学院(国交处)', '12', null, '郑轶', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1013', '1000', '0,1000', '运输学院', '13', null, '丁锋贵', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1014', '1000', '0,1000', '马克思学院', '14', null, '张剑锋', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1015', '1000', '0,1000', '材料学院', '15', null, '程浩', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1021', '1000', '0,1000', '软件学院', '16', null, '曹义亲', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1030', '1000', '0,1000', '继续教育学院', '17', null, '胡桃元', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1031', '1000', '0,1000', '天佑学院', '18', null, '王冰雪', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1100', '1000', '0,1000', '组织部（党校）', '19', null, '凌四宝', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1101', '1000', '0,1000', '两办', '20', null, '闵伸', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1102', '1000', '0,1000', '人事处（教工部、教师发展中心）', '21', null, '陈磊', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1103', '1000', '0,1000', '宣传部', '22', null, '陈沈平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1104', '1000', '0,1000', '纪委机关', '23', null, '杨东明', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1105', '1000', '0,1000', '工会（离退处）', '24', null, '蓝荣', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1106', '1000', '0,1000', '统战部（机关党委）', '25', null, '黄家和', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1107', '1000', '0,1000', '学团（创新创业教育中心）', '26', null, '李雪峰', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1108', '1000', '0,1000', '教务处（评估中心）', '27', null, '汤兆平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1109', '1000', '0,1000', '研究生院（研工部）', '28', null, '朱王海', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1110', '1000', '0,1000', '保卫处（武装部）', '29', null, '付自生', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1111', '1000', '0,1000', '科研处', '30', null, '徐玉萍', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1112', '1000', '0,1000', '发规处（高教所）', '31', null, '陈云萍', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1113', '1000', '0,1000', '招就处', '32', null, '王彤', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1114', '1000', '0,1000', '资产处', '33', null, '吴志峰', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1115', '1000', '0,1000', '计财处', '34', null, '尚军', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1116', '1000', '0,1000', '基建处', '35', null, '刘永胜', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1117', '1000', '0,1000', '外联处（校友办）', '36', null, '罗侃', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1118', '1000', '0,1000', '招标办', '37', null, '阳国诚', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1119', '1000', '0,1000', '审计处', '38', null, '赵蔚', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1120', '1000', '0,1000', '科技园', '39', null, '李黎青', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1201', '1000', '0,1000', '后勤保障中心', '40', null, '薛先庆', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1202', '1000', '0,1000', '设计院', '41', null, '雷斌', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1203', '1000', '0,1000', '网络信息中心', '42', null, '黄鸿平', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1204', '1000', '0,1000', '图书馆', '43', null, '喻汉斌', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1205', '1000', '0,1000', '学报', '44', null, '赵龙志', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1206', '1000', '0,1000', '档案馆', '45', null, '谢剑猛', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1207', '1000', '0,1000', '实训中心', '46', null, '康振军', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1208', '1000', '0,1000', '轨道中心', '47', null, '肖乾', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1302', '1000', '0,1000', '先进材料研究院', '50', null, null, null, null, '0', '0', 'admin', '2020-05-16 12:01:00', 'admin', '2020-05-16 12:02:00');
INSERT INTO `sys_dept_copy` VALUES ('1401', '1000', '0,1000', '医院', '48', null, '姜羔', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');
INSERT INTO `sys_dept_copy` VALUES ('1402', '1000', '0,1000', '中小学（幼儿园）', '49', null, '凌学镜', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-05-16 12:00:00', 'admin', '2020-05-16 12:00:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('30', '1', '待分派', '0', 'service_status', '', 'info', 'Y', '0', 'admin', '2020-03-29 13:46:18', 'admin', '2020-03-29 13:47:00', '待分派服务');
INSERT INTO `sys_dict_data` VALUES ('31', '2', '待处理', '1', 'service_status', '', 'info', 'Y', '0', 'admin', '2020-03-29 13:48:13', 'admin', '2020-03-29 13:49:10', '待处理任务');
INSERT INTO `sys_dict_data` VALUES ('32', '3', '正常在办', '2', 'service_status', null, 'info', 'Y', '0', 'admin', '2020-03-29 13:50:29', '', null, '各单位在要求办结时间内办理得服务');
INSERT INTO `sys_dict_data` VALUES ('33', '4', '超时在办', '3', 'service_status', '', 'info', 'Y', '0', 'admin', '2020-03-29 13:53:16', 'admin', '2020-03-29 13:54:27', '各单位超过要求办结时间办理的服务');
INSERT INTO `sys_dict_data` VALUES ('34', '5', '正常办结', '4', 'service_status', null, 'info', 'Y', '0', 'admin', '2020-03-29 13:55:03', '', null, '各单位办结完的服务');
INSERT INTO `sys_dict_data` VALUES ('35', '6', '待评价', '5', 'service_status', null, 'info', 'Y', '0', 'admin', '2020-03-29 13:56:05', '', null, '各单位提交办结申请的服务');
INSERT INTO `sys_dict_data` VALUES ('36', '1', '满意', '0', 'satisfaction_degree', '', 'success', 'Y', '0', 'admin', '2020-03-29 13:59:03', 'admin', '2020-03-29 14:01:13', '服务满意');
INSERT INTO `sys_dict_data` VALUES ('37', '2', '基本满意', '1', 'satisfaction_degree', '', 'warning', 'Y', '0', 'admin', '2020-03-29 13:59:29', 'admin', '2020-03-29 14:01:20', '服务基本满意');
INSERT INTO `sys_dict_data` VALUES ('38', '3', '不满意', '2', 'satisfaction_degree', '', 'danger', 'Y', '0', 'admin', '2020-03-29 13:59:52', 'admin', '2020-03-29 14:01:25', '服务不满意');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '服务状态', 'service_status', '0', 'admin', '2020-03-25 16:37:51', 'admin', '2020-03-25 16:38:21', '服务状态列表');
INSERT INTO `sys_dict_type` VALUES ('12', '满意度', 'satisfaction_degree', '0', 'admin', '2020-03-29 13:57:48', 'admin', '2020-03-29 13:58:06', '满意度列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0 0 22 * * ?', '2', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2020-04-03 22:09:59', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：14毫秒', '0', '', '2020-04-03 21:14:50');
INSERT INTO `sys_job_log` VALUES ('2', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:15:00');
INSERT INTO `sys_job_log` VALUES ('3', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:15:10');
INSERT INTO `sys_job_log` VALUES ('4', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：7毫秒', '0', '', '2020-04-03 21:15:20');
INSERT INTO `sys_job_log` VALUES ('5', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2020-04-03 21:15:30');
INSERT INTO `sys_job_log` VALUES ('6', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:15:40');
INSERT INTO `sys_job_log` VALUES ('7', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:15:50');
INSERT INTO `sys_job_log` VALUES ('8', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:16:00');
INSERT INTO `sys_job_log` VALUES ('9', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：6毫秒', '0', '', '2020-04-03 21:16:10');
INSERT INTO `sys_job_log` VALUES ('10', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：4毫秒', '0', '', '2020-04-03 21:16:20');
INSERT INTO `sys_job_log` VALUES ('11', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2020-04-03 21:16:30');
INSERT INTO `sys_job_log` VALUES ('12', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:16:40');
INSERT INTO `sys_job_log` VALUES ('13', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:16:50');
INSERT INTO `sys_job_log` VALUES ('14', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:17:00');
INSERT INTO `sys_job_log` VALUES ('15', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：7毫秒', '0', '', '2020-04-03 21:17:10');
INSERT INTO `sys_job_log` VALUES ('16', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:17:20');
INSERT INTO `sys_job_log` VALUES ('17', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2020-04-03 21:17:30');
INSERT INTO `sys_job_log` VALUES ('18', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:17:40');
INSERT INTO `sys_job_log` VALUES ('19', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:17:50');
INSERT INTO `sys_job_log` VALUES ('20', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：4毫秒', '0', '', '2020-04-03 21:18:00');
INSERT INTO `sys_job_log` VALUES ('21', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:18:10');
INSERT INTO `sys_job_log` VALUES ('22', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:18:20');
INSERT INTO `sys_job_log` VALUES ('23', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：23毫秒', '0', '', '2020-04-03 21:19:50');
INSERT INTO `sys_job_log` VALUES ('24', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：4毫秒', '0', '', '2020-04-03 21:20:00');
INSERT INTO `sys_job_log` VALUES ('25', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:20:10');
INSERT INTO `sys_job_log` VALUES ('26', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 21:20:20');
INSERT INTO `sys_job_log` VALUES ('27', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：5毫秒', '0', '', '2020-04-03 21:21:05');
INSERT INTO `sys_job_log` VALUES ('28', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-04-03 22:00:00');
INSERT INTO `sys_job_log` VALUES ('29', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：30毫秒', '0', '', '2020-04-04 22:06:31');
INSERT INTO `sys_job_log` VALUES ('30', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：20毫秒', '0', '', '2020-04-04 22:26:35');
INSERT INTO `sys_job_log` VALUES ('31', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：16毫秒', '0', '', '2020-04-04 23:00:49');
INSERT INTO `sys_job_log` VALUES ('32', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：8毫秒', '0', '', '2020-04-04 23:04:56');
INSERT INTO `sys_job_log` VALUES ('33', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：11毫秒', '0', '', '2020-04-04 23:29:13');
INSERT INTO `sys_job_log` VALUES ('34', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2020-04-04 23:29:39');
INSERT INTO `sys_job_log` VALUES ('35', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2020-04-04 23:30:44');
INSERT INTO `sys_job_log` VALUES ('36', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：14毫秒', '0', '', '2020-04-04 23:52:56');
INSERT INTO `sys_job_log` VALUES ('37', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：20毫秒', '0', '', '2020-04-04 23:56:48');
INSERT INTO `sys_job_log` VALUES ('38', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：8毫秒', '0', '', '2020-04-05 22:00:00');
INSERT INTO `sys_job_log` VALUES ('39', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：9毫秒', '0', '', '2020-04-06 22:00:00');
INSERT INTO `sys_job_log` VALUES ('40', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：9毫秒', '0', '', '2020-04-07 22:00:00');
INSERT INTO `sys_job_log` VALUES ('41', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：45毫秒', '0', '', '2020-04-14 22:00:00');
INSERT INTO `sys_job_log` VALUES ('42', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：6毫秒', '0', '', '2020-04-16 22:00:00');
INSERT INTO `sys_job_log` VALUES ('43', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：11毫秒', '0', '', '2020-04-19 22:00:00');
INSERT INTO `sys_job_log` VALUES ('44', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：14毫秒', '0', '', '2020-04-20 22:00:00');
INSERT INTO `sys_job_log` VALUES ('45', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：10毫秒', '0', '', '2020-05-15 22:00:00');
INSERT INTO `sys_job_log` VALUES ('46', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：3毫秒', '0', '', '2020-05-16 22:00:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 11:19:00');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-24 21:36:16');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-24 21:36:18');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 21:36:22');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-24 21:37:26');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 21:37:33');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 22:01:50');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 23:03:25');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-25 11:39:35');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-25 12:49:00');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-25 13:35:16');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-25 13:58:55');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-25 16:30:21');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 16:38:18');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 20:46:56');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 20:52:42');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-28 21:02:23');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:02:25');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:05:31');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:05:58');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:08:07');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-28 21:13:56');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:13:59');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:21:51');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:23:20');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:24:31');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:30:49');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:39:37');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:40:27');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 21:45:20');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 22:04:27');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 22:13:50');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 22:14:37');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 22:58:16');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 23:01:10');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 23:02:41');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 23:06:09');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 23:11:25');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-28 23:14:14');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 10:28:17');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 10:35:40');
INSERT INTO `sys_logininfor` VALUES ('141', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 10:35:45');
INSERT INTO `sys_logininfor` VALUES ('142', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 10:36:59');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 10:37:03');
INSERT INTO `sys_logininfor` VALUES ('144', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 10:56:06');
INSERT INTO `sys_logininfor` VALUES ('145', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 11:21:35');
INSERT INTO `sys_logininfor` VALUES ('146', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 11:22:43');
INSERT INTO `sys_logininfor` VALUES ('147', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 11:23:39');
INSERT INTO `sys_logininfor` VALUES ('148', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 11:30:46');
INSERT INTO `sys_logininfor` VALUES ('149', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 11:44:13');
INSERT INTO `sys_logininfor` VALUES ('150', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 12:00:48');
INSERT INTO `sys_logininfor` VALUES ('151', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 12:29:57');
INSERT INTO `sys_logininfor` VALUES ('152', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 12:33:50');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 12:33:54');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 13:34:28');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 14:21:08');
INSERT INTO `sys_logininfor` VALUES ('156', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 14:28:03');
INSERT INTO `sys_logininfor` VALUES ('157', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 14:30:39');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 14:33:22');
INSERT INTO `sys_logininfor` VALUES ('159', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 17:30:58');
INSERT INTO `sys_logininfor` VALUES ('160', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 20:21:54');
INSERT INTO `sys_logininfor` VALUES ('161', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 20:28:43');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 20:28:47');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 20:31:07');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 20:31:11');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 20:31:15');
INSERT INTO `sys_logininfor` VALUES ('166', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 20:31:20');
INSERT INTO `sys_logininfor` VALUES ('167', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 20:31:53');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 20:31:57');
INSERT INTO `sys_logininfor` VALUES ('169', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 21:08:01');
INSERT INTO `sys_logininfor` VALUES ('170', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 21:11:34');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 21:11:39');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 21:12:41');
INSERT INTO `sys_logininfor` VALUES ('173', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 21:12:46');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 21:17:25');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 21:52:54');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-29 21:53:22');
INSERT INTO `sys_logininfor` VALUES ('177', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-29 21:53:27');
INSERT INTO `sys_logininfor` VALUES ('178', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-30 10:22:27');
INSERT INTO `sys_logininfor` VALUES ('179', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:22:30');
INSERT INTO `sys_logininfor` VALUES ('180', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:26:43');
INSERT INTO `sys_logininfor` VALUES ('181', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:29:17');
INSERT INTO `sys_logininfor` VALUES ('182', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:41:21');
INSERT INTO `sys_logininfor` VALUES ('183', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:44:20');
INSERT INTO `sys_logininfor` VALUES ('184', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:45:31');
INSERT INTO `sys_logininfor` VALUES ('185', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:47:28');
INSERT INTO `sys_logininfor` VALUES ('186', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:53:03');
INSERT INTO `sys_logininfor` VALUES ('187', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:54:30');
INSERT INTO `sys_logininfor` VALUES ('188', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 10:56:55');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 11:28:04');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 12:47:49');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:28:06');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-30 13:42:33');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:42:37');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:46:17');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:48:11');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:51:25');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:53:14');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:54:44');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 13:55:51');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:20:11');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:20:25');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:26:49');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:29:05');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-30 14:33:27');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:33:30');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:35:54');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:37:16');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:40:15');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:43:10');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 14:45:50');
INSERT INTO `sys_logininfor` VALUES ('211', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:45:55');
INSERT INTO `sys_logininfor` VALUES ('212', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 14:46:05');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:46:08');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 14:47:18');
INSERT INTO `sys_logininfor` VALUES ('215', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 14:47:24');
INSERT INTO `sys_logininfor` VALUES ('216', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:07:20');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:12:54');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:16:10');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:19:03');
INSERT INTO `sys_logininfor` VALUES ('220', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:20:54');
INSERT INTO `sys_logininfor` VALUES ('221', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:23:27');
INSERT INTO `sys_logininfor` VALUES ('222', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 15:25:20');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:25:28');
INSERT INTO `sys_logininfor` VALUES ('224', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:32:09');
INSERT INTO `sys_logininfor` VALUES ('225', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:33:51');
INSERT INTO `sys_logininfor` VALUES ('226', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 15:44:35');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 15:44:38');
INSERT INTO `sys_logininfor` VALUES ('228', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 17:35:19');
INSERT INTO `sys_logininfor` VALUES ('229', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 17:50:38');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 20:07:08');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 20:52:39');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-30 21:39:24');
INSERT INTO `sys_logininfor` VALUES ('233', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-30 21:39:34');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 10:58:46');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 12:59:43');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:04:28');
INSERT INTO `sys_logininfor` VALUES ('237', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:10:10');
INSERT INTO `sys_logininfor` VALUES ('238', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 13:10:28');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:10:31');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 13:11:36');
INSERT INTO `sys_logininfor` VALUES ('241', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:11:40');
INSERT INTO `sys_logininfor` VALUES ('242', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 13:28:05');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:28:09');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:45:36');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 13:50:46');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 14:15:08');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 14:16:55');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 14:41:49');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 15:19:52');
INSERT INTO `sys_logininfor` VALUES ('250', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 15:19:58');
INSERT INTO `sys_logininfor` VALUES ('251', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 15:21:23');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 15:21:28');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 15:25:33');
INSERT INTO `sys_logininfor` VALUES ('254', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 15:25:38');
INSERT INTO `sys_logininfor` VALUES ('255', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 15:26:23');
INSERT INTO `sys_logininfor` VALUES ('256', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 15:26:30');
INSERT INTO `sys_logininfor` VALUES ('257', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 15:30:21');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 16:33:08');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 16:38:17');
INSERT INTO `sys_logininfor` VALUES ('260', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 16:38:24');
INSERT INTO `sys_logininfor` VALUES ('261', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 16:39:57');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 16:40:02');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 16:40:04');
INSERT INTO `sys_logininfor` VALUES ('264', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 16:40:11');
INSERT INTO `sys_logininfor` VALUES ('265', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 20:35:02');
INSERT INTO `sys_logininfor` VALUES ('266', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 20:56:59');
INSERT INTO `sys_logininfor` VALUES ('267', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 21:09:02');
INSERT INTO `sys_logininfor` VALUES ('268', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 21:23:48');
INSERT INTO `sys_logininfor` VALUES ('269', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 21:48:42');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 21:48:49');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-31 21:50:05');
INSERT INTO `sys_logininfor` VALUES ('272', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-31 21:50:10');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:00:56');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 09:01:00');
INSERT INTO `sys_logininfor` VALUES ('275', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:01:04');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:24:24');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 09:32:20');
INSERT INTO `sys_logininfor` VALUES ('278', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:33:05');
INSERT INTO `sys_logininfor` VALUES ('279', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:35:41');
INSERT INTO `sys_logininfor` VALUES ('280', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 09:45:28');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:45:33');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 09:58:00');
INSERT INTO `sys_logininfor` VALUES ('283', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:58:19');
INSERT INTO `sys_logininfor` VALUES ('284', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 09:59:37');
INSERT INTO `sys_logininfor` VALUES ('285', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:01:00');
INSERT INTO `sys_logininfor` VALUES ('286', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:01:47');
INSERT INTO `sys_logininfor` VALUES ('287', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-02 10:02:05');
INSERT INTO `sys_logininfor` VALUES ('288', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:02:09');
INSERT INTO `sys_logininfor` VALUES ('289', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:02:27');
INSERT INTO `sys_logininfor` VALUES ('290', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:02:32');
INSERT INTO `sys_logininfor` VALUES ('291', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:06:36');
INSERT INTO `sys_logininfor` VALUES ('292', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:07:04');
INSERT INTO `sys_logininfor` VALUES ('293', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:07:56');
INSERT INTO `sys_logininfor` VALUES ('294', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:08:01');
INSERT INTO `sys_logininfor` VALUES ('295', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:17:02');
INSERT INTO `sys_logininfor` VALUES ('296', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:17:21');
INSERT INTO `sys_logininfor` VALUES ('297', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:18:02');
INSERT INTO `sys_logininfor` VALUES ('298', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:18:07');
INSERT INTO `sys_logininfor` VALUES ('299', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:18:52');
INSERT INTO `sys_logininfor` VALUES ('300', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:19:02');
INSERT INTO `sys_logininfor` VALUES ('301', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:24:38');
INSERT INTO `sys_logininfor` VALUES ('302', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:24:43');
INSERT INTO `sys_logininfor` VALUES ('303', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 10:48:58');
INSERT INTO `sys_logininfor` VALUES ('304', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-02 10:49:04');
INSERT INTO `sys_logininfor` VALUES ('305', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 10:49:09');
INSERT INTO `sys_logininfor` VALUES ('306', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 12:31:57');
INSERT INTO `sys_logininfor` VALUES ('307', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 13:04:42');
INSERT INTO `sys_logininfor` VALUES ('308', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 13:06:04');
INSERT INTO `sys_logininfor` VALUES ('309', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 13:06:09');
INSERT INTO `sys_logininfor` VALUES ('310', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 19:53:12');
INSERT INTO `sys_logininfor` VALUES ('311', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 19:54:47');
INSERT INTO `sys_logininfor` VALUES ('312', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 19:55:00');
INSERT INTO `sys_logininfor` VALUES ('313', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 20:31:33');
INSERT INTO `sys_logininfor` VALUES ('314', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 20:34:54');
INSERT INTO `sys_logininfor` VALUES ('315', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 20:45:04');
INSERT INTO `sys_logininfor` VALUES ('316', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 21:54:07');
INSERT INTO `sys_logininfor` VALUES ('317', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-02 21:54:12');
INSERT INTO `sys_logininfor` VALUES ('318', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 21:54:23');
INSERT INTO `sys_logininfor` VALUES ('319', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-02 22:24:12');
INSERT INTO `sys_logininfor` VALUES ('320', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 10:27:16');
INSERT INTO `sys_logininfor` VALUES ('321', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 10:29:48');
INSERT INTO `sys_logininfor` VALUES ('322', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 10:31:11');
INSERT INTO `sys_logininfor` VALUES ('323', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 10:31:25');
INSERT INTO `sys_logininfor` VALUES ('324', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 10:31:56');
INSERT INTO `sys_logininfor` VALUES ('325', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 10:32:12');
INSERT INTO `sys_logininfor` VALUES ('326', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 15:12:37');
INSERT INTO `sys_logininfor` VALUES ('327', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-03 15:14:46');
INSERT INTO `sys_logininfor` VALUES ('328', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 15:14:50');
INSERT INTO `sys_logininfor` VALUES ('329', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 15:20:46');
INSERT INTO `sys_logininfor` VALUES ('330', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 15:28:43');
INSERT INTO `sys_logininfor` VALUES ('331', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 15:37:30');
INSERT INTO `sys_logininfor` VALUES ('332', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 17:33:48');
INSERT INTO `sys_logininfor` VALUES ('333', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 21:14:31');
INSERT INTO `sys_logininfor` VALUES ('334', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-03 21:19:51');
INSERT INTO `sys_logininfor` VALUES ('335', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-04 22:05:36');
INSERT INTO `sys_logininfor` VALUES ('336', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-04 22:12:33');
INSERT INTO `sys_logininfor` VALUES ('337', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-04 23:00:22');
INSERT INTO `sys_logininfor` VALUES ('338', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-04 23:00:26');
INSERT INTO `sys_logininfor` VALUES ('339', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-04 23:21:24');
INSERT INTO `sys_logininfor` VALUES ('340', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-04 23:21:27');
INSERT INTO `sys_logininfor` VALUES ('341', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-04 23:21:38');
INSERT INTO `sys_logininfor` VALUES ('342', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-04 23:24:03');
INSERT INTO `sys_logininfor` VALUES ('343', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-04 23:52:43');
INSERT INTO `sys_logininfor` VALUES ('344', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 21:18:22');
INSERT INTO `sys_logininfor` VALUES ('345', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-05 21:48:13');
INSERT INTO `sys_logininfor` VALUES ('346', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 21:48:18');
INSERT INTO `sys_logininfor` VALUES ('347', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 22:01:40');
INSERT INTO `sys_logininfor` VALUES ('348', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-05 22:04:32');
INSERT INTO `sys_logininfor` VALUES ('349', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 22:04:36');
INSERT INTO `sys_logininfor` VALUES ('350', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-05 22:08:31');
INSERT INTO `sys_logininfor` VALUES ('351', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 22:08:40');
INSERT INTO `sys_logininfor` VALUES ('352', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:20:55');
INSERT INTO `sys_logininfor` VALUES ('353', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:23:54');
INSERT INTO `sys_logininfor` VALUES ('354', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:31:08');
INSERT INTO `sys_logininfor` VALUES ('355', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:36:43');
INSERT INTO `sys_logininfor` VALUES ('356', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:38:02');
INSERT INTO `sys_logininfor` VALUES ('357', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:57:20');
INSERT INTO `sys_logininfor` VALUES ('358', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-05 23:58:54');
INSERT INTO `sys_logininfor` VALUES ('359', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-06 00:08:13');
INSERT INTO `sys_logininfor` VALUES ('360', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:08:20');
INSERT INTO `sys_logininfor` VALUES ('361', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:09:40');
INSERT INTO `sys_logininfor` VALUES ('362', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:14:16');
INSERT INTO `sys_logininfor` VALUES ('363', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:26:45');
INSERT INTO `sys_logininfor` VALUES ('364', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:30:43');
INSERT INTO `sys_logininfor` VALUES ('365', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:39:51');
INSERT INTO `sys_logininfor` VALUES ('366', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:54:55');
INSERT INTO `sys_logininfor` VALUES ('367', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 00:56:43');
INSERT INTO `sys_logininfor` VALUES ('368', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:01:26');
INSERT INTO `sys_logininfor` VALUES ('369', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:03:09');
INSERT INTO `sys_logininfor` VALUES ('370', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:33:56');
INSERT INTO `sys_logininfor` VALUES ('371', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:34:50');
INSERT INTO `sys_logininfor` VALUES ('372', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:35:51');
INSERT INTO `sys_logininfor` VALUES ('373', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:36:46');
INSERT INTO `sys_logininfor` VALUES ('374', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:37:30');
INSERT INTO `sys_logininfor` VALUES ('375', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:47:12');
INSERT INTO `sys_logininfor` VALUES ('376', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:52:11');
INSERT INTO `sys_logininfor` VALUES ('377', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:54:15');
INSERT INTO `sys_logininfor` VALUES ('378', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-06 01:58:50');
INSERT INTO `sys_logininfor` VALUES ('379', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 01:58:53');
INSERT INTO `sys_logininfor` VALUES ('380', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 02:05:50');
INSERT INTO `sys_logininfor` VALUES ('381', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-06 02:10:04');
INSERT INTO `sys_logininfor` VALUES ('382', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 02:10:07');
INSERT INTO `sys_logininfor` VALUES ('383', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 12:17:20');
INSERT INTO `sys_logininfor` VALUES ('384', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 14:53:00');
INSERT INTO `sys_logininfor` VALUES ('385', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 15:00:32');
INSERT INTO `sys_logininfor` VALUES ('386', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 15:11:56');
INSERT INTO `sys_logininfor` VALUES ('387', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 15:23:58');
INSERT INTO `sys_logininfor` VALUES ('388', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 15:40:21');
INSERT INTO `sys_logininfor` VALUES ('389', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 19:52:46');
INSERT INTO `sys_logininfor` VALUES ('390', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 20:53:07');
INSERT INTO `sys_logininfor` VALUES ('391', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 21:38:13');
INSERT INTO `sys_logininfor` VALUES ('392', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 21:43:20');
INSERT INTO `sys_logininfor` VALUES ('393', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 21:55:14');
INSERT INTO `sys_logininfor` VALUES ('394', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-06 22:03:55');
INSERT INTO `sys_logininfor` VALUES ('395', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 22:03:59');
INSERT INTO `sys_logininfor` VALUES ('396', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-06 22:07:30');
INSERT INTO `sys_logininfor` VALUES ('397', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 09:03:26');
INSERT INTO `sys_logininfor` VALUES ('398', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 11:44:02');
INSERT INTO `sys_logininfor` VALUES ('399', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 12:43:09');
INSERT INTO `sys_logininfor` VALUES ('400', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 14:54:15');
INSERT INTO `sys_logininfor` VALUES ('401', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 15:51:26');
INSERT INTO `sys_logininfor` VALUES ('402', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-07 16:40:35');
INSERT INTO `sys_logininfor` VALUES ('403', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 16:40:42');
INSERT INTO `sys_logininfor` VALUES ('404', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-07 17:42:34');
INSERT INTO `sys_logininfor` VALUES ('405', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 17:42:38');
INSERT INTO `sys_logininfor` VALUES ('406', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 18:46:22');
INSERT INTO `sys_logininfor` VALUES ('407', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 19:23:18');
INSERT INTO `sys_logininfor` VALUES ('408', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 20:47:47');
INSERT INTO `sys_logininfor` VALUES ('409', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-07 20:56:20');
INSERT INTO `sys_logininfor` VALUES ('410', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 20:56:26');
INSERT INTO `sys_logininfor` VALUES ('411', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-07 22:24:53');
INSERT INTO `sys_logininfor` VALUES ('412', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 15:08:05');
INSERT INTO `sys_logininfor` VALUES ('413', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 15:08:30');
INSERT INTO `sys_logininfor` VALUES ('414', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 15:36:12');
INSERT INTO `sys_logininfor` VALUES ('415', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 15:37:19');
INSERT INTO `sys_logininfor` VALUES ('416', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 17:26:54');
INSERT INTO `sys_logininfor` VALUES ('417', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-08 17:27:24');
INSERT INTO `sys_logininfor` VALUES ('418', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-08 17:27:32');
INSERT INTO `sys_logininfor` VALUES ('419', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 17:27:35');
INSERT INTO `sys_logininfor` VALUES ('420', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 17:42:27');
INSERT INTO `sys_logininfor` VALUES ('421', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-08 17:51:29');
INSERT INTO `sys_logininfor` VALUES ('422', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 17:53:00');
INSERT INTO `sys_logininfor` VALUES ('423', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 18:30:38');
INSERT INTO `sys_logininfor` VALUES ('424', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 18:32:10');
INSERT INTO `sys_logininfor` VALUES ('425', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-08 18:33:09');
INSERT INTO `sys_logininfor` VALUES ('426', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 18:39:50');
INSERT INTO `sys_logininfor` VALUES ('427', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-08 21:16:11');
INSERT INTO `sys_logininfor` VALUES ('428', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 18:40:07');
INSERT INTO `sys_logininfor` VALUES ('429', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:02:07');
INSERT INTO `sys_logininfor` VALUES ('430', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:02:43');
INSERT INTO `sys_logininfor` VALUES ('431', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:02:50');
INSERT INTO `sys_logininfor` VALUES ('432', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:03:39');
INSERT INTO `sys_logininfor` VALUES ('433', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:03:54');
INSERT INTO `sys_logininfor` VALUES ('434', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:05:55');
INSERT INTO `sys_logininfor` VALUES ('435', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:06:37');
INSERT INTO `sys_logininfor` VALUES ('436', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:12:54');
INSERT INTO `sys_logininfor` VALUES ('437', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:13:00');
INSERT INTO `sys_logininfor` VALUES ('438', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:34:52');
INSERT INTO `sys_logininfor` VALUES ('439', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:35:02');
INSERT INTO `sys_logininfor` VALUES ('440', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:37:31');
INSERT INTO `sys_logininfor` VALUES ('441', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:37:37');
INSERT INTO `sys_logininfor` VALUES ('442', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:38:25');
INSERT INTO `sys_logininfor` VALUES ('443', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:38:28');
INSERT INTO `sys_logininfor` VALUES ('444', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:39:21');
INSERT INTO `sys_logininfor` VALUES ('445', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-14 10:39:24');
INSERT INTO `sys_logininfor` VALUES ('446', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:39:29');
INSERT INTO `sys_logininfor` VALUES ('447', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:43:41');
INSERT INTO `sys_logininfor` VALUES ('448', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:43:46');
INSERT INTO `sys_logininfor` VALUES ('449', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:56:40');
INSERT INTO `sys_logininfor` VALUES ('450', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:56:47');
INSERT INTO `sys_logininfor` VALUES ('451', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 10:58:42');
INSERT INTO `sys_logininfor` VALUES ('452', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-14 10:59:14');
INSERT INTO `sys_logininfor` VALUES ('453', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 10:59:16');
INSERT INTO `sys_logininfor` VALUES ('454', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 11:02:06');
INSERT INTO `sys_logininfor` VALUES ('455', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 11:02:12');
INSERT INTO `sys_logininfor` VALUES ('456', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 11:13:35');
INSERT INTO `sys_logininfor` VALUES ('457', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 11:13:43');
INSERT INTO `sys_logininfor` VALUES ('458', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 11:15:00');
INSERT INTO `sys_logininfor` VALUES ('459', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 11:15:08');
INSERT INTO `sys_logininfor` VALUES ('460', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 11:16:03');
INSERT INTO `sys_logininfor` VALUES ('461', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 11:16:12');
INSERT INTO `sys_logininfor` VALUES ('462', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 11:16:50');
INSERT INTO `sys_logininfor` VALUES ('463', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:03:45');
INSERT INTO `sys_logininfor` VALUES ('464', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:03:55');
INSERT INTO `sys_logininfor` VALUES ('465', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:04:02');
INSERT INTO `sys_logininfor` VALUES ('466', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:16:02');
INSERT INTO `sys_logininfor` VALUES ('467', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:16:16');
INSERT INTO `sys_logininfor` VALUES ('468', '1901', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:16:24');
INSERT INTO `sys_logininfor` VALUES ('469', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:16:30');
INSERT INTO `sys_logininfor` VALUES ('470', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:20:30');
INSERT INTO `sys_logininfor` VALUES ('471', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:20:33');
INSERT INTO `sys_logininfor` VALUES ('472', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:20:40');
INSERT INTO `sys_logininfor` VALUES ('473', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:20:45');
INSERT INTO `sys_logininfor` VALUES ('474', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:32:02');
INSERT INTO `sys_logininfor` VALUES ('475', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:32:10');
INSERT INTO `sys_logininfor` VALUES ('476', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:32:24');
INSERT INTO `sys_logininfor` VALUES ('477', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:32:31');
INSERT INTO `sys_logininfor` VALUES ('478', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:33:00');
INSERT INTO `sys_logininfor` VALUES ('479', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:33:05');
INSERT INTO `sys_logininfor` VALUES ('480', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:37:34');
INSERT INTO `sys_logininfor` VALUES ('481', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:38:04');
INSERT INTO `sys_logininfor` VALUES ('482', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:38:09');
INSERT INTO `sys_logininfor` VALUES ('483', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-14 22:46:52');
INSERT INTO `sys_logininfor` VALUES ('484', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 22:47:00');
INSERT INTO `sys_logininfor` VALUES ('485', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 10:36:02');
INSERT INTO `sys_logininfor` VALUES ('486', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 13:39:24');
INSERT INTO `sys_logininfor` VALUES ('487', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 13:46:30');
INSERT INTO `sys_logininfor` VALUES ('488', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 14:56:47');
INSERT INTO `sys_logininfor` VALUES ('489', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:17:16');
INSERT INTO `sys_logininfor` VALUES ('490', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:52:54');
INSERT INTO `sys_logininfor` VALUES ('491', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:57:06');
INSERT INTO `sys_logininfor` VALUES ('492', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:58:44');
INSERT INTO `sys_logininfor` VALUES ('493', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:58:53');
INSERT INTO `sys_logininfor` VALUES ('494', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 17:59:26');
INSERT INTO `sys_logininfor` VALUES ('495', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 17:59:35');
INSERT INTO `sys_logininfor` VALUES ('496', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 18:04:23');
INSERT INTO `sys_logininfor` VALUES ('497', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-04-16 18:04:28');
INSERT INTO `sys_logininfor` VALUES ('498', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:04:31');
INSERT INTO `sys_logininfor` VALUES ('499', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 18:05:03');
INSERT INTO `sys_logininfor` VALUES ('500', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:05:11');
INSERT INTO `sys_logininfor` VALUES ('501', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:17:21');
INSERT INTO `sys_logininfor` VALUES ('502', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:26:06');
INSERT INTO `sys_logininfor` VALUES ('503', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 18:55:54');
INSERT INTO `sys_logininfor` VALUES ('504', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 18:56:02');
INSERT INTO `sys_logininfor` VALUES ('505', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 20:06:23');
INSERT INTO `sys_logininfor` VALUES ('506', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:01:09');
INSERT INTO `sys_logininfor` VALUES ('507', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:01:14');
INSERT INTO `sys_logininfor` VALUES ('508', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:01:25');
INSERT INTO `sys_logininfor` VALUES ('509', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:01:32');
INSERT INTO `sys_logininfor` VALUES ('510', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:10:26');
INSERT INTO `sys_logininfor` VALUES ('511', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:10:33');
INSERT INTO `sys_logininfor` VALUES ('512', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:10:42');
INSERT INTO `sys_logininfor` VALUES ('513', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:10:49');
INSERT INTO `sys_logininfor` VALUES ('514', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:11:56');
INSERT INTO `sys_logininfor` VALUES ('515', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:12:01');
INSERT INTO `sys_logininfor` VALUES ('516', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:12:11');
INSERT INTO `sys_logininfor` VALUES ('517', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:12:19');
INSERT INTO `sys_logininfor` VALUES ('518', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:13:04');
INSERT INTO `sys_logininfor` VALUES ('519', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:13:12');
INSERT INTO `sys_logininfor` VALUES ('520', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:16:54');
INSERT INTO `sys_logininfor` VALUES ('521', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:16:59');
INSERT INTO `sys_logininfor` VALUES ('522', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:17:08');
INSERT INTO `sys_logininfor` VALUES ('523', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:17:14');
INSERT INTO `sys_logininfor` VALUES ('524', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:17:30');
INSERT INTO `sys_logininfor` VALUES ('525', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:17:34');
INSERT INTO `sys_logininfor` VALUES ('526', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 21:18:13');
INSERT INTO `sys_logininfor` VALUES ('527', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:18:19');
INSERT INTO `sys_logininfor` VALUES ('528', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 21:55:05');
INSERT INTO `sys_logininfor` VALUES ('529', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 22:06:41');
INSERT INTO `sys_logininfor` VALUES ('530', '1900', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 22:12:37');
INSERT INTO `sys_logininfor` VALUES ('531', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 22:12:52');
INSERT INTO `sys_logininfor` VALUES ('532', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 22:13:09');
INSERT INTO `sys_logininfor` VALUES ('533', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 22:13:14');
INSERT INTO `sys_logininfor` VALUES ('534', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 22:31:41');
INSERT INTO `sys_logininfor` VALUES ('535', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 22:31:49');
INSERT INTO `sys_logininfor` VALUES ('536', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-16 22:34:36');
INSERT INTO `sys_logininfor` VALUES ('537', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-16 22:34:40');
INSERT INTO `sys_logininfor` VALUES ('538', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-17 10:15:05');
INSERT INTO `sys_logininfor` VALUES ('539', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 10:44:42');
INSERT INTO `sys_logininfor` VALUES ('540', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 10:44:56');
INSERT INTO `sys_logininfor` VALUES ('541', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 10:45:02');
INSERT INTO `sys_logininfor` VALUES ('542', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 10:46:23');
INSERT INTO `sys_logininfor` VALUES ('543', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 10:46:26');
INSERT INTO `sys_logininfor` VALUES ('544', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 10:46:30');
INSERT INTO `sys_logininfor` VALUES ('545', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 10:46:37');
INSERT INTO `sys_logininfor` VALUES ('546', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 11:44:51');
INSERT INTO `sys_logininfor` VALUES ('547', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 11:44:56');
INSERT INTO `sys_logininfor` VALUES ('548', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 11:45:04');
INSERT INTO `sys_logininfor` VALUES ('549', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 11:45:09');
INSERT INTO `sys_logininfor` VALUES ('550', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 11:47:37');
INSERT INTO `sys_logininfor` VALUES ('551', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 11:47:47');
INSERT INTO `sys_logininfor` VALUES ('552', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 11:48:08');
INSERT INTO `sys_logininfor` VALUES ('553', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 11:48:14');
INSERT INTO `sys_logininfor` VALUES ('554', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 11:56:46');
INSERT INTO `sys_logininfor` VALUES ('555', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 11:56:52');
INSERT INTO `sys_logininfor` VALUES ('556', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 12:41:01');
INSERT INTO `sys_logininfor` VALUES ('557', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 12:41:04');
INSERT INTO `sys_logininfor` VALUES ('558', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 12:41:09');
INSERT INTO `sys_logininfor` VALUES ('559', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-18 12:54:47');
INSERT INTO `sys_logininfor` VALUES ('560', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-18 12:54:54');
INSERT INTO `sys_logininfor` VALUES ('561', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 19:22:38');
INSERT INTO `sys_logininfor` VALUES ('562', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 19:48:00');
INSERT INTO `sys_logininfor` VALUES ('563', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 19:48:06');
INSERT INTO `sys_logininfor` VALUES ('564', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 20:17:50');
INSERT INTO `sys_logininfor` VALUES ('565', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 20:17:58');
INSERT INTO `sys_logininfor` VALUES ('566', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 20:26:52');
INSERT INTO `sys_logininfor` VALUES ('567', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 20:26:57');
INSERT INTO `sys_logininfor` VALUES ('568', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 20:29:50');
INSERT INTO `sys_logininfor` VALUES ('569', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 20:29:54');
INSERT INTO `sys_logininfor` VALUES ('570', '1966', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 20:32:55');
INSERT INTO `sys_logininfor` VALUES ('571', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 20:33:02');
INSERT INTO `sys_logininfor` VALUES ('572', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 21:56:16');
INSERT INTO `sys_logininfor` VALUES ('573', '2930', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 21:56:20');
INSERT INTO `sys_logininfor` VALUES ('574', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 21:56:25');
INSERT INTO `sys_logininfor` VALUES ('575', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 21:59:29');
INSERT INTO `sys_logininfor` VALUES ('576', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 21:59:32');
INSERT INTO `sys_logininfor` VALUES ('577', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 21:59:36');
INSERT INTO `sys_logininfor` VALUES ('578', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 21:59:49');
INSERT INTO `sys_logininfor` VALUES ('579', '2001', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-19 22:00:05');
INSERT INTO `sys_logininfor` VALUES ('580', '0982', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 22:00:11');
INSERT INTO `sys_logininfor` VALUES ('581', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-19 22:30:04');
INSERT INTO `sys_logininfor` VALUES ('582', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-20 21:39:07');
INSERT INTO `sys_logininfor` VALUES ('583', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-05-08 10:55:30');
INSERT INTO `sys_logininfor` VALUES ('584', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-08 10:55:33');
INSERT INTO `sys_logininfor` VALUES ('585', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-08 11:49:52');
INSERT INTO `sys_logininfor` VALUES ('586', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-08 11:50:04');
INSERT INTO `sys_logininfor` VALUES ('587', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-08 11:51:20');
INSERT INTO `sys_logininfor` VALUES ('588', '1111', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-08 11:51:29');
INSERT INTO `sys_logininfor` VALUES ('589', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 13:44:04');
INSERT INTO `sys_logininfor` VALUES ('590', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 14:28:37');
INSERT INTO `sys_logininfor` VALUES ('591', '2889', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 14:28:52');
INSERT INTO `sys_logininfor` VALUES ('592', '2889', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 14:29:38');
INSERT INTO `sys_logininfor` VALUES ('593', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 14:29:44');
INSERT INTO `sys_logininfor` VALUES ('594', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 14:58:55');
INSERT INTO `sys_logininfor` VALUES ('595', '0843', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 14:59:03');
INSERT INTO `sys_logininfor` VALUES ('596', '0843', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 14:59:30');
INSERT INTO `sys_logininfor` VALUES ('597', '2833', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 14:59:46');
INSERT INTO `sys_logininfor` VALUES ('598', '2833', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 15:02:21');
INSERT INTO `sys_logininfor` VALUES ('599', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 15:02:41');
INSERT INTO `sys_logininfor` VALUES ('600', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 15:04:08');
INSERT INTO `sys_logininfor` VALUES ('601', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-05-15 15:04:18');
INSERT INTO `sys_logininfor` VALUES ('602', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 15:04:23');
INSERT INTO `sys_logininfor` VALUES ('603', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 15:04:34');
INSERT INTO `sys_logininfor` VALUES ('604', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-05-15 15:04:38');
INSERT INTO `sys_logininfor` VALUES ('605', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 15:04:40');
INSERT INTO `sys_logininfor` VALUES ('606', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 15:07:13');
INSERT INTO `sys_logininfor` VALUES ('607', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 15:07:22');
INSERT INTO `sys_logininfor` VALUES ('608', '0464', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-05-15 16:53:44');
INSERT INTO `sys_logininfor` VALUES ('609', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-05-15 16:54:25');
INSERT INTO `sys_logininfor` VALUES ('610', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 16:54:33');
INSERT INTO `sys_logininfor` VALUES ('611', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-05-15 16:59:49');
INSERT INTO `sys_logininfor` VALUES ('612', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-05-15 16:59:56');
INSERT INTO `sys_logininfor` VALUES ('613', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 17:00:22');
INSERT INTO `sys_logininfor` VALUES ('614', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 19:42:26');
INSERT INTO `sys_logininfor` VALUES ('615', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 21:38:34');
INSERT INTO `sys_logininfor` VALUES ('616', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-15 21:50:39');
INSERT INTO `sys_logininfor` VALUES ('617', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 21:50:44');
INSERT INTO `sys_logininfor` VALUES ('618', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 23:15:37');
INSERT INTO `sys_logininfor` VALUES ('619', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 23:19:26');
INSERT INTO `sys_logininfor` VALUES ('620', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-15 23:59:34');
INSERT INTO `sys_logininfor` VALUES ('621', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 09:53:04');
INSERT INTO `sys_logininfor` VALUES ('622', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 16:13:01');
INSERT INTO `sys_logininfor` VALUES ('623', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 16:22:41');
INSERT INTO `sys_logininfor` VALUES ('624', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 16:22:44');
INSERT INTO `sys_logininfor` VALUES ('625', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 16:53:37');
INSERT INTO `sys_logininfor` VALUES ('626', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 17:53:01');
INSERT INTO `sys_logininfor` VALUES ('627', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 17:53:24');
INSERT INTO `sys_logininfor` VALUES ('628', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 17:53:30');
INSERT INTO `sys_logininfor` VALUES ('629', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 21:27:32');
INSERT INTO `sys_logininfor` VALUES ('630', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 21:28:03');
INSERT INTO `sys_logininfor` VALUES ('631', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 21:28:10');
INSERT INTO `sys_logininfor` VALUES ('632', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 21:31:28');
INSERT INTO `sys_logininfor` VALUES ('633', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 21:31:33');
INSERT INTO `sys_logininfor` VALUES ('634', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 21:31:47');
INSERT INTO `sys_logininfor` VALUES ('635', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 21:31:53');
INSERT INTO `sys_logininfor` VALUES ('636', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 22:28:01');
INSERT INTO `sys_logininfor` VALUES ('637', '0134', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-16 22:28:22');
INSERT INTO `sys_logininfor` VALUES ('638', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 22:28:28');
INSERT INTO `sys_logininfor` VALUES ('639', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 23:26:25');
INSERT INTO `sys_logininfor` VALUES ('640', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-16 23:28:34');
INSERT INTO `sys_logininfor` VALUES ('641', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:02:59');
INSERT INTO `sys_logininfor` VALUES ('642', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 10:10:34');
INSERT INTO `sys_logininfor` VALUES ('643', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:10:59');
INSERT INTO `sys_logininfor` VALUES ('644', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 10:24:12');
INSERT INTO `sys_logininfor` VALUES ('645', '0408', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:27:47');
INSERT INTO `sys_logininfor` VALUES ('646', '0408', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 10:37:06');
INSERT INTO `sys_logininfor` VALUES ('647', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:37:21');
INSERT INTO `sys_logininfor` VALUES ('648', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 10:37:40');
INSERT INTO `sys_logininfor` VALUES ('649', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:38:10');
INSERT INTO `sys_logininfor` VALUES ('650', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 10:38:35');
INSERT INTO `sys_logininfor` VALUES ('651', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:38:46');
INSERT INTO `sys_logininfor` VALUES ('652', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 10:56:21');
INSERT INTO `sys_logininfor` VALUES ('653', '0408', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 10:57:36');
INSERT INTO `sys_logininfor` VALUES ('654', '0408', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 11:02:19');
INSERT INTO `sys_logininfor` VALUES ('655', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 11:02:40');
INSERT INTO `sys_logininfor` VALUES ('656', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-02 11:07:24');
INSERT INTO `sys_logininfor` VALUES ('657', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 11:07:36');
INSERT INTO `sys_logininfor` VALUES ('658', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 09:54:22');
INSERT INTO `sys_logininfor` VALUES ('659', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 10:02:41');
INSERT INTO `sys_logininfor` VALUES ('660', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 10:02:51');
INSERT INTO `sys_logininfor` VALUES ('661', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 10:59:43');
INSERT INTO `sys_logininfor` VALUES ('662', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 10:59:50');
INSERT INTO `sys_logininfor` VALUES ('663', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 11:46:57');
INSERT INTO `sys_logininfor` VALUES ('664', '2945', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 11:47:05');
INSERT INTO `sys_logininfor` VALUES ('665', '2945', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 12:13:19');
INSERT INTO `sys_logininfor` VALUES ('666', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 12:13:26');
INSERT INTO `sys_logininfor` VALUES ('667', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 12:13:59');
INSERT INTO `sys_logininfor` VALUES ('668', '2945', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 12:14:06');
INSERT INTO `sys_logininfor` VALUES ('669', '2945', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 12:14:28');
INSERT INTO `sys_logininfor` VALUES ('670', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 12:14:35');
INSERT INTO `sys_logininfor` VALUES ('671', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-03 12:31:04');
INSERT INTO `sys_logininfor` VALUES ('672', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 12:31:12');
INSERT INTO `sys_logininfor` VALUES ('673', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 13:38:29');
INSERT INTO `sys_logininfor` VALUES ('674', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-04 14:00:32');
INSERT INTO `sys_logininfor` VALUES ('675', '2945', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 14:00:39');
INSERT INTO `sys_logininfor` VALUES ('676', '2945', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-04 14:01:00');
INSERT INTO `sys_logininfor` VALUES ('677', '3010', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 14:01:06');
INSERT INTO `sys_logininfor` VALUES ('678', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 14:40:03');
INSERT INTO `sys_logininfor` VALUES ('679', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-04 14:44:19');
INSERT INTO `sys_logininfor` VALUES ('680', '2799', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 14:44:46');
INSERT INTO `sys_logininfor` VALUES ('681', '2799', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-04 14:46:08');
INSERT INTO `sys_logininfor` VALUES ('682', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 14:46:18');
INSERT INTO `sys_logininfor` VALUES ('683', '0646', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-04 14:57:49');
INSERT INTO `sys_logininfor` VALUES ('684', '2799', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-04 14:57:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2066 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '5', '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-24 21:24:21', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '6', '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-03 17:08:17', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '7', '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-24 20:52:23', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '人才服务管理', '0', '1', '', 'menuItem', 'M', '0', '', 'fa fa-graduation-cap', 'admin', '2020-03-24 11:24:39', 'admin', '2020-04-16 17:34:14', '');
INSERT INTO `sys_menu` VALUES ('2002', '服务分派管理', '0', '2', '#', 'menuItem', 'M', '0', '', 'fa fa-bank', 'admin', '2020-03-24 20:52:03', 'admin', '2020-03-24 21:24:06', '');
INSERT INTO `sys_menu` VALUES ('2003', '服务任务管理', '0', '3', '#', 'menuItem', 'M', '0', '', 'fa fa-users', 'admin', '2020-03-24 20:55:32', 'admin', '2020-03-24 21:24:10', '');
INSERT INTO `sys_menu` VALUES ('2004', '服务数据统计', '0', '4', '#', 'menuItem', 'M', '0', '', 'fa fa-bar-chart', 'admin', '2020-03-24 20:58:22', 'admin', '2020-03-24 21:24:15', '');
INSERT INTO `sys_menu` VALUES ('2005', '服务需求申请', '2017', '1', '#', 'menuItem', 'F', '0', 'module:tss:talent:add', '#', 'admin', '2020-03-24 21:02:39', 'admin', '2020-03-30 11:38:22', '');
INSERT INTO `sys_menu` VALUES ('2006', '服务状态查看', '2017', '2', '#', 'menuItem', 'F', '0', 'module:tss:talent:list', '#', 'admin', '2020-03-24 21:11:25', 'admin', '2020-03-30 11:39:19', '');
INSERT INTO `sys_menu` VALUES ('2007', '服务需求办结', '2018', '4', '#', 'menuItem', 'F', '0', 'module:tss:talent:edit', '#', 'admin', '2020-03-24 21:12:21', 'admin', '2020-03-30 11:41:41', '');
INSERT INTO `sys_menu` VALUES ('2008', '服务办结评价', '2018', '3', '#', 'menuItem', 'F', '0', 'module:tss:talent:edit', '#', 'admin', '2020-03-24 21:13:05', 'admin', '2020-03-30 11:41:07', '');
INSERT INTO `sys_menu` VALUES ('2009', '全部服务项目', '2002', '4', '/module/tss/assignor', 'menuItem', 'C', '0', 'module:tss:assignor:view', '#', 'admin', '2020-03-24 21:14:41', 'admin', '2020-04-16 21:08:07', '');
INSERT INTO `sys_menu` VALUES ('2010', '待分派项目', '2002', '1', '/module/tss/assignor/assign', 'menuItem', 'C', '0', 'module:tss:assignor:view', '#', 'admin', '2020-03-24 21:14:59', 'admin', '2020-04-16 21:06:01', '');
INSERT INTO `sys_menu` VALUES ('2011', '全部服务项目', '2003', '5', '/module/tss/handler/handler', 'menuItem', 'C', '0', 'module:tss:handler:view', '#', 'admin', '2020-03-24 21:15:33', 'admin', '2020-04-17 10:17:14', '');
INSERT INTO `sys_menu` VALUES ('2012', '待申请在办项目', '2003', '2', '/module/tss/handler/apply', 'menuItem', 'C', '0', 'module:tss:handler:view', '#', 'admin', '2020-03-24 21:15:54', 'admin', '2020-04-18 11:57:57', '');
INSERT INTO `sys_menu` VALUES ('2013', '全部服务项目', '2004', '3', 'module/tss/header', 'menuItem', 'C', '0', 'module:tss:header:view', '#', 'admin', '2020-03-24 21:18:06', 'admin', '2020-04-19 19:41:42', '');
INSERT INTO `sys_menu` VALUES ('2014', '服务需求导出', '2017', '5', '#', 'menuItem', 'F', '0', 'module:tss:talent:export', '#', 'admin', '2020-03-25 14:47:19', 'admin', '2020-03-30 11:39:44', '');
INSERT INTO `sys_menu` VALUES ('2015', '服务需求删除', '2017', '6', '#', 'menuItem', 'F', '0', 'module:tss:talent:remove', '#', 'admin', '2020-03-29 20:33:57', 'admin', '2020-03-30 11:39:58', '');
INSERT INTO `sys_menu` VALUES ('2017', '全部服务项目', '2000', '2', '/module/tss/talent', 'menuItem', 'C', '0', 'module:tss:talent:view', '#', 'admin', '2020-03-30 11:38:06', 'admin', '2020-06-03 09:56:33', '');
INSERT INTO `sys_menu` VALUES ('2018', '待评价项目', '2000', '3', '/module/tss/talent/evaluate', 'menuItem', 'C', '0', 'module:tss:talent:view', '#', 'admin', '2020-03-30 11:40:44', 'admin', '2020-06-03 09:56:54', '');
INSERT INTO `sys_menu` VALUES ('2019', '服务需求导出', '2009', '3', '#', 'menuItem', 'F', '0', 'module:tss:assignor:export', '#', 'admin', '2020-03-30 21:02:49', 'admin', '2020-03-30 21:29:36', '');
INSERT INTO `sys_menu` VALUES ('2020', '服务状态查看', '2009', '1', '#', 'menuItem', 'F', '0', 'module:tss:assignor:list', '#', 'admin', '2020-03-30 21:20:30', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '服务任务分派', '2010', '1', '#', 'menuItem', 'F', '0', 'module:tss:assignor:edit', '#', 'admin', '2020-03-30 21:30:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '服务状态查看', '2011', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:list', '#', 'admin', '2020-04-02 09:52:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '服务需求导出', '2011', '2', '#', 'menuItem', 'F', '0', 'module:tss:handler:export', '#', 'admin', '2020-04-02 09:54:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '办结服务申请', '2012', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:edit', '#', 'admin', '2020-04-02 09:57:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '服务状态查看', '2013', '1', '#', 'menuItem', 'F', '0', 'module:tss:header:list', '#', 'admin', '2020-04-05 21:28:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '服务需求导出', '2013', '2', '#', 'menuItem', 'F', '0', 'module:tss:header:export', '#', 'admin', '2020-04-05 21:29:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '服务项目统计', '2004', '4', 'module/tss/statics', 'menuItem', 'C', '0', 'module:tss:view', '#', 'admin', '2020-04-05 21:31:32', 'admin', '2020-04-19 19:42:18', '');
INSERT INTO `sys_menu` VALUES ('2028', '服务状态查看', '2027', '1', '#', 'menuItem', 'F', '0', 'module:tss:list', '#', 'admin', '2020-04-05 21:40:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '超时在办项目', '2002', '2', '/module/tss/timeoutHandle', 'menuItem', 'C', '0', 'module:tss:view', '#', 'admin', '2020-04-16 11:17:37', 'admin', '2020-04-16 21:10:22', '');
INSERT INTO `sys_menu` VALUES ('2036', '超时在办服务查询', '2035', '0', '#', 'menuItem', 'F', '0', 'module:tss:list', '#', 'admin', '2020-04-16 11:20:51', 'admin', '2020-04-16 11:32:16', '');
INSERT INTO `sys_menu` VALUES ('2037', '超时在办服务导出', '2035', '0', '#', 'menuItem', 'F', '0', 'module:tss:export', '#', 'admin', '2020-04-16 11:22:51', 'admin', '2020-04-16 11:32:45', '');
INSERT INTO `sys_menu` VALUES ('2038', '已办结项目', '2002', '3', '/module/tss/overHandle', 'menuItem', 'C', '0', 'module:tss:view', '#', 'admin', '2020-04-16 11:17:37', 'admin', '2020-04-16 21:06:34', '');
INSERT INTO `sys_menu` VALUES ('2039', '办结服务查询', '2038', '0', '#', 'menuItem', 'F', '0', 'module:tss:list', '#', 'admin', '2020-04-16 11:20:51', 'admin', '2020-04-16 11:32:16', '');
INSERT INTO `sys_menu` VALUES ('2040', '办结服务导出', '2038', '0', '#', 'menuItem', 'F', '0', 'module:tss:export', '#', 'admin', '2020-04-16 11:22:51', 'admin', '2020-04-16 11:32:45', '');
INSERT INTO `sys_menu` VALUES ('2044', '在办服务项目', '2000', '4', '/module/tss/talent/handling', 'menuItem', 'C', '0', 'module:tss:talent:view', '#', 'admin', '2020-04-16 17:24:37', 'admin', '2020-06-03 09:57:01', '');
INSERT INTO `sys_menu` VALUES ('2045', '在办服务查看', '2044', '1', '#', 'menuItem', 'F', '0', 'module:tss:talent:list', '#', 'admin', '2020-04-16 17:25:29', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '在办服务导出', '2044', '2', '#', 'menuItem', 'F', '0', 'module:tss:talent:export', '#', 'admin', '2020-04-16 17:26:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '已办结项目', '2003', '4', '/module/tss/handler/overHandle', 'menuItem', 'C', '0', 'module:tss:handler:view', '#', 'admin', '2020-04-16 22:42:18', 'admin', '2020-04-19 21:57:50', '');
INSERT INTO `sys_menu` VALUES ('2048', '待办理项目', '2003', '1', '/module/tss/handler/handle', 'menuItem', 'C', '0', 'module:tss:handler:view', '#', 'admin', '2020-04-16 22:46:36', 'admin', '2020-04-17 10:21:28', '');
INSERT INTO `sys_menu` VALUES ('2049', '待申请超时项目', '2003', '3', '/module/tss/handler/timeoutHandle', 'menuItem', 'C', '0', 'module:tss:handler:view', '#', 'admin', '2020-04-16 22:47:54', 'admin', '2020-04-18 11:57:31', '');
INSERT INTO `sys_menu` VALUES ('2050', '超时在办查看', '2049', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:list', '#', 'admin', '2020-04-17 10:18:22', 'admin', '2020-04-17 10:19:45', '');
INSERT INTO `sys_menu` VALUES ('2051', '已办结查看', '2047', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:list', '#', 'admin', '2020-04-17 10:19:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '待申请办结查看', '2012', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:list', '#', 'admin', '2020-04-17 10:20:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '待办理查看', '2048', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:list', '#', 'admin', '2020-04-17 10:22:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '待办理处理', '2048', '2', '#', 'menuItem', 'F', '0', 'module:tss:handler:edit', '#', 'admin', '2020-04-17 10:24:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '超时在办申请', '2049', '2', '#', 'menuItem', 'F', '0', 'module:tss:handler:edit', '#', 'admin', '2020-04-18 11:45:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2056', '超时在办项目', '2004', '1', '/module/tss/timeoutHandle', 'menuItem', 'C', '0', 'module:tss:view', '#', 'admin', '2020-04-19 19:42:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2057', '超时在办服务查询', '2056', '1', '#', 'menuItem', 'F', '0', 'module:tss:list', '#', 'admin', '2020-04-19 19:43:33', 'admin', '2020-04-19 19:44:23', '');
INSERT INTO `sys_menu` VALUES ('2058', '超时在办项目导出', '2056', '2', '#', 'menuItem', 'F', '0', 'module:tss:export', '#', 'admin', '2020-04-19 19:44:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '已办结项目', '2004', '2', '/module/tss/overHandle', 'menuItem', 'C', '0', 'module:tss:view', '#', 'admin', '2020-04-19 19:46:00', 'admin', '2020-04-19 19:46:31', '');
INSERT INTO `sys_menu` VALUES ('2060', '已办结项目查询', '2059', '1', '#', 'menuItem', 'F', '0', 'module:tss:list', '#', 'admin', '2020-04-19 19:46:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2061', '已办结项目导出', '2059', '2', '#', 'menuItem', 'F', '0', 'module:tss:export', '#', 'admin', '2020-04-19 19:47:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2062', '服务项目统计', '2003', '6', '/module/tss/handler/statics', 'menuItem', 'C', '0', 'module:tss:handler:view', '#', 'admin', '2020-04-19 21:57:36', 'admin', '2020-04-19 21:58:22', '');
INSERT INTO `sys_menu` VALUES ('2063', '服务项目查询', '2062', '1', '#', 'menuItem', 'F', '0', 'module:tss:handler:list', '#', 'admin', '2020-04-19 21:58:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '申请服务', '2000', '1', '/module/tss/talent/applying', 'menuItem', 'C', '0', 'module:tss:talent:view', '#', 'admin', '2020-06-03 09:56:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '服务需求申请', '2064', '1', '#', 'menuItem', 'F', '0', 'module:tss:talent:add', '#', 'admin', '2020-06-03 09:58:29', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 11:19:50');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 11:24:39');
INSERT INTO `sys_oper_log` VALUES ('102', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 11:24:51');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 11:25:02');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:13:18');
INSERT INTO `sys_oper_log` VALUES ('105', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务提交\"],\"url\":[\"/tss/serve\"],\"target\":[\"menuItem\"],\"perms\":[\"tss:serve:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:46:16');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:50:04');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"高层次人才服务\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:50:37');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务任务分派\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:52:03');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:52:18');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:52:23');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务任务分派\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:52:52');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:54:00');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务分派管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:54:13');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:54:22');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"完成服务管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-sign-language\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:55:32');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"完成服务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-users\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:56:11');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"完成服务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-users\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:56:19');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务数据统计\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 20:58:22');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求申请\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:02:39');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:11:25');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求办结\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:12:21');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务满意度评价\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:13:05');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2008\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务满意评价\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:13:22');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2008\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务完成评价\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:13:44');
INSERT INTO `sys_oper_log` VALUES ('125', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:14:41');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待办服务分派\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:14:59');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:15:33');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务办结申请\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:15:54');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"状态数据统计\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:18:06');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务任务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-users\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:19:24');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:23:50');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:24:02');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务分派管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:24:06');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务任务管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-users\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:24:10');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2004\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"服务数据统计\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:24:15');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 21:24:21');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2008\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务办结评价\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 22:02:30');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求办结\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-24 22:02:44');
INSERT INTO `sys_oper_log` VALUES ('139', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_services\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 13:35:30');
INSERT INTO `sys_oper_log` VALUES ('140', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_services\"],\"tableComment\":[\"人才服务需求表\"],\"className\":[\"TServices\"],\"functionAuthor\":[\"warren\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"唯一标识\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"服务编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"serviceNo\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"工号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"teacherNo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"人才姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"teacherName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"所在单位Id\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"belongUnitNo\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"所在单位名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"belongUnitName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 13:39:54');
INSERT INTO `sys_oper_log` VALUES ('141', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_services', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2020-03-25 13:40:01');
INSERT INTO `sys_oper_log` VALUES ('142', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_services\"],\"tableComment\":[\"人才服务需求表\"],\"className\":[\"TServices\"],\"functionAuthor\":[\"warren\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"唯一标识\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"服务编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"serviceNo\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"工号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"teacherNo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"人才姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"teacherName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"所在单位Id\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"belongUnitNo\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"所在单位名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"belongUnitName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:00:56');
INSERT INTO `sys_oper_log` VALUES ('143', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_services\"],\"tableComment\":[\"人才服务需求表\"],\"className\":[\"Tss\"],\"functionAuthor\":[\"warren\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"唯一标识\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"服务编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"serviceNo\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"工号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"teacherNo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"人才姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"teacherName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"所在单位Id\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"belongUnitNo\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"所在单位名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"belongUnitName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:02:27');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_services\"],\"tableComment\":[\"人才服务需求表\"],\"className\":[\"TServices\"],\"functionAuthor\":[\"warren\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"唯一标识\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"服务编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"serviceNo\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"工号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"teacherNo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"人才姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"teacherName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"所在单位Id\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"belongUnitNo\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"所在单位名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"belongUnitName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:02:47');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_services\"],\"tableComment\":[\"人才服务需求表\"],\"className\":[\"TServices\"],\"functionAuthor\":[\"warren\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"唯一标识\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"服务编码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"serviceNo\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"工号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"teacherNo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"人才姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"teacherName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"所在单位Id\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"belongUnitNo\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"所在单位名称\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"belongUnitName\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"column', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:02:56');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_services', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2020-03-25 14:03:03');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:39:47');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求申请\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:42:42');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:list\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:45:23');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2008\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务办结评价\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:45:47');
INSERT INTO `sys_oper_log` VALUES ('151', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求办结\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:edit\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:46:07');
INSERT INTO `sys_oper_log` VALUES ('152', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求办结\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:edit\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:46:17');
INSERT INTO `sys_oper_log` VALUES ('153', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:export\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 14:47:19');
INSERT INTO `sys_oper_log` VALUES ('154', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"服务状态\"],\"dictType\":[\"service_status\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 16:37:51');
INSERT INTO `sys_oper_log` VALUES ('155', '字典类型', '2', 'com.ruoyi.project.system.dict.controller.DictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"11\"],\"dictName\":[\"服务状态\"],\"dictType\":[\"service_status\"],\"status\":[\"0\"],\"remark\":[\"服务状态列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-25 16:38:21');
INSERT INTO `sys_oper_log` VALUES ('156', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2005,2006,2008,2007,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:12:40');
INSERT INTO `sys_oper_log` VALUES ('157', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:12:50');
INSERT INTO `sys_oper_log` VALUES ('158', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2002,2009,2010\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:14:04');
INSERT INTO `sys_oper_log` VALUES ('159', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2011,2012\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:15:10');
INSERT INTO `sys_oper_log` VALUES ('160', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"校领导\"],\"roleKey\":[\"header\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2004,2013\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:15:59');
INSERT INTO `sys_oper_log` VALUES ('161', '角色管理', '3', 'com.ruoyi.project.system.role.controller.RoleController.remove()', 'POST', '1', 'admin', '研发部门', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"普通角色已分配,不能删除\",\"code\":500}', '0', null, '2020-03-28 17:16:11');
INSERT INTO `sys_oper_log` VALUES ('162', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"7\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:16:20');
INSERT INTO `sys_oper_log` VALUES ('163', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"dataScope\":[\"5\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:17:15');
INSERT INTO `sys_oper_log` VALUES ('164', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:17:43');
INSERT INTO `sys_oper_log` VALUES ('165', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:17:55');
INSERT INTO `sys_oper_log` VALUES ('166', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"校领导\"],\"roleKey\":[\"header\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:18:06');
INSERT INTO `sys_oper_log` VALUES ('167', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"校领导\"],\"postCode\":[\"header\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:21:24');
INSERT INTO `sys_oper_log` VALUES ('168', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"测试部门\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:23:52');
INSERT INTO `sys_oper_log` VALUES ('169', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:25:03');
INSERT INTO `sys_oper_log` VALUES ('170', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:25:06');
INSERT INTO `sys_oper_log` VALUES ('171', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:25:08');
INSERT INTO `sys_oper_log` VALUES ('172', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:25:11');
INSERT INTO `sys_oper_log` VALUES ('173', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}', '0', null, '2020-03-28 17:25:13');
INSERT INTO `sys_oper_log` VALUES ('174', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-28 17:25:17');
INSERT INTO `sys_oper_log` VALUES ('175', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"软件学院\"],\"orderNum\":[\"3\"],\"leader\":[\"曹义亲\"],\"phone\":[\"15888888222\"],\"email\":[\"234@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 10:30:41');
INSERT INTO `sys_oper_log` VALUES ('176', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"110\"],\"deptName\":[\"软件领域工程系\"],\"orderNum\":[\"1\"],\"leader\":[\"周会祥\"],\"phone\":[\"15882288888\"],\"email\":[\"222@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 10:31:25');
INSERT INTO `sys_oper_log` VALUES ('177', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"111\"],\"userName\":[\"1966\"],\"deptName\":[\"软件领域工程系\"],\"phonenumber\":[\"13870949321\"],\"email\":[\"3434@qq.com\"],\"loginName\":[\"1966\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 10:32:58');
INSERT INTO `sys_oper_log` VALUES ('178', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"OCD83WI\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"1966\"],\"belongUnitNo\":[\"111\"],\"belongUnitName\":[\"软件领域工程系\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-29\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"服务描述\"],\"demand\":[\"要求描述\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 12:30:50');
INSERT INTO `sys_oper_log` VALUES ('179', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待分派\"],\"dictValue\":[\"1\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"待分派服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:46:18');
INSERT INTO `sys_oper_log` VALUES ('180', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"30\"],\"dictLabel\":[\"待分派\"],\"dictValue\":[\"0\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"待分派服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:47:00');
INSERT INTO `sys_oper_log` VALUES ('181', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待处理\"],\"dictValue\":[\"1\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:48:14');
INSERT INTO `sys_oper_log` VALUES ('182', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"31\"],\"dictLabel\":[\"待处理\"],\"dictValue\":[\"1\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"待处理任务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:49:10');
INSERT INTO `sys_oper_log` VALUES ('183', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"正常在办\"],\"dictValue\":[\"2\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"各单位在要求办结时间内办理得服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:50:29');
INSERT INTO `sys_oper_log` VALUES ('184', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"超时在办\"],\"dictValue\":[\"4\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"超过要求时间办理的任务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:53:16');
INSERT INTO `sys_oper_log` VALUES ('185', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"33\"],\"dictLabel\":[\"超时在办\"],\"dictValue\":[\"4\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"各单位超过要求办结时间办理的任务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:53:39');
INSERT INTO `sys_oper_log` VALUES ('186', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"33\"],\"dictLabel\":[\"超时在办\"],\"dictValue\":[\"4\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"各单位超过要求办结时间办理的服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:53:48');
INSERT INTO `sys_oper_log` VALUES ('187', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"33\"],\"dictLabel\":[\"超时在办\"],\"dictValue\":[\"3\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"各单位超过要求办结时间办理的服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:54:27');
INSERT INTO `sys_oper_log` VALUES ('188', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"正常办结\"],\"dictValue\":[\"4\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"各单位办结完的服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:55:03');
INSERT INTO `sys_oper_log` VALUES ('189', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待评价\"],\"dictValue\":[\"5\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"各单位提交办结申请的服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:56:06');
INSERT INTO `sys_oper_log` VALUES ('190', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"满意度\"],\"dictType\":[\"satisfaction_degree\"],\"status\":[\"0\"],\"remark\":[\"高层次人才对服务的评价满意度\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:57:48');
INSERT INTO `sys_oper_log` VALUES ('191', '字典类型', '2', 'com.ruoyi.project.system.dict.controller.DictTypeController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"12\"],\"dictName\":[\"满意度\"],\"dictType\":[\"satisfaction_degree\"],\"status\":[\"0\"],\"remark\":[\"满意度列表\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:58:06');
INSERT INTO `sys_oper_log` VALUES ('192', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"满意\"],\"dictValue\":[\"0\"],\"dictType\":[\"satisfaction_degree\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"服务满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:59:03');
INSERT INTO `sys_oper_log` VALUES ('193', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"基本满意\"],\"dictValue\":[\"1\"],\"dictType\":[\"satisfaction_degree\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"服务基本满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:59:29');
INSERT INTO `sys_oper_log` VALUES ('194', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"不满意\"],\"dictValue\":[\"2\"],\"dictType\":[\"satisfaction_degree\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"服务不满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 13:59:52');
INSERT INTO `sys_oper_log` VALUES ('195', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"36\"],\"dictLabel\":[\"满意\"],\"dictValue\":[\"0\"],\"dictType\":[\"satisfaction_degree\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"服务满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 14:01:13');
INSERT INTO `sys_oper_log` VALUES ('196', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"37\"],\"dictLabel\":[\"基本满意\"],\"dictValue\":[\"1\"],\"dictType\":[\"satisfaction_degree\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"服务基本满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 14:01:20');
INSERT INTO `sys_oper_log` VALUES ('197', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"38\"],\"dictLabel\":[\"不满意\"],\"dictValue\":[\"2\"],\"dictType\":[\"satisfaction_degree\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"服务不满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 14:01:25');
INSERT INTO `sys_oper_log` VALUES ('198', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:remove\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 20:33:57');
INSERT INTO `sys_oper_log` VALUES ('199', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2005,2006,2008,2007,2014,2015\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 21:12:38');
INSERT INTO `sys_oper_log` VALUES ('200', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.editSave()', 'POST', '1', 'admin', '研发部门', '/module/tss/talent/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"serviceNo\":[\"OCD83WI\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"1966\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-29\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"服务描述1\"],\"demand\":[\"要求描述\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 21:53:05');
INSERT INTO `sys_oper_log` VALUES ('201', '人才服务需求', '3', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.remove()', 'POST', '1', 'admin', '研发部门', '/module/tss/talent/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 21:53:17');
INSERT INTO `sys_oper_log` VALUES ('202', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"QL5EWG1M\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"1966\"],\"belongUnitNo\":[\"111\"],\"belongUnitName\":[\"软件领域工程系\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-29\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述123\"],\"demand\":[\"服务要求123\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-29 21:57:28');
INSERT INTO `sys_oper_log` VALUES ('203', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:31:18');
INSERT INTO `sys_oper_log` VALUES ('204', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:32:55');
INSERT INTO `sys_oper_log` VALUES ('205', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:33:02');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:33:13');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:36:18');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:36:47');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:38:06');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求申请\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:38:22');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:list\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:39:19');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:export\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:39:44');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2015\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求删除\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:remove\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:39:58');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求办结1\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:40:44');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2008\"],\"parentId\":[\"2018\"],\"menuType\":[\"F\"],\"menuName\":[\"服务办结评价\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:41:07');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求办结\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:edit\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:41:22');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2018\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求办结\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:edit\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:41:41');
INSERT INTO `sys_oper_log` VALUES ('218', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务办结管理\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 11:42:02');
INSERT INTO `sys_oper_log` VALUES ('219', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"服务办结管理\"],\"url\":[\"/module/tss/talent/evaluate\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 12:51:05');
INSERT INTO `sys_oper_log` VALUES ('220', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2005,2006,2014,2015,2008,2007\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 12:53:22');
INSERT INTO `sys_oper_log` VALUES ('221', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2017,2005,2006,2014,2015,2018,2008,2007\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 14:47:14');
INSERT INTO `sys_oper_log` VALUES ('222', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"serviceStatus\":[\"4\"],\"handleTimes\":[\"\"],\"serviceNo\":[\"QL5EWG1M\"],\"submitTime\":[\"2020-03-29\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述123\"],\"demand\":[\"服务要求123\"],\"satisfactionDegree\":[\"0\"],\"satisfactionReason\":[\"满意\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:07:37');
INSERT INTO `sys_oper_log` VALUES ('223', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"GU76YE7I\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"1966\"],\"belongUnitNo\":[\"111\"],\"belongUnitName\":[\"软件领域工程系\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述2\"],\"demand\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:08:09');
INSERT INTO `sys_oper_log` VALUES ('224', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.editSave()', 'POST', '1', 'admin', '研发部门', '/module/tss/talent/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceNo\":[\"GU76YE7I\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"1966\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:16:21');
INSERT INTO `sys_oper_log` VALUES ('225', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"\"],\"handleTimes\":[\"2\"],\"serviceNo\":[\"GU76YE7I\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"],\"satisfactionDegree\":[\"2\"],\"satisfactionReason\":[\"重办理由\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:21:08');
INSERT INTO `sys_oper_log` VALUES ('226', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"\"],\"handleTimes\":[\"3\"],\"serviceNo\":[\"GU76YE7I\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"],\"satisfactionDegree\":[\"2\"],\"satisfactionReason\":[\"重办理由\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:23:38');
INSERT INTO `sys_oper_log` VALUES ('227', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待提交\"],\"dictValue\":[\"6\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"7\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:26:28');
INSERT INTO `sys_oper_log` VALUES ('228', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"39\"],\"dictLabel\":[\"待提交\"],\"dictValue\":[\"6\"],\"dictType\":[\"service_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"7\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"用户待提交的服务\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:26:46');
INSERT INTO `sys_oper_log` VALUES ('229', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"6\"],\"handleTimes\":[\"4\"],\"serviceNo\":[\"GU76YE7I\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"],\"satisfactionDegree\":[\"2\"],\"satisfactionReason\":[\"重办理由\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:32:28');
INSERT INTO `sys_oper_log` VALUES ('230', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"UAJR4GE\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"1966\"],\"belongUnitNo\":[\"111\"],\"belongUnitName\":[\"软件领域工程系\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述3\"],\"demand\":[\"服务要求3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 15:34:26');
INSERT INTO `sys_oper_log` VALUES ('231', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1966', '软件领域工程系', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"serviceStatus\":[\"4\"],\"handleTimes\":[\"\"],\"serviceNo\":[\"UAJR4GE\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述3\"],\"demand\":[\"服务要求3\"],\"satisfactionDegree\":[\"1\"],\"satisfactionReason\":[\"dsfs\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 17:37:09');
INSERT INTO `sys_oper_log` VALUES ('232', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"/module/tss/assign/\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assign:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 20:16:54');
INSERT INTO `sys_oper_log` VALUES ('233', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/assign/\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assign:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 20:20:50');
INSERT INTO `sys_oper_log` VALUES ('234', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/assignor/\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 20:53:16');
INSERT INTO `sys_oper_log` VALUES ('235', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待办服务分派\"],\"url\":[\"module/tss/assignor/assign\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 20:59:02');
INSERT INTO `sys_oper_log` VALUES ('236', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"/module/tss/assignor/export\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:export\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:02:49');
INSERT INTO `sys_oper_log` VALUES ('237', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:export\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:03:45');
INSERT INTO `sys_oper_log` VALUES ('238', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:20:30');
INSERT INTO `sys_oper_log` VALUES ('239', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:export\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:29:36');
INSERT INTO `sys_oper_log` VALUES ('240', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2010\"],\"menuType\":[\"F\"],\"menuName\":[\"服务任务分派\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:edit\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:30:58');
INSERT INTO `sys_oper_log` VALUES ('241', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待办服务管理\"],\"url\":[\"module/tss/assignor/assign\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:31:36');
INSERT INTO `sys_oper_log` VALUES ('242', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:35:21');
INSERT INTO `sys_oper_log` VALUES ('243', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"魏永锋\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"13870239322\"],\"email\":[\"12323@qq.com\"],\"loginName\":[\"1900\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:37:04');
INSERT INTO `sys_oper_log` VALUES ('244', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"111\"],\"userName\":[\"张薇\"],\"dept.deptName\":[\"软件领域工程系\"],\"phonenumber\":[\"13870949321\"],\"email\":[\"3434@qq.com\"],\"loginName\":[\"1966\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:37:32');
INSERT INTO `sys_oper_log` VALUES ('245', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '研发部门', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"4\"],\"roleIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:37:48');
INSERT INTO `sys_oper_log` VALUES ('246', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-30 21:38:17');
INSERT INTO `sys_oper_log` VALUES ('247', '人才服务需求', '5', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.export()', 'POST', '1', 'admin', '研发部门', '/module/tss/assignor/export', '127.0.0.1', '内网IP', '{\"satisfactionDegree\":[\"\"],\"serviceStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"2a3717bd-b5f9-4dce-b5e7-74535c0568b0_服务需求数据.xlsx\",\"code\":0}', '0', null, '2020-03-31 10:59:46');
INSERT INTO `sys_oper_log` VALUES ('248', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2002,2009,2020,2019,2010,2021\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 13:11:31');
INSERT INTO `sys_oper_log` VALUES ('249', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', 'admin', '研发部门', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"GU76YE7I\"],\"submitTime\":[\"2020-03-30\"],\"askEndTime\":[\"2020-03-31\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"],\"handleTimes\":[\"4\"],\"handleUnitNo\":[\"102\"],\"handleUnitName\":[\"人事处\"],\"assignRemark\":[\"sdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:44:36');
INSERT INTO `sys_oper_log` VALUES ('250', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"校领导\"],\"postCode\":[\"department_head_rank\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:49:20');
INSERT INTO `sys_oper_log` VALUES ('251', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"正处级\"],\"postCode\":[\"section_chief_rank\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:50:24');
INSERT INTO `sys_oper_log` VALUES ('252', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"处级\"],\"postCode\":[\"section_chief_rank\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:50:35');
INSERT INTO `sys_oper_log` VALUES ('253', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"厅级\"],\"postCode\":[\"department_head_rank\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:50:43');
INSERT INTO `sys_oper_log` VALUES ('254', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"3\"],\"postName\":[\"科级\"],\"postCode\":[\"chief_staff_member\"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:51:17');
INSERT INTO `sys_oper_log` VALUES ('255', '岗位管理', '2', 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"普通员工\"],\"postCode\":[\"common_user\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:52:41');
INSERT INTO `sys_oper_log` VALUES ('256', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}', '0', null, '2020-03-31 14:53:30');
INSERT INTO `sys_oper_log` VALUES ('257', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}', '0', null, '2020-03-31 14:53:34');
INSERT INTO `sys_oper_log` VALUES ('258', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:55:59');
INSERT INTO `sys_oper_log` VALUES ('259', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:56:02');
INSERT INTO `sys_oper_log` VALUES ('260', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 14:56:08');
INSERT INTO `sys_oper_log` VALUES ('261', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"102\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"人事处\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"4\"]}', 'null', '1', '不允许操作超级管理员用户', '2020-03-31 14:56:36');
INSERT INTO `sys_oper_log` VALUES ('262', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"102\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"人事处\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2020-03-31 14:56:46');
INSERT INTO `sys_oper_log` VALUES ('263', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"102\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"人事处\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2020-03-31 14:57:05');
INSERT INTO `sys_oper_log` VALUES ('264', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"102\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"人事处\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2020-03-31 14:57:15');
INSERT INTO `sys_oper_log` VALUES ('265', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"102\"],\"userName\":[\"魏永锋\"],\"dept.deptName\":[\"人事处\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2020-03-31 15:00:28');
INSERT INTO `sys_oper_log` VALUES ('266', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:01:27');
INSERT INTO `sys_oper_log` VALUES ('267', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:01:29');
INSERT INTO `sys_oper_log` VALUES ('268', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/111', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:01:33');
INSERT INTO `sys_oper_log` VALUES ('269', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"userName\":[\"魏永锋\"],\"deptName\":[\"组织部\"],\"phonenumber\":[\"13870949320\"],\"email\":[\"3434@qq.com\"],\"loginName\":[\"1900\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"1\",\"4\",\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"1,4,5\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:03:22');
INSERT INTO `sys_oper_log` VALUES ('270', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"110\"],\"userName\":[\"张薇\"],\"deptName\":[\"软件学院\"],\"phonenumber\":[\"13870949321\"],\"email\":[\"34324@qq.com\"],\"loginName\":[\"1966\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:04:09');
INSERT INTO `sys_oper_log` VALUES ('271', '个人信息', '2', 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"魏永锋\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:17:38');
INSERT INTO `sys_oper_log` VALUES ('272', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"roleIds\":[\"1,4,5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:22:50');
INSERT INTO `sys_oper_log` VALUES ('273', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"roleIds\":[\"4,5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:23:00');
INSERT INTO `sys_oper_log` VALUES ('274', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"D3Z9OGWX\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-31\"],\"askEndTime\":[\"2020-04-04\"],\"description\":[\"需求描述1\"],\"demand\":[\"服务要求1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:26:04');
INSERT INTO `sys_oper_log` VALUES ('275', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"D3Z9OGWX\"],\"submitTime\":[\"2020-03-31\"],\"askEndTime\":[\"2020-04-04\"],\"description\":[\"需求描述1\"],\"demand\":[\"服务要求1\"],\"handleTimes\":[\"\"],\"handleUnitNo\":[\"110\"],\"handleUnitName\":[\"软件学院\"],\"assignRemark\":[\"xxx软件学院处理\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 15:30:56');
INSERT INTO `sys_oper_log` VALUES ('276', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', 'admin', '组织部', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"ROWRFC6V\"],\"teacherNo\":[\"admin\"],\"teacherName\":[\"魏永锋\"],\"belongUnitNo\":[\"101\"],\"belongUnitName\":[\"组织部\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-31\"],\"askEndTime\":[\"2020-04-04\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"]}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'teacher_no\' at row 1\r\n### The error may involve com.ruoyi.project.module.tss.mapper.TServicesMapper.insertTServices-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_services          ( service_no,             teacher_no,             teacher_name,             belong_unit_no,             belong_unit_name,             phone,             submit_time,             ask_end_time,             description,             demand,                                                                                                                                                                         service_status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                                                                                                                         ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'teacher_no\' at row 1\n; Data truncation: Data too long for column \'teacher_no\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'teacher_no\' at row 1', '2020-03-31 16:37:30');
INSERT INTO `sys_oper_log` VALUES ('277', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"YSE3CRGA\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-03-31\"],\"askEndTime\":[\"2020-04-04\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 16:38:42');
INSERT INTO `sys_oper_log` VALUES ('278', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '组织部', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"110\"],\"userName\":[\"曹义亲\"],\"deptName\":[\"软件学院\"],\"phonenumber\":[\"13870949324\"],\"email\":[\"3431114@qq.com\"],\"loginName\":[\"0982\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"sdf\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 21:49:50');
INSERT INTO `sys_oper_log` VALUES ('279', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"YSE3CRGA\"],\"submitTime\":[\"2020-03-31\"],\"askEndTime\":[\"2020-04-04\"],\"description\":[\"需求描述2\"],\"demand\":[\"服务要求2\"],\"handleTimes\":[\"\"],\"handleUnitNo\":[\"110\"],\"handlerNo\":[\"7\"],\"handleUnitName\":[\"软件学院\"],\"handlerName\":[\"曹义亲\"],\"assignRemark\":[\"我会处理\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-03-31 21:50:48');
INSERT INTO `sys_oper_log` VALUES ('280', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2011\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"/module/tss/handler\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:25:46');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待办服务管理\"],\"url\":[\"/module/tss/assignor/assign\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:26:04');
INSERT INTO `sys_oper_log` VALUES ('282', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2011,2012\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:32:15');
INSERT INTO `sys_oper_log` VALUES ('283', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2011\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/handler\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:49:58');
INSERT INTO `sys_oper_log` VALUES ('284', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2011\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/handler/\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:50:38');
INSERT INTO `sys_oper_log` VALUES ('285', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/assignor\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:51:07');
INSERT INTO `sys_oper_log` VALUES ('286', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2011\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"/module/tss/handler\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:51:15');
INSERT INTO `sys_oper_log` VALUES ('287', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2011\"],\"menuType\":[\"F\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:52:46');
INSERT INTO `sys_oper_log` VALUES ('288', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2011\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:export\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:54:41');
INSERT INTO `sys_oper_log` VALUES ('289', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务办结申请\"],\"url\":[\"/module/tss/handler/handle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:55:13');
INSERT INTO `sys_oper_log` VALUES ('290', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"办结服务管理\"],\"url\":[\"/module/tss/handler/handle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:56:42');
INSERT INTO `sys_oper_log` VALUES ('291', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2012\"],\"menuType\":[\"F\"],\"menuName\":[\"办结服务申请\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:edit\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 09:57:19');
INSERT INTO `sys_oper_log` VALUES ('292', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2011,2022,2023,2012,2024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:01:43');
INSERT INTO `sys_oper_log` VALUES ('293', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', '1', 'admin', '组织部', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"信息学院\"],\"orderNum\":[\"4\"],\"leader\":[\"赵军辉\"],\"phone\":[\"13456783456\"],\"email\":[\"ss@sina.com.cn\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:04:14');
INSERT INTO `sys_oper_log` VALUES ('294', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '组织部', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"userName\":[\"王传云\"],\"deptName\":[\"信息学院\"],\"phonenumber\":[\"13800001234\"],\"email\":[\"23@qq.com\"],\"loginName\":[\"1901\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:05:20');
INSERT INTO `sys_oper_log` VALUES ('295', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '组织部', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"userName\":[\"赵军辉\"],\"deptName\":[\"信息学院\"],\"phonenumber\":[\"13800011234\"],\"email\":[\"213@qq.com\"],\"loginName\":[\"2001\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:06:09');
INSERT INTO `sys_oper_log` VALUES ('296', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"8\"],\"roleIds\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:08:25');
INSERT INTO `sys_oper_log` VALUES ('297', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '组织部', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"dataScope\":[\"5\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:10:12');
INSERT INTO `sys_oper_log` VALUES ('298', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1901', '信息学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"TS9DZRUD\"],\"teacherNo\":[\"1901\"],\"teacherName\":[\"王传云\"],\"belongUnitNo\":[\"112\"],\"belongUnitName\":[\"信息学院\"],\"phone\":[\"13800001234\"],\"submitTime\":[\"2020-04-02\"],\"askEndTime\":[\"2020-04-03\"],\"description\":[\"需求描述3\"],\"demand\":[\"服务要求4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:17:47');
INSERT INTO `sys_oper_log` VALUES ('299', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"TS9DZRUD\"],\"submitTime\":[\"2020-04-02\"],\"askEndTime\":[\"2020-04-03\"],\"description\":[\"需求描述3\"],\"demand\":[\"服务要求4\"],\"handleTimes\":[\"\"],\"handleUnitNo\":[\"112\"],\"handlerNo\":[\"9\"],\"handlerName\":[\"赵军辉\"],\"handleUnitName\":[\"信息学院\"],\"assignRemark\":[\"手动阀手动阀\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 10:18:39');
INSERT INTO `sys_oper_log` VALUES ('300', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2011,2022,2023,2012,2024,1,100,1000,1001,1002,1003,1004,1005,1006\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 19:54:13');
INSERT INTO `sys_oper_log` VALUES ('301', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '组织部', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 19:54:23');
INSERT INTO `sys_oper_log` VALUES ('302', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '2001', '信息学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-02 22:24:17');
INSERT INTO `sys_oper_log` VALUES ('303', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '2001', '信息学院', '/module/tss/handler/handle/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 10:29:55');
INSERT INTO `sys_oper_log` VALUES ('304', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1901', '信息学院', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"4\"],\"handleTimes\":[\"\"],\"serviceNo\":[\"TS9DZRUD\"],\"submitTime\":[\"2020-04-02\"],\"askEndTime\":[\"2020-04-03\"],\"description\":[\"需求描述3\"],\"demand\":[\"服务要求4\"],\"satisfactionDegree\":[\"0\"],\"satisfactionReason\":[\"sdfsdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 10:31:42');
INSERT INTO `sys_oper_log` VALUES ('305', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"状态数据统计\"],\"url\":[\"module/tss/header\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 15:13:50');
INSERT INTO `sys_oper_log` VALUES ('306', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"状态数据统计\"],\"url\":[\"module/tss/header\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 15:14:20');
INSERT INTO `sys_oper_log` VALUES ('307', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 17:08:17');
INSERT INTO `sys_oper_log` VALUES ('308', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.changeStatus()', 'POST', '1', 'admin', '组织部', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobGroup\":[\"DEFAULT\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 21:14:46');
INSERT INTO `sys_oper_log` VALUES ('309', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.editSave()', 'POST', '1', 'admin', '组织部', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0 0 22 * * ?\"],\"misfirePolicy\":[\"2\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 21:20:29');
INSERT INTO `sys_oper_log` VALUES ('310', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 21:21:05');
INSERT INTO `sys_oper_log` VALUES ('311', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.editSave()', 'POST', '1', 'admin', '组织部', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"],\"jobName\":[\"系统默认（无参）\"],\"jobGroup\":[\"DEFAULT\"],\"invokeTarget\":[\"ryTask.ryNoParams\"],\"cronExpression\":[\"0 0 22 * * ?\"],\"misfirePolicy\":[\"2\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-03 22:09:59');
INSERT INTO `sys_oper_log` VALUES ('312', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 22:06:31');
INSERT INTO `sys_oper_log` VALUES ('313', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 22:12:41');
INSERT INTO `sys_oper_log` VALUES ('314', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 22:26:36');
INSERT INTO `sys_oper_log` VALUES ('315', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:00:49');
INSERT INTO `sys_oper_log` VALUES ('316', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:04:56');
INSERT INTO `sys_oper_log` VALUES ('317', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:21:52');
INSERT INTO `sys_oper_log` VALUES ('318', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:24:11');
INSERT INTO `sys_oper_log` VALUES ('319', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:29:13');
INSERT INTO `sys_oper_log` VALUES ('320', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:29:39');
INSERT INTO `sys_oper_log` VALUES ('321', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:30:44');
INSERT INTO `sys_oper_log` VALUES ('322', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:52:56');
INSERT INTO `sys_oper_log` VALUES ('323', '定时任务', '2', 'com.ruoyi.project.monitor.job.controller.JobController.run()', 'POST', '1', 'admin', '组织部', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-04 23:56:48');
INSERT INTO `sys_oper_log` VALUES ('324', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', '1', 'admin', '组织部', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"校领导\"],\"orderNum\":[\"5\"],\"leader\":[\"万明\"],\"phone\":[\"13234343432\"],\"email\":[\"2233@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:25:10');
INSERT INTO `sys_oper_log` VALUES ('325', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '组织部', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"userName\":[\"罗玉峰\"],\"deptName\":[\"校领导\"],\"phonenumber\":[\"13800311234\"],\"email\":[\"231@qq.com\"],\"loginName\":[\"2930\"],\"password\":[\"admin123\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"ssdf\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:25:36');
INSERT INTO `sys_oper_log` VALUES ('326', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"10\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:25:54');
INSERT INTO `sys_oper_log` VALUES ('327', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"module/tss/header\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:26:47');
INSERT INTO `sys_oper_log` VALUES ('328', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求管理\"],\"url\":[\"module/tss/header\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:27:59');
INSERT INTO `sys_oper_log` VALUES ('329', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2013\"],\"menuType\":[\"F\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:28:24');
INSERT INTO `sys_oper_log` VALUES ('330', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2013\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:export\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:29:00');
INSERT INTO `sys_oper_log` VALUES ('331', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求统计\"],\"url\":[\"module/tss/header/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:view\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:31:32');
INSERT INTO `sys_oper_log` VALUES ('332', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2027\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求统计\"],\"url\":[\"module/tss/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:32:27');
INSERT INTO `sys_oper_log` VALUES ('333', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2027\"],\"parentId\":[\"2004\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求统计\"],\"url\":[\"module/tss/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:list\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:39:42');
INSERT INTO `sys_oper_log` VALUES ('334', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2027\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"服务需求统计\"],\"url\":[\"module/tss/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:39:58');
INSERT INTO `sys_oper_log` VALUES ('335', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2027\"],\"menuType\":[\"F\"],\"menuName\":[\"服务状态查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:40:23');
INSERT INTO `sys_oper_log` VALUES ('336', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"校领导\"],\"roleKey\":[\"header\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2004,2013,2025,2026,2027,2028\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:46:32');
INSERT INTO `sys_oper_log` VALUES ('337', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"10\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:46:56');
INSERT INTO `sys_oper_log` VALUES ('338', '重置密码', '2', 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', 'GET', '1', 'admin', '组织部', '/system/user/resetPwd/10', '127.0.0.1', '内网IP', '{}', '\"system/user/resetPwd\"', '0', null, '2020-04-05 21:48:02');
INSERT INTO `sys_oper_log` VALUES ('339', '重置密码', '2', 'com.ruoyi.project.system.user.controller.UserController.resetPwdSave()', 'POST', '1', 'admin', '组织部', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"10\"],\"loginName\":[\"2930\"],\"password\":[\"123456\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-05 21:48:08');
INSERT INTO `sys_oper_log` VALUES ('340', '人才服务需求', '5', 'com.ruoyi.project.module.tss.controller.TServicesHeaderController.export()', 'POST', '1', '2930', '校领导', '/module/tss/header/export', '127.0.0.1', '内网IP', '{\"satisfactionDegree\":[\"\"],\"serviceStatus\":[\"4\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"b0896ff5-9510-49f1-9e84-5f71ef740b3a_tss.xlsx\",\"code\":0}', '0', null, '2020-04-05 21:55:11');
INSERT INTO `sys_oper_log` VALUES ('341', '参数管理', '2', 'com.ruoyi.project.system.config.controller.ConfigController.editSave()', 'POST', '1', 'admin', '组织部', '/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"4\"],\"configName\":[\"账号自助-是否开启用户注册功能\"],\"configKey\":[\"sys.account.registerUser\"],\"configValue\":[\"false\"],\"configType\":[\"N\"],\"remark\":[\"是否开启注册用户功能\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-08 15:13:59');
INSERT INTO `sys_oper_log` VALUES ('342', '人才服务需求', '5', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.export()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/export', '127.0.0.1', '内网IP', '{\"satisfactionDegree\":[\"\"],\"serviceStatus\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"6e0edb6f-8ded-4c91-94bc-49f4a61517eb_服务需求数据.xlsx\",\"code\":0}', '0', null, '2020-04-08 17:27:58');
INSERT INTO `sys_oper_log` VALUES ('343', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '组织部', '/tool/gen/genCode/t_services', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2020-04-10 18:40:14');
INSERT INTO `sys_oper_log` VALUES ('344', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"AUBC3D4X\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-16\"],\"description\":[\"sdfsdfsdfsdf\"],\"demand\":[\"sdfdsfsdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 10:03:30');
INSERT INTO `sys_oper_log` VALUES ('345', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"AUBC3D4X\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-16\"],\"description\":[\"sdfsdfsdfsdf\"],\"demand\":[\"sdfdsfsdf\"],\"handleTimes\":[\"\"],\"handleUnitNo\":[\"110\"],\"handlerNo\":[\"7\"],\"handlerName\":[\"曹义亲\"],\"handleUnitName\":[\"软件学院\"],\"assignRemark\":[\"ssdfsdfsdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 10:05:31');
INSERT INTO `sys_oper_log` VALUES ('346', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"serviceStatus\":[\"2\"]}', 'null', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'handle_time\' in \'class com.ruoyi.project.module.tss.domain.TServices\'', '2020-04-14 10:07:18');
INSERT INTO `sys_oper_log` VALUES ('347', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"serviceStatus\":[\"2\"]}', 'null', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'handle_time\' in \'class com.ruoyi.project.module.tss.domain.TServices\'', '2020-04-14 10:09:59');
INSERT INTO `sys_oper_log` VALUES ('348', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"serviceStatus\":[\"2\"]}', 'null', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'handle_time\' in \'class com.ruoyi.project.module.tss.domain.TServices\'', '2020-04-14 10:10:06');
INSERT INTO `sys_oper_log` VALUES ('349', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/handle/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 10:12:46');
INSERT INTO `sys_oper_log` VALUES ('350', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"PUOTFF9W\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-17\"],\"description\":[\"3rfrfr\"],\"demand\":[\"erferf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 11:14:04');
INSERT INTO `sys_oper_log` VALUES ('351', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"PUOTFF9W\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-17\"],\"description\":[\"3rfrfr\"],\"demand\":[\"erferf\"],\"handleTimes\":[\"\"],\"handleUnitNo\":[\"110\"],\"handlerNo\":[\"7\"],\"handlerName\":[\"曹义亲\"],\"handleUnitName\":[\"软件学院\"],\"assignRemark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 11:15:52');
INSERT INTO `sys_oper_log` VALUES ('352', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"serviceStatus\":[\"2\"]}', 'null', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'handle_time\' in \'class com.ruoyi.project.module.tss.domain.TServices\'', '2020-04-14 11:16:24');
INSERT INTO `sys_oper_log` VALUES ('353', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"O5AFK2Q\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-17\"],\"description\":[\"dfgdf\"],\"demand\":[\"dfgdfg\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:05:17');
INSERT INTO `sys_oper_log` VALUES ('354', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"72RT5934\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-16\"],\"description\":[\"dfg\"],\"demand\":[\"dfg\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:06:28');
INSERT INTO `sys_oper_log` VALUES ('355', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"Q1M6SPC4\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-17\"],\"description\":[\"gh\"],\"demand\":[\"ghj\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:15:06');
INSERT INTO `sys_oper_log` VALUES ('356', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', '组织部', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:20:57');
INSERT INTO `sys_oper_log` VALUES ('357', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', '1', 'admin', '组织部', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_test\"],\"tableComment\":[\"测试\"],\"className\":[\"TTest\"],\"functionAuthor\":[\"warren\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"28\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"29\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"null\"],\"columns[1].javaType\":[\"Integer\"],\"columns[1].javaField\":[\"times\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.module\"],\"moduleName\":[\"module\"],\"businessName\":[\"test\"],\"functionName\":[\"测试\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:21:59');
INSERT INTO `sys_oper_log` VALUES ('358', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '组织部', '/tool/gen/genCode/t_test', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2020-04-14 22:22:03');
INSERT INTO `sys_oper_log` VALUES ('359', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"MRICTJKJ\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-25\"],\"description\":[\"ghfgh的风格风格\"],\"demand\":[\"fghfgh士大夫\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:32:55');
INSERT INTO `sys_oper_log` VALUES ('360', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"9TVJ3E6J\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-30\"],\"description\":[\"士大夫\"],\"demand\":[\"是的地方\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:37:53');
INSERT INTO `sys_oper_log` VALUES ('361', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"9TVJ3E6J\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-30\"],\"description\":[\"士大夫\"],\"demand\":[\"是的地方\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"110\"],\"handlerNo\":[\"7\"],\"handlerName\":[\"曹义亲\"],\"handleUnitName\":[\"软件学院\"],\"assignRemark\":[\"方法\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:46:35');
INSERT INTO `sys_oper_log` VALUES ('362', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"serviceStatus\":[\"2\"]}', 'null', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'handle_time\' in \'class com.ruoyi.project.module.tss.domain.TServices\'', '2020-04-14 22:47:24');
INSERT INTO `sys_oper_log` VALUES ('363', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:55:54');
INSERT INTO `sys_oper_log` VALUES ('364', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:57:39');
INSERT INTO `sys_oper_log` VALUES ('365', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:57:49');
INSERT INTO `sys_oper_log` VALUES ('366', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:57:51');
INSERT INTO `sys_oper_log` VALUES ('367', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '0982', '软件学院', '/module/tss/handler/handle/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-14 22:58:44');
INSERT INTO `sys_oper_log` VALUES ('368', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待处理服务查看\"],\"url\":[\"/module/tss/assignor/unhandle\"],\"target\":[\"menuItem\"],\"perms\":[\"modules:tss:assignor:view\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:17:37');
INSERT INTO `sys_oper_log` VALUES ('369', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2029\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待处理服务查看\"],\"url\":[\"/module/tss/assignor/unhandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:17:56');
INSERT INTO `sys_oper_log` VALUES ('370', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2029\"],\"menuType\":[\"F\"],\"menuName\":[\"待处理服务查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:20:51');
INSERT INTO `sys_oper_log` VALUES ('371', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2029\"],\"menuType\":[\"F\"],\"menuName\":[\"待处理服务导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:export\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:22:51');
INSERT INTO `sys_oper_log` VALUES ('372', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2029\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待处理服务查看\"],\"url\":[\"/module/tss/unhandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:31:56');
INSERT INTO `sys_oper_log` VALUES ('373', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2030\"],\"parentId\":[\"2029\"],\"menuType\":[\"F\"],\"menuName\":[\"待处理服务查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:32:16');
INSERT INTO `sys_oper_log` VALUES ('374', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2029\"],\"menuType\":[\"F\"],\"menuName\":[\"待处理服务导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:export\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 11:32:45');
INSERT INTO `sys_oper_log` VALUES ('375', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:21:01');
INSERT INTO `sys_oper_log` VALUES ('376', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"待评价项目\"],\"url\":[\"/module/tss/talent/evaluate\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:21:29');
INSERT INTO `sys_oper_log` VALUES ('377', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:21:40');
INSERT INTO `sys_oper_log` VALUES ('378', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"在办服务项目\"],\"url\":[\"/module/tss/talent/normalHandleList\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:24:37');
INSERT INTO `sys_oper_log` VALUES ('379', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2044\"],\"menuType\":[\"F\"],\"menuName\":[\"在办服务查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:25:29');
INSERT INTO `sys_oper_log` VALUES ('380', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2044\"],\"menuType\":[\"F\"],\"menuName\":[\"在办服务导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:export\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:26:16');
INSERT INTO `sys_oper_log` VALUES ('381', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2044\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"在办服务项目\"],\"url\":[\"/module/tss/talent/handlingList\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:33:03');
INSERT INTO `sys_oper_log` VALUES ('382', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2044\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"在办服务项目\"],\"url\":[\"/module/tss/talent/handling\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:33:25');
INSERT INTO `sys_oper_log` VALUES ('383', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人才服务管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:34:14');
INSERT INTO `sys_oper_log` VALUES ('384', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2044,2045,2046,2017,2005,2006,2014,2015,2018,2008,2007\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 17:59:18');
INSERT INTO `sys_oper_log` VALUES ('385', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 18:04:51');
INSERT INTO `sys_oper_log` VALUES ('386', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"待评价项目\"],\"url\":[\"/module/tss/talent/evaluate\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 18:05:00');
INSERT INTO `sys_oper_log` VALUES ('387', '人才服务需求', '5', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.export()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/export', '127.0.0.1', '内网IP', '{\"serviceStatus\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"afb6c05e-e463-4122-9c99-e865a8e61ac8_服务需求数据.xlsx\",\"code\":0}', '0', null, '2020-04-16 18:23:34');
INSERT INTO `sys_oper_log` VALUES ('388', '人才服务需求', '5', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.export()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/export', '127.0.0.1', '内网IP', '{\"serviceStatus\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"fdc4bc89-a9c4-4799-8b56-b76b4e63478d_服务需求数据.xlsx\",\"code\":0}', '0', null, '2020-04-16 18:24:31');
INSERT INTO `sys_oper_log` VALUES ('389', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"serviceStatus\":[\"4\"],\"handleTimes\":[\"\"],\"serviceNo\":[\"AUBC3D4X\"],\"submitTime\":[\"2020-04-14\"],\"askEndTime\":[\"2020-04-16\"],\"description\":[\"sdfsdfsdfsdf\"],\"demand\":[\"sdfdsfsdf\"],\"satisfactionDegree\":[\"0\"],\"satisfactionReason\":[\"dfgdfgdfg\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 20:57:28');
INSERT INTO `sys_oper_log` VALUES ('390', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2035\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"超时在办服务查看\"],\"url\":[\"/module/tss/timeoutHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:03:30');
INSERT INTO `sys_oper_log` VALUES ('391', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待分派项目\"],\"url\":[\"/module/tss/assignor/assign\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:06:01');
INSERT INTO `sys_oper_log` VALUES ('392', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2038\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"已办结项目\"],\"url\":[\"/module/tss/overHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:06:34');
INSERT INTO `sys_oper_log` VALUES ('393', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2020-04-16 21:07:12');
INSERT INTO `sys_oper_log` VALUES ('394', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:07:27');
INSERT INTO `sys_oper_log` VALUES ('395', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:07:34');
INSERT INTO `sys_oper_log` VALUES ('396', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:07:39');
INSERT INTO `sys_oper_log` VALUES ('397', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/assignor\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:assignor:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:08:07');
INSERT INTO `sys_oper_log` VALUES ('398', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2020-04-16 21:08:29');
INSERT INTO `sys_oper_log` VALUES ('399', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2030', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:08:35');
INSERT INTO `sys_oper_log` VALUES ('400', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:08:43');
INSERT INTO `sys_oper_log` VALUES ('401', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:08:49');
INSERT INTO `sys_oper_log` VALUES ('402', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:08:58');
INSERT INTO `sys_oper_log` VALUES ('403', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2034', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:09:04');
INSERT INTO `sys_oper_log` VALUES ('404', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', '1', 'admin', '组织部', '/system/menu/remove/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:09:12');
INSERT INTO `sys_oper_log` VALUES ('405', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2002,2010,2021,2035,2036,2037,2038,2039,2040,2009,2020,2019\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:10:03');
INSERT INTO `sys_oper_log` VALUES ('406', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2035\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"超时在办项目\"],\"url\":[\"/module/tss/timeoutHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:10:22');
INSERT INTO `sys_oper_log` VALUES ('407', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', '1', 'admin', '组织部', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"101\"],\"userName\":[\"魏永锋\"],\"dept.deptName\":[\"组织部\"],\"phonenumber\":[\"13870949320\"],\"email\":[\"3434@qq.com\"],\"loginName\":[\"1900\"],\"sex\":[\"0\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:11:51');
INSERT INTO `sys_oper_log` VALUES ('408', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2002,2010,2021,2035,2036,2037,2038,2039,2040,2009,2020,2019,2004,2027,2028\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:12:56');
INSERT INTO `sys_oper_log` VALUES ('409', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '1966', '软件学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"WIGO8RGA\"],\"teacherNo\":[\"1966\"],\"teacherName\":[\"张薇\"],\"belongUnitNo\":[\"110\"],\"belongUnitName\":[\"软件学院\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-04-16\"],\"askEndTime\":[\"2020-04-18\"],\"description\":[\"v暴女暴女吧\"],\"demand\":[\"风格化风格化\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:18:06');
INSERT INTO `sys_oper_log` VALUES ('410', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '1900', '组织部', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"WIGO8RGA\"],\"submitTime\":[\"2020-04-16\"],\"askEndTime\":[\"2020-04-18\"],\"description\":[\"v暴女暴女吧\"],\"demand\":[\"风格化风格化\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"112\"],\"handlerNo\":[\"9\"],\"handlerName\":[\"赵军辉\"],\"handleUnitName\":[\"信息学院\"],\"assignRemark\":[\"风格和\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 21:24:26');
INSERT INTO `sys_oper_log` VALUES ('411', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2011,2022,2023,2012,2024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:13:33');
INSERT INTO `sys_oper_log` VALUES ('412', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待办理项目\"],\"url\":[\"/module/tss/handler/handle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:29:45');
INSERT INTO `sys_oper_log` VALUES ('413', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2011\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/handler\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:30:07');
INSERT INTO `sys_oper_log` VALUES ('414', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '2001', '信息学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:32:02');
INSERT INTO `sys_oper_log` VALUES ('415', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"已办结项目\"],\"url\":[\"/module/tss/handler/timeoutHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:42:18');
INSERT INTO `sys_oper_log` VALUES ('416', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待申请办结项目\"],\"url\":[\"/module/tss/handler/handle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:44:12');
INSERT INTO `sys_oper_log` VALUES ('417', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待办理项目\"],\"url\":[\"/module/tss/handler/handler\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:46:36');
INSERT INTO `sys_oper_log` VALUES ('418', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待申请办结项目\"],\"url\":[\"/module/tss/handler/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:47:08');
INSERT INTO `sys_oper_log` VALUES ('419', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"超时在办项目\"],\"url\":[\"/module/tss/handler/timeoutHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:47:54');
INSERT INTO `sys_oper_log` VALUES ('420', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2047\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"已办结项目\"],\"url\":[\"/module/tss/handler/overHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-16 22:49:39');
INSERT INTO `sys_oper_log` VALUES ('421', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2011\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/handler/handler\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:17:14');
INSERT INTO `sys_oper_log` VALUES ('422', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2049\"],\"menuType\":[\"F\"],\"menuName\":[\"超时在办查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:18:22');
INSERT INTO `sys_oper_log` VALUES ('423', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2047\"],\"menuType\":[\"F\"],\"menuName\":[\"已办结查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:19:11');
INSERT INTO `sys_oper_log` VALUES ('424', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2050\"],\"parentId\":[\"2049\"],\"menuType\":[\"F\"],\"menuName\":[\"超时在办查看\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:19:45');
INSERT INTO `sys_oper_log` VALUES ('425', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2012\"],\"menuType\":[\"F\"],\"menuName\":[\"待申请办结查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:20:37');
INSERT INTO `sys_oper_log` VALUES ('426', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2048\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待办理项目\"],\"url\":[\"/module/tss/handler/handle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:21:28');
INSERT INTO `sys_oper_log` VALUES ('427', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2048\"],\"menuType\":[\"F\"],\"menuName\":[\"待办理查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:22:04');
INSERT INTO `sys_oper_log` VALUES ('428', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2048\"],\"menuType\":[\"F\"],\"menuName\":[\"待办理处理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-17 10:24:02');
INSERT INTO `sys_oper_log` VALUES ('429', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2048,2053,2054,2012,2052,2024,2049,2050,2047,2051,2011,2022,2023\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 10:45:52');
INSERT INTO `sys_oper_log` VALUES ('430', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2048,2053,2054,2012,2052,2024,2049,2050,2047,2051,2011,2022,2023,2004,2027,2028\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 10:46:19');
INSERT INTO `sys_oper_log` VALUES ('431', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '2001', '信息学院', '/module/tss/handler/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 11:33:47');
INSERT INTO `sys_oper_log` VALUES ('432', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2049\"],\"menuType\":[\"F\"],\"menuName\":[\"超时在办申请\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 11:45:58');
INSERT INTO `sys_oper_log` VALUES ('433', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2048,2053,2054,2012,2052,2024,2049,2050,2055,2047,2051,2011,2022,2023,2004,2027,2028\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 11:48:05');
INSERT INTO `sys_oper_log` VALUES ('434', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '2001', '信息学院', '/module/tss/handler/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 11:53:06');
INSERT INTO `sys_oper_log` VALUES ('435', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待申请超时项目\"],\"url\":[\"/module/tss/handler/timeoutHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 11:57:31');
INSERT INTO `sys_oper_log` VALUES ('436', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"待申请在办项目\"],\"url\":[\"/module/tss/handler/apply\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 11:57:57');
INSERT INTO `sys_oper_log` VALUES ('437', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '2001', '信息学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-18 12:41:19');
INSERT INTO `sys_oper_log` VALUES ('438', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"module/tss/header\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:header:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:41:42');
INSERT INTO `sys_oper_log` VALUES ('439', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2027\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"服务项目统计\"],\"url\":[\"module/tss/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:42:18');
INSERT INTO `sys_oper_log` VALUES ('440', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"超时在办项目\"],\"url\":[\"/module/tss/timeoutHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:42:53');
INSERT INTO `sys_oper_log` VALUES ('441', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2056\"],\"menuType\":[\"F\"],\"menuName\":[\"超时在办查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:43:33');
INSERT INTO `sys_oper_log` VALUES ('442', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2057\"],\"parentId\":[\"2056\"],\"menuType\":[\"F\"],\"menuName\":[\"超时在办服务查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:44:23');
INSERT INTO `sys_oper_log` VALUES ('443', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2056\"],\"menuType\":[\"F\"],\"menuName\":[\"超时在办项目导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:export\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:44:54');
INSERT INTO `sys_oper_log` VALUES ('444', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"已办结项目\"],\"url\":[\"/module/tss/overHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:46:00');
INSERT INTO `sys_oper_log` VALUES ('445', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2059\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"已办结项目\"],\"url\":[\"/module/tss/overHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:46:31');
INSERT INTO `sys_oper_log` VALUES ('446', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2059\"],\"menuType\":[\"F\"],\"menuName\":[\"已办结项目查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:46:56');
INSERT INTO `sys_oper_log` VALUES ('447', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2059\"],\"menuType\":[\"F\"],\"menuName\":[\"已办结项目导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:export\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:47:21');
INSERT INTO `sys_oper_log` VALUES ('448', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"校领导\"],\"roleKey\":[\"header\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2004,2056,2057,2058,2059,2060,2061,2013,2025,2026,2027,2028\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 19:47:52');
INSERT INTO `sys_oper_log` VALUES ('449', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务数据统计\"],\"url\":[\"/module/tss/handler/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 21:57:36');
INSERT INTO `sys_oper_log` VALUES ('450', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2047\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"已办结项目\"],\"url\":[\"/module/tss/handler/overHandle\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 21:57:50');
INSERT INTO `sys_oper_log` VALUES ('451', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2062\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"服务项目统计\"],\"url\":[\"/module/tss/handler/statics\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 21:58:22');
INSERT INTO `sys_oper_log` VALUES ('452', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2062\"],\"menuType\":[\"F\"],\"menuName\":[\"服务项目查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:handler:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 21:58:56');
INSERT INTO `sys_oper_log` VALUES ('453', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2048,2053,2054,2012,2052,2024,2049,2050,2055,2047,2051,2011,2022,2023,2062,2063\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-04-19 21:59:25');
INSERT INTO `sys_oper_log` VALUES ('454', '用户管理', '5', 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', '1', 'admin', '组织部', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"createTime\"],\"isAsc\":[\"desc\"]}', '{\"msg\":\"3d00d11d-83f7-43c0-a082-af0fb206f598_用户数据.xlsx\",\"code\":0}', '0', null, '2020-05-08 10:58:59');
INSERT INTO `sys_oper_log` VALUES ('455', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '组织部', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"userName\":[\"张三\"],\"deptName\":[\"组织部\"],\"phonenumber\":[\"13800000001\"],\"email\":[\"123@qq.com\"],\"loginName\":[\"1111\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-08 11:51:17');
INSERT INTO `sys_oper_log` VALUES ('456', '用户管理', '6', 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/importData', '127.0.0.1', '内网IP', '{}', 'null', '1', '很抱歉，导入失败！共 8 条数据格式不正确，错误如下：<br/>1、账号 0112 导入失败：\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'PRIMARY\'\r\n### The error may involve com.ruoyi.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(      user_id,       dept_id,       login_name,       user_name,                         phonenumber,             password,       salt,       status,       create_by,            create_time    )values(      ?,       ?,       ?,       ?,                         ?,             ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'PRIMARY\'\n; Duplicate entry \'1\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'PRIMARY\'<br/>2、账号 0136 已存在<br/>3、账号 1981 已存在<br/>4、账号 0648 已存在<br/>5、账号 1564 已存在<br/>6、账号 2530 已存在<br/>7、账号 2473 已存在<br/>8、账号 1330 已存在', '2020-05-15 13:44:36');
INSERT INTO `sys_oper_log` VALUES ('457', '用户管理', '6', 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/importData', '127.0.0.1', '内网IP', '{}', 'null', '1', '很抱歉，导入失败！共 7 条数据格式不正确，错误如下：<br/>1、账号 0136 已存在<br/>2、账号 1981 已存在<br/>3、账号 0648 已存在<br/>4、账号 1564 已存在<br/>5、账号 2530 已存在<br/>6、账号 2473 已存在<br/>7、账号 1330 已存在', '2020-05-15 13:47:22');
INSERT INTO `sys_oper_log` VALUES ('458', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', 'admin', '组织部（党校）', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"FATD9KO\"],\"teacherNo\":[\"admin\"],\"teacherName\":[\"魏永锋\"],\"belongUnitNo\":[\"1100\"],\"belongUnitName\":[\"组织部（党校）\"],\"phone\":[\"13870949321\"],\"submitTime\":[\"2020-05-15\"],\"askEndTime\":[\"2020-05-16\"],\"description\":[\"sdf\"],\"demand\":[\"sdf\"]}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'teacher_no\' at row 1\r\n### The error may involve com.ruoyi.project.module.tss.mapper.TServicesMapper.insertTServices-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_services          ( service_no,             teacher_no,             teacher_name,             belong_unit_no,             belong_unit_name,             phone,             submit_time,             ask_end_time,             description,             demand,                                                                                                                                                                                      service_status,                          handle_times )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                                                                                                                                      ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'teacher_no\' at row 1\n; Data truncation: Data too long for column \'teacher_no\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'teacher_no\' at row 1', '2020-05-15 14:27:27');
INSERT INTO `sys_oper_log` VALUES ('459', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/cancelAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"userIds\":[\"11,8,6,3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:30:24');
INSERT INTO `sys_oper_log` VALUES ('460', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"527\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:34:22');
INSERT INTO `sys_oper_log` VALUES ('461', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"userIds\":[\"418,422,426,430,434,438,354,358,362,366,370,374,378,382,386,390,394,398,402,406,410,414,510,515,521,525,442,446,450,454,458,462,466,470,474,478,482,486,490,494,498,502,506,325,329,333,337,341,345,349,293,297,301,305,309,313,317,321,417,421,425,429,433,437,353,357,361,365,369,373,377,381,385,389,393,397,401,405,409,413,509,513,520,524,441,445,449,453,457,461,465,469,473,477,481,485,489,493,497,501,505,324,328,332,336,340,344,348,352,292,296,300,304,308,312,316,320,416,420,424,428,432,436,440,356,360,364,368,372,376,380,384,388,392,396,400,404,408,412,508,512,519,523,444,448,452,456,460,464,468,472,476,480,484,488,492,496,500,504,327,331,335,339,343,347,351,295,299,303,307,311,315,319,323,419,423,427,431,435,439,355,359,363,367,371,375,379,383,387,391,395,399,403,407,411,415,511,517,522,443,447,451,455,459,463,467,471,475,479,483,487,491,495,499,503,507,326,330,334,338,342,346,350,294,298,302,306,310,314,318,322,108,112,77,116,81,120,85,124,128,132,136,140,144,148,152,156,160,164,168,172,176,92,96,100,104,233,237,241,245,249,253,257,261,177,181,185,189,193,197,201,205,209,213,217,221,225,229,265,269,273,277,281,285,289,107,111,76,115,80,119,84,123,88,127,131,135,139,143,147,151,155,159,163,167,171,175,91,95,99,103,236,240,244,248,252,256,260,264,180,184,188,192,196,200,204,208,212,216,220,224,228,232,268,272,276,280,284,288,106,110,75,114,79,118,83,122,87,126,130,134,138,142,146,150,154,158,162,166,170,174,90,94,98,102,235,239,243,247,251,255,259,263,179,183,187,191,195,199,203,207,211,215,219,223,227,231,267,271,275,279,283,287,291,109,74,113,78,117,82,121,86,125,129,133,137,141,145,149,153,157,161,165,169,173,89,93,97,101,105,234,238,242,246,250,254,258,262,178,182,186,190,194,198,202,206,210,214,218,222,226,230,266,270,274,278,282,286,290,69,73,5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,68,72,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,71,3,7,11,15,19,23,27,31,35,39,43,47,51,55,59,63,67,70,2,6,10,14,18,22,26,30,34,38,42,46,50,54,58,', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:36:57');
INSERT INTO `sys_oper_log` VALUES ('462', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUser()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userId\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:37:18');
INSERT INTO `sys_oper_log` VALUES ('463', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userIds\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:38:25');
INSERT INTO `sys_oper_log` VALUES ('464', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:38:38');
INSERT INTO `sys_oper_log` VALUES ('465', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:38:51');
INSERT INTO `sys_oper_log` VALUES ('466', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:39:07');
INSERT INTO `sys_oper_log` VALUES ('467', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:39:27');
INSERT INTO `sys_oper_log` VALUES ('468', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"userIds\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:39:43');
INSERT INTO `sys_oper_log` VALUES ('469', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/cancelAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"527,7,9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:40:21');
INSERT INTO `sys_oper_log` VALUES ('470', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"529,533,537,542,546,551,555,561,528,532,536,541,545,550,554,560,527,531,535,540,544,549,553,558,526,530,534,538,543,548,552,557,515,521,525,520,524,519,523,517,522\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:41:18');
INSERT INTO `sys_oper_log` VALUES ('471', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:42:31');
INSERT INTO `sys_oper_log` VALUES ('472', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"184\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:42:53');
INSERT INTO `sys_oper_log` VALUES ('473', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"273\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:43:33');
INSERT INTO `sys_oper_log` VALUES ('474', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"494\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:49:06');
INSERT INTO `sys_oper_log` VALUES ('475', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"492\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:49:58');
INSERT INTO `sys_oper_log` VALUES ('476', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"490\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:53:28');
INSERT INTO `sys_oper_log` VALUES ('477', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"484\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:54:38');
INSERT INTO `sys_oper_log` VALUES ('478', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"521\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:55:48');
INSERT INTO `sys_oper_log` VALUES ('479', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"273\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:56:53');
INSERT INTO `sys_oper_log` VALUES ('480', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"494\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:57:12');
INSERT INTO `sys_oper_log` VALUES ('481', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"484\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:57:28');
INSERT INTO `sys_oper_log` VALUES ('482', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"184\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:58:05');
INSERT INTO `sys_oper_log` VALUES ('483', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"492\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:58:22');
INSERT INTO `sys_oper_log` VALUES ('484', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"490\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 14:58:36');
INSERT INTO `sys_oper_log` VALUES ('485', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '2833', '电气学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"43T1H37C\"],\"teacherNo\":[\"2833\"],\"teacherName\":[\"赖强\"],\"belongUnitNo\":[\"1002\"],\"belongUnitName\":[\"电气学院\"],\"phone\":[\"18870067306\"],\"submitTime\":[\"2020-05-15\"],\"askEndTime\":[\"2020-05-18\"],\"description\":[\"sdfsdf\"],\"demand\":[\"sdfsdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 15:02:13');
INSERT INTO `sys_oper_log` VALUES ('486', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/cancelAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"userIds\":[\"5,4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 15:03:21');
INSERT INTO `sys_oper_log` VALUES ('487', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"userIds\":[\"531\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 15:03:39');
INSERT INTO `sys_oper_log` VALUES ('488', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"校人才工作领导小组办公室负责人\"],\"roleKey\":[\"assignor\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2002,2010,2021,2035,2036,2037,2038,2039,2040,2009,2020,2019,2004,2027,2028\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 15:06:27');
INSERT INTO `sys_oper_log` VALUES ('489', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2048,2053,2054,2012,2052,2024,2049,2050,2055,2047,2051,2011,2022,2023,2062,2063\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 15:06:37');
INSERT INTO `sys_oper_log` VALUES ('490', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"各职能处室及学院负责人\"],\"roleKey\":[\"handler\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2003,2048,2053,2054,2012,2052,2024,2049,2050,2055,2047,2051,2011,2022,2023,2062,2063\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 15:06:52');
INSERT INTO `sys_oper_log` VALUES ('491', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:51:34');
INSERT INTO `sys_oper_log` VALUES ('492', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"4\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:52:27');
INSERT INTO `sys_oper_log` VALUES ('493', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:52:55');
INSERT INTO `sys_oper_log` VALUES ('494', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:53:23');
INSERT INTO `sys_oper_log` VALUES ('495', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"7\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:53:50');
INSERT INTO `sys_oper_log` VALUES ('496', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"roleIds\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:54:22');
INSERT INTO `sys_oper_log` VALUES ('497', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"16\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:54:54');
INSERT INTO `sys_oper_log` VALUES ('498', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"515\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:56:48');
INSERT INTO `sys_oper_log` VALUES ('499', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"515\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:57:16');
INSERT INTO `sys_oper_log` VALUES ('500', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"517\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:57:57');
INSERT INTO `sys_oper_log` VALUES ('501', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"526\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:59:53');
INSERT INTO `sys_oper_log` VALUES ('502', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"527\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 21:59:58');
INSERT INTO `sys_oper_log` VALUES ('503', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"528\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:03');
INSERT INTO `sys_oper_log` VALUES ('504', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"530\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:07');
INSERT INTO `sys_oper_log` VALUES ('505', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"531\"],\"roleIds\":[\"4,5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:18');
INSERT INTO `sys_oper_log` VALUES ('506', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"534\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:30');
INSERT INTO `sys_oper_log` VALUES ('507', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"535\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:34');
INSERT INTO `sys_oper_log` VALUES ('508', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"528\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:39');
INSERT INTO `sys_oper_log` VALUES ('509', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"536\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:00:50');
INSERT INTO `sys_oper_log` VALUES ('510', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"554\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:01:06');
INSERT INTO `sys_oper_log` VALUES ('511', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"519\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:01:42');
INSERT INTO `sys_oper_log` VALUES ('512', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"520\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:01:50');
INSERT INTO `sys_oper_log` VALUES ('513', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"521\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:01:55');
INSERT INTO `sys_oper_log` VALUES ('514', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"522\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:02:01');
INSERT INTO `sys_oper_log` VALUES ('515', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"523\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:02:06');
INSERT INTO `sys_oper_log` VALUES ('516', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"524\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:02:11');
INSERT INTO `sys_oper_log` VALUES ('517', '用户管理', '4', 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', '1', 'admin', '组织部（党校）', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"525\"],\"roleIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-15 22:02:16');
INSERT INTO `sys_oper_log` VALUES ('518', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"43T1H37C\"],\"submitTime\":[\"2020-05-15\"],\"askEndTime\":[\"2020-05-18\"],\"description\":[\"sdfsdf\"],\"demand\":[\"sdfsdf\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"1011\"],\"handlerNo\":[\"2564\"],\"handlerName\":[\"田玉兰\"],\"handleUnitName\":[\"艺术学院\"],\"assignRemark\":[\"ddd\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 17:12:27');
INSERT INTO `sys_oper_log` VALUES ('519', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '0134', '土建学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"ZA5F51RP\"],\"teacherNo\":[\"0134\"],\"teacherName\":[\"彭小云\"],\"belongUnitNo\":[\"1001\"],\"belongUnitName\":[\"土建学院\"],\"phone\":[\"13707099065\"],\"submitTime\":[\"2020-05-16\"],\"askEndTime\":[\"2020-05-21\"],\"description\":[\"sdfsdf\"],\"demand\":[\"sdfsdfsdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 17:53:20');
INSERT INTO `sys_oper_log` VALUES ('520', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"ZA5F51RP\"],\"submitTime\":[\"2020-05-16\"],\"askEndTime\":[\"2020-05-21\"],\"description\":[\"sdfsdf\"],\"demand\":[\"sdfsdfsdf\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"1102\"],\"handlerNo\":[\"2693\"],\"handlerName\":[\"陈磊\"],\"handleUnitName\":[\"人事处（教工部、教师发展中心）\"],\"assignRemark\":[\"erdg\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 17:54:18');
INSERT INTO `sys_oper_log` VALUES ('521', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '0134', '土建学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"VV4BVNPI\"],\"teacherNo\":[\"0134\"],\"teacherName\":[\"彭小云\"],\"belongUnitNo\":[\"1001\"],\"belongUnitName\":[\"土建学院\"],\"phone\":[\"13707099065\"],\"submitTime\":[\"2020-05-16\"],\"askEndTime\":[\"2020-05-20\"],\"description\":[\"ghfgh\"],\"demand\":[\"fghfgh\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 21:27:58');
INSERT INTO `sys_oper_log` VALUES ('522', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"14\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"VV4BVNPI\"],\"submitTime\":[\"2020-05-16\"],\"askEndTime\":[\"2020-05-20\"],\"description\":[\"ghfgh\"],\"demand\":[\"fghfgh\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"1013\"],\"handlerNo\":[\"0716\"],\"handlerName\":[\"丁锋贵\"],\"handleUnitName\":[\"运输学院\"],\"assignRemark\":[\"\"],\"viceHandleUnitNo\":[\"viceHandleUnitNo\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 21:30:35');
INSERT INTO `sys_oper_log` VALUES ('523', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '0134', '土建学院', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"KMF1TKON\"],\"teacherNo\":[\"0134\"],\"teacherName\":[\"彭小云\"],\"belongUnitNo\":[\"1001\"],\"belongUnitName\":[\"土建学院\"],\"phone\":[\"13707099065\"],\"submitTime\":[\"2020-05-16\"],\"askEndTime\":[\"2020-05-20\"],\"description\":[\"dfgdfgd\"],\"demand\":[\"fgdfgdfg\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 21:31:44');
INSERT INTO `sys_oper_log` VALUES ('524', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"KMF1TKON\"],\"submitTime\":[\"2020-05-16\"],\"askEndTime\":[\"2020-05-20\"],\"description\":[\"dfgdfgd\"],\"demand\":[\"fgdfgdfg\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"1012\"],\"handlerNo\":[\"1570\"],\"handlerName\":[\"郑轶\"],\"handleUnitName\":[\"国际学院(国交处)\"],\"assignRemark\":[\"\"],\"viceHandleUnitNo\":[\"1005,1006\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-05-16 21:32:11');
INSERT INTO `sys_oper_log` VALUES ('525', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '3010', '学团（创新创业教育中心）', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"C5TATJ91\"],\"teacherNo\":[\"3010\"],\"teacherName\":[\"孙长玉\"],\"belongUnitNo\":[\"1107\"],\"belongUnitName\":[\"学团（创新创业教育中心）\"],\"phone\":[\"15180430506\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"sgsdfsdfs\"],\"demand\":[\"sdfsdfsdf\"]}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'belong_unit_name\' at row 1\r\n### The error may involve com.ruoyi.project.module.tss.mapper.TServicesMapper.insertTServices-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_services          ( service_no,             teacher_no,             teacher_name,             belong_unit_no,             belong_unit_name,             phone,             submit_time,             ask_end_time,             description,             demand,                                                                                                                                                                                                   service_status,                          handle_times )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                                                                                                                                                                   ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'belong_unit_name\' at row 1\n; Data truncation: Data too long for column \'belong_unit_name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'belong_unit_name\' at row 1', '2020-06-02 10:06:17');
INSERT INTO `sys_oper_log` VALUES ('526', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '3010', '学团（创新创业教育中心）', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"C5TATJ91\"],\"teacherNo\":[\"3010\"],\"teacherName\":[\"孙长玉\"],\"belongUnitNo\":[\"1107\"],\"belongUnitName\":[\"学团（创新创业教育中心）\"],\"phone\":[\"15180430506\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"sgsdfsdfs\"],\"demand\":[\"sdfsdfsdf\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-02 10:07:31');
INSERT INTO `sys_oper_log` VALUES ('527', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"C5TATJ91\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"sgsdfsdfs\"],\"demand\":[\"sdfsdfsdf\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"1021\"],\"handlerNo\":[\"0408\"],\"handlerName\":[\"曹义亲\"],\"handleUnitName\":[\"软件学院\"],\"assignRemark\":[\"sdfsdf\"],\"viceHandleUnitNo\":[\"1014,1109\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-02 10:18:50');
INSERT INTO `sys_oper_log` VALUES ('528', '人才服务需求', '1', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.addSave()', 'POST', '1', '3010', '学团（创新创业教育中心）', '/module/tss/talent/add', '127.0.0.1', '内网IP', '{\"serviceNo\":[\"AYQAG5G6\"],\"teacherNo\":[\"3010\"],\"teacherName\":[\"孙长玉\"],\"belongUnitNo\":[\"1107\"],\"belongUnitName\":[\"学团（创新创业教育中心）\"],\"phone\":[\"15180430506\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"hhfgh\"],\"demand\":[\"fghfgh\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-02 10:38:31');
INSERT INTO `sys_oper_log` VALUES ('529', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '0408', '软件学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-02 10:59:42');
INSERT INTO `sys_oper_log` VALUES ('530', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '0408', '软件学院', '/module/tss/handler/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-02 11:02:14');
INSERT INTO `sys_oper_log` VALUES ('531', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '3010', '学团（创新创业教育中心）', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"serviceStatus\":[\"5\"],\"handleTimes\":[\"2\"],\"serviceNo\":[\"C5TATJ91\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"sgsdfsdfs\"],\"demand\":[\"sdfsdfsdf\"],\"satisfactionDegree\":[\"2\"],\"satisfactionReason\":[\"fuck\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-02 11:07:17');
INSERT INTO `sys_oper_log` VALUES ('532', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"申请服务\"],\"url\":[\"/module/tss/talent/applying\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:56:21');
INSERT INTO `sys_oper_log` VALUES ('533', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"全部服务项目\"],\"url\":[\"/module/tss/talent\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:56:33');
INSERT INTO `sys_oper_log` VALUES ('534', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2044\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"在办服务项目\"],\"url\":[\"/module/tss/talent/handling\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:56:42');
INSERT INTO `sys_oper_log` VALUES ('535', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"待评价项目\"],\"url\":[\"/module/tss/talent/evaluate\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:56:54');
INSERT INTO `sys_oper_log` VALUES ('536', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2044\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"在办服务项目\"],\"url\":[\"/module/tss/talent/handling\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:57:01');
INSERT INTO `sys_oper_log` VALUES ('537', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2064\"],\"menuType\":[\"F\"],\"menuName\":[\"服务需求申请\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"module:tss:talent:add\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:58:29');
INSERT INTO `sys_oper_log` VALUES ('538', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '组织部（党校）', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"高层次人才\"],\"roleKey\":[\"talent\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2064,2065,2017,2005,2006,2014,2015,2018,2008,2007,2044,2045,2046\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 09:58:52');
INSERT INTO `sys_oper_log` VALUES ('539', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"AYQAG5G6\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"hhfgh\"],\"demand\":[\"fghfgh\"],\"handleTimes\":[\"0\"],\"handleUnitNo\":[\"1014\"],\"handlerNo\":[\"2945\"],\"handlerName\":[\"张剑锋\"],\"handleUnitName\":[\"马克思学院\"],\"assignRemark\":[\"手动阀手动阀\"],\"viceHandleUnitNo\":[\"1001,1004\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 11:45:16');
INSERT INTO `sys_oper_log` VALUES ('540', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '2945', '马克思学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 11:47:15');
INSERT INTO `sys_oper_log` VALUES ('541', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '2945', '马克思学院', '/module/tss/handler/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 12:14:20');
INSERT INTO `sys_oper_log` VALUES ('542', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '3010', '学团（创新创业教育中心）', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"5\"],\"handleTimes\":[\"2\"],\"serviceNo\":[\"AYQAG5G6\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"hhfgh\"],\"demand\":[\"fghfgh\"],\"satisfactionDegree\":[\"1\"],\"satisfactionReason\":[\"是的地方\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-03 12:15:14');
INSERT INTO `sys_oper_log` VALUES ('543', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"AYQAG5G6\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"hhfgh\"],\"demand\":[\"fghfgh\"],\"handleTimes\":[\"2\"],\"handleUnitNo\":[\"1014\"],\"handlerNo\":[\"2945\"],\"handlerName\":[\"张剑锋\"],\"handleUnitName\":[\"马克思学院\"],\"assignRemark\":[\"手动阀手动阀\"],\"viceHandleUnitNo\":[\"1001,1004,1201\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-04 13:58:55');
INSERT INTO `sys_oper_log` VALUES ('544', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '2945', '马克思学院', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-04 14:00:48');
INSERT INTO `sys_oper_log` VALUES ('545', '服务申请办结', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.applyEnd()', 'POST', '1', '2945', '马克思学院', '/module/tss/handler/applyEnd', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-04 14:00:56');
INSERT INTO `sys_oper_log` VALUES ('546', '人才服务需求', '2', 'com.ruoyi.project.module.tss.controller.TServicesTalentController.evaluateSave()', 'POST', '1', '3010', '学团（创新创业教育中心）', '/module/tss/talent/evaluate/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"0\"],\"handleTimes\":[\"4\"],\"serviceNo\":[\"AYQAG5G6\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"hhfgh\"],\"demand\":[\"fghfgh\"],\"satisfactionDegree\":[\"2\"],\"satisfactionReason\":[\"是的地方1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-04 14:01:23');
INSERT INTO `sys_oper_log` VALUES ('547', '服务需求分派', '2', 'com.ruoyi.project.module.tss.controller.TServicesAssignorController.assignSave()', 'POST', '1', '0646', '组织部（党校）', '/module/tss/assignor/assign/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"1\"],\"serviceNo\":[\"AYQAG5G6\"],\"submitTime\":[\"2020-06-02\"],\"askEndTime\":[\"2020-06-25\"],\"description\":[\"hhfgh\"],\"demand\":[\"fghfgh\"],\"handleTimes\":[\"4\"],\"handleUnitNo\":[\"1107\"],\"handlerNo\":[\"2799\"],\"handlerName\":[\"李雪峰\"],\"handleUnitName\":[\"学团（创新创业教育中心）\"],\"assignRemark\":[\"手动阀手动阀1\"],\"viceHandleUnitNo\":[\"1001,1004,1201\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-04 14:40:29');
INSERT INTO `sys_oper_log` VALUES ('548', '服务状态在办', '2', 'com.ruoyi.project.module.tss.controller.TServicesHandlerController.changeStatus()', 'POST', '1', '2799', '学团（创新创业教育中心）', '/module/tss/handler/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"serviceStatus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2020-06-04 15:05:51');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'department_head_rank', '厅级', '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-31 14:50:43', '');
INSERT INTO `sys_post` VALUES ('2', 'section_chief_rank', '处级', '2', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-31 14:50:35', '');
INSERT INTO `sys_post` VALUES ('3', 'chief_staff_member', '科级', '3', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-31 14:51:17', '');
INSERT INTO `sys_post` VALUES ('4', 'common_user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-31 14:52:41', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '7', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-28 17:16:20', '普通角色');
INSERT INTO `sys_role` VALUES ('3', '高层次人才', 'talent', '2', '5', '0', '0', 'admin', '2020-03-28 17:12:40', 'admin', '2020-06-03 09:58:52', '');
INSERT INTO `sys_role` VALUES ('4', '校人才工作领导小组办公室负责人', 'assignor', '3', '1', '0', '0', 'admin', '2020-03-28 17:14:04', 'admin', '2020-05-15 15:06:27', '');
INSERT INTO `sys_role` VALUES ('5', '各职能处室及学院负责人', 'handler', '5', '4', '0', '0', 'admin', '2020-03-28 17:15:10', 'admin', '2020-05-15 15:06:52', '');
INSERT INTO `sys_role` VALUES ('6', '校领导', 'header', '6', '1', '0', '0', 'admin', '2020-03-28 17:15:59', 'admin', '2020-04-19 19:47:52', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');
INSERT INTO `sys_role_menu` VALUES ('3', '2000');
INSERT INTO `sys_role_menu` VALUES ('3', '2005');
INSERT INTO `sys_role_menu` VALUES ('3', '2006');
INSERT INTO `sys_role_menu` VALUES ('3', '2007');
INSERT INTO `sys_role_menu` VALUES ('3', '2008');
INSERT INTO `sys_role_menu` VALUES ('3', '2014');
INSERT INTO `sys_role_menu` VALUES ('3', '2015');
INSERT INTO `sys_role_menu` VALUES ('3', '2017');
INSERT INTO `sys_role_menu` VALUES ('3', '2018');
INSERT INTO `sys_role_menu` VALUES ('3', '2044');
INSERT INTO `sys_role_menu` VALUES ('3', '2045');
INSERT INTO `sys_role_menu` VALUES ('3', '2046');
INSERT INTO `sys_role_menu` VALUES ('3', '2064');
INSERT INTO `sys_role_menu` VALUES ('3', '2065');
INSERT INTO `sys_role_menu` VALUES ('4', '2002');
INSERT INTO `sys_role_menu` VALUES ('4', '2004');
INSERT INTO `sys_role_menu` VALUES ('4', '2009');
INSERT INTO `sys_role_menu` VALUES ('4', '2010');
INSERT INTO `sys_role_menu` VALUES ('4', '2019');
INSERT INTO `sys_role_menu` VALUES ('4', '2020');
INSERT INTO `sys_role_menu` VALUES ('4', '2021');
INSERT INTO `sys_role_menu` VALUES ('4', '2027');
INSERT INTO `sys_role_menu` VALUES ('4', '2028');
INSERT INTO `sys_role_menu` VALUES ('4', '2035');
INSERT INTO `sys_role_menu` VALUES ('4', '2036');
INSERT INTO `sys_role_menu` VALUES ('4', '2037');
INSERT INTO `sys_role_menu` VALUES ('4', '2038');
INSERT INTO `sys_role_menu` VALUES ('4', '2039');
INSERT INTO `sys_role_menu` VALUES ('4', '2040');
INSERT INTO `sys_role_menu` VALUES ('5', '2003');
INSERT INTO `sys_role_menu` VALUES ('5', '2011');
INSERT INTO `sys_role_menu` VALUES ('5', '2012');
INSERT INTO `sys_role_menu` VALUES ('5', '2022');
INSERT INTO `sys_role_menu` VALUES ('5', '2023');
INSERT INTO `sys_role_menu` VALUES ('5', '2024');
INSERT INTO `sys_role_menu` VALUES ('5', '2047');
INSERT INTO `sys_role_menu` VALUES ('5', '2048');
INSERT INTO `sys_role_menu` VALUES ('5', '2049');
INSERT INTO `sys_role_menu` VALUES ('5', '2050');
INSERT INTO `sys_role_menu` VALUES ('5', '2051');
INSERT INTO `sys_role_menu` VALUES ('5', '2052');
INSERT INTO `sys_role_menu` VALUES ('5', '2053');
INSERT INTO `sys_role_menu` VALUES ('5', '2054');
INSERT INTO `sys_role_menu` VALUES ('5', '2055');
INSERT INTO `sys_role_menu` VALUES ('5', '2062');
INSERT INTO `sys_role_menu` VALUES ('5', '2063');
INSERT INTO `sys_role_menu` VALUES ('6', '2004');
INSERT INTO `sys_role_menu` VALUES ('6', '2013');
INSERT INTO `sys_role_menu` VALUES ('6', '2025');
INSERT INTO `sys_role_menu` VALUES ('6', '2026');
INSERT INTO `sys_role_menu` VALUES ('6', '2027');
INSERT INTO `sys_role_menu` VALUES ('6', '2028');
INSERT INTO `sys_role_menu` VALUES ('6', '2056');
INSERT INTO `sys_role_menu` VALUES ('6', '2057');
INSERT INTO `sys_role_menu` VALUES ('6', '2058');
INSERT INTO `sys_role_menu` VALUES ('6', '2059');
INSERT INTO `sys_role_menu` VALUES ('6', '2060');
INSERT INTO `sys_role_menu` VALUES ('6', '2061');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1100', 'admin', '魏永锋', '00', 'ry@163.com', '13870949321', '0', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-06-03 09:54:22', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-03 09:54:22', '管理员');
INSERT INTO `sys_user` VALUES ('2', '1000', '0112', '陈梦成', '00', '', '13879157960', '0', '', '56b2ae9580f33254b8102faf75366146', '9a8160', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('3', '1000', '0138', '刘林芽', '00', '', '13970049547', '0', '', '4aa9b41d32b25dda8b5e226349dc8e7b', 'bca21f', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('4', '1000', '1962', '杨辉', '00', '', '13870098198', '0', '', 'b04e313a0437bb3a8fe3786e661da5b1', 'cd6e6c', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('5', '1000', '2582', '张坚', '00', '', '13970957721', '0', '', 'c0141a7ada1600b504a5fcf78462061e', 'c7fb1e', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('6', '1000', '2809', '徐长节', '00', '', '13957132363', '0', '', '733badb6a2743bcd745b0fb78e2ba23b', '6da834', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('7', '1000', '2930', '罗玉峰', '00', '', '18879102366', '0', '', '5bff812e9b89fe1283671024d2338127', 'e16786', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('8', '1001', '0057', '郑明新', '00', '', '15979001593', '0', '', '9d39f017b27d345a0ddeff4770c52934', 'a558af', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('9', '1001', '0085', '童谷生', '00', '', '15970685331', '0', '', 'df797d8fa85b225af2bf66d8f082ea9d', 'bd6ed0', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('10', '1001', '0095', '童祯恭', '00', '', '13970871808', '0', '', 'e4cc4a9d84253ab3229724365307e16d', 'd9f506', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('11', '1001', '0100', '江立文', '00', '', '13803503926', '0', '', 'd0ef6c98a061fce5a412c09efbd33876', '1ae7a5', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('12', '1001', '0122', '罗新梅', '00', '', '13970868197', '0', '', 'eb77b60dff99e1ab9de4f00e5bc511b0', '7403d1', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('13', '1001', '0127', '曹忠民', '00', '', '13732989887', '0', '', 'ecc97cbe23d00270b7123d22e14596b9', 'ea8f4a', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('14', '1001', '0134', '彭小云', '00', '', '13707099065', '0', '', '31c44fff2fba269ebb6402580b82b8da', 'ceb51a', '0', '0', '127.0.0.1', '2020-05-16 22:28:02', 'admin', '2020-05-15 13:54:51', '', '2020-05-16 22:28:01', null);
INSERT INTO `sys_user` VALUES ('15', '1001', '0135', '许开成', '00', '', '13879115766', '0', '', 'cc808d8d7573824781cd0c0433cf39fa', 'e7dfd1', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('16', '1001', '0136', '陈水生', '00', '', '13907006807', '0', '', '1f1c25d8c2d4ae5bdc5c6f1a9c90dd3d', '8cfe59', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('17', '1001', '0142', '刘迎春', '00', '', '13979182125', '0', '', '88589bc38bf75e9876bf7c3dfb74a46f', '9f22a7', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('18', '1001', '0145', '程海琴', '00', '', '15270930351', '0', '', '764d0c894caaade94651b5be3897163a', '7e2e2a', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('19', '1001', '0494', '雷晓燕', '00', '', '13803527171', '0', '', '49a2c8ef22fe7cf1dfdd30d25ed91c89', '2af6fc', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('20', '1001', '1031', '黄宏', '00', '', '13697083965', '0', '', '04993a8c95cd75d2a73dd97a06dc773e', '4fd1b0', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('21', '1001', '1092', '丰桂珍', '00', '', '13979119122', '0', '', 'cc9995265bb1c38c2f53dbb889d37959', 'b63e49', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('22', '1001', '1329', '罗文俊', '00', '', '18970949442', '0', '', 'f79f53ad35c089d94d256a9bf541d73d', '037c25', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('23', '1001', '1388', '胡常福', '00', '', '13870621029', '0', '', '38f5142ca1410432b84d4c9c30fa8963', 'd63273', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('24', '1001', '1389', '张鹏飞', '00', '', '13979161557', '0', '', '67ff29b0e35e8623acbba8909af084cc', 'f97b5a', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('25', '1001', '1391', '戴红玲', '00', '', '13576274317', '0', '', 'dca53af32e8b578572b436cbe3cee83c', '20c6a7', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('26', '1001', '1448', '徐青', '00', '', '13707912556', '0', '', '560240f35a63928f9f72125619fa0f23', '130396', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('27', '1001', '1457', '刁心宏', '00', '', '13870633396', '0', '', '9b9b8b60a828d3dad25ee58e463635cb', 'a81cfb', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('28', '1001', '1504', '聂发辉', '00', '', '18170850260', '0', '', '08da52f4f61deee1676fc16ebcc0d3d0', 'c20699', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('29', '1001', '1506', '王凯', '00', '', '13699549698', '0', '', 'ece9d736dae3b7dc7d1202afd0e36a9a', '365716', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('30', '1001', '1538', '聂启祥', '00', '', '13807057106', '0', '', '15193a7781e374a9f3a07c2fefdf63fe', '968508', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('31', '1001', '1544', '杨成忠', '00', '', '18602799619', '0', '', '580d82e1a503ad0bbf1f980cc6354292', '02985b', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('32', '1001', '1861', '高剑平', '00', '', '13767016805', '0', '', 'adacc3937f06462e65732746b4770d99', '4f3624', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('33', '1001', '1870', '伍海山', '00', '', '15390898799', '0', '', 'ced6315ad95b7b74585dc6fe23503ce7', 'd1089f', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('34', '1001', '1886', '刘雪梅', '00', '', '13879150240', '0', '', 'b289857ac5f0c1f93743d3e698112c60', '22207c', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('35', '1001', '1888', '向速林', '00', '', '18979103546', '0', '', '65bc2edd1dea665453f62d000eaae7af', '0e02c1', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('36', '1001', '1890', '程海根', '00', '', '13879104029', '0', '', 'ba9b9e0e6942e97d6b502c719a88ddb5', 'bbf509', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('37', '1001', '1893', '冯青松', '00', '', '13517091075', '0', '', '8c94ff3ba6b046d336952983940b5e26', '11a636', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('38', '1001', '1932', '兰蔚', '00', '', '13755645801', '0', '', 'adadd8a7be4abb94b6e8d28eafe6b91b', 'cd3f6f', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('39', '1001', '1960', '肖挺松', '00', '', '13576101128', '0', '', '43ad1fdc13b4b71a9f5013771f73a4e9', 'ee8cc0', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('40', '1001', '1968', '黄晓吉', '00', '', '18970042305', '0', '', '6337e5eb730c89df40dfe4b568381d88', 'e50e7a', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('41', '1001', '1990', '乐建明', '00', '', '13576072239', '0', '', '96a3386b2663a8ceed2fdeeed2dc7689', '293724', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('42', '1001', '1992', '任亮', '00', '', '13479135631', '0', '', '390cac19bad576c1ba74661160452c39', '18e491', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('43', '1001', '1997', '罗兴姬', '00', '', '13767186296', '0', '', 'd894ec83a973558e6da2b6fb40466012', 'f42151', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('44', '1001', '2503', '房建', '00', '', '13576036850', '0', '', '9b9da4ed23c5a3e7dbed4e5b4f109e45', '66997b', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('45', '1001', '2504', '赵秀绍', '00', '', '13330118046', '0', '', 'f5428039ee974255afdc6b4e5106ccc4', 'f13d6c', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('46', '1001', '2512', '卢华喜', '00', '', '13970851827', '0', '', 'cf8774b723c70e9e19923d21595f6976', '76763f', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('47', '1001', '2518', '耿大新', '00', '', '13879115473', '0', '', '469857bb6b7ed2005c5e3334527aea8e', 'b0d960', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('48', '1001', '2520', '周双喜', '00', '', '13077973528', '0', '', 'cc75da524aecb7ef6c553e6963ecb7e4', '8c73b9', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('49', '1001', '2525', '张卫风', '00', '', '13479119196', '0', '', '2c686856c27471df8a2ad48348dbb397', '99b143', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('50', '1001', '2526', '王秋华', '00', '', '15979037805', '0', '', '801772b7c8b8c7e263bedac6bd3188e9', '9a67bd', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('51', '1001', '2527', '鲁秀国', '00', '', '13970936091', '0', '', '264d732d3d990bdf7f02e16b0e2cf633', 'e46279', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('52', '1001', '2543', '罗锟', '00', '', '13979149881', '0', '', '314c74381cad859ca22d5fc8fc2ec568', 'ceab91', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('53', '1001', '2544', '桂水荣', '00', '', '13970867906', '0', '', '08ec655e1a0b6c0a04cb7e6328ac6942', '99d48f', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('54', '1001', '2545', '刘庆杰', '00', '', '13576008248', '0', '', 'ccc971c60562dece14f87d4c5fb759cf', '68d3a8', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('55', '1001', '2589', '刘旭政', '00', '', '15579117525', '0', '', '40b46893835ec14936b24102fd1000b6', '358ae0', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('56', '1001', '2636', '马飞虎', '00', '', '13330117911', '0', '', 'e63da686c53d3c48b479f8b69cf5d455', 'bb4fd7', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('57', '1001', '2688', '李锦华', '00', '', '13576283532', '0', '', 'eda67b5d6020b08c7a0925f1bedf952b', 'aed0d7', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('58', '1001', '2697', '邹小玲', '00', '', '13907091003', '0', '', 'f9e054b4623260fd9fe0b3cbd1b62913', '6796e4', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('59', '1001', '2716', '孙翠羽', '00', '', '13330117912', '0', '', 'd1cbe4e2402b2feaba9f1ec43f896e7f', '1a385c', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('60', '1001', '2725', '何桂珍', '00', '', '15879145867', '0', '', 'bf8a5cc19c7bee43b7ed6accaecfc8f4', 'f3c8ba', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('61', '1001', '2745', '杨斯玲', '00', '', '13870929606', '0', '', '22278243a313a3ebabed83abe5fcca58', 'b281f9', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('62', '1001', '2779', '陈莘莘', '00', '', '15870648271', '0', '', 'a2beaacc9592db7986c1f3cfed282cb0', '7f9c11', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('63', '1001', '2816', '吴亮秦', '00', '', '18802296709', '0', '', 'f685b6da3e7e405eb71e37b89446b62e', '69b045', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('64', '1001', '2823', '胡文韬', '00', '', '18679135796', '0', '', 'c6a444e5630e1b82392fff60d27e0b85', '5c60e0', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('65', '1001', '2825', '张慧敏', '00', '', '18720970308', '0', '', 'dcb37456f2fda4c52193ae3d3972a837', '7edac8', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('66', '1001', '2829', '汤俊', '00', '', '13367008996', '0', '', '805f2749a4f7e4320ef4fc72f62b2a39', '9194bb', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('67', '1001', '2834', '石钰锋', '00', '', '13617001585', '0', '', '26e2db39c7b9fa264c530ad801bf7468', '6c616f', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('68', '1001', '2843', '刘伟', '00', '', '13340117127', '0', '', 'ae42728cfa54a6f7af92bbeb590bcf0a', 'd8316c', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('69', '1001', '2850', '王少锋', '00', '', '13247787268', '0', '', 'b23cc32f9d36fd47556309f47542a416', 'ff3cb9', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('70', '1001', '2853', '于洋', '00', '', '18779121827', '0', '', '801f666a6e32f35c19b99e51c93ad81b', 'c23bf6', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('71', '1001', '2863', '魏星', '00', '', '18970921216', '0', '', 'c2460739b5a0ec42124b634b3bc429a1', 'fb9ca7', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('72', '1001', '2868', '童立红', '00', '', '13155805886', '0', '', 'e435aa6b047b6a9a976e2c4ef2610132', '9d947a', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('73', '1001', '2869', '彭小明', '00', '', '15717008607', '0', '', '9dc08f42c6102653d8c4c24f774162b3', 'e9f4d4', '0', '0', '', null, 'admin', '2020-05-15 13:54:51', '', null, null);
INSERT INTO `sys_user` VALUES ('74', '1001', '2872', '万云', '00', '', '13237006985', '0', '', 'd1959e797a13b9a6ce53e36b50a2fe1c', 'd6d143', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('75', '1001', '2875', '祝泽兵', '00', '', '15797799397', '0', '', 'a9aee15fa553c8d7f3de7e5df0de0860', '382810', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('76', '1001', '2895', '黄龙华', '00', '', '15270005885', '0', '', 'e5be29636f8552f01d832d38eaaf2c56', '44be8d', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('77', '1001', '2897', '李乐', '00', '', '18618485672', '0', '', 'e33e3334d76a93ce5461fd18bfa14ce9', '2e51fa', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('78', '1001', '2901', '张季', '00', '', '15797639961', '0', '', 'eb86f54b8f18a935d87e09760eca7302', '657727', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('79', '1001', '2902', '康彩霞', '00', '', '13732996436', '0', '', '172a4ca7eaab58b4b3cfa0cb891b52ae', 'e82a42', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('80', '1001', '2909', '刘全民', '00', '', '18379178161', '0', '', '908538e430646f5132d17ae3b9555b53', 'b56e8a', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('81', '1001', '2911', '王宁', '00', '', '18897910519', '0', '', '56b7b33316cd7a5bc19cb5b718911f42', '68a140', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('82', '1001', '2917', '黄大维', '00', '', '15797863769', '0', '', 'a87b60bb2268689934a2e5bbecbe8802', 'b08f0e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('83', '1001', '2919', '黄永虎', '00', '', '15397914642', '0', '', '80ab83802517d47088f5fde2388d5d30', '35462b', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('84', '1001', '2922', '张娜', '00', '', '18779875777', '0', '', 'b2437ad9f29c1dac4ddd86c6441e7c95', '4eb8a6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('85', '1001', '2925', '傅梅珍', '00', '', '15397914718', '0', '', 'f4ae0ff42175fc56a395cde99ab3dca0', '8621f9', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('86', '1001', '2928', '付杰', '00', '', '17370880330', '0', '', '518472c4cb554d625d5db9a4f44fa837', 'f834c3', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('87', '1001', '2932', '贺小星', '00', '', '18107089059', '0', '', '522c0978a5c6fd29988ba3bcb5cf75c8', '04a1da', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('88', '1001', '2938', '龚凯', '00', '', '13755796087', '0', '', '376f1ffc53663e1eca894595220b31ff', '49d8e5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('89', '1001', '2940', '徐金辉', '00', '', '13698007221', '0', '', '78c4b0f72bb9564e595d126bf86095e4', '9dd35b', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('90', '1001', '2941', '郑尚敏', '00', '', '15797863752', '0', '', 'fea7629b3c04bb2cc916be392e56970d', '5ed8fc', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('91', '1001', '2951', '吴必涛', '00', '', '18720965536', '0', '', '810b7df8fb6bfa1a37b934721a2e0fdc', '047d39', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('92', '1001', '2956', '董晶亮', '00', '', '13677089341', '0', '', '32693131b51c1751309886351a0b1751', '215818', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('93', '1001', '2957', '杨超', '00', '', '18279171979', '0', '', 'c92586012a28b6d4148f9da505b5d3b2', '0e4512', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('94', '1001', '2958', '王威', '00', '', '13576102498', '0', '', 'ebf94f26dc50d933e72038309a05cb1c', 'd2b7e0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('95', '1001', '2959', '王衍金', '00', '', '15270897868', '0', '', '0199038966b1ea5d5546eee62483ba9e', 'd359c2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('96', '1001', '2995', '单莉莉', '00', '', '18507097587', '0', '', '5753aab407c464fb3ee9df2e1e162187', 'eb6097', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('97', '1001', '2997', '魏杨', '00', '', '15797913019', '0', '', 'b5615928ef44b5dc13b96ed630e69ed8', 'ef1855', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('98', '1001', '3011', '涂文博', '00', '', '18079104670', '0', '', 'd0cc7e785b61098af569539f8ba12ea4', '7f71d2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('99', '1001', '3012', '唐柏赞', '00', '', '13718031088', '0', '', 'ad8d9c4b46da690a29ea8d0fb500471e', 'd69df6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('100', '1001', '3017', '可文海', '00', '', '15170419357', '0', '', '9e96373aa41b25ddad49c3f752ccacc2', '827432', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('101', '1001', '3023', '刘明星', '00', '', '18200575889', '0', '', 'a007886a4fd116c3201088411b4997aa', 'dc9d0e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('102', '1001', '3024', '张立卿', '00', '', '13342288573', '0', '', 'e2b482241a6c149d3161338796211739', '8391d8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('103', '1001', '3025', '马晓川', '00', '', '13693407328', '0', '', '0d02b4e81b064ff729406fb8e2a71c30', '170752', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('104', '1001', '3036', '胡玉瑛', '00', '', '18307005139', '0', '', '9023e6960f9b53b04031d09af8958039', '70c9af', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('105', '1001', '3039', '黄征凯', '00', '', '15270900823', '0', '', 'd49159e07ba9fb9b54c5f2183c505bd0', '4db81f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('106', '1001', '3041', '郭文杰', '00', '', '15527013916', '0', '', '86a7d57ca3cee65192a4c770202b08fa', '8b9c53', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('107', '1001', '3047', '吴刚', '00', '', '13716218134', '0', '', '4e88e6877c67b51a0643036c831ae5af', '2d1507', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('108', '1001', '3048', '郭浩森', '00', '', '13716218134', '0', '', '83b809e8826b1b0099bcf463c96ef9da', '83f981', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('109', '1001', '3049', '蒋亚龙', '00', '', '13554418251', '0', '', '23c13f515db997747b9049275d353c7b', '44a610', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('110', '1001', '3062', '祝俊华', '00', '', '15002941201', '0', '', '1149b24fa8b2acb75d1c013b112a9978', 'fe461d', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('111', '1001', '3069', '汪楚乔', '00', '', '15716121856', '0', '', 'c7231187fbb8cf9cc7bbc863883ad419', 'fc2ced', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('112', '1001', '3075', '邹成龙', '00', '', '13940354958', '0', '', '86d02e07d3563ac2530973bdd24c0805', 'f7093f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('113', '1001', '3087', '胡伟成', '00', '', '17370085942', '0', '', '73b17e05d87a54115157d1e8970bced4', '3a43b7', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('114', '1001', '3089', '宋立忠', '00', '', '15828502089', '0', '', 'a81a0df65703d6b7f0e0b8121a30d33f', 'c3fa84', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('115', '1001', '3093', '李浩', '00', '', '18846442182', '0', '', 'a2fe9aedcc2f2bf0fe5739160e7df304', 'cf53fe', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('116', '1001', '3105', '熊良宵', '00', '', '15968030959', '0', '', '1ad97178a314f20e89e6a9816a8799f4', 'd63e36', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('117', '1001', '3106', '叶玲', '00', '', '18502795105', '0', '', 'add48ad545540cc53cd862c07cd79c53', 'bb22d4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('118', '1001', '3110', '黄云', '00', '', '13568953045', '0', '', '147a5f701fd7af703472b0405b7c4acf', '4f77b8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('119', '1001', '3082', '雷祖祥', '00', '', '18862331656', '0', '', '2e83a0a728a0451484eb2b9a6ecdbd40', '8780f8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('120', '1001', '3114', '冯玉林', '00', '', '17307486884', '0', '', '59a5d57a862bc6850326685261568ebc', '0f93d2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('121', '1001', '3123', '涂洁', '00', '', '13732996035', '0', '', 'f3213867e293186b612087be543eff42', 'e1580d', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('122', '1001', '1010', '喻乐华', '00', '', '13617089682', '0', '', '567c6b04c222ae5afcec8277da504ade', '9ffab4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('123', '1001', '2595', '郑福焱', '00', '', '13007233669', '0', '', 'bb556d76bc4fb02a24755014d9ce5ceb', '906a85', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('124', '1002', '0432', '章勇高', '00', '', '15870664148', '0', '', '58b6dab7a0b6378e2225ec1e3ce69d4b', 'fc2573', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('125', '1002', '0643', '徐祥征', '00', '', '13970977065', '0', '', '22dddc23583f1e94bbe05d7f9ee7fd63', '413deb', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('126', '1002', '1100', '陆荣秀', '00', '', '18170831755', '0', '', '2b3c9f2f72ca0fd9a23a5c57d8ddf69b', '53e414', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('127', '1002', '1365', '胡文华', '00', '', '13970890309', '0', '', '443f2c11385acad6dc18b562923750ea', 'f239d7', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('128', '1002', '1397', '丁青锋', '00', '', '13732923989', '0', '', 'a3e1badb1e4a32ef237b4881628c7c83', '322494', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('129', '1002', '1400', '程宏波', '00', '', '13330117960', '0', '', 'fbd858f3c56b94a8ce0144724bd471a4', 'da294f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('130', '1002', '1860', '章海亮', '00', '', '15979194738', '0', '', '39475fe1359b1eba5e8869968d95a98a', '893b59', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('131', '1002', '1867', '徐雪松', '00', '', '13707092426', '0', '', '8bf32094bbbccb0a480ea36bf58df2fa', '3f1c50', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('132', '1002', '1929', '屈志坚', '00', '', '18679116885', '0', '', '30c57613643a4871245cf37863b75789', '6fd91f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('133', '1002', '1930', '叶满园', '00', '', '18170828710', '0', '', '3b0ac8bac0aa02554a7b7e385b294ef2', '8f71cf', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('134', '1002', '1965', '彭春华', '00', '', '13970067301', '0', '', '9647466d595cc4cc72d168c6e639ba55', '043059', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('135', '1002', '2407', '李中奇', '00', '', '18970949443', '0', '', 'f2552b44927a7ab3fecb19b3894274af', 'c3cb53', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('136', '1002', '2464', '邓芳明', '00', '', '13755633966', '0', '', 'f9f0b5247bebf39625acd6499578033d', '7e5b66', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('137', '1002', '2465', '袁义生', '00', '', '13576290780', '0', '', '7579777039a4d3f4a7e128a4023e749b', '02e3fa', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('138', '1002', '2470', '陈世明', '00', '', '13767055358', '0', '', '844eb5a8067b4b64666ecf42fa2210f4', '27e6ad', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('139', '1002', '2640', '陶勇剑', '00', '', '13879151118', '0', '', '857fc85db01b94e69bcca13ac9f2fc1b', '2c3ad8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('140', '1002', '2661', '陈鹏展', '00', '', '13970959308', '0', '', '690aa27ae414b8b72171dbaf5a54b77e', '7ea2d0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('141', '1002', '2707', '祝振敏', '00', '', '17779118096', '0', '', '5f175cc57a1e0772d24316004248b389', 'be5a16', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('142', '1002', '2754', '戴丽珍', '00', '', '15270010130', '0', '', '644d630d4a3cfa5cbf4bd2402aff9d45', '66211f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('143', '1002', '2763', '杨刚', '00', '', '15270010323', '0', '', '80a4c5fbb264a282d0ad013eb4282c95', '3dd80c', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('144', '1002', '2781', '刘珺', '00', '', '15970624887', '0', '', '043df6b5cf2b0ed295fd17fa3ed0cdd0', 'df2093', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('145', '1002', '2833', '赖强', '00', '', '18870067306', '0', '', 'eadcf9ea96116deb66ee94424d5358ce', '00e5f2', '0', '0', '127.0.0.1', '2020-05-15 14:59:46', 'admin', '2020-05-15 13:54:52', '', '2020-05-15 14:59:46', null);
INSERT INTO `sys_user` VALUES ('146', '1002', '2861', '朱建勇', '00', '', '15717916577', '0', '', '7099e3ef10709821ec9e21e4c98d0dd6', '87f865', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('147', '1002', '2862', '谭畅', '00', '', '13672222346', '0', '', '9f154e0dc0d9728445a823004e51f850', 'bbac81', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('148', '1002', '2879', '涂宏斌', '00', '', '13576977079', '0', '', '4ff7939596f683950de7c3afb51e8914', '97d9c7', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('149', '1002', '2883', '钟燕科', '00', '', '18679931813', '0', '', '4109f65a221106f4b825ef2994cb518f', '10b91f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('150', '1002', '2885', '陈晓玥', '00', '', '18679936816', '0', '', '43aa62374cc6385444d2c719ae65dc3c', 'e669be', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('151', '1002', '2889', '聂森', '00', '', '15797638316', '0', '', '35518dddaa0933ed4efd71e30417fa81', 'a2b986', '0', '0', '127.0.0.1', '2020-05-15 14:28:52', 'admin', '2020-05-15 13:54:52', '', '2020-05-15 14:28:52', null);
INSERT INTO `sys_user` VALUES ('152', '1002', '2890', '王旭文', '00', '', '15797638317', '0', '', 'e395a24e45b0d8b4a766ed7e6dc94434', '8986a6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('153', '1002', '2914', '蔡智超', '00', '', '17770867715', '0', '', '368d6e947fcfacbb9f3dd9432ed1336c', '6afbc7', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('154', '1002', '2921', '曾晗', '00', '', '13970039986', '0', '', '30a69737af663812f42b73f7b924be0d', 'ae1d48', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('155', '1002', '2923', '邹丹旦', '00', '', '17770890795', '0', '', '9e364797175b72d7433c63be29147533', '864fa6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('156', '1002', '2979', '付雅婷', '00', '', '13970908590', '0', '', 'bc50c73509939e27bdf60d903502cd52', 'ccb224', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('157', '1002', '2980', '裴惠琴', '00', '', '13330097110', '0', '', '5c370fc95c190eca880a6669b862e3a4', '0466c9', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('158', '1002', '2984', '董文涛', '00', '', '15879174670', '0', '', 'd311b46a845f5ae0bb771feb4190ac24', 'ced47f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('159', '1002', '3014', '池瑞', '00', '', '18070593591', '0', '', '467c7dd4cacffff32243426ce53f1fc2', 'a1c8dc', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('160', '1002', '3027', '祝四强', '00', '', '18297955693', '0', '', '72fca116bdaaf8821b8f4a3593afa114', 'd27545', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('161', '1002', '3040', '刘治', '00', '', '13767988073', '0', '', 'ab771a49e5d4abc7f0dc86c3414a36b1', '6e3cc3', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('162', '1002', '3050', '詹白勺', '00', '', '13575895080', '0', '', 'aff9333d93506626768754254b88c140', '48b5b5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('163', '1002', '3051', '余勇祥', '00', '', '15109283665', '0', '', 'd26b965b13782f196468d49f442216d2', '8de78e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('164', '1002', '3060', '姚道金', '00', '', '13296680350', '0', '', 'c70dd59104c5d52503f39c6c7359993c', '2d6b99', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('165', '1002', '3066', '彭圆圆', '00', '', '15700787162', '0', '', '734b47ee80e2962b2006a041aecfddbf', '75208e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('166', '1002', '3090', '陶丹', '00', '', '18883252765', '0', '', 'a75a5b8adb2d6f23a4917c1228bd7655', '7523f4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('167', '1002', '3100', '李伟', '00', '', '18621656990', '0', '', '190d10df9134e216d22d2bc15ec79ee8', '65a362', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('168', '1002', '0228', '郑晓芳', '00', '', '13507910018', '0', '', 'e14fba47152ac85c0c8d9a26115a9e56', '39d2d5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('169', '1003', '0032', '任继文', '00', '', '13979107921', '0', '', '2b868b4233f1db34090c6862f3ee7741', '68e2ff', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('170', '1003', '0147', '李骏', '00', '', '13707913076', '0', '', '60b301d77f50a44927b80e44044a5c2f', '1d9a82', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('171', '1003', '0152', '徐尤南', '00', '', '13607085686', '0', '', 'a3cef8eb96b5843acc1cfbc354d105b0', '670413', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('172', '1003', '0158', '熊国良', '00', '', '13970089825', '0', '', '07cc583fd419eab5e0e2fc3f2e7b4356', '8ba699', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('173', '1003', '0162', '周新建', '00', '', '18679193818', '0', '', 'ba18d5f28ec25c6e7e1054f28367cf76', '80c349', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('174', '1003', '0171', '刘平安', '00', '', '18679176379', '0', '', '59104cacf427069aff4f3da2ec6f9b7b', '01d8f7', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('175', '1003', '0521', '宋京伟', '00', '', '13307919837', '0', '', 'bc6acd162715645a0ce2d279fa00fe6c', '1849b5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('176', '1003', '1016', '施阳和', '00', '', '13677089072', '0', '', 'c9a7e0bb82ab3ec44ac64f5bece88b1d', 'ea0794', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('177', '1003', '1098', '张海', '00', '', '13879134396', '0', '', '2e0f511d76285e6b67f7440989b7897d', '2a8818', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('178', '1003', '1149', '程贤福', '00', '', '13970099185', '0', '', '4ae580cd383a3a707ecb60801df8647e', '9534aa', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('179', '1003', '1342', '林凤涛', '00', '', '13970842969', '0', '', '3d16db34e01b2db00b7db45b0a6e7a9c', 'd5b713', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('180', '1003', '1452', '杨超', '00', '', '18279171979', '0', '', '0de22cc3738657f27ba868c7aa940ba5', 'cb6a54', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('181', '1003', '1465', '罗智中', '00', '', '13970048036', '0', '', 'a5f6b2264c17bf5e350bef9d8f7795b4', 'ffef34', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('182', '1003', '1493', '谢锋云', '00', '', '13699504418', '0', '', 'd9c1ef966086a2db8d81dac832696f7f', '93a09c', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('183', '1003', '1539', '孟飞', '00', '', '13687086599', '0', '', '3a8cf262059cfc8c7259e229eb39221b', '08a736', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('184', '1003', '1981', '周建民', '00', '', '13755685348', '0', '', '511de3ca9e528ba17119df835d4024b9', 'b53580', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('185', '1003', '2487', '胡国良', '00', '', '13576963268', '0', '', '3a51aabb1bfb8ecd527c8b08e2b16ead', '0f09a4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('186', '1003', '2562', '朱海燕', '00', '', '13870656817', '0', '', '1226cff16598d8af6c3f0fb75df5678d', '9a0af6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('187', '1003', '2607', '刘燕德', '00', '', '13767101726', '0', '', '79bb37d159fff95c2168aaa58af6f8c8', '689710', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('188', '1003', '2609', '孙旭东', '00', '', '15907091053', '0', '', '225a768a9ebfcaf0494c219822320541', 'f0d698', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('189', '1003', '2618', '李刚', '00', '', '15083838487', '0', '', '9d4104e1d6803809e552a62f0475cd62', '9b642c', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('190', '1003', '2623', '李志刚', '00', '', '13807007623', '0', '', 'dbbc6ac044ff6a041a47b26bf4ff9fa9', '0551fc', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('191', '1003', '2642', '槐创锋', '00', '', '18779151995', '0', '', 'fad4a5c14239f542536b7ea086da0420', '1feddc', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('192', '1003', '2647', '匡唐清', '00', '', '13576003859', '0', '', 'b3854e26e804a3661acb4baf68d79782', '9b0e1f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('193', '1003', '2648', '郝勇', '00', '', '13607060672', '0', '', '4597ac3afbd8e0a5cbfeac3167e36acb', '2fa391', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('194', '1003', '2649', '李鹏', '00', '', '15170052867', '0', '', '3faf5298ea0719cbf79d44fe68ade156', 'a57d85', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('195', '1003', '2677', '占金青', '00', '', '15070017987', '0', '', 'cf46ac80d8224006d2931a27aee90555', '9180b0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('196', '1003', '2699', '张龙', '00', '', '15270925287', '0', '', 'd42cec24dee32d9bea9ccb50d2753a4a', '24b030', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('197', '1003', '2721', '吴至境', '00', '', '18970999580', '0', '', 'e162f946e13c68112f05837000687f63', 'fd4e4f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('198', '1003', '2736', '赵怀瑞', '00', '', '15070842338', '0', '', 'aa9b76d0ef7cfb7177995e15801163c7', 'aa2962', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('199', '1003', '2744', '肖毅华', '00', '', '13667008612', '0', '', 'c41920e00bb7cd95ee298d4a27d931fe', 'c5ec88', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('200', '1003', '2758', '陈齐平', '00', '', '15879117935', '0', '', '54d85cbcd3a21f81aae6119cd25d01e2', '2b6c98', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('201', '1003', '2806', '徐明', '00', '', '15270910832', '0', '', 'c09531657495cca2bd173c943c32f02a', 'ef78c5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('202', '1003', '2808', '王朝兵', '00', '', '18679127135', '0', '', '27f6dc7a81818558900436ad09610a6c', 'e42a28', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('203', '1003', '2846', '涂文兵', '00', '', '18296166796', '0', '', '69a5dcff3f154ff3c8b4a08bfe6c1e84', '5f4185', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('204', '1003', '2848', '王均刚', '00', '', '15270923623', '0', '', 'dcbf0c8e9ba95f5b9554ef08c08f8580', '065401', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('205', '1003', '2849', '周生通', '00', '', '15879026889', '0', '', 'a19b61952452a9237f4e98556601aad3', 'b21996', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('206', '1003', '2860', '刘海涛', '00', '', '17770032528', '0', '', 'b23ee8d834375be854b28bffc6b629fb', '5641ef', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('207', '1003', '2871', '丁孺琦', '00', '', '13567120329', '0', '', '5789cbf6065723f282cb400fc8e52053', '9204b5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('208', '1003', '2874', '欧阳玉平', '00', '', '15180132622', '0', '', 'd59fde6c8f9621938995e1b60695e79f', '0f5d2c', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('209', '1003', '2937', '曾礼平', '00', '', '13767953681', '0', '', '8efa98550944661505e020962f53b9ab', 'c61af7', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('210', '1003', '2946', '舒盛荣', '00', '', '15797868719', '0', '', '72c21e4cd68d177559b6c1bf70fac4a8', '0ab089', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('211', '1003', '2971', '刘霏霏', '00', '', '18079171600', '0', '', '25aae32c4e9537ccdf619856c9a300e3', '461f37', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('212', '1003', '2988', '刘敏', '00', '', '13517091520', '0', '', '82ea2bc620b70a6397e39c00f703c63b', '1623f6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('213', '1003', '2994', '李斌', '00', '', '15797913008', '0', '', '6990d0ad617f5a0a0f5b16a64ccbebfc', 'd347a0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('214', '1003', '2998', '吴荣', '00', '', '18321335140', '0', '', 'a0d46636754ab051930b629d99232ea0', 'f571d5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('215', '1003', '3009', '宋小科', '00', '', '15797919180', '0', '', '391cb604bcb0cbe7083eb28ea375c598', 'bec7f5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('216', '1003', '3037', '杨文斌', '00', '', '13893173017', '0', '', '0f2836e9a2c35759d7d202cb2dfe5f2a', '3f8590', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('217', '1003', '3038', '刘新龙', '00', '', '18382406792', '0', '', '23d6a46fe3c1194711a4f56e1d431403', '02ac59', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('218', '1003', '3044', '陈道云', '00', '', '18811446180', '0', '', '725ba2fbf72f4bd65a684282eb9bd6dd', '8be6e2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('219', '1003', '3046', '王天田', '00', '', '17777822593', '0', '', 'b769445dffb5aec692699ed0ee5fdc0e', '4c21d1', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('220', '1003', '3053', '张博', '00', '', '15114826234', '0', '', '4fcf4cc8d43b2517eae55045e891e907', '02b710', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('221', '1003', '3061', '高海根', '00', '', '13718949401', '0', '', 'b2726a06f7d0fa74ae4e23b451bfc86c', '364631', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('222', '1003', '3108', '肖原', '00', '', '18870472689', '0', '', '45b9501093e7ac87ac01d68cda3b1095', '35612c', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('223', '1004', '1213', '陈富茂', '00', '', '13879133973', '0', '', '6819caeea0045656299f3929d4eb7900', 'a00fe2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('224', '1004', '0146', '欧阳志刚', '00', '', '13755652649', '0', '', 'b8864f6ccf372ed146b4bbed97903320', 'f452f2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('225', '1004', '0278', '黎毅', '00', '', '13767020765', '0', '', '4ec42ce125efaf7479194eec58173cfb', 'd16a84', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('226', '1004', '0283', '王芸', '00', '', '13707916736', '0', '', '33a8b9e60fb86db9864ededeab4de798', '7e09a0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('227', '1004', '0297', '章丽萍', '00', '', '18970925852', '0', '', 'dacf5f3086fc6f4b3c0ccb924dc4cb88', '77fd69', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('228', '1004', '0298', '杨晓丹', '00', '', '13803518305', '0', '', '39871126f209f659cbf9ae0067338fa7', '2d36f9', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('229', '1004', '0304', '廖继胜', '00', '', '13607089876', '0', '', 'f199f8baf920f1fc70821231335317b5', '17d1c6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('230', '1004', '0308', '胡俊南', '00', '', '18907092298', '0', '', '786b96f41403c2cc0c0a8316aa891370', 'f2bd0e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('231', '1004', '1047', '李山', '00', '', '13803526195', '0', '', 'a2c3ff09347925bc6ab5ea85e3a8335e', '7788c4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('232', '1004', '1085', '况志军', '00', '', '13330118170', '0', '', 'ee28e72362377072be7aa9f29b331f99', '735fc2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('233', '1004', '1117', '陈鹰', '00', '', '13870610639', '0', '', 'd2036224c8c1991caa963016e043f5a9', '1a0f33', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('234', '1004', '1172', '陶裕春', '00', '', '13870618552', '0', '', 'cf44fff2a24ef7396ed1d1bcd2940251', '253b3e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('235', '1004', '1374', '胡辉', '00', '', '13330118550', '0', '', '5274a72de7e3883430149cab73a91628', '91d8d9', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('236', '1004', '1444', '聂倩', '00', '', '13970849429', '0', '', '4ab84bf38d1e6136085ddb20d294ac34', '752092', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('237', '1004', '1495', '罗瑞荣', '00', '', '13970820976', '0', '', '87eda7c934b624b220207475359cc29a', '77d28f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('238', '1004', '1563', '余得生', '00', '', '13870973512', '0', '', 'bb3317098a6a585192bfadd3ff95d8f1', 'bda68a', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('239', '1004', '1912', '韩胜娟', '00', '', '13317050976', '0', '', 'aea4d0a0696c88e29b1241de915ac33c', '82015b', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('240', '1004', '1914', '刘芳', '00', '', '13007212106', '0', '', 'c76e49c94e70aae9eb3a211609e289dd', 'f967c2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('241', '1004', '1954', '韩士专', '00', '', '13767136006', '0', '', '675c75fb2a417509ca4aa1dc53b4442f', '614c99', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('242', '1004', '1970', '王志平', '00', '', '13576086826', '0', '', '1bb5f6d8242b03ee737955178a4334b8', '7df591', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('243', '1004', '1974', '王文祥', '00', '', '13237000536', '0', '', '587956f3b7439a0528b26fd37e408c9a', 'd82a93', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('244', '1004', '2430', '段楠楠', '00', '', '13576004100', '0', '', 'cf2202264df26995c1311805d11cc30d', 'a5c3be', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('245', '1004', '2454', '邓波', '00', '', '13970009988', '0', '', '2f9a7e56ccb87d6bf869f9896b214577', '5db533', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('246', '1004', '2495', '李中明', '00', '', '13437004379', '0', '', 'c3c1bdfdb98f5cec5362db2591be39f3', '2a0839', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('247', '1004', '2496', '徐文华', '00', '', '13077908723', '0', '', '51b9be18374ae6a701a73e03b244989e', '6aa6a2', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('248', '1004', '2620', '魏润卿', '00', '', '13576074221', '0', '', '89a0e073542772978a4d859fcd87ca78', '9e6aae', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('249', '1004', '2635', '周才云', '00', '', '13767094642', '0', '', 'cf171e845d01f18f87fc4f288cbf326f', '42fc48', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('250', '1004', '2643', '付印平', '00', '', '13970979827', '0', '', 'f7666b7360b7051e8c65b30c5108cd9c', '276135', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('251', '1004', '2740', '徐渤海', '00', '', '13677086950', '0', '', '22a5ad687a205f8da655ef8349a07dd5', '09e8a6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('252', '1004', '2770', '吴锦顺', '00', '', '18172850879', '0', '', '0ce12855d2e5992a8b3d84e36e1b3c42', '5161c4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('253', '1004', '2810', '刘浪', '00', '', '18679192011', '0', '', '100e732e7e034402034ad22fd409f901', 'bc4559', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('254', '1004', '2813', '乐承毅', '00', '', '13870963024', '0', '', '873209d2f3be00314c6813ff155a1d12', '4fae04', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('255', '1004', '2814', '周小刚', '00', '', '18970876258', '0', '', '47c0372b253db7a433e66c5bdc0243dd', 'c46d3b', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('256', '1004', '2845', '陈普', '00', '', '18172893601', '0', '', 'ef7357027c002202e57ed01502d0566b', '07fa74', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('257', '1004', '2859', '许晓芳', '00', '', '17770030426', '0', '', '70d028cc0629e958a21ddced6b8f825f', '9cdc7e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('258', '1004', '2916', '张彦', '00', '', '15879180530', '0', '', 'acb4f5d06841ce89375fcd0220410918', '5e60f9', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('259', '1004', '2934', '万金', '00', '', '15279151787', '0', '', '07194ed8700df362eb4e86693277fe8a', 'd8ef95', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('260', '1004', '2935', '刘杨晖', '00', '', '18779870882', '0', '', '34c56d0041073d5c85a76b1e150ffd3c', '265438', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('261', '1004', '2986', '谢晗进', '00', '', '18070039708', '0', '', '5f7f686257d6e720a4e3ab7f6dc9cf05', '596fcf', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('262', '1004', '3005', '易魁', '00', '', '18679198035', '0', '', '57c516ae3a1431bb07500c1f99c955c3', '3b2d3f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('263', '1004', '3013', '吕明军', '00', '', '13910654579', '0', '', '35088de3f490902170cda4df005b362b', '29b2d4', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('264', '1004', '3020', '万科', '00', '', '13870600710', '0', '', 'f8f53c91c383ba67516eb8d0ff5147d7', 'e0417e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('265', '1004', '3035', '唐衍军', '00', '', '13870643246', '0', '', '495d2b0db2aaa31211a19adc9704f58d', '39df7a', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('266', '1004', '3095', '李杰', '00', '', '15870000207', '0', '', 'd8c253c0b07c623cc6baf113426e73dc', '7c981d', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('267', '1004', '3096', '许艳', '00', '', '13795179565', '0', '', '1d755b92480306dd99f6acfb2ed3d148', '319644', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('268', '1004', '3102', '汪凌', '00', '', '15212995639', '0', '', '36de55aa721f45dee863c589c8d00e6b', 'be22d0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('269', '1004', '3103', '田满文', '00', '', '15726982365', '0', '', '24f081f70ec509d17b77acc63fa2be9d', 'a62cf8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('270', '1005', '1416', '孙焱', '00', '', '13870633810', '0', '', '62df35051791da2ba70c155e2e47e741', '93ac20', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('271', '1005', '1924', '曹永臻', '00', '', '13330069019', '0', '', '1fa0790d17f6d78deb39e47bc7e04244', '2a1ebe', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('272', '1005', '2876', '张文鹏', '00', '', '18170953561', '0', '', 'd0681c16b8bde994109aa55594d5f69d', '43a58e', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('273', '1005', '0648', '王志斌', '00', '', '13970979966', '0', '', 'c8fea2c3c62870e135b22581b81d921b', 'a4ebc6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('274', '1006', '1143', '刘遵雄', '00', '', '13027218331', '0', '', 'd93944195861b163477e9771bda1d9c1', 'dd1bb0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('275', '1006', '1402', '宋凯', '00', '', '13367005646', '0', '', '9350cd01202f8bd763f6b90f94a88bd6', '5a9bcd', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('276', '1006', '1403', '范萍', '00', '', '13870687415', '0', '', 'd9add0672cf5da830eeeb0ce85f556c8', 'eaeb86', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('277', '1006', '1406', '张跃进', '00', '', '13576052680', '0', '', 'd637cd946d319f8a1c967ba3bc4bdbf3', '08a74d', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('278', '1006', '1472', '蔡体健', '00', '', '13879187535', '0', '', '3c631e294f0448ad196cdb5f15312f6c', 'fb90a3', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('279', '1006', '1488', '万涛', '00', '', '13807097997', '0', '', '19b065489f8d165682da58aef510f44b', '36702f', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('280', '1006', '1494', '朱路', '00', '', '13330117971', '0', '', 'c2f94a1c1e6af2292c4fe8b306a80bf8', 'd42fb0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('281', '1006', '1533', '殷爱菡', '00', '', '13307097228', '0', '', 'eafc535993b90dc2686b862955e23efe', '476c3b', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('282', '1006', '1898', '莫佳', '00', '', '15970426152', '0', '', '6d92cba351f5ff6821f0adc2942974ec', '958ca8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('283', '1006', '2429', '刘艳丽', '00', '', '13979183796', '0', '', '705c67e7d45e6e4436dc9a3c1ed450e2', '84bb6c', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('284', '1006', '2488', '李伟平', '00', '', '13576098977', '0', '', 'cdcf30a68fe33ccb04b887e50d4423e2', '95d0e8', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('285', '1006', '2528', '胡辉', '00', '', '13330118550', '0', '', '06d959868311970f506535a094fe0188', 'adf4c6', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('286', '1006', '2535', '官雪辉', '00', '', '13970871029', '0', '', '8e23191f04a77e1391c626652e52490c', 'e2b336', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('287', '1006', '2578', '张恒', '00', '', '13507002833', '0', '', 'b230600a09463cce7ec41ba23e758478', '7ea618', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('288', '1006', '2585', '王鹏鸣', '00', '', '13870635512', '0', '', '1771d54b00ad0b482341528989bf9f59', '93fea5', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('289', '1006', '2596', '王杉', '00', '', '13755751140', '0', '', '2d3b21c9add9a67ab45df4c5726680b4', '44f25a', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('290', '1006', '2650', '张晓燕', '00', '', '13707094912', '0', '', 'a030f3b9eb3292a19f203472b0408a26', 'c82999', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('291', '1006', '2653', '姜楠', '00', '', '13979110689', '0', '', '6220332db94a4cf79fb62dfdb63b11e6', 'fa63e0', '0', '0', '', null, 'admin', '2020-05-15 13:54:52', '', null, null);
INSERT INTO `sys_user` VALUES ('292', '1006', '2672', '李波', '00', '', '18179135550', '0', '', '9a5648f7e65a0c39679df336d888ded3', '0ed0af', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('293', '1006', '2784', '刘志伟', '00', '', '15180466949', '0', '', '51a32ed750e6804d05ab6555e52cb7aa', '944235', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('294', '1006', '2790', '柳凌峰', '00', '', '18679823932', '0', '', '997f78a5f6593bb3ae7da1f8edc5eaf2', 'bc4422', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('295', '1006', '2854', '黄晓辉', '00', '', '13767990625', '0', '', 'bc68bbad72f0f471b05b7cc8a879a0dd', '54adda', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('296', '1006', '2886', '李光辉', '00', '', '18170052886', '0', '', '3f1ab3c7f6457ccb8b25ca9b7fa6a09b', '20c0c7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('297', '1006', '2887', '舒文豪', '00', '', '13617912968', '0', '', '34537d17e08eb4ced7bd6353757d2679', 'b10027', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('298', '1006', '2913', '赵军辉', '00', '', '13811267420', '0', '', '5febbfe30a5ae6a3dee289884ba9fc5a', '0f53bd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('299', '1006', '2929', '姚誉', '00', '', '13177896959', '0', '', 'e1db5d08f96ef3e03083f1d5d13dd836', '3877f5', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('300', '1006', '2931', '王登辉', '00', '', '13767145164', '0', '', 'b1038374f11a3907e2ec08f97edf886b', '43652a', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('301', '1006', '2944', '黄清华', '00', '', '13979130607', '0', '', 'f929912d64ff965ecd105faf9a0d7707', '12ebdd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('302', '1006', '2955', '周天清', '00', '', '15179168134', '0', '', 'e1149d62a73af2a02c72aa8193b0e2c9', '4638d9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('303', '1006', '2990', '李轩', '00', '', '15091892617', '0', '', '13a6c6e1d123829656e7ba11db4ca325', '178963', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('304', '1006', '3029', '聂学方', '00', '', '18665342690', '0', '', '606c1db1f0c87d8c92444795b8369a40', 'ad19c0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('305', '1006', '3042', '唐洪', '00', '', '13719179061', '0', '', 'efc32c20ae75cfeaff4279bd5c6633c4', '46974b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('306', '1006', '3092', '易钰程', '00', '', '18279189194', '0', '', '7f5551bd3c839389f4389ef3d516f6d4', '6c0847', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('307', '1006', '3098', '任宝平', '00', '', '15870672023', '0', '', 'cf40145cdbf96727717fbbbdcf7fbf89', '58525c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('308', '1007', '0323', '卢宇', '00', '', '13879100298', '0', '', '6246d772a85fdaf83d5b254cfcf9a1f1', '11598e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('309', '1007', '0626', '吴昌林', '00', '', '13870866575', '0', '', '07da3c623ccdce62eee7170eda70e6f4', 'd90e0c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('310', '1007', '1906', '杨龙', '00', '', '13576011380', '0', '', 'ffaf5ba50abeb1738341c949c85c6d98', 'd848c9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('311', '1007', '1939', '唐国华', '00', '', '13807054601', '0', '', 'fcc2e79dd6ba191b1eb3262b94fafc5a', 'ce1b15', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('312', '1007', '2414', '桑迪欢', '00', '', '13979119750', '0', '', '2c0012b948ec39bd53ed2a485c83b13d', '719e58', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('313', '1007', '2505', '王卫霞', '00', '', '13979195747', '0', '', '9ea492a76316704a2e00280d6e49bceb', '8078e2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('314', '1007', '2515', '蔡欢江', '00', '', '13667091668', '0', '', 'b685d2ef4d2897e7fdd918fe51e64486', '41697d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('315', '1007', '2561', '王俊文', '00', '', '15070044928', '0', '', 'a04ab549d0bfa25c197f7f1a6d31f3ca', '8dbfc8', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('316', '1007', '2633', '阳达', '00', '', '15170229326', '0', '', 'f6539e240e227d795adc01cf19bc9221', 'ab885f', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('317', '1007', '2660', '毕鹤霞', '00', '', '15270901266', '0', '', '4a47e57e09982f2917da509260b8e0fd', '13c098', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('318', '1007', '2711', '梁成意', '00', '', '18720059229', '0', '', '0f22c0da0a6c3ebdcd8eb021c3c217ae', 'cfb4a6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('319', '1007', '2839', '张祥志', '00', '', '18720051976', '0', '', 'cddd99f7433e84cc29021a1068d33672', '0cf21c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('320', '1007', '2892', '宋婷', '00', '', '15797639829', '0', '', '7f641d51e630fb8149007c8d3da8ec01', 'd1c0bd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('321', '1007', '2978', '胡小伟', '00', '', '18179155500', '0', '', '083b0d839ea333967419d77ab3aeb81c', 'fbb909', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('322', '1007', '2983', '于辉', '00', '', '18679036158', '0', '', 'bf621f5025cbcf683477cb24deb50597', 'c6304c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('323', '1007', '3052', '卢群', '00', '', '15070076299', '0', '', '73983286ede4bddbbfac664ea137eba3', '27f4e2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('324', '1007', '3054', '黄波', '00', '', '18170953150', '0', '', '0b6f943d1dc41a3ae075242968b6d586', '897d6b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('325', '1007', '3056', '胡飞海', '00', '', '15070855691', '0', '', '646bb0eda10fd7723958a093c744fe09', 'fa4be0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('326', '1007', '3057', '朱梦云', '00', '', '18679217616', '0', '', 'c88e5f731f348ec38aa4d38a8a6dfaa4', '7d2653', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('327', '1007', '3073', '曾明生', '00', '', '15270003816', '0', '', '2ef978d7cf734e58c53344a0c2b9ccc8', 'b83df5', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('328', '1007', '3084', '杨晓培', '00', '', '13677088860', '0', '', '06d44002d624fa969db9edac2702136a', '017c44', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('329', '1007', '3085', '贺玉琳', '00', '', '13870658880', '0', '', '5adef2f44f65cc402f5f52d77b94c4b2', 'a93154', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('330', '1007', '3121', '程曦', '00', '', '15919335538', '0', '', '6191527e7d05ad96bb35ea509bf2c2a2', 'fc2744', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('331', '1007', '0334', '胡卫萍', '00', '', '13007218576', '0', '', '2721f6b829cd31ba62d5630e2d854ecc', 'b29265', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('332', '1007', '1083', '任军莉', '00', '', '15083809801', '0', '', 'ce1d088c7b2060720f250cb46e271bf7', '78af5b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('333', '1008', '0039', '朱旭生', '00', '', '13607049671', '0', '', 'e0fb11030295afc12b972bdb818bacfb', '64aaf7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('334', '1008', '1855', '范自柱', '00', '', '13970993650', '0', '', 'cc96a50dd968b689a4077c858ba53b41', '00382f', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('335', '1008', '1879', '熊狂炜', '00', '', '13767055403', '0', '', '9a669c9a2dab4678dc7c9eeadd615164', 'a29c6b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('336', '1008', '1881', '李春华', '00', '', '13879170636', '0', '', '9508ca4736797027a49aef058d183e79', '672ccd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('337', '1008', '2446', '刘正方', '00', '', '15270025128', '0', '', 'ec733f4ee6e5cb17a466f2572bde88dd', '4e194a', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('338', '1008', '2447', '伍清萍', '00', '', '13767405770', '0', '', 'd1a30fc2b81fe20d5afa6d28d41557e1', '65cf96', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('339', '1008', '2481', '刘志敏', '00', '', '15083520685', '0', '', '0b3de26920d8b1136658a7d98f14cb03', 'aaa1b9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('340', '1008', '2483', '叶晓峰', '00', '', '15807009732', '0', '', '9aeab0fb6a5c4333b2cd25ff0acadacf', '86d461', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('341', '1008', '2514', '刘志荣', '00', '', '13517006256', '0', '', 'b4ff6d01a9426ff8fabb5b4da6a710de', '00e004', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('342', '1008', '2598', '石海泉', '00', '', '17770081898', '0', '', '8367175809784135979bdef4e8bc6ae1', '0a0315', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('343', '1008', '2615', '张建松', '00', '', '15079151763', '0', '', 'dc2fe1999789d930d5b50f91dc200428', 'cdfaf0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('344', '1008', '2630', '程广玲', '00', '', '15970687591', '0', '', 'a3c83572a8dce19922ce18411e01ffe5', '0be096', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('345', '1008', '2662', '肖瑜', '00', '', '13330117645', '0', '', '403805362e74819df29d2916af54732b', '77f53a', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('346', '1008', '2679', '谢春娟', '00', '', '15170012526', '0', '', '6bb6a86b19164bec3214b49a9508d56a', '4af19a', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('347', '1008', '2682', '王广富', '00', '', '13699533905', '0', '', 'b66c355b4c96201ce0e740289b8d090d', 'b74691', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('348', '1008', '2787', '王莉', '00', '', '13677087400', '0', '', 'a394d6f8c58a5cdafdb1dfd18bc8cc68', '731919', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('349', '1008', '2824', '张伟', '00', '', '15270921521', '0', '', '6bc67eb8a152a5f0ec37e59597ffe630', 'db4bc2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('350', '1008', '2835', '罗春伶', '00', '', '15270845798', '0', '', '813d395eb2543767b9a16a027809eec7', '331097', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('351', '1008', '2840', '王烨青', '00', '', '18279159412', '0', '', 'dd913ed29af6ca9679ee79d6061d3858', 'dab868', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('352', '1008', '2852', '聂文杰', '00', '', '13657098208', '0', '', '67b5085e038343417f47364a9efdd83e', 'fac549', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('353', '1008', '2857', '曹艳华', '00', '', '13970891195', '0', '', '5ecb85e569cf4a1793e16982892abc11', '082eb6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('354', '1008', '2873', '陈光祖', '00', '', '13576105073', '0', '', 'd187d84d3c707057f29b460414b9f965', '4eae22', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('355', '1008', '2898', '徐勋卫', '00', '', '15879079460', '0', '', '0e77ee9b3b5f8089616f18d4405d8619', 'efd406', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('356', '1008', '2933', '简慧', '00', '', '18270806834', '0', '', '7ceb8f2c8a98f1805da52d3ddccee20f', 'e6300d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('357', '1008', '2939', '周艳红', '00', '', '15797868700', '0', '', '74d5f3eac107a247bd3ce90140fae0f2', 'cf6c8d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('358', '1008', '2942', '张静静', '00', '', '18270802364', '0', '', 'f49f8cf649599561e1988728b1146cde', '212379', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('359', '1008', '2943', '李贵花', '00', '', '13917879806', '0', '', '3ab6650427ecec30f9e9cde02282315b', 'fbfd3b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('360', '1008', '2985', '程自强', '00', '', '15797717119', '0', '', 'a5e6698421eb16e65c46d6ed5966cf26', '6f1338', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('361', '1008', '2987', '詹小秦', '00', '', '15797926016', '0', '', 'bf5797cc83d73d310aafb450e2e46a25', '5a6b90', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('362', '1008', '2993', '丁素云', '00', '', '15797930800', '0', '', 'f8e9dfccb9014edbe81e80dd731f9fbe', '576254', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('363', '1008', '3022', '罗昕', '00', '', '15207495154', '0', '', '74cf4b0ae069ad604593fd4440a0066b', '56f448', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('364', '1008', '3026', '饶鹏春', '00', '', '16679012015', '0', '', 'ca83322909cded306d5dbfd298e6ac0e', '874876', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('365', '1008', '3031', '万文强', '00', '', '18896586691', '0', '', '32c315984ebb71e4cd9013c09cba7f80', 'f67640', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('366', '1008', '3032', '黄文涛', '00', '', '13720168627', '0', '', '1a1467f657cccb2b8103b4ac315bc794', '9b2001', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('367', '1008', '3033', '吴鑫', '00', '', '13120002705', '0', '', '113ca6c4508cd4e0ce21d1326c559d6c', 'eec3b0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('368', '1008', '3065', '余翠英', '00', '', '18279128580', '0', '', '20bb89da6269c72ea3e85b20dc49275b', '647743', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('369', '1008', '3079', '刘刚', '00', '', '18579100623', '0', '', '7c1541086c60f242dfa6645fa545e87b', 'b4d8b8', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('370', '1008', '3109', '甘晶辉', '00', '', '18811511732', '0', '', '62fcc04df1751f048c5f34d9af699ba5', '63aecd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('371', '1008', '0052', '刘二根', '00', '', '13803515910', '0', '', '26f43ea658bca7a0febd6ff4f8dc3a27', '946f4b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('372', '1008', '0026', '徐保根', '00', '', '13879123773', '0', '', '5941925eadc227cbf074ca277f99faee', 'b84769', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('373', '1009', '0433', '刘庆雪', '00', '', '13879136971', '0', '', '69ea1fb04c10e49e61817a4f0fac742c', '116367', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('374', '1009', '0441', '陆秀英', '00', '', '13870903698', '0', '', '56cbdb08f6949ed4b1b610979cced9e5', 'b31390', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('375', '1009', '0464', '唐斌', '00', '', '13170881200', '0', '', '76f787f4a19fcade4e8f635649d3cd52', '93788b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('376', '1009', '0465', '肖群', '00', '', '15070986268', '0', '', '7c60f97930b83748c686b64e58d19392', 'adf260', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('377', '1009', '1971', '孟冬梅', '00', '', '13732978215', '0', '', 'f19dcf406370889619b46b18cd8495c5', '380f44', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('378', '1009', '2926', '胡永祥', '00', '', '18970035843', '0', '', '8a898254eca177481b3ffee6fcc4c544', '221813', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('379', '1009', '2960', '袁平华', '00', '', '17307095916', '0', '', '1c1215bb13dad4d06bd9f2607f13fa63', 'b249d1', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('380', '1009', '3034', '童芳华', '00', '', '17750663014', '0', '', '0419a56fff14fa0d1afe696a53e94b58', '279b59', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('381', '1009', '3080', '樊梦', '00', '', '18850716827', '0', '', '762f27340a0fb30353c307dcb867f503', '4d0983', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('382', '1011', '3059', '张劲帆', '00', '', '18868470103', '0', '', '5e435a7842d2af5908df375023b02d80', '4878a6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('383', '1012', '0206', '宋平岗', '00', '', '13803545872', '0', '', '74723c6a9717d5e7efd6f23c107c9951', '6ae105', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('384', '1012', '0307', '李冬伟', '00', '', '13870624496', '0', '', '07219a90af3c44fa777cb183e2a9d67c', 'fc4334', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('385', '1013', '0266', '张诚', '00', '', '13970036869', '0', '', '0fb1ddba1bf36d546678e2b64f83de65', '81e938', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('386', '1013', '1015', '管淑红', '00', '', '13970845346', '0', '', '46996231969bcf936f1a7b2b18b980f4', 'a96b07', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('387', '1013', '1018', '甘卫华', '00', '', '13870986971', '0', '', '4133d07b1a939d8311d49a6303b79f0c', '3ddfcc', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('388', '1013', '1377', '查伟雄', '00', '', '13870633985', '0', '', '98dd2a9b75b27b4c6f05fcc09338b7f7', '65f535', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('389', '1013', '1654', '孙剑萍', '00', '', '13330090862', '0', '', 'b5ba1414f59c9f8445b2eef5ce92e7b3', '6c5693', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('390', '1013', '1901', '李卓群', '00', '', '13870967901', '0', '', 'ab96ae38d09542f9e861dc750118af9b', '3bc518', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('391', '1013', '1917', '郭军华', '00', '', '18970949476', '0', '', '8cca6d8c74e84b60894a8d5faf84ac6d', '870e66', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('392', '1013', '1978', '徐翔斌', '00', '', '13755616002', '0', '', 'ae391b69547da5d68bcf73c3dcd3b2c9', '255db6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('393', '1013', '2000', '曹文琴', '00', '', '13576271017', '0', '', '5b90fd16e5cfd53e2e1c6bd3b45ca40a', '384dcd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('394', '1013', '2577', '张志坚', '00', '', '13767079318', '0', '', 'ad266d98595295786e2ac8e292116a58', '4ce323', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('395', '1013', '2689', '曾明华', '00', '', '13247095229', '0', '', 'b9f2219482991919451d3abb3b51d8a1', '3f30a6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('396', '1013', '2691', '张兵', '00', '', '13870671586', '0', '', 'a8a2034f16bfabdd0831095fcecd1fb1', 'a550d9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('397', '1013', '2851', '仰建岗', '00', '', '18907912299', '0', '', '330d0c43bfca1ecb20baffe554d24f00', '525386', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('398', '1013', '2903', '鄢伟安', '00', '', '13170915918', '0', '', '96faa0b85dc467fc17b4a5f7f0d4a239', '2d37ee', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('399', '1013', '2904', '石俊刚', '00', '', '15797652267', '0', '', '976485590f3bc0570641c46e0b763584', 'e4c9df', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('400', '1013', '2910', '熊钰冰', '00', '', '13870080201', '0', '', 'e64c814c7507e5001b9a8c7695d8d742', '5b461f', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('401', '1013', '2918', '李响', '00', '', '18162105850', '0', '', '1cafd4787d6b1191d672e0c60ec5aaac', 'f8e56d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('402', '1013', '2968', '彭理群', '00', '', '18770086151', '0', '', '6ca336728c0413d85713cea6e6d83b4d', '60c436', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('403', '1013', '2970', '江涛', '00', '', '13761993939', '0', '', '0fb5ffb739ebbcabb9932bb3a85c5cea', 'c50bc8', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('404', '1013', '2972', '强生杰', '00', '', '15279142062', '0', '', '5f813bb98bb204e529b0cc59b89b7e3e', '489d82', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('405', '1013', '2981', '薛运强', '00', '', '13241732469', '0', '', '25e638d62b519159d43fdbddc1dd9ce4', 'c5d77e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('406', '1013', '2982', '严利鑫', '00', '', '15071048235', '0', '', 'a6db1745e6f041474b9713f9650cab78', '2beef7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('407', '1013', '2999', '万平', '00', '', '15797915578', '0', '', 'e8a3c064140f77954458cc4947fe45f9', 'a36bd9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('408', '1013', '3028', '马亚锋', '00', '', '17370862521', '0', '', 'cf1d4d3f6949907b04dc76b4e1ddc5a7', 'a3da5d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('409', '1013', '3055', '余地', '00', '', '17390953204', '0', '', '4ba3875b2c3f2e8c392443ca16f1297a', '432dcb', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('410', '1013', '3097', '高杰', '00', '', '15291817544', '0', '', '90810d3b187c19b43aa5ffdb108ca154', '14cd4e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('411', '1013', '3104', '周涂强', '00', '', '15802747512', '0', '', '16dbcde176fb974b7770a74c2620230b', '0f9ef6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('412', '1013', '3119', '彭志敏', '00', '', '13279385795', '0', '', 'e77b321c70997e13e49de0e6aa07cb19', 'c1f870', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('413', '1014', '2621', '张昭国', '00', '', '13699536058', '0', '', 'efc904988b9aca60c5181333224bba49', 'a4bc5a', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('414', '1014', '2761', '杨畅', '00', '', '13767460472', '0', '', '13166ca6e2f58de17d04e6ed0d95883f', '580cdf', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('415', '1014', '2838', '王晓旭', '00', '', '18166036688', '0', '', 'bfa0bd4f7016fb53a548a1bbc4da03d7', 'd6d713', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('416', '1014', '2884', '李德炎', '00', '', '15070962395', '0', '', 'af74c2ca2f11625e79c71ca22c8f990a', '8018cd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('417', '1014', '2989', '高金华', '00', '', '17770885445', '0', '', '6489d241f39905fb6c5b9bef4d75c2bb', '5bc442', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('418', '1014', '3112', '幸玉芳', '00', '', '18963954293', '0', '', 'e668456c630a81301653abe2b475b64f', '3852fd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('419', '1014', '3113', '刘光华', '00', '', '18279112958', '0', '', 'a4ac0c0e3a72cf0b136b0b50ecfc855b', 'e911d7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('420', '1014', '3117', '汪凡家', '00', '', '13720358533', '0', '', '4791d7692e5c51db75d6bf145501f1c6', 'b2f9e7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('421', '1014', '3122', '黄化', '00', '', '13736400336', '0', '', 'e321c7a332175d52c6a4a04116b5f73c', 'd93907', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('422', '1014', '8163', '刘波', '00', '', '15870695086', '0', '', '5e0ca4d3a69d7f750ce785c04ac211ec', '3dc53d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('423', '1014', '2427', '卢丽刚', '00', '', '18579118964', '0', '', 'b9f46e055270a1cbe9e03950b6dcd350', 'dc92d6', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('424', '1014', '1084', '王新华', '00', '', '13507915301', '0', '', '21aef6c3a96f22f07af48abc6ce45486', '66f201', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('425', '1015', '0155', '黄志超', '00', '', '18679109796', '0', '', '19ec68579f3f38ce530e0b94b1bc40fe', '22f464', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('426', '1015', '0961', '胡林', '00', '', '18679176268', '0', '', '7fa9e20cfc27b2e4f4d08c9cf59c3340', '648cbd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('427', '1015', '1065', '何忠义', '00', '', '13970801238', '0', '', '70a223d51b4b2f3ccfbe410eabd4e04f', '133593', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('428', '1015', '1136', '章家立', '00', '', '15807008870', '0', '', '2cf778d5c093cf8e151a13990c44fba6', 'a435cd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('429', '1015', '1364', '方智利', '00', '', '13767072990', '0', '', 'd9b580200c9ef60dc2228a630c306f02', '54e06e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('430', '1015', '1466', '何柏林', '00', '', '13870051536', '0', '', '4fedef80381991ea7f9f07b0aadb4a7a', '8e8672', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('431', '1015', '1537', '徐文媛', '00', '', '13870091975', '0', '', '71f0f82bffa036a40ea66d7490865423', '306eaf', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('432', '1015', '1862', '刘建平', '00', '', '13879159622', '0', '', 'f7f61011a4aadbd88554243e0b932e69', '069ba3', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('433', '1015', '2469', '钟昀', '00', '', '13870615297', '0', '', 'c75ca867ff67708cf5f939e52486acbc', '879429', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('434', '1015', '2524', '杨绍明', '00', '', '15979015703', '0', '', 'ed3fc921bfa2c2f4993be1ed148cafc5', '48d806', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('435', '1015', '2593', '王少会', '00', '', '13870634640', '0', '', '26df65992a1f464a8bb2ec7f953f2bd5', '66df1d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('436', '1015', '2611', '万迪庆', '00', '', '13870634640', '0', '', '821fcc4552223961a2a94aaad2a73b0a', 'f153de', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('437', '1015', '2622', '胡勇', '00', '', '13576012078', '0', '', '0221358913f1d7f594325329e28007e8', '006072', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('438', '1015', '2752', '满华', '00', '', '13507096250', '0', '', '822e45a31e068d2c4dada77d69e3bb1a', '902316', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('439', '1015', '2821', '郭赞如', '00', '', '18870863015', '0', '', '9ee420341682ee2c4a63e0da00cdd594', '237929', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('440', '1015', '2855', '刘德佳', '00', '', '13672228301', '0', '', 'e0644b49e4aa5ba3d24935adff1be9a0', '69ec4e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('441', '1015', '2865', '曾建邦', '00', '', '17770030391', '0', '', 'd6af5f22cc5c984bcd583dce3b1a5a8b', 'c20e56', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('442', '1015', '2866', '陈曦', '00', '', '18720057860', '0', '', 'ce2601f43a1da1872263745269aeb125', 'b471e9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('443', '1015', '2880', '韩明', '00', '', '13698003858', '0', '', '59237ced86b8cf3510ece27b7111a123', 'f7cb66', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('444', '1015', '2881', '李丽丽', '00', '', '17562647725', '0', '', '5e17f820eb7b4a3f909aafa2e6c434a8', '0c7182', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('445', '1015', '2891', '吴晓欣', '00', '', '15797651985', '0', '', '10d499d9682e39e2f1013430f0b0e812', '9208c5', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('446', '1015', '2906', '李力', '00', '', '18702649042', '0', '', 'a66e9851b9b8f3d783b5ffbc183e740c', '877279', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('447', '1015', '2908', '彭家喜', '00', '', '13052778316', '0', '', 'dbee05f93ec2d3c0db4f284612c89360', '0ed36c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('448', '1015', '2920', '刘永鑫', '00', '', '13755790070', '0', '', 'c02849898ee72eb15993ea660105887f', 'dc8bfb', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('449', '1015', '2947', '钟美玲', '00', '', '15797863895', '0', '', 'bed3de82f14af205da890ef394144efa', 'f85d42', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('450', '1015', '2964', '章日超', '00', '', '18779116894', '0', '', 'e6e5e29e46cc845596fd057c530ced15', 'd4b326', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('451', '1015', '2965', '唐延川', '00', '', '18720966869', '0', '', '5e6a75b6e5a705cb206ff02d08763e59', '7968d7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('452', '1015', '2975', '臧东勉', '00', '', '13699532086', '0', '', 'c17c1c38e8937fe776f950856d2aad16', '3cbbfd', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('453', '1015', '2992', '邓健超', '00', '', '13807098758', '0', '', 'df7974fa84c2e127e9bae83879354151', 'bfc4a4', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('454', '1015', '3006', '沈明学', '00', '', '13605809066', '0', '', 'b8484ac53938b140411c125296c42448', '64743d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('455', '1015', '3008', '赵火平', '00', '', '19970192205', '0', '', 'f0fe010d4599910b09ec7ff3b4e75828', 'f88023', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('456', '1015', '3077', '张帆', '00', '', '17809283882', '0', '', '78cb74e44c42833991a6a4ba89b2c815', '64df43', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('457', '1015', '3078', '焦海涛', '00', '', '15870684152', '0', '', 'e290ae62d121ba3d26caf780b868da54', '2cb038', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('458', '1015', '3107', '廖梦垠', '00', '', '15079155230', '0', '', 'edf043b5f556628be6b9e0b965abca39', 'd1953e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('459', '1021', '0126', '黄晓生', '00', '', '13767191459', '0', '', '82790221b8cc294c8e2c845737bb6571', '6130f2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('460', '1021', '0238', '张利华', '00', '', '18970958928', '0', '', '87eecfd7012d41d97dce1fc3609d794a', '208cd0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('461', '1021', '1332', '张红斌', '00', '', '13767005548', '0', '', '6c8db12d33b3b2129b91fad540e772e9', '88ba3c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('462', '1021', '1337', '严丽平', '00', '', '13367008105', '0', '', 'e120c0aacaf8ee57f1b0fd7195d20a32', '8082f3', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('463', '1021', '2489', '王艳', '00', '', '18970077816', '0', '', 'eb598306d04fb1f5a1c7870e3c12e86f', 'e6346c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('464', '1021', '2675', '袁朝晖', '00', '', '18970872006', '0', '', '55bb11f41f8d1fc5042c32de832526e0', '982b8c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('465', '1021', '2715', '肖美华', '00', '', '13007282086', '0', '', '343c45c6cced190c89779434e6e5d8ac', 'd32ae8', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('466', '1021', '2757', '魏波', '00', '', '15870691216', '0', '', 'c608720d986ba4b6692f94c0eb535d22', '6bc483', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('467', '1021', '2803', '吕敬钦', '00', '', '18779892879', '0', '', 'a128bf9f5e05e2b1fa3b5587073a4979', '787c82', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('468', '1021', '2817', '陈海林', '00', '', '18870811903', '0', '', '013edb2ee99a15b162038c0bbc3f463c', '791e39', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('469', '1021', '2831', '谌勇', '00', '', '13617095732', '0', '', 'e025a599ca6429e0b53003cec458a98c', 'b0b7b7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('470', '1021', '2837', '余鹰', '00', '', '13755776981', '0', '', '6f1a7e1537fa88ec8c980386c5629ba4', '677be1', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('471', '1021', '2877', '刘伟', '00', '', '13340117127', '0', '', 'fbbf0601c69047f91773cafb92b68008', '5f47f4', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('472', '1021', '2878', '李雄', '00', '', '15797652860', '0', '', 'b50465c249b31a41384a25acac65f47e', 'c44b5e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('473', '1021', '2915', '周会祥', '00', '', '13133912521', '0', '', 'e2ca8727b7c48df124cb6fbc76248fac', 'd8f51c', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('474', '1021', '2949', '王辉', '00', '', '18970906100', '0', '', '3708510c74ca2dfcadae9bfbdd3ab4c9', '3e985b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('475', '1021', '2969', '邬昌兴', '00', '', '18879100677', '0', '', 'f1f75e96b1aeceacc20e84f872f32e12', '59b1a1', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('476', '1021', '2977', '邓志刚', '00', '', '15879105765', '0', '', 'd7f4e92bac5c3f88271fef3f12dfb461', 'c74ec9', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('477', '1021', '3058', '朱志亮', '00', '', '19100177591', '0', '', '6220c87be764d9af9c64a389de526dd5', 'eb572d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('478', '1021', '3019', '罗国亮', '00', '', '13732959894', '0', '', 'dd276c3cc39b0ff51a96af8911b77f65', '34303d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('479', '1021', '3116', '钱进', '00', '', '13775075661', '0', '', 'a068013136ab3ce1e13a1a4d7a6273ef', 'bb24f3', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('480', '1107', '1320', '舒曼', '00', '', '13979175690', '0', '', '401f19dd2ab432d854460efe80553b35', '160da8', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('481', '1107', '2864', '龚玲', '00', '', '13672223930', '0', '', '0622c46b7915a36f90550f307f93d2a4', 'd156fa', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('482', '1107', '3010', '孙长玉', '00', '', '15180430506', '0', '', '4d4ec928dd58e4ef1003c96a57410520', '01e59f', '0', '0', '127.0.0.1', '2020-06-04 14:01:07', 'admin', '2020-05-15 13:54:53', '', '2020-06-04 14:01:06', null);
INSERT INTO `sys_user` VALUES ('483', '1107', '3111', '舒琅', '00', '', '13336156035', '0', '', '2f12701059a957b50837a11cbd4f0535', '3f968d', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('484', '1108', '1564', '汤兆平', '00', '', '13330090628', '0', '', '0a4d19fe18a3a5577c6235237a522c20', 'b9c474', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('485', '1109', '0080', '胡锋平', '00', '', '13970867302', '0', '', '4f4653505951a3653885a81092b43065', '012fab', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('486', '1109', '2667', '张斌', '00', '', '13576081613', '0', '', '584aadabad1021db4ac054a75cd0595d', '8116e0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('487', '1111', '1331', '方焘', '00', '', '18007091122', '0', '', '94d2a713ce3e0a96a52bfcf34cdfaa25', 'd056a2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('488', '1111', '2760', '陈志建', '00', '', '18720095968', '0', '', '7250d4f2f011bc61278c78e11b2dc793', '69b6a7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('489', '1112', '2858', '罗伟', '00', '', '13699557453', '0', '', '442fc59379daba11c73ee3183e1db0a7', 'd24ba2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('490', '1116', '2530', '刘永胜', '00', '', '13767977068', '0', '', '790c3f55019f803b9c1edd2f13dd8660', 'e6feb3', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('491', '1202', '1032', '李晨', '00', '', '13970097002', '0', '', 'c3495accec23ec32a05513f6c7a10463', '08b1e0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('492', '1205', '2473', '赵龙志', '00', '', '13970051357', '0', '', '1c7e47ef27b52c9b26f95717aeda12eb', '8e88de', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('493', '1207', '1979', '杨洋', '00', '', '18970035551', '0', '', '984cb680144a9d33c9e88973eafe0e0b', '61ae61', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('494', '1208', '1330', '肖乾', '00', '', '13879133718', '0', '', '10368a4bd0cfb5f1298541e910f57d0f', '2008a7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('495', '1208', '2827', '袁方', '00', '', '18870068621', '0', '', '25c6cd92f198f68eb963be6de14333f8', 'c884e7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('496', '1302', '2899', '万怡灶', '00', '', '13920004261', '0', '', 'f4192027806557238b7ea7a9385aa4ae', 'dbda7b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('497', '1302', '2900', '罗红林', '00', '', '13752197832', '0', '', '73dc1fb9cc6d7f433b389bbf83206b9d', 'dc8923', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('498', '1302', '2936', '敖海勇', '00', '', '15797863906', '0', '', '76354e034c6407efaa77d72ba4386700', 'bbe4f2', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('499', '1302', '2966', '杨志伟', '00', '', '15870646796', '0', '', 'bb6f983bcac86a9867f714840ef0c1b7', '82b24e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('500', '1302', '2991', '胡剑', '00', '', '17607082109', '0', '', '520fdf49353a93e3571d4abaebbcda3a', 'bf4427', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('501', '1302', '3018', '张全超', '00', '', '18070156119', '0', '', '3f5708082347104218d1b17f0d3c6ddc', 'c4a9e5', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('502', '1302', '3071', '陈泽晶', '00', '', '13617008962', '0', '', 'a6a23ece7d8fc44afb72f61ed77e9083', 'bbf65e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('503', '1302', '3101', '胡晓明', '00', '', '18705196331', '0', '', 'c8d7c6b20ccc087666ea18dc27b9640e', '987cc7', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('504', '1302', '3118', '陈绵', '00', '', '18540198631', '0', '', '6f414a2bdafc44ecbcba9ab3c59875da', 'a25ca1', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('505', '1302', '3120', '郭文建', '00', '', '17608484674', '0', '', '33607e509421fb398019a8cc7eac489b', '193f7b', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('506', '1302', '8610', '刘向阳', '00', '', '18959281839', '0', '', '1b9ce036da1c0683a8cd85fc523be6c4', 'ecd9f8', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('507', '1502', '0236', '陈剑云', '00', '', '13807085491', '0', '', '2d9654a551652044164679a4842336a5', '7c608a', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('508', '1502', '1535', '周学军', '00', '', '13879133980', '0', '', '5f35d0eb74b04fd85d0f367df4fe3786', 'af3fd4', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('509', '1502', '1542', '王世杰', '00', '', '15270940529', '0', '', '5f3e9d5f48ce2cf568c9c9a0a02ae940', '63b988', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('510', '1502', '1988', '万煜敏', '00', '', '18679055500', '0', '', '1fc833693a7bbb23d49afa923885f32c', 'ad1b06', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('511', '1502', '2579', '衷路生', '00', '', '15083559132', '0', '', '3356cbd04f48061db6b5aba09d7bc2f7', '53e524', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('512', '1502', '2819', '谢衍', '00', '', '18870077293', '0', '', 'dd50b9bd883db64e0b5a0f4ca166356a', '119f44', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('513', '1502', '2828', '黄跃', '00', '', '13576968725', '0', '', '745584e2d1d351e7a5c226407e8f6d59', '850530', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('515', '1002', '0651', '赵敏', '00', '', '15888888888', '0', '', '52837838d9f0fceb6dd47d00c262f0d0', 'd69880', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('517', '1004', '0303', '林井萍', '00', '', '15888888888', '0', '', '3996f37093ec1a618dda4eb6b9a1c543', 'd3502e', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('519', '1006', '1192', '蔡卫平', '00', '', '15888888888', '0', '', '792a6aa26daca08558bd7c96f5f9112a', '8c2d6f', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('520', '1007', '0605', '黄瑜', '00', '', '15888888888', '0', '', '941b210be94e90011de2e2811fc6c442', 'b6c0ed', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('521', '1008', '0527', '吴效葵', '00', '', '15888888888', '0', '', '25c26debc511516e54f8d3e81f6bf911', '3146f4', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('522', '1009', '0616', '陈科', '00', '', '15888888888', '0', '', '42abcc9e4f8ed189dda91ae47a24366e', '45b3b0', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('523', '1011', '2564', '田玉兰', '00', '', '15888888888', '0', '', '3ff06ffb25cf7e6ff0bcb1e76d4c8869', 'fc6a58', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('524', '1012', '1570', '郑轶', '00', '', '15888888888', '0', '', '00a79ac9e6a36d67c452b0cc4e601799', '971907', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('525', '1013', '0716', '丁锋贵', '00', '', '15888888888', '0', '', '98dfb28915e81dc125e4f8582a0db1d0', 'd33a95', '0', '0', '', null, 'admin', '2020-05-15 13:54:53', '', null, null);
INSERT INTO `sys_user` VALUES ('526', '1014', '2945', '张剑锋', '00', '', '15888888888', '0', '', '6e0821246965984b27747f72465a36d4', '5552eb', '0', '0', '127.0.0.1', '2020-06-04 14:00:39', 'admin', '2020-05-15 13:54:54', '', '2020-06-04 14:00:39', null);
INSERT INTO `sys_user` VALUES ('527', '1015', '0843', '程浩', '00', '', '15888888888', '0', '', '83c64d462db8b8e36cacbe4f3baa98d8', 'b38d47', '0', '0', '127.0.0.1', '2020-05-15 14:59:03', 'admin', '2020-05-15 13:54:54', '', '2020-05-15 14:59:03', null);
INSERT INTO `sys_user` VALUES ('528', '1021', '0408', '曹义亲', '00', '', '15888888888', '0', '', '5fea86a1367578b0f151f4ae0d0c400f', 'd502b5', '0', '0', '127.0.0.1', '2020-06-02 10:57:37', 'admin', '2020-05-15 13:54:54', '', '2020-06-02 10:57:36', null);
INSERT INTO `sys_user` VALUES ('529', '1030', '1473', '胡桃元', '00', '', '15888888888', '0', '', '1998b20c8165cdd04b942882dae0b22c', '572486', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('530', '1031', '8019', '王冰雪', '00', '', '15888888888', '0', '', 'a2fe35e0f17e83dde3431d4edfa1739c', 'ff6a2c', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('531', '1100', '0646', '凌四宝', '00', '', '15888888888', '0', '', '6cdb39320034dbe27b483697f58f29ee', '18680d', '0', '0', '127.0.0.1', '2020-06-04 14:46:18', 'admin', '2020-05-15 13:54:54', '', '2020-06-04 14:46:18', null);
INSERT INTO `sys_user` VALUES ('532', '1101', '0514', '闵伸', '00', '', '15888888888', '0', '', 'f3bd51022bd67739d277ceabcd1586fb', '4ab7da', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('533', '1102', '2693', '陈磊', '00', '', '15888888888', '0', '', 'd73f984d9e9a4c61d9e37829ddb07983', 'c9e0d3', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('534', '1103', '1424', '陈沈平', '00', '', '15888888888', '0', '', '6edc46766c47cc21e7a2bf6b9fc8e240', 'a8db9b', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('535', '1104', '0652', '杨东明', '00', '', '15888888888', '0', '', '442d0531585f932274af8cad609ab4aa', '92a8f8', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('536', '1105', '0499', '蓝荣', '00', '', '15888888888', '0', '', '3c8aa8e1c573eb2695b4eec07e5dfa65', '9f35ba', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('537', '1106', '0622', '黄家和', '00', '', '15888888888', '0', '', 'a4ee26b140a44535805c92a3e4a081ed', '68b519', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('538', '1107', '2799', '李雪峰', '00', '', '15888888888', '0', '', '7036a1abad5ecc593f8265f2d9e6de92', '6df761', '0', '0', '127.0.0.1', '2020-06-04 14:57:59', 'admin', '2020-05-15 13:54:54', '', '2020-06-04 14:57:59', null);
INSERT INTO `sys_user` VALUES ('540', '1109', '1762', '朱王海', '00', '', '15888888888', '0', '', '0949773cd4cf69d3c402fb7c0bc7ac8f', 'a276ef', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('541', '1110', '0596', '付自生', '00', '', '15888888888', '0', '', 'e0dd5ba362eac6f6233ffb2bc3d6e952', '31b6a5', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('542', '1111', '1683', '徐玉萍', '00', '', '15888888888', '0', '', '8363fd4da2b162b988e398491bc40528', '431715', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('543', '1112', '1576', '陈云萍', '00', '', '15888888888', '0', '', '85e27beeec4692d90d89ddb72aa02bec', '7f7600', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('544', '1113', '1727', '王彤', '00', '', '15888888888', '0', '', 'a4699887151a53269719a9bf204b0bdb', '0ca305', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('545', '1114', '0268', '吴志峰', '00', '', '15888888888', '0', '', '622b271c633e3f55ac5eaa758ee087c3', 'ad0f50', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('546', '1115', '1752', '尚军', '00', '', '15888888888', '0', '', '2dfa4948a35db5cad8b06361a1848502', 'aaae14', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('548', '1117', '0488', '罗侃', '00', '', '15888888888', '0', '', '37391f995bed9f28418ca4788a118ca2', 'b61b0d', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('549', '1118', '0612', '阳国诚', '00', '', '15888888888', '0', '', '28eee5dfa499a5d351559c1fa7f93273', '80ec50', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('550', '1119', '0550', '赵蔚', '00', '', '15888888888', '0', '', '166ff7895d1dce3732bf4de184ca174f', '745b94', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('551', '1120', '1548', '李黎青', '00', '', '15888888888', '0', '', 'd23bd9776df33eb65442ac799c8a84dc', '30588f', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('552', '1201', '0474', '薛先庆', '00', '', '15888888888', '0', '', '3ccedf5504b4174d353665d01db3c184', 'a0ba1e', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('553', '1202', '0604', '雷斌', '00', '', '15888888888', '0', '', '466a956e2a59bb52cc4ee2fefcb79ac9', '5412da', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('554', '1203', '0548', '黄鸿平', '00', '', '15888888888', '0', '', '13a50fa376753fbfd3f0ff5980fddf72', '238683', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('555', '1204', '0546', '喻汉斌', '00', '', '15888888888', '0', '', '65ad01c86eba8ff930c769d26f52a647', '2a9c7f', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('557', '1206', '0431', '谢剑猛', '00', '', '15888888888', '0', '', '18849150ad91dc9e4008452e90a1db73', '2be79d', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('558', '1207', '3030', '康振军', '00', '', '15888888888', '0', '', 'ac4f74c94383f0f75accea0682faa25c', '238ff5', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('560', '1401', '1130', '姜羔', '00', '', '15888888888', '0', '', '8a8dc239c319f05470c1cc3ea2592d57', 'a61b37', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);
INSERT INTO `sys_user` VALUES ('561', '1402', '0839', '凌学镜', '00', '', '15888888888', '0', '', '688ed585ac65fd78f045eb35f7a2544e', '8f39c3', '0', '0', '', null, 'admin', '2020-05-15 13:54:54', '', null, null);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('ed05d315-8479-4c55-8052-9844ea6c9b98', '2799', '学团（创新创业教育中心）', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-06-04 14:57:49', '2020-06-04 15:05:38', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('5', '2');
INSERT INTO `sys_user_post` VALUES ('6', '4');
INSERT INTO `sys_user_post` VALUES ('7', '2');
INSERT INTO `sys_user_post` VALUES ('8', '4');
INSERT INTO `sys_user_post` VALUES ('9', '2');
INSERT INTO `sys_user_post` VALUES ('10', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '6');
INSERT INTO `sys_user_role` VALUES ('3', '6');
INSERT INTO `sys_user_role` VALUES ('4', '6');
INSERT INTO `sys_user_role` VALUES ('5', '6');
INSERT INTO `sys_user_role` VALUES ('6', '6');
INSERT INTO `sys_user_role` VALUES ('7', '6');
INSERT INTO `sys_user_role` VALUES ('8', '3');
INSERT INTO `sys_user_role` VALUES ('9', '3');
INSERT INTO `sys_user_role` VALUES ('10', '3');
INSERT INTO `sys_user_role` VALUES ('11', '3');
INSERT INTO `sys_user_role` VALUES ('12', '3');
INSERT INTO `sys_user_role` VALUES ('13', '3');
INSERT INTO `sys_user_role` VALUES ('14', '3');
INSERT INTO `sys_user_role` VALUES ('15', '3');
INSERT INTO `sys_user_role` VALUES ('16', '5');
INSERT INTO `sys_user_role` VALUES ('17', '3');
INSERT INTO `sys_user_role` VALUES ('18', '3');
INSERT INTO `sys_user_role` VALUES ('19', '3');
INSERT INTO `sys_user_role` VALUES ('20', '3');
INSERT INTO `sys_user_role` VALUES ('21', '3');
INSERT INTO `sys_user_role` VALUES ('22', '3');
INSERT INTO `sys_user_role` VALUES ('23', '3');
INSERT INTO `sys_user_role` VALUES ('24', '3');
INSERT INTO `sys_user_role` VALUES ('25', '3');
INSERT INTO `sys_user_role` VALUES ('26', '3');
INSERT INTO `sys_user_role` VALUES ('27', '3');
INSERT INTO `sys_user_role` VALUES ('28', '3');
INSERT INTO `sys_user_role` VALUES ('29', '3');
INSERT INTO `sys_user_role` VALUES ('30', '3');
INSERT INTO `sys_user_role` VALUES ('31', '3');
INSERT INTO `sys_user_role` VALUES ('32', '3');
INSERT INTO `sys_user_role` VALUES ('33', '3');
INSERT INTO `sys_user_role` VALUES ('34', '3');
INSERT INTO `sys_user_role` VALUES ('35', '3');
INSERT INTO `sys_user_role` VALUES ('36', '3');
INSERT INTO `sys_user_role` VALUES ('37', '3');
INSERT INTO `sys_user_role` VALUES ('38', '3');
INSERT INTO `sys_user_role` VALUES ('39', '3');
INSERT INTO `sys_user_role` VALUES ('40', '3');
INSERT INTO `sys_user_role` VALUES ('41', '3');
INSERT INTO `sys_user_role` VALUES ('42', '3');
INSERT INTO `sys_user_role` VALUES ('43', '3');
INSERT INTO `sys_user_role` VALUES ('44', '3');
INSERT INTO `sys_user_role` VALUES ('45', '3');
INSERT INTO `sys_user_role` VALUES ('46', '3');
INSERT INTO `sys_user_role` VALUES ('47', '3');
INSERT INTO `sys_user_role` VALUES ('48', '3');
INSERT INTO `sys_user_role` VALUES ('49', '3');
INSERT INTO `sys_user_role` VALUES ('50', '3');
INSERT INTO `sys_user_role` VALUES ('51', '3');
INSERT INTO `sys_user_role` VALUES ('52', '3');
INSERT INTO `sys_user_role` VALUES ('53', '3');
INSERT INTO `sys_user_role` VALUES ('54', '3');
INSERT INTO `sys_user_role` VALUES ('55', '3');
INSERT INTO `sys_user_role` VALUES ('56', '3');
INSERT INTO `sys_user_role` VALUES ('57', '3');
INSERT INTO `sys_user_role` VALUES ('58', '3');
INSERT INTO `sys_user_role` VALUES ('59', '3');
INSERT INTO `sys_user_role` VALUES ('60', '3');
INSERT INTO `sys_user_role` VALUES ('61', '3');
INSERT INTO `sys_user_role` VALUES ('62', '3');
INSERT INTO `sys_user_role` VALUES ('63', '3');
INSERT INTO `sys_user_role` VALUES ('64', '3');
INSERT INTO `sys_user_role` VALUES ('65', '3');
INSERT INTO `sys_user_role` VALUES ('66', '3');
INSERT INTO `sys_user_role` VALUES ('67', '3');
INSERT INTO `sys_user_role` VALUES ('68', '3');
INSERT INTO `sys_user_role` VALUES ('69', '3');
INSERT INTO `sys_user_role` VALUES ('70', '3');
INSERT INTO `sys_user_role` VALUES ('71', '3');
INSERT INTO `sys_user_role` VALUES ('72', '3');
INSERT INTO `sys_user_role` VALUES ('73', '3');
INSERT INTO `sys_user_role` VALUES ('74', '3');
INSERT INTO `sys_user_role` VALUES ('75', '3');
INSERT INTO `sys_user_role` VALUES ('76', '3');
INSERT INTO `sys_user_role` VALUES ('77', '3');
INSERT INTO `sys_user_role` VALUES ('78', '3');
INSERT INTO `sys_user_role` VALUES ('79', '3');
INSERT INTO `sys_user_role` VALUES ('80', '3');
INSERT INTO `sys_user_role` VALUES ('81', '3');
INSERT INTO `sys_user_role` VALUES ('82', '3');
INSERT INTO `sys_user_role` VALUES ('83', '3');
INSERT INTO `sys_user_role` VALUES ('84', '3');
INSERT INTO `sys_user_role` VALUES ('85', '3');
INSERT INTO `sys_user_role` VALUES ('86', '3');
INSERT INTO `sys_user_role` VALUES ('87', '3');
INSERT INTO `sys_user_role` VALUES ('88', '3');
INSERT INTO `sys_user_role` VALUES ('89', '3');
INSERT INTO `sys_user_role` VALUES ('90', '3');
INSERT INTO `sys_user_role` VALUES ('91', '3');
INSERT INTO `sys_user_role` VALUES ('92', '3');
INSERT INTO `sys_user_role` VALUES ('93', '3');
INSERT INTO `sys_user_role` VALUES ('94', '3');
INSERT INTO `sys_user_role` VALUES ('95', '3');
INSERT INTO `sys_user_role` VALUES ('96', '3');
INSERT INTO `sys_user_role` VALUES ('97', '3');
INSERT INTO `sys_user_role` VALUES ('98', '3');
INSERT INTO `sys_user_role` VALUES ('99', '3');
INSERT INTO `sys_user_role` VALUES ('100', '3');
INSERT INTO `sys_user_role` VALUES ('101', '3');
INSERT INTO `sys_user_role` VALUES ('102', '3');
INSERT INTO `sys_user_role` VALUES ('103', '3');
INSERT INTO `sys_user_role` VALUES ('104', '3');
INSERT INTO `sys_user_role` VALUES ('105', '3');
INSERT INTO `sys_user_role` VALUES ('106', '3');
INSERT INTO `sys_user_role` VALUES ('107', '3');
INSERT INTO `sys_user_role` VALUES ('108', '3');
INSERT INTO `sys_user_role` VALUES ('109', '3');
INSERT INTO `sys_user_role` VALUES ('110', '3');
INSERT INTO `sys_user_role` VALUES ('111', '3');
INSERT INTO `sys_user_role` VALUES ('112', '3');
INSERT INTO `sys_user_role` VALUES ('113', '3');
INSERT INTO `sys_user_role` VALUES ('114', '3');
INSERT INTO `sys_user_role` VALUES ('115', '3');
INSERT INTO `sys_user_role` VALUES ('116', '3');
INSERT INTO `sys_user_role` VALUES ('117', '3');
INSERT INTO `sys_user_role` VALUES ('118', '3');
INSERT INTO `sys_user_role` VALUES ('119', '3');
INSERT INTO `sys_user_role` VALUES ('120', '3');
INSERT INTO `sys_user_role` VALUES ('121', '3');
INSERT INTO `sys_user_role` VALUES ('122', '3');
INSERT INTO `sys_user_role` VALUES ('123', '3');
INSERT INTO `sys_user_role` VALUES ('124', '3');
INSERT INTO `sys_user_role` VALUES ('125', '3');
INSERT INTO `sys_user_role` VALUES ('126', '3');
INSERT INTO `sys_user_role` VALUES ('127', '3');
INSERT INTO `sys_user_role` VALUES ('128', '3');
INSERT INTO `sys_user_role` VALUES ('129', '3');
INSERT INTO `sys_user_role` VALUES ('130', '3');
INSERT INTO `sys_user_role` VALUES ('131', '3');
INSERT INTO `sys_user_role` VALUES ('132', '3');
INSERT INTO `sys_user_role` VALUES ('133', '3');
INSERT INTO `sys_user_role` VALUES ('134', '3');
INSERT INTO `sys_user_role` VALUES ('135', '3');
INSERT INTO `sys_user_role` VALUES ('136', '3');
INSERT INTO `sys_user_role` VALUES ('137', '3');
INSERT INTO `sys_user_role` VALUES ('138', '3');
INSERT INTO `sys_user_role` VALUES ('139', '3');
INSERT INTO `sys_user_role` VALUES ('140', '3');
INSERT INTO `sys_user_role` VALUES ('141', '3');
INSERT INTO `sys_user_role` VALUES ('142', '3');
INSERT INTO `sys_user_role` VALUES ('143', '3');
INSERT INTO `sys_user_role` VALUES ('144', '3');
INSERT INTO `sys_user_role` VALUES ('145', '3');
INSERT INTO `sys_user_role` VALUES ('146', '3');
INSERT INTO `sys_user_role` VALUES ('147', '3');
INSERT INTO `sys_user_role` VALUES ('148', '3');
INSERT INTO `sys_user_role` VALUES ('149', '3');
INSERT INTO `sys_user_role` VALUES ('150', '3');
INSERT INTO `sys_user_role` VALUES ('151', '3');
INSERT INTO `sys_user_role` VALUES ('152', '3');
INSERT INTO `sys_user_role` VALUES ('153', '3');
INSERT INTO `sys_user_role` VALUES ('154', '3');
INSERT INTO `sys_user_role` VALUES ('155', '3');
INSERT INTO `sys_user_role` VALUES ('156', '3');
INSERT INTO `sys_user_role` VALUES ('157', '3');
INSERT INTO `sys_user_role` VALUES ('158', '3');
INSERT INTO `sys_user_role` VALUES ('159', '3');
INSERT INTO `sys_user_role` VALUES ('160', '3');
INSERT INTO `sys_user_role` VALUES ('161', '3');
INSERT INTO `sys_user_role` VALUES ('162', '3');
INSERT INTO `sys_user_role` VALUES ('163', '3');
INSERT INTO `sys_user_role` VALUES ('164', '3');
INSERT INTO `sys_user_role` VALUES ('165', '3');
INSERT INTO `sys_user_role` VALUES ('166', '3');
INSERT INTO `sys_user_role` VALUES ('167', '3');
INSERT INTO `sys_user_role` VALUES ('168', '3');
INSERT INTO `sys_user_role` VALUES ('169', '3');
INSERT INTO `sys_user_role` VALUES ('170', '3');
INSERT INTO `sys_user_role` VALUES ('171', '3');
INSERT INTO `sys_user_role` VALUES ('172', '3');
INSERT INTO `sys_user_role` VALUES ('173', '3');
INSERT INTO `sys_user_role` VALUES ('174', '3');
INSERT INTO `sys_user_role` VALUES ('175', '3');
INSERT INTO `sys_user_role` VALUES ('176', '3');
INSERT INTO `sys_user_role` VALUES ('177', '3');
INSERT INTO `sys_user_role` VALUES ('178', '3');
INSERT INTO `sys_user_role` VALUES ('179', '3');
INSERT INTO `sys_user_role` VALUES ('180', '3');
INSERT INTO `sys_user_role` VALUES ('181', '3');
INSERT INTO `sys_user_role` VALUES ('182', '3');
INSERT INTO `sys_user_role` VALUES ('183', '3');
INSERT INTO `sys_user_role` VALUES ('184', '5');
INSERT INTO `sys_user_role` VALUES ('185', '3');
INSERT INTO `sys_user_role` VALUES ('186', '3');
INSERT INTO `sys_user_role` VALUES ('187', '3');
INSERT INTO `sys_user_role` VALUES ('188', '3');
INSERT INTO `sys_user_role` VALUES ('189', '3');
INSERT INTO `sys_user_role` VALUES ('190', '3');
INSERT INTO `sys_user_role` VALUES ('191', '3');
INSERT INTO `sys_user_role` VALUES ('192', '3');
INSERT INTO `sys_user_role` VALUES ('193', '3');
INSERT INTO `sys_user_role` VALUES ('194', '3');
INSERT INTO `sys_user_role` VALUES ('195', '3');
INSERT INTO `sys_user_role` VALUES ('196', '3');
INSERT INTO `sys_user_role` VALUES ('197', '3');
INSERT INTO `sys_user_role` VALUES ('198', '3');
INSERT INTO `sys_user_role` VALUES ('199', '3');
INSERT INTO `sys_user_role` VALUES ('200', '3');
INSERT INTO `sys_user_role` VALUES ('201', '3');
INSERT INTO `sys_user_role` VALUES ('202', '3');
INSERT INTO `sys_user_role` VALUES ('203', '3');
INSERT INTO `sys_user_role` VALUES ('204', '3');
INSERT INTO `sys_user_role` VALUES ('205', '3');
INSERT INTO `sys_user_role` VALUES ('206', '3');
INSERT INTO `sys_user_role` VALUES ('207', '3');
INSERT INTO `sys_user_role` VALUES ('208', '3');
INSERT INTO `sys_user_role` VALUES ('209', '3');
INSERT INTO `sys_user_role` VALUES ('210', '3');
INSERT INTO `sys_user_role` VALUES ('211', '3');
INSERT INTO `sys_user_role` VALUES ('212', '3');
INSERT INTO `sys_user_role` VALUES ('213', '3');
INSERT INTO `sys_user_role` VALUES ('214', '3');
INSERT INTO `sys_user_role` VALUES ('215', '3');
INSERT INTO `sys_user_role` VALUES ('216', '3');
INSERT INTO `sys_user_role` VALUES ('217', '3');
INSERT INTO `sys_user_role` VALUES ('218', '3');
INSERT INTO `sys_user_role` VALUES ('219', '3');
INSERT INTO `sys_user_role` VALUES ('220', '3');
INSERT INTO `sys_user_role` VALUES ('221', '3');
INSERT INTO `sys_user_role` VALUES ('222', '3');
INSERT INTO `sys_user_role` VALUES ('223', '3');
INSERT INTO `sys_user_role` VALUES ('224', '3');
INSERT INTO `sys_user_role` VALUES ('225', '3');
INSERT INTO `sys_user_role` VALUES ('226', '3');
INSERT INTO `sys_user_role` VALUES ('227', '3');
INSERT INTO `sys_user_role` VALUES ('228', '3');
INSERT INTO `sys_user_role` VALUES ('229', '3');
INSERT INTO `sys_user_role` VALUES ('230', '3');
INSERT INTO `sys_user_role` VALUES ('231', '3');
INSERT INTO `sys_user_role` VALUES ('232', '3');
INSERT INTO `sys_user_role` VALUES ('233', '3');
INSERT INTO `sys_user_role` VALUES ('234', '3');
INSERT INTO `sys_user_role` VALUES ('235', '3');
INSERT INTO `sys_user_role` VALUES ('236', '3');
INSERT INTO `sys_user_role` VALUES ('237', '3');
INSERT INTO `sys_user_role` VALUES ('238', '3');
INSERT INTO `sys_user_role` VALUES ('239', '3');
INSERT INTO `sys_user_role` VALUES ('240', '3');
INSERT INTO `sys_user_role` VALUES ('241', '3');
INSERT INTO `sys_user_role` VALUES ('242', '3');
INSERT INTO `sys_user_role` VALUES ('243', '3');
INSERT INTO `sys_user_role` VALUES ('244', '3');
INSERT INTO `sys_user_role` VALUES ('245', '3');
INSERT INTO `sys_user_role` VALUES ('246', '3');
INSERT INTO `sys_user_role` VALUES ('247', '3');
INSERT INTO `sys_user_role` VALUES ('248', '3');
INSERT INTO `sys_user_role` VALUES ('249', '3');
INSERT INTO `sys_user_role` VALUES ('250', '3');
INSERT INTO `sys_user_role` VALUES ('251', '3');
INSERT INTO `sys_user_role` VALUES ('252', '3');
INSERT INTO `sys_user_role` VALUES ('253', '3');
INSERT INTO `sys_user_role` VALUES ('254', '3');
INSERT INTO `sys_user_role` VALUES ('255', '3');
INSERT INTO `sys_user_role` VALUES ('256', '3');
INSERT INTO `sys_user_role` VALUES ('257', '3');
INSERT INTO `sys_user_role` VALUES ('258', '3');
INSERT INTO `sys_user_role` VALUES ('259', '3');
INSERT INTO `sys_user_role` VALUES ('260', '3');
INSERT INTO `sys_user_role` VALUES ('261', '3');
INSERT INTO `sys_user_role` VALUES ('262', '3');
INSERT INTO `sys_user_role` VALUES ('263', '3');
INSERT INTO `sys_user_role` VALUES ('264', '3');
INSERT INTO `sys_user_role` VALUES ('265', '3');
INSERT INTO `sys_user_role` VALUES ('266', '3');
INSERT INTO `sys_user_role` VALUES ('267', '3');
INSERT INTO `sys_user_role` VALUES ('268', '3');
INSERT INTO `sys_user_role` VALUES ('269', '3');
INSERT INTO `sys_user_role` VALUES ('270', '3');
INSERT INTO `sys_user_role` VALUES ('271', '3');
INSERT INTO `sys_user_role` VALUES ('272', '3');
INSERT INTO `sys_user_role` VALUES ('273', '5');
INSERT INTO `sys_user_role` VALUES ('274', '3');
INSERT INTO `sys_user_role` VALUES ('275', '3');
INSERT INTO `sys_user_role` VALUES ('276', '3');
INSERT INTO `sys_user_role` VALUES ('277', '3');
INSERT INTO `sys_user_role` VALUES ('278', '3');
INSERT INTO `sys_user_role` VALUES ('279', '3');
INSERT INTO `sys_user_role` VALUES ('280', '3');
INSERT INTO `sys_user_role` VALUES ('281', '3');
INSERT INTO `sys_user_role` VALUES ('282', '3');
INSERT INTO `sys_user_role` VALUES ('283', '3');
INSERT INTO `sys_user_role` VALUES ('284', '3');
INSERT INTO `sys_user_role` VALUES ('285', '3');
INSERT INTO `sys_user_role` VALUES ('286', '3');
INSERT INTO `sys_user_role` VALUES ('287', '3');
INSERT INTO `sys_user_role` VALUES ('288', '3');
INSERT INTO `sys_user_role` VALUES ('289', '3');
INSERT INTO `sys_user_role` VALUES ('290', '3');
INSERT INTO `sys_user_role` VALUES ('291', '3');
INSERT INTO `sys_user_role` VALUES ('292', '3');
INSERT INTO `sys_user_role` VALUES ('293', '3');
INSERT INTO `sys_user_role` VALUES ('294', '3');
INSERT INTO `sys_user_role` VALUES ('295', '3');
INSERT INTO `sys_user_role` VALUES ('296', '3');
INSERT INTO `sys_user_role` VALUES ('297', '3');
INSERT INTO `sys_user_role` VALUES ('298', '3');
INSERT INTO `sys_user_role` VALUES ('299', '3');
INSERT INTO `sys_user_role` VALUES ('300', '3');
INSERT INTO `sys_user_role` VALUES ('301', '3');
INSERT INTO `sys_user_role` VALUES ('302', '3');
INSERT INTO `sys_user_role` VALUES ('303', '3');
INSERT INTO `sys_user_role` VALUES ('304', '3');
INSERT INTO `sys_user_role` VALUES ('305', '3');
INSERT INTO `sys_user_role` VALUES ('306', '3');
INSERT INTO `sys_user_role` VALUES ('307', '3');
INSERT INTO `sys_user_role` VALUES ('308', '3');
INSERT INTO `sys_user_role` VALUES ('309', '3');
INSERT INTO `sys_user_role` VALUES ('310', '3');
INSERT INTO `sys_user_role` VALUES ('311', '3');
INSERT INTO `sys_user_role` VALUES ('312', '3');
INSERT INTO `sys_user_role` VALUES ('313', '3');
INSERT INTO `sys_user_role` VALUES ('314', '3');
INSERT INTO `sys_user_role` VALUES ('315', '3');
INSERT INTO `sys_user_role` VALUES ('316', '3');
INSERT INTO `sys_user_role` VALUES ('317', '3');
INSERT INTO `sys_user_role` VALUES ('318', '3');
INSERT INTO `sys_user_role` VALUES ('319', '3');
INSERT INTO `sys_user_role` VALUES ('320', '3');
INSERT INTO `sys_user_role` VALUES ('321', '3');
INSERT INTO `sys_user_role` VALUES ('322', '3');
INSERT INTO `sys_user_role` VALUES ('323', '3');
INSERT INTO `sys_user_role` VALUES ('324', '3');
INSERT INTO `sys_user_role` VALUES ('325', '3');
INSERT INTO `sys_user_role` VALUES ('326', '3');
INSERT INTO `sys_user_role` VALUES ('327', '3');
INSERT INTO `sys_user_role` VALUES ('328', '3');
INSERT INTO `sys_user_role` VALUES ('329', '3');
INSERT INTO `sys_user_role` VALUES ('330', '3');
INSERT INTO `sys_user_role` VALUES ('331', '3');
INSERT INTO `sys_user_role` VALUES ('332', '3');
INSERT INTO `sys_user_role` VALUES ('333', '3');
INSERT INTO `sys_user_role` VALUES ('334', '3');
INSERT INTO `sys_user_role` VALUES ('335', '3');
INSERT INTO `sys_user_role` VALUES ('336', '3');
INSERT INTO `sys_user_role` VALUES ('337', '3');
INSERT INTO `sys_user_role` VALUES ('338', '3');
INSERT INTO `sys_user_role` VALUES ('339', '3');
INSERT INTO `sys_user_role` VALUES ('340', '3');
INSERT INTO `sys_user_role` VALUES ('341', '3');
INSERT INTO `sys_user_role` VALUES ('342', '3');
INSERT INTO `sys_user_role` VALUES ('343', '3');
INSERT INTO `sys_user_role` VALUES ('344', '3');
INSERT INTO `sys_user_role` VALUES ('345', '3');
INSERT INTO `sys_user_role` VALUES ('346', '3');
INSERT INTO `sys_user_role` VALUES ('347', '3');
INSERT INTO `sys_user_role` VALUES ('348', '3');
INSERT INTO `sys_user_role` VALUES ('349', '3');
INSERT INTO `sys_user_role` VALUES ('350', '3');
INSERT INTO `sys_user_role` VALUES ('351', '3');
INSERT INTO `sys_user_role` VALUES ('352', '3');
INSERT INTO `sys_user_role` VALUES ('353', '3');
INSERT INTO `sys_user_role` VALUES ('354', '3');
INSERT INTO `sys_user_role` VALUES ('355', '3');
INSERT INTO `sys_user_role` VALUES ('356', '3');
INSERT INTO `sys_user_role` VALUES ('357', '3');
INSERT INTO `sys_user_role` VALUES ('358', '3');
INSERT INTO `sys_user_role` VALUES ('359', '3');
INSERT INTO `sys_user_role` VALUES ('360', '3');
INSERT INTO `sys_user_role` VALUES ('361', '3');
INSERT INTO `sys_user_role` VALUES ('362', '3');
INSERT INTO `sys_user_role` VALUES ('363', '3');
INSERT INTO `sys_user_role` VALUES ('364', '3');
INSERT INTO `sys_user_role` VALUES ('365', '3');
INSERT INTO `sys_user_role` VALUES ('366', '3');
INSERT INTO `sys_user_role` VALUES ('367', '3');
INSERT INTO `sys_user_role` VALUES ('368', '3');
INSERT INTO `sys_user_role` VALUES ('369', '3');
INSERT INTO `sys_user_role` VALUES ('370', '3');
INSERT INTO `sys_user_role` VALUES ('371', '3');
INSERT INTO `sys_user_role` VALUES ('372', '3');
INSERT INTO `sys_user_role` VALUES ('373', '3');
INSERT INTO `sys_user_role` VALUES ('374', '3');
INSERT INTO `sys_user_role` VALUES ('375', '3');
INSERT INTO `sys_user_role` VALUES ('376', '3');
INSERT INTO `sys_user_role` VALUES ('377', '3');
INSERT INTO `sys_user_role` VALUES ('378', '3');
INSERT INTO `sys_user_role` VALUES ('379', '3');
INSERT INTO `sys_user_role` VALUES ('380', '3');
INSERT INTO `sys_user_role` VALUES ('381', '3');
INSERT INTO `sys_user_role` VALUES ('382', '3');
INSERT INTO `sys_user_role` VALUES ('383', '3');
INSERT INTO `sys_user_role` VALUES ('384', '3');
INSERT INTO `sys_user_role` VALUES ('385', '3');
INSERT INTO `sys_user_role` VALUES ('386', '3');
INSERT INTO `sys_user_role` VALUES ('387', '3');
INSERT INTO `sys_user_role` VALUES ('388', '3');
INSERT INTO `sys_user_role` VALUES ('389', '3');
INSERT INTO `sys_user_role` VALUES ('390', '3');
INSERT INTO `sys_user_role` VALUES ('391', '3');
INSERT INTO `sys_user_role` VALUES ('392', '3');
INSERT INTO `sys_user_role` VALUES ('393', '3');
INSERT INTO `sys_user_role` VALUES ('394', '3');
INSERT INTO `sys_user_role` VALUES ('395', '3');
INSERT INTO `sys_user_role` VALUES ('396', '3');
INSERT INTO `sys_user_role` VALUES ('397', '3');
INSERT INTO `sys_user_role` VALUES ('398', '3');
INSERT INTO `sys_user_role` VALUES ('399', '3');
INSERT INTO `sys_user_role` VALUES ('400', '3');
INSERT INTO `sys_user_role` VALUES ('401', '3');
INSERT INTO `sys_user_role` VALUES ('402', '3');
INSERT INTO `sys_user_role` VALUES ('403', '3');
INSERT INTO `sys_user_role` VALUES ('404', '3');
INSERT INTO `sys_user_role` VALUES ('405', '3');
INSERT INTO `sys_user_role` VALUES ('406', '3');
INSERT INTO `sys_user_role` VALUES ('407', '3');
INSERT INTO `sys_user_role` VALUES ('408', '3');
INSERT INTO `sys_user_role` VALUES ('409', '3');
INSERT INTO `sys_user_role` VALUES ('410', '3');
INSERT INTO `sys_user_role` VALUES ('411', '3');
INSERT INTO `sys_user_role` VALUES ('412', '3');
INSERT INTO `sys_user_role` VALUES ('413', '3');
INSERT INTO `sys_user_role` VALUES ('414', '3');
INSERT INTO `sys_user_role` VALUES ('415', '3');
INSERT INTO `sys_user_role` VALUES ('416', '3');
INSERT INTO `sys_user_role` VALUES ('417', '3');
INSERT INTO `sys_user_role` VALUES ('418', '3');
INSERT INTO `sys_user_role` VALUES ('419', '3');
INSERT INTO `sys_user_role` VALUES ('420', '3');
INSERT INTO `sys_user_role` VALUES ('421', '3');
INSERT INTO `sys_user_role` VALUES ('422', '3');
INSERT INTO `sys_user_role` VALUES ('423', '3');
INSERT INTO `sys_user_role` VALUES ('424', '3');
INSERT INTO `sys_user_role` VALUES ('425', '3');
INSERT INTO `sys_user_role` VALUES ('426', '3');
INSERT INTO `sys_user_role` VALUES ('427', '3');
INSERT INTO `sys_user_role` VALUES ('428', '3');
INSERT INTO `sys_user_role` VALUES ('429', '3');
INSERT INTO `sys_user_role` VALUES ('430', '3');
INSERT INTO `sys_user_role` VALUES ('431', '3');
INSERT INTO `sys_user_role` VALUES ('432', '3');
INSERT INTO `sys_user_role` VALUES ('433', '3');
INSERT INTO `sys_user_role` VALUES ('434', '3');
INSERT INTO `sys_user_role` VALUES ('435', '3');
INSERT INTO `sys_user_role` VALUES ('436', '3');
INSERT INTO `sys_user_role` VALUES ('437', '3');
INSERT INTO `sys_user_role` VALUES ('438', '3');
INSERT INTO `sys_user_role` VALUES ('439', '3');
INSERT INTO `sys_user_role` VALUES ('440', '3');
INSERT INTO `sys_user_role` VALUES ('441', '3');
INSERT INTO `sys_user_role` VALUES ('442', '3');
INSERT INTO `sys_user_role` VALUES ('443', '3');
INSERT INTO `sys_user_role` VALUES ('444', '3');
INSERT INTO `sys_user_role` VALUES ('445', '3');
INSERT INTO `sys_user_role` VALUES ('446', '3');
INSERT INTO `sys_user_role` VALUES ('447', '3');
INSERT INTO `sys_user_role` VALUES ('448', '3');
INSERT INTO `sys_user_role` VALUES ('449', '3');
INSERT INTO `sys_user_role` VALUES ('450', '3');
INSERT INTO `sys_user_role` VALUES ('451', '3');
INSERT INTO `sys_user_role` VALUES ('452', '3');
INSERT INTO `sys_user_role` VALUES ('453', '3');
INSERT INTO `sys_user_role` VALUES ('454', '3');
INSERT INTO `sys_user_role` VALUES ('455', '3');
INSERT INTO `sys_user_role` VALUES ('456', '3');
INSERT INTO `sys_user_role` VALUES ('457', '3');
INSERT INTO `sys_user_role` VALUES ('458', '3');
INSERT INTO `sys_user_role` VALUES ('459', '3');
INSERT INTO `sys_user_role` VALUES ('460', '3');
INSERT INTO `sys_user_role` VALUES ('461', '3');
INSERT INTO `sys_user_role` VALUES ('462', '3');
INSERT INTO `sys_user_role` VALUES ('463', '3');
INSERT INTO `sys_user_role` VALUES ('464', '3');
INSERT INTO `sys_user_role` VALUES ('465', '3');
INSERT INTO `sys_user_role` VALUES ('466', '3');
INSERT INTO `sys_user_role` VALUES ('467', '3');
INSERT INTO `sys_user_role` VALUES ('468', '3');
INSERT INTO `sys_user_role` VALUES ('469', '3');
INSERT INTO `sys_user_role` VALUES ('470', '3');
INSERT INTO `sys_user_role` VALUES ('471', '3');
INSERT INTO `sys_user_role` VALUES ('472', '3');
INSERT INTO `sys_user_role` VALUES ('473', '3');
INSERT INTO `sys_user_role` VALUES ('474', '3');
INSERT INTO `sys_user_role` VALUES ('475', '3');
INSERT INTO `sys_user_role` VALUES ('476', '3');
INSERT INTO `sys_user_role` VALUES ('477', '3');
INSERT INTO `sys_user_role` VALUES ('478', '3');
INSERT INTO `sys_user_role` VALUES ('479', '3');
INSERT INTO `sys_user_role` VALUES ('480', '3');
INSERT INTO `sys_user_role` VALUES ('481', '3');
INSERT INTO `sys_user_role` VALUES ('482', '3');
INSERT INTO `sys_user_role` VALUES ('483', '3');
INSERT INTO `sys_user_role` VALUES ('484', '5');
INSERT INTO `sys_user_role` VALUES ('485', '3');
INSERT INTO `sys_user_role` VALUES ('486', '3');
INSERT INTO `sys_user_role` VALUES ('487', '3');
INSERT INTO `sys_user_role` VALUES ('488', '3');
INSERT INTO `sys_user_role` VALUES ('489', '3');
INSERT INTO `sys_user_role` VALUES ('490', '5');
INSERT INTO `sys_user_role` VALUES ('491', '3');
INSERT INTO `sys_user_role` VALUES ('492', '5');
INSERT INTO `sys_user_role` VALUES ('493', '3');
INSERT INTO `sys_user_role` VALUES ('494', '5');
INSERT INTO `sys_user_role` VALUES ('495', '3');
INSERT INTO `sys_user_role` VALUES ('496', '3');
INSERT INTO `sys_user_role` VALUES ('497', '3');
INSERT INTO `sys_user_role` VALUES ('498', '3');
INSERT INTO `sys_user_role` VALUES ('499', '3');
INSERT INTO `sys_user_role` VALUES ('500', '3');
INSERT INTO `sys_user_role` VALUES ('501', '3');
INSERT INTO `sys_user_role` VALUES ('502', '3');
INSERT INTO `sys_user_role` VALUES ('503', '3');
INSERT INTO `sys_user_role` VALUES ('504', '3');
INSERT INTO `sys_user_role` VALUES ('505', '3');
INSERT INTO `sys_user_role` VALUES ('506', '3');
INSERT INTO `sys_user_role` VALUES ('507', '3');
INSERT INTO `sys_user_role` VALUES ('508', '3');
INSERT INTO `sys_user_role` VALUES ('509', '3');
INSERT INTO `sys_user_role` VALUES ('510', '3');
INSERT INTO `sys_user_role` VALUES ('511', '3');
INSERT INTO `sys_user_role` VALUES ('512', '3');
INSERT INTO `sys_user_role` VALUES ('513', '3');
INSERT INTO `sys_user_role` VALUES ('515', '5');
INSERT INTO `sys_user_role` VALUES ('517', '5');
INSERT INTO `sys_user_role` VALUES ('519', '5');
INSERT INTO `sys_user_role` VALUES ('520', '5');
INSERT INTO `sys_user_role` VALUES ('521', '5');
INSERT INTO `sys_user_role` VALUES ('522', '5');
INSERT INTO `sys_user_role` VALUES ('523', '5');
INSERT INTO `sys_user_role` VALUES ('524', '5');
INSERT INTO `sys_user_role` VALUES ('525', '5');
INSERT INTO `sys_user_role` VALUES ('526', '5');
INSERT INTO `sys_user_role` VALUES ('527', '5');
INSERT INTO `sys_user_role` VALUES ('528', '5');
INSERT INTO `sys_user_role` VALUES ('529', '5');
INSERT INTO `sys_user_role` VALUES ('530', '5');
INSERT INTO `sys_user_role` VALUES ('531', '4');
INSERT INTO `sys_user_role` VALUES ('531', '5');
INSERT INTO `sys_user_role` VALUES ('532', '5');
INSERT INTO `sys_user_role` VALUES ('533', '5');
INSERT INTO `sys_user_role` VALUES ('534', '5');
INSERT INTO `sys_user_role` VALUES ('535', '5');
INSERT INTO `sys_user_role` VALUES ('536', '5');
INSERT INTO `sys_user_role` VALUES ('537', '5');
INSERT INTO `sys_user_role` VALUES ('538', '5');
INSERT INTO `sys_user_role` VALUES ('540', '5');
INSERT INTO `sys_user_role` VALUES ('541', '5');
INSERT INTO `sys_user_role` VALUES ('542', '5');
INSERT INTO `sys_user_role` VALUES ('543', '5');
INSERT INTO `sys_user_role` VALUES ('544', '5');
INSERT INTO `sys_user_role` VALUES ('545', '5');
INSERT INTO `sys_user_role` VALUES ('546', '5');
INSERT INTO `sys_user_role` VALUES ('548', '5');
INSERT INTO `sys_user_role` VALUES ('549', '5');
INSERT INTO `sys_user_role` VALUES ('550', '5');
INSERT INTO `sys_user_role` VALUES ('551', '5');
INSERT INTO `sys_user_role` VALUES ('552', '5');
INSERT INTO `sys_user_role` VALUES ('553', '5');
INSERT INTO `sys_user_role` VALUES ('554', '5');
INSERT INTO `sys_user_role` VALUES ('555', '5');
INSERT INTO `sys_user_role` VALUES ('557', '5');
INSERT INTO `sys_user_role` VALUES ('558', '5');
INSERT INTO `sys_user_role` VALUES ('560', '5');
INSERT INTO `sys_user_role` VALUES ('561', '5');

-- ----------------------------
-- Table structure for t_services
-- ----------------------------
DROP TABLE IF EXISTS `t_services`;
CREATE TABLE `t_services` (
  `id` int(15) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `service_no` char(8) DEFAULT NULL COMMENT '服务编码',
  `teacher_no` char(4) DEFAULT NULL COMMENT '工号',
  `teacher_name` varchar(50) DEFAULT NULL COMMENT '人才姓名',
  `belong_unit_no` char(4) DEFAULT NULL COMMENT '所在单位Id',
  `belong_unit_name` varchar(50) DEFAULT NULL COMMENT '所在单位名称',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `submit_time` datetime DEFAULT NULL COMMENT '服务提交时间',
  `ask_end_time` datetime DEFAULT NULL COMMENT '要求办结时间',
  `description` varchar(1000) DEFAULT NULL COMMENT '需求描述',
  `demand` varchar(1000) DEFAULT NULL COMMENT '服务要求',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `assignor_no` char(4) DEFAULT NULL COMMENT '分派人工号',
  `assignor_name` varchar(50) DEFAULT NULL COMMENT '分派人姓名',
  `assign_time` datetime DEFAULT NULL COMMENT '分派时间',
  `assign_remark` varchar(1000) DEFAULT NULL COMMENT '分派备注',
  `handle_unit_no` char(4) DEFAULT NULL COMMENT '处理单位id',
  `handle_unit_name` varchar(100) DEFAULT NULL COMMENT '处理单位名称',
  `handler_no` char(4) DEFAULT NULL COMMENT '处理人工号',
  `handler_name` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `handle_time` datetime DEFAULT NULL COMMENT '开始办理时间',
  `vice_handle_unit_no` varchar(100) DEFAULT NULL,
  `apply_end_time` datetime DEFAULT NULL COMMENT '申请办结时间',
  `service_end_time` datetime DEFAULT NULL COMMENT '服务办结时间',
  `satisfaction_degree` char(1) DEFAULT NULL COMMENT '满意度:满意、不满意、基本满意',
  `service_status` char(1) DEFAULT NULL COMMENT '服务需求状态:待分派，待办理，超时再办，正常在办，正常办结、待评价',
  `satisfaction_reason` varchar(1000) DEFAULT NULL COMMENT '满意度理由',
  `handle_times` int(11) DEFAULT NULL COMMENT '办理次数,本服务提交的次数',
  `del_flag` char(1) DEFAULT NULL COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='人才服务需求表';

-- ----------------------------
-- Records of t_services
-- ----------------------------
INSERT INTO `t_services` VALUES ('12', '43T1H37C', '2833', '赖强', '1002', '电气学院', '18870067306', '2020-05-15 00:00:00', '2020-05-18 00:00:00', 'sdfsdf', 'sdfsdf', null, '0646', '凌四宝', '2020-05-16 00:00:00', 'ddd', '1011', '艺术学院', '2564', '田玉兰', null, null, null, null, null, '1', null, '0', null);
INSERT INTO `t_services` VALUES ('13', 'ZA5F51RP', '0134', '彭小云', '1001', '土建学院', '13707099065', '2020-05-16 00:00:00', '2020-05-21 00:00:00', 'sdfsdf', 'sdfsdfsdf', null, '0646', '凌四宝', '2020-05-16 00:00:00', 'erdg', '1102', '人事处（教工部、教师发展中心）', '2693', '陈磊', null, null, null, null, null, '1', null, '0', null);
INSERT INTO `t_services` VALUES ('14', 'VV4BVNPI', '0134', '彭小云', '1001', '土建学院', '13707099065', '2020-05-16 00:00:00', '2020-05-20 00:00:00', 'ghfgh', 'fghfgh', null, '0646', '凌四宝', '2020-05-16 00:00:00', null, '1013', '运输学院', '0716', '丁锋贵', null, '', null, null, null, '1', null, '0', null);
INSERT INTO `t_services` VALUES ('15', 'KMF1TKON', '0134', '彭小云', '1001', '土建学院', '13707099065', '2020-05-16 00:00:00', '2020-05-20 00:00:00', 'dfgdfgd', 'fgdfgdfg', null, '0646', '凌四宝', '2020-05-16 00:00:00', null, '1012', '国际学院(国交处)', '1570', '郑轶', null, '1005,1006', null, null, null, '1', null, '0', null);
INSERT INTO `t_services` VALUES ('16', 'C5TATJ91', '3010', '孙长玉', '1107', '学团（创新创业教育中心）', '15180430506', '2020-06-02 00:00:00', '2020-06-25 00:00:00', 'sgsdfsdfs', 'sdfsdfsdf', null, '0646', '凌四宝', '2020-06-02 00:00:00', 'sdfsdf', '1021', '软件学院', '0408', '曹义亲', '2020-06-02 00:00:00', '1014,1109', '2020-06-02 00:00:00', null, '2', '5', 'fuck', '2', null);
INSERT INTO `t_services` VALUES ('17', 'AYQAG5G6', '3010', '孙长玉', '1107', '学团（创新创业教育中心）', '15180430506', '2020-06-02 00:00:00', '2020-06-25 00:00:00', 'hhfgh', 'fghfgh', '的风格风格', '0646', '凌四宝', '2020-06-04 00:00:00', '手动阀手动阀1手动阀手动阀1手动阀手动阀1手动阀手动阀1', '1107', '学团（创新创业教育中心）', '2799', '李雪峰', '2020-06-04 00:00:00', '1001,1004,1201', '2020-06-04 00:00:00', null, '2', '2', '是的地方1', '5', null);
