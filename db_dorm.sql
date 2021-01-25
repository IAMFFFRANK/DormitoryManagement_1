/*
Navicat MySQL Data Transfer

Source Server         : user1
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : db_dorm

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-01-25 17:54:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123', 'admin', '男', '12345678900');

-- ----------------------------
-- Table structure for t_dorm
-- ----------------------------
DROP TABLE IF EXISTS `t_dorm`;
CREATE TABLE `t_dorm` (
  `dormId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(20) DEFAULT NULL,
  `dormType` varchar(20) DEFAULT NULL,
  `dormNumber` int(11) DEFAULT NULL,
  `dormTel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dorm
-- ----------------------------
INSERT INTO `t_dorm` VALUES ('1', '1', '220', '男', '6', '110');

-- ----------------------------
-- Table structure for t_dormbuild
-- ----------------------------
DROP TABLE IF EXISTS `t_dormbuild`;
CREATE TABLE `t_dormbuild` (
  `dormBuildId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildName` varchar(20) DEFAULT NULL,
  `dormBuildDetail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormbuild
-- ----------------------------
INSERT INTO `t_dormbuild` VALUES ('1', '1栋', '一号宿舍楼');
INSERT INTO `t_dormbuild` VALUES ('2', '2栋', '二号宿舍楼');
INSERT INTO `t_dormbuild` VALUES ('3', '3栋', '三号宿舍楼');
INSERT INTO `t_dormbuild` VALUES ('4', '4栋', '四号宿舍楼');
INSERT INTO `t_dormbuild` VALUES ('5', '5栋', '五号宿舍楼');
INSERT INTO `t_dormbuild` VALUES ('6', '6栋', '六号宿舍楼');
INSERT INTO `t_dormbuild` VALUES ('7', '7栋', '七号宿舍楼');

-- ----------------------------
-- Table structure for t_dormmanager
-- ----------------------------
DROP TABLE IF EXISTS `t_dormmanager`;
CREATE TABLE `t_dormmanager` (
  `dormManId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormManId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormmanager
-- ----------------------------
INSERT INTO `t_dormmanager` VALUES ('1', 'manager1', '123', '1', '老马', '男', '12345678900');
INSERT INTO `t_dormmanager` VALUES ('2', 'manager2', '123', '2', '老张', '女', '123********');
INSERT INTO `t_dormmanager` VALUES ('3', 'manager3', '123', '3', '老江', '男', '132*********');
INSERT INTO `t_dormmanager` VALUES ('4', 'manager4', '123', '4', '老陈', '男', '138********');
INSERT INTO `t_dormmanager` VALUES ('5', 'manager5', '123', '5', '老李', '女', '132*********');
INSERT INTO `t_dormmanager` VALUES ('6', 'manager6', '123', '6', '老何', '男', '138********');
INSERT INTO `t_dormmanager` VALUES ('7', 'manager7', '123', '7', '老赵', '女', '132*********');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT,
  `noticePerson` varchar(30) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', 'admin', '明天放假', '2021-01-25');
INSERT INTO `t_notice` VALUES ('8', 'admin', '天气转凉，各位同学注意保暖', '2021-01-25');
INSERT INTO `t_notice` VALUES ('9', 'admin', '时刻注意个人财产安全', '2021-01-25');

-- ----------------------------
-- Table structure for t_punchclock
-- ----------------------------
DROP TABLE IF EXISTS `t_punchclock`;
CREATE TABLE `t_punchclock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person` varchar(30) DEFAULT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_punchclock
-- ----------------------------
INSERT INTO `t_punchclock` VALUES ('1', 'admin', '第一次打卡', '请诚信打卡', '2021-01-24');

-- ----------------------------
-- Table structure for t_punchclockrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_punchclockrecord`;
CREATE TABLE `t_punchclockrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `punchClockId` int(11) NOT NULL,
  `stuNum` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `punchClockPerson` varchar(30) DEFAULT NULL,
  `punchClockTheme` varchar(50) DEFAULT NULL,
  `punchClockDetail` varchar(50) DEFAULT NULL,
  `punckClock_content` varchar(50) DEFAULT NULL,
  `isRecord` varchar(10) DEFAULT NULL,
  `punchClockDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_punchclockrecord
-- ----------------------------
INSERT INTO `t_punchclockrecord` VALUES ('1', '1', '01', '张三', '1', '120', '132********', 'admin', '第一次打卡', '请诚信打卡', '统计在宿舍人数', '1', '2021-01-25');

-- ----------------------------
-- Table structure for t_record
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `recordId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `studentName` varchar(30) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_record
-- ----------------------------
INSERT INTO `t_record` VALUES ('1', '02', '李四', '2', '201', '2021-01-16', '晚归');
INSERT INTO `t_record` VALUES ('3', '05', '李贝', '5', '111', '2021-01-17', '未刷门禁');
INSERT INTO `t_record` VALUES ('4', '06', '郑锐', '6', '221', '2021-01-18', '...');
INSERT INTO `t_record` VALUES ('5', '04', '张六', '4', '220', '2021-01-19', '...');
INSERT INTO `t_record` VALUES ('6', '07', '江娜', '7', '111', '2021-01-20', '....');
INSERT INTO `t_record` VALUES ('7', '01', '张三', '1', '120', '2021-01-21', '...');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `stuNum` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '01', '123', '张三', '1', '120', '男', '132********');
INSERT INTO `t_student` VALUES ('2', '02', '123', '李四', '2', '201', '女', '132********');
INSERT INTO `t_student` VALUES ('3', '03', '123', '王五', '3', '220', '男', '132********');
INSERT INTO `t_student` VALUES ('4', '04', '123', '张六', '4', '220', '男', '132********');
INSERT INTO `t_student` VALUES ('5', '05', '123', '李贝', '5', '111', '女', '132********');
INSERT INTO `t_student` VALUES ('6', '06', '123', '郑锐', '6', '221', '男', '132********');
INSERT INTO `t_student` VALUES ('7', '07', '123', '江娜', '7', '111', '女', '132********');
INSERT INTO `t_student` VALUES ('8', '08', '123', '何大', '3', '123', '男', '132********');
INSERT INTO `t_student` VALUES ('9', '09', '123', '张明', '4', '123', '男', '132********');
INSERT INTO `t_student` VALUES ('10', '010', '123', '陈文', '4', '222', '男', '132********');
