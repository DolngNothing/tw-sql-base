create database student_examination_sys;
use student_examination_sys;

CREATE TABLE `student`(
  `id` varchar(255) primary key ,
  `name` varchar(255),
  `age` int,
  `sex` varchar(255)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `student` values ("001","zhangsan",18,"male");
INSERT INTO `student` values ("002","lisi",20,"female");

CREATE TABLE `subject`(
  `id` varchar(255) primary key ,
  `subject` varchar(255),
  `teacher` varchar(255),
  `description` varchar(255)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `subject` values ("1001",	"Chinese",	"Mr. Wang",	"the exam is easy");
INSERT INTO `subject` values ("1002",	"math",	"Miss Liu",	"the exam is difficult");

CREATE TABLE `score`(
  `id` int auto_increment primary key ,
  `student_id` varchar(255),
  `subject_id` varchar(255),
  `score` float,
  constraint `fk_student` foreign key (`student_id`) references `student` (`id`),
  constraint `fk_subject` foreign key (`subject_id`) references `subject` (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

insert into `score` (student_id,subject_id,score) values ("001","1001",80);
insert into `score` (student_id,subject_id,score) values ("002","1002",60);
insert into `score` (student_id,subject_id,score) values ("001","1001",70);
insert into `score` (student_id,subject_id,score) values ("002","1001",60.5);