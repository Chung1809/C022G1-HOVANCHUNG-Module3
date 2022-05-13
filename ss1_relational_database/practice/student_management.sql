create database student_management;
use student_management;
create table Student (
id int primary key auto_increment ,
`name` varchar(50),
age int,
country varchar(50)
);
select* from Student;
insert into Student values(1,"Chung",20,"Đà Nẵng");
insert into Student values(2,"Nam",21,"Đà Nẵng") ;
