create database buiding_database;
use buiding_database;
create table class(
id int primary key auto_increment,
`name` varchar(50));
select*from class;
insert into class values(null,"Chung");
create table teacher(
id int primary key auto_increment,
`name` varchar(50),
age int,
country varchar(50));
select * from teacher;
insert into teacher values(null,"Chung",20,"Đà Nẵng");
insert into teacher(`name`,age,country) values("Nam",21,"Quảng Nam");