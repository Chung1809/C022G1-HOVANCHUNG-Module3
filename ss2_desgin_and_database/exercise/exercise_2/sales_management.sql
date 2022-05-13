create database sales_management;
use sales_management;
create table customer(
c_id int not null primary key auto_increment,
c_name varchar(50),
c_age int);
create table order_1(
o_id int not null primary key auto_increment,
c_id int not null,
o_date datetime,
o_total_price double,
foreign key(c_id) references customer(c_id));
create table product(
p_id int not null primary key auto_increment,
p_name varchar(50),
p_price double );
create table order_detail(
o_id int not null,
p_id int not null,
od_qty int,
primary key(o_id,p_id),
foreign key(o_id) references order_1(o_id),
foreign key(p_id) references product(p_id));



