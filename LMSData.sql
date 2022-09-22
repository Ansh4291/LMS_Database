create database LMSData;
use LMSData;

CREATE TABLE `LMSData`.`user_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `contact_number` VARCHAR(10) NULL,
  `verified` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`));
  
  insert into user_details(email, first_name, last_name, password, contact_number, verified) values
('user5@gmail.com', 'user5' , 'user5Last', 'anshul3110199', '876498765', 'yes');

SELECT * FROM LMSData.user_details;



CREATE TABLE `LMSData`.`hired_candidate` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email_id` VARCHAR(45) NULL,
  `hired_city` VARCHAR(45) NULL,
  `degree` VARCHAR(45) NULL,
  `hired_date` DATE NULL,
  `mobile_number` VARCHAR(10) NULL,
  `permanent_pincode` VARCHAR(6) NULL,
  `hired_lab` VARCHAR(45) NULL,
  `attitude` VARCHAR(45) NULL,
  `communication_remark` VARCHAR(45) NULL,
  `knowledge_remark` VARCHAR(45) NULL,
  `aggregate_remark` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` VARCHAR(45) NULL,
  `creator_user` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
SELECT * FROM LMSData.hired_candidate;
    
  insert into hired_candidate (
first_name, middle_name, last_name, email_id, hired_City, degree, hired_date, mobile_number, permanent_pincode,
hired_lab, attitude, communication_remark, knowledge_remark, aggregate_remark, status, creator_stamp, creator_user)
values 
('user5', '----', 'user5last', 'user5@gmail.com', 'Kota', 'B-Tech', '2022-04-11', '8764314432', 324005, 'Mumbai', 
 'negative', 'good', 'fair', 'good', 'none', '2022-04-11 23:59:59', 105);
  
  
  CREATE TABLE `LMSData`.`fellowship_candidate` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cic_id` VARCHAR(25) NULL,
  `first_name` VARCHAR(45) NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email_id` VARCHAR(45) NULL,
  `hired_city` VARCHAR(45) NULL,
  `degree` VARCHAR(45) NULL,
  `hired_date` DATE NULL,
  `mobile_number` VARCHAR(10) NULL,
  `permanent_pincode` VARCHAR(6) NULL,
  `hired_lab` VARCHAR(45) NULL,
  `attitude` VARCHAR(45) NULL,
  `communication_remark` VARCHAR(45) NULL,
  `knowledge_remark` VARCHAR(45) NULL,
  `aggregate_remark` VARCHAR(45) NULL,
  `creator_user` INT NULL,
  `creator_stamp` DATETIME NULL,
  `birth_date` DATE NULL,
  `parent_name` VARCHAR(45) NULL,
  `parent_occupation` VARCHAR(45) NULL,
  `parent_mobile_number` VARCHAR(10) NULL,
  `parent_salary` VARCHAR(10) NULL,
  `local_address` VARCHAR(45) NULL,
  `permanent_address` VARCHAR(45) NULL,
  `photo_path` VARCHAR(45) NULL,
  `joining_date` DATE NULL,
  `candidate_status` VARCHAR(45) NULL,
  `personal_information` VARCHAR(45) NULL,
  `bank_information` VARCHAR(45) NULL,
  `educational_information` VARCHAR(45) NULL,
  `docs_status` VARCHAR(45) NULL,
  `remark` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  SELECT * FROM LMSData.fellowship_candidate;
  
  
insert into fellowship_candidate (cic_id, first_name, middle_name, last_name, email_id, hired_City, degree, hired_date, mobile_number, permanent_pincode,
hired_lab, attitude, communication_remark, knowledge_remark, aggregate_remark, creator_stamp, creator_user, birth_date, parent_name,
parent_occupation, parent_mobile_number, parent_salary, local_address, permanent_address, photo_path, joining_date,
candidate_status, personal_information, bank_information, educational_information, docs_status, remark) 
values 
('CIC032022-11333','user5', '------', 'user5last', 'user5@gmail.com', 'jaipur', 'BE', '2022-04-11', '8764314432', '324005', 'pune',
'positive', 'good', 'Good', 'fine', '2022-04-11 23:59:59', 101, '1995-10-31', 'Rathore', 'Pvt-Job', '9829037330',
'1000000', '123 Kota', 'Kota,Rajasthan', 'null', '2022-04-11', 'fair', 'null', 'IDFC FIRST BANK', 'Graduate', 'Clear', 'All Good');
  
  CREATE TABLE `LMSData`.`candidate_qualification` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_id` INT NULL,
  `diploma` VARCHAR(45) NULL,
  `degree_name` VARCHAR(45) NULL,
  `employee_decipline` VARCHAR(45) NULL,
  `passing_year` INT NULL,
  `aggr_per` INT NULL,
  `final_year_per` INT NULL,
  `training_institute` VARCHAR(45) NULL,
  `training_duration_month` VARCHAR(45) NULL,
  `other_training` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_candidate_id_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_candidate_id`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `LMSData`.`fellowship_candidate` (`id`));
    
    SELECT * FROM LMSData.candidate_qualification;
    
    insert into candidate_qualification (candidate_id, diploma, degree_name, employee_decipline, passing_year, aggr_per, final_year_per,
 training_institute, training_duration_month, other_training, creator_stamp, creator_user) 
 values (4, 'Graduation', 'BE', 'ecellent', 2017, 6, 70, 'RTU', 49, 'java', '2022-04-11 23:59:59', 104);
 
 
 CREATE TABLE `LMSData`.`candidate_bank_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_id` INT NULL,
  `name` VARCHAR(45) NULL,
  `account_number` VARCHAR(16) NULL,
  `ifsc_code` VARCHAR(11) NULL,
  `pan_number` VARCHAR(11) NULL,
  `aadhar_number` VARCHAR(12) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_candidate_id_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_candidate_bank_id`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `LMSData`.`fellowship_candidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    insert into candidate_bank_details (candidate_id, name, account_number, ifsc_code, pan_number, aadhar_number, creator_stamp, creator_user)
