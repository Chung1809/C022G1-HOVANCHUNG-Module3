create database furama;
drop database furama;
use furama;
create table customer_type(
customer_type_id int primary key not null auto_increment,
customer_type_name varchar(50)
);
create table customer(
customer_id int primary key not null auto_increment,
customer_type_id int,
customer_name varchar(50) not null,
customer_birthday date not null,
customer_gender bit(1) not null,
customer_id_card varchar(50) not null,
customer_phone varchar(50) not null,
customer_email varchar(50),
customer_address varchar(50),
foreign key(customer_type_id) references customer_type(customer_type_id)
);
create table position_p(
position_p_id int primary key auto_increment,
position_p_name varchar(50)
);
create table education_degree(
education_degree_id int primary key auto_increment,
education_degree_name varchar(50)
);
create table division(
division_id int primary key auto_increment,
division_name varchar(50)
);
create table `role`(
role_id int primary key auto_increment,
role_name varchar(50)
);
create table `user`(
username varchar(255) primary key,
password varchar(255)
);
create table emloyee(
emloyee_id int primary key auto_increment,
emloyee_name varchar(50) not null,
emloyee_birthday date not null,
emloyee_id_card varchar(50) not null,
emloyee_salary double not null,
emloyee_phone varchar(50) not null,
emloyee_email varchar(50),
emloyee_address varchar(50),
position_p_id int,
education_degree_id int,
division_id int,
username varchar(255),
foreign key(position_p_id) references position_p(position_p_id),
foreign key(education_degree_id) references education_degree(education_degree_id),
foreign key(division_id) references division(division_id),
foreign key(username) references `user`(username)
);
create table service_type(
service_type_id int primary key auto_increment,
service_type_name varchar(50)
);
create table rent_type(
rent_type_id int primary key auto_increment,
rent_type_name varchar(50),
rent_type_cost double
);
create table service(
service_id int primary key auto_increment,
service_name varchar(50) not null,
service_area int ,
service_cost double not null,
service_max_people int,
rent_type_id int,
service_type_id int,
standard_room varchar(50),
description_other_convenience varchar(50),
pool_area double,
number_of_floors int,
foreign key(rent_type_id) references rent_type(rent_type_id),
foreign key(service_type_id) references service_type(service_type_id)
);
create table contract(
contract_id int primary key auto_increment,
contract_start_date datetime not null,
contract_end_date datetime not null,
contract_deposit double not null,
contract_toatal_money double not null, 
emloyee_id int,
customer_id int,
service_id int,
foreign key(emloyee_id) references emloyee(emloyee_id),
foreign key(customer_id) references customer(customer_id),
foreign key(service_id) references service(service_id)
);
create table attach_service(
attach_service_id int primary key auto_increment,
attach_service_name varchar(50) not null,
attach_service_cost double not null,
attach_service_unit int not null,
attach_service_status varchar(50)
);
create table contract_detail(
contract_detail_id int primary key auto_increment,
contract_id int,
attach_service_id int,
quantity int not null,
foreign key(contract_id) references contract(contract_id),
foreign key(attach_service_id) references attach_service(attach_service_id)
);
create table role_user(
username varchar(255),
role_id int,
foreign key(username) references `user`(username),
foreign key(role_id) references `role`(role_id)
);

