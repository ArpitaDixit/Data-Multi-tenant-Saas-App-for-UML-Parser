--Tenant table:

DROP TABLE IF EXISTS `tenant_table`;
CREATE TABLE `tenant_table` (
  `tenant_id` varchar(10) NOT NULL,
  `tenant_name` varchar(45) NOT NULL,
  `tenant_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tenant_id`,`tenant_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tenant_table` VALUES ('TA-1','NoopurJoshi','noopur.joshi@sjsu.edu');
INSERT INTO `tenant_table` VALUES ('TA-2','ForamMehta','foram.mehta@sjsu.edu');
INSERT INTO `tenant_table` VALUES ('TA-3','RanLi','ran.li@sjsu.edu');
INSERT INTO `tenant_table` VALUES ('TA-4','SurajKhuranna','surajravindra.khurana@sjsu.edu');

--Tenant Fields

DROP TABLE IF EXISTS `tenant_fields`;
CREATE TABLE `tenant_fields` (
  `tenant_id` varchar(10) NOT NULL,
  `tenant_name` varchar(45) NOT NULL,
  `field_name` varchar(45) NOT NULL,
  `field_type` varchar(45) DEFAULT NULL,
  `field_column` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tenant_id`,`tenant_name`,`field_name`),
  CONSTRAINT `fk_TENANT_FIELDS_TENANT_TABLE` FOREIGN KEY (`tenant_id`, `tenant_name`) REFERENCES `tenant_table` (`tenant_id`, `tenant_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-1', 'NoopurJoshi', 'Letter Grade', 'VARCHAR(30)', 1 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-1', 'NoopurJoshi', 'Garde', 'VARCHAR(5)', 2 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-1', 'NoopurJoshi', 'Complete/Non Complete', 'VARCHAR(5)', 3 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-1', 'NoopurJoshi', 'Comments', 'VARCHAR(300)', 4 ) ;

insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-2', 'ForamMehta', '4.0 Scale', 'VARCHAR(30)', 1 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-2', 'ForamMehta', 'Points', 'VARCHAR(5)', 2 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-2', 'ForamMehta', 'Complete/Non Complete', 'VARCHAR(5)', 3 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-2', 'ForamMehta', 'Comments', 'VARCHAR(300)', 4 ) ;

insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-3', 'RanLi', 'Percent Grade', 'VARCHAR(30)', 1 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-3', 'RanLi', 'Percent', 'VARCHAR(5)', 2 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-3', 'RanLi', 'Complete/Non Complete', 'VARCHAR(5)', 3 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-3', 'RanLi', 'Comments', 'VARCHAR(300)', 4 ) ;

insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-4', 'SurajKhuranna', '10.0 Scale', 'VARCHAR(30)', 1 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-4', 'SurajKhuranna', 'Points', 'VARCHAR(5)', 2 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-4', 'SurajKhuranna', 'Complete/Non Complete', 'VARCHAR(5)', 3 ) ;
insert into tenant_fields( tenant_id, tenant_name, field_name, field_type, field_column ) values ( 'TA-4', 'SurajKhuranna', 'Comments', 'VARCHAR(300)', 4 ) ;

-- Tenant data

DROP TABLE IF EXISTS `tenant_data`;
CREATE TABLE `tenant_data` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `tenant_id` varchar(45) NOT NULL,
  `tenant_table` varchar(45) DEFAULT NULL,
  `column_1` varchar(45) DEFAULT NULL,
  `column_2` varchar(45) DEFAULT NULL,
  `column_3` varchar(45) DEFAULT NULL,
  `column_4` varchar(45) DEFAULT NULL,
  `column_5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`record_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Tenant Noopur Joshi

CREATE TABLE IF NOT EXISTS `NoopurJoshi` (
  `LetterGrade` VARCHAR(30) NOT NULL,
  `Grade` VARCHAR(5) NULL,
  `CompletionStatus` VARCHAR(15) NULL,
  `Comments` VARCHAR(300) NULL)
ENGINE = InnoDB;

-- Tenant Foram Mehta

CREATE TABLE IF NOT EXISTS `ForamMehta` (
  `4Scale` VARCHAR(30) NOT NULL,
  `Points` VARCHAR(15) NULL,
  `CompletionStatus` VARCHAR(15) NULL,
  `Comments` VARCHAR(300) NULL)
ENGINE = InnoDB;

-- Tenant Ran Li

CREATE TABLE IF NOT EXISTS `RanLi` (
  `PercentGrade` VARCHAR(30) NOT NULL,
  `Percent` VARCHAR(5) NULL,
  `CompletionStatus` VARCHAR(15) NULL,
  `Comments` VARCHAR(300) NULL)
ENGINE = InnoDB;

-- Tenant Suraj Khuranna

CREATE TABLE IF NOT EXISTS `SurajKhurana` (	
	`10Scale` VARCHAR(30) NOT NULL,
  `Points` VARCHAR(5) NULL,
  `CompletionStatus` VARCHAR(15) NULL,
  `Comments` VARCHAR(300) NULL)
ENGINE = InnoDB;