values (5, 'user5 user5last' ,'1234567890123456', 'IDFB0042542', 'BSHPR9389H', '123456789012','2022-04-11 23:59:59', 105);


CREATE TABLE `LMSData`.`candidate_document` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_id` INT NULL,
  `doc_type` VARCHAR(45) NULL,
  `doc_path` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_candidate_docs_id_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_candidate_docs_id`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `LMSData`.`fellowship_candidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    insert into candidate_document (candidate_id, doc_type, doc_path, Status, creator_stamp, creator_user)
values (4, 'Docs', '/home/asus/oracle practice problem', 'null', '2022-04-11 23:59:59', 104);


CREATE TABLE `LMSData`.`company` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`));
  
  SELECT * FROM LMSData.company;
  
  insert into company ( name, address, location, status, creator_stamp, creator_user) values 
( 'User 4', '123 abc', 'mumbai', 'Complete', '2022-04-11 23:59:59', 104);

CREATE TABLE `LMSData`.`tech_stack` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tech_name` VARCHAR(45) NULL,
  `image_path` VARCHAR(45) NULL,
  `framework` VARCHAR(45) NULL,
  `cur_status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`));
  
  insert into tech_stack (tech_name, image_path, framework, cur_status, creator_stamp, creator_user) 
values ('python', '/home/asus/oracle practice problem', 'intelliJ IDEA', 'Completed', '2022-04-11 23:59:59', 104 );



CREATE TABLE `LMSData`.`tech_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(45) NULL,
  `cur_status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`));
  
  SELECT * FROM LMSData.tech_type;
  
  insert into tech_type (type_name, cur_status, creator_stamp, creator_user) values 
('FullStack', 'Not Completed' , '2022-04-11 23:59:59', 104);



CREATE TABLE `LMSData`.`lab` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `Status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`));
  
  SELECT * FROM LMSData.lab;
  
  insert into lab ( name, location, address, Status, creator_stamp, creator_user) 
values ('Bridgelabz', 'Mumbai', 'Borawali', 'null', '2022-04-11 23:59:59', 104);



CREATE TABLE `LMSData`.`maker_program` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `program_name` VARCHAR(45) NULL,
  `program_type` VARCHAR(45) NULL,
  `program_link` VARCHAR(45) NULL,
  `tech_stack_id` INT NULL,
  `tech_type_id` INT NULL,
  `description` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tech_stack_id_idx` (`tech_stack_id` ASC) VISIBLE,
  INDEX `fk_tech_type_id_idx` (`tech_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_tech_stack_id`
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `LMSData`.`tech_stack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tech_type_id`
    FOREIGN KEY (`tech_type_id`)
    REFERENCES `LMSData`.`tech_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.maker_program;
    
    insert into maker_program (program_name, program_type, program_link, tech_stack_id, tech_type_id, description, status, creator_stamp, creator_user)
values ('python', 'frontend', 'null', 4, 4, 'null', 'done', '2022-04-11 23:59:59', 104);


CREATE TABLE `LMSData`.`mentor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lab_id` INT NULL,
  `name` VARCHAR(45) NULL,
  `mentor_type` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_lab_id_idx` (`lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_lab_id`
    FOREIGN KEY (`lab_id`)
    REFERENCES `LMSData`.`lab` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.lab;
    
    insert into mentor (lab_id, name, mentor_type, status, creator_stamp, creator_user)
values (2, 'Sunil Sir', 'Practice Head', 'Done', '2022-04-11 23:59:59', 101);


CREATE TABLE `LMSData`.`mentor_ideation_map` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `parant_mentor_id` INT NULL,
  `mentor_id` INT NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_User` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_mentor_id_idx` (`mentor_id` ASC) VISIBLE,
  CONSTRAINT `fk_mentor_id`
    FOREIGN KEY (`mentor_id`)
    REFERENCES `LMSData`.`mentor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.mentor_ideation_map;
    
    insert into mentor_ideation_map (parant_mentor_id, mentor_id, status, creator_stamp, creator_User)
