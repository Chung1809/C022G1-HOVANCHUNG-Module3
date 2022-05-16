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
mark_id int not null primary key auto_increment,
sub_id int not null,
student_id int not null,
mark float default 0 check( mark between 0 and 100),
examtimes tinyint default 1,
unique(sub_id,student_id),
foreign key(sub_id)references subject_1(sub_id),
foreign key(student_id)references student(student_id));

insert into class values(null,"A1","2008-12-20",1);
insert into class(c_name,start_date,`status`) values("A2","2008-12-22",1);
insert into class(c_name,start_date,`status`) values("B3",current_date,0);
insert into student values(null,"Hung","Hà Nội","0912113113",1,1);
insert into student(student_name,address,phone,`status`,c_id) values("Hoa","Hải Phòng",null,1,1),("Manh","HCM","0123123123",0,2);

insert into subject_1 values(null,"CF",5,1);
insert into subject_1(sub_name,credit,`status`) values("C",6,1),("HDJ",5,1),("RDBMS",10,1);

insert into mark(sub_id,student_id,mark,examtimes) values(1,1,8,1),(1,2,10,2),(2,1,12,1);

select*from class where extract(month from start_date) >=12;
select * from student where student_name like "H%" ;
select*from subject_1 where credit >2 and credit < 6;
update student set c_id = 2 where student_name ="Hung";
select s.student_name,sub.sub_name,m.mark from student s join mark m on s.student_id = m.student_id
 join subject_1 sub on m.sub_id = sub.sub_id order by m.mark desc;

select*from student;
select*from class;
select*from subject_1;
select*from mark;

