create database add_management_student;
use  add_management_student;
create table class(
c_id  int not null primary key auto_increment,
c_name varchar(60) not null,
start_date date not null,
`status` bit);
create table student(
student_id int not null primary key auto_increment,
student_name varchar(30),
address varchar(50),
phone varchar(20),
`status` bit ,
c_id int,
foreign key(c_id) references class(c_id));
create table subject_1(
sub_id int not null primary key auto_increment,
sub_name varchar(30) not null,
credit tinyint not null default 1 check(credit >= 1),
`status` bit default 1 );
create table mark(
mark_id int primary key auto_increment,
sub_id int not null,
student_id int not null,
mark float default 0 check( mark between 0 and 100),
examtimes bit,
unique(sub_id,student_id),
foreign key(sub_id)references subject_1(sub_id),
foreign key(student_id)references student(student_id));
select*from class;
select*from student;
insert into class values(null,"A1","2008-12-20",1);
insert into class(c_name,start_date,`status`) values("A1","2008-12-22",1);
insert into class(c_name,start_date,`status`) values("B3",current_date,0);
insert into student values(null,"Hung","Hà Nội","0912113113",1,1);
insert into student(student_name,address,`status`,c_id) values("Hoa","Hải Phòng",1,1);
