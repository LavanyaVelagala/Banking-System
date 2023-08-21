create database bctp;

use bctp;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for accountrequest
-- ----------------------------
DROP TABLE IF EXISTS `accountrequest`;
CREATE TABLE `accountrequest` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(45) default NULL,
  `bank` varchar(45) default NULL,
  `date` varchar(45) default NULL,
  `account_no` varchar(45) default NULL,
  `status` text,
  `hash_code` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `bank` varchar(45) default NULL,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `agent_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for agent_deposit
-- ----------------------------
DROP TABLE IF EXISTS `agent_deposit`;
CREATE TABLE `agent_deposit` (
  `uname` text,
  `Bank_Name` text,
  `acno` text,
  `amount` text,
  `Status` text,
  `dt` text,
  `fwhom` text,
  `agent` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for agent_transfer
-- ----------------------------
DROP TABLE IF EXISTS `agent_transfer`;
CREATE TABLE `agent_transfer` (
  `uname` text,
  `Bank_Name` text,
  `facno` text,
  `toacno` text,
  `amount` int(11) default NULL,
  `Status` text,
  `dt` text,
  `fwhom` text,
  `aname` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for attacker
-- ----------------------------
DROP TABLE IF EXISTS `attacker`;
CREATE TABLE `attacker` (
  `attackername` text,
  `attackerbank` text,
  `touser` text,
  `toaccount` text,
  `tobank` text,
  `amount` int(11) default NULL,
  `date` varchar(45) default NULL,
  `privatekey` varchar(45) default NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- ----------------------------
-- Table structure for attacker1
-- ----------------------------
DROP TABLE IF EXISTS `attacker1`;
CREATE TABLE `attacker1` (
  `name` varchar(45) default NULL,
  `pass` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auditor
-- ----------------------------
DROP TABLE IF EXISTS `auditor`;
CREATE TABLE `auditor` (
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auditor_deposit
-- ----------------------------
DROP TABLE IF EXISTS `auditor_deposit`;
CREATE TABLE `auditor_deposit` (
  `uname` text,
  `Bank_Name` text,
  `acno` text,
  `amount` text,
  `Status` text,
  `dt` text,
  `fwhom` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auditor_transfer
-- ----------------------------
DROP TABLE IF EXISTS `auditor_transfer`;
CREATE TABLE `auditor_transfer` (
  `uname` text,
  `Bank_Name` text,
  `facno` text,
  `toacno` text,
  `amount` int(11) default NULL,
  `Status` text,
  `dt` text,
  `fwhom` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for bank_deposit
-- ----------------------------
DROP TABLE IF EXISTS `bank_deposit`;
CREATE TABLE `bank_deposit` (
  `uname` text,
  `Bank_Name` text,
  `acno` text,
  `amount` int(11) default NULL,
  `hash_code` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for deposit_transactions
-- ----------------------------
DROP TABLE IF EXISTS `deposit_transactions`;
CREATE TABLE `deposit_transactions` (
  `uname` text,
  `Bank_Name` text,
  `acno` int(11) default NULL,
  `amount` int(11) default NULL,
  `dt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for find_fraud
-- ----------------------------
DROP TABLE IF EXISTS `find_fraud`;
CREATE TABLE `find_fraud` (
  `uname` text,
  `Bank_Name` text,
  `acno` text,
  `amount` int(11) default NULL,
  `dt` text,
  `process_By` text,
  `hash_code` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for transfer_transactions
-- ----------------------------
DROP TABLE IF EXISTS `transfer_transactions`;
CREATE TABLE `transfer_transactions` (
  `uname` text,
  `Bank_Name` text,
  `acno` text,
  `amount_transfer` int(11) default NULL,
  `toac` text,
  `dt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `bank` varchar(45) default NULL,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `loginstatus` varchar(45) default NULL,
  `transferstatus` varchar(45) default NULL,
  `image` longblob,
  `thumbimage` longblob,
  `thumbname` varchar(45) default NULL,
  `ac_creation_status` varchar(45) default NULL,
  `privatekey` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `id` int(11) NOT NULL auto_increment,
  `bank` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `agent` VALUES ('Agent', 'Agent', 'PayTM');
INSERT INTO `agent` VALUES ('Agent', 'Agent', 'Gpay');
INSERT INTO `agent` VALUES ('Agent', 'Agent', 'Phonepay');


INSERT INTO `user1` VALUES ('13', 'Canara Bank');
INSERT INTO `user1` VALUES ('14', 'Union Bank');
INSERT INTO `user1` VALUES ('15', 'Indian Bank');
INSERT INTO `user1` VALUES ('16', 'KY Bank');
INSERT INTO `user1` VALUES ('17', 'SBI Bank');

INSERT INTO `auditor` VALUES ('Auditor', 'Auditor');

INSERT INTO `attacker` VALUES ('Attacker', 'Atatcker');
INSERT INTO `attacker` VALUES ('Attacker1', 'Atatcker1');