values (1, 1, 'null', '2022-04-11 23:59:59', 101);

CREATE TABLE `LMSData`.`mentor_tech_stack` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mentor_id` INT NULL,
  `tech_stack_id` INT NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tech_stack_id_idx` (`tech_stack_id` ASC) VISIBLE,
  INDEX `fk_mentor_id_tech_stack_idx` (`mentor_id` ASC) VISIBLE,
  CONSTRAINT `fk_mentor_id_tech_stack`
    FOREIGN KEY (`mentor_id`)
    REFERENCES `LMSData`.`mentor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mentor_tech_stack_id`
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `LMSData`.`tech_stack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.mentor_tech_stack;
    
    insert into mentor_tech_stack (mentor_id, tech_stack_id, status, creator_stamp, creator_user) 
values (1, 1, 'Done', '2022-04-11 23:59:59', 101);


CREATE TABLE `LMSData`.`lab_threshold` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lab_id` INT NULL,
  `lab_capacity` INT NULL,
  `ideation_engg_threshold` VARCHAR(45) NULL,
  `buddy_engg_threshold` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_lab_id_threshold_idx` (`lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_lab_id_threshold`
    FOREIGN KEY (`lab_id`)
    REFERENCES `LMSData`.`lab` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.lab_threshold;
    
    insert into lab_threshold (lab_id, lab_capacity, ideation_engg_threshold, buddy_engg_threshold, status, creator_stamp, creator_user) 
values (1, 1000, '6', '40', 'null', '2022-04-11 23:59:59', 101 );

CREATE TABLE `LMSData`.`company_requrement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `requested_month` INT NULL,
  `city` VARCHAR(45) NULL,
  `is_doc_verifrication` VARCHAR(45) NULL,
  `requirement_doc_path` VARCHAR(45) NULL,
  `no_of_engg` INT NULL,
  `tech_stack_id` INT NULL,
  `tech_type_id` INT NULL,
  `maker_program_id` INT NULL,
  `lead_id` INT NULL,
  `ideation_engg_id` INT NULL,
  `buddy_engg_id` INT NULL,
  `special_remark` VARCHAR(45) NULL,
  `Status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_user` INT NULL,
  `company_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_company_id_idx` (`company_id` ASC) VISIBLE,
  INDEX `fk_tech_stack_id_idx` (`tech_stack_id` ASC) VISIBLE,
  INDEX `fk_tech_type_id_idx` (`tech_type_id` ASC) VISIBLE,
  INDEX `fk_maker_program_id_idx` (`maker_program_id` ASC) VISIBLE,
  CONSTRAINT `fk_company_id`
    FOREIGN KEY (`company_id`)
    REFERENCES `LMSData`.`company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tech_stack_id_comp_req`
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `LMSData`.`tech_stack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tech_type_id_comp_req`
    FOREIGN KEY (`tech_type_id`)
    REFERENCES `LMSData`.`tech_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_maker_program_id_comp_req`
    FOREIGN KEY (`maker_program_id`)
    REFERENCES `LMSData`.`maker_program` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.company_requrement;
    
    insert into company_requrement (requested_month, city, is_doc_verifrication, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id,
 maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status ,creator_stamp, creator_user, company_id)
 values (4, 'Mumbai', 'done' , 'Asusual docs', 10, 1, 1, 1, 234, 5, 123, 'Done', 'null', '2022-04-11 23:59:59', 101, 1);
 
 
 CREATE TABLE `LMSData`.`candidate_stack_assignment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `requirement_id` INT NULL,
  `candidate_id` INT NULL,
  `assign_date` DATE NULL,
  `complete_date` DATE NULL,
  `status` VARCHAR(45) NULL,
  `creator_stamp` DATETIME NULL,
  `creator_User` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_requirement_id_idx` (`requirement_id` ASC) VISIBLE,
  INDEX `fk_candidate_id_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_requirement_id`
    FOREIGN KEY (`requirement_id`)
    REFERENCES `LMSData`.`company_requrement` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_candidate_id_stack_assign`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `LMSData`.`fellowship_candidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    SELECT * FROM LMSData.candidate_stack_assignment;
    
    insert into candidate_stack_assignment (requirement_id, candidate_id, assign_date, complete_date, status, creator_stamp, creator_User)
values (1, 1, '2020-08-27', '2022-05-09', 'Done', '2022-04-11 23:59:59', 101);
