create database query_management_student;
use query_management_student;
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
select*from student where `status` = true;
insert into class values(null,"A1","2008-12-20",1);
select*from subject_1 where credit < 10;
select s.student_id ,s.student_name, c.c_name from student s join class c on s.c_id = c.c_id;	
select s.student_id ,s.student_name, c.c_name from student s join class c on s.c_id = c.c_id where c.c_name = "A1";	
select s.student_id, s.student_name , sub.sub_name , m.mark from student s join mark m on s.student_id = m.student_id join subject_1 sub on m.sub_id = sub.sub_id;