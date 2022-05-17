create database operation_sales_management;
use  operation_sales_management;
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
insert into customer values(null,"Minh Quân",10);
insert into customer(c_name,c_age) values("Ngọc Oanh",20);
insert into customer(c_name,c_age) values("Hồng Hà",50);
insert into order_1 values(null,1,"2006-3-21 00:00:00",null);
insert into order_1(c_id,o_date,o_total_price) values(2,"2006-3-23 00:00:00",null);
insert into order_1(c_id,o_date,o_total_price) values(1,"2006-3-16 00:00:00",null);
insert into product values(null,"Máy Giặt",3);
insert into product(p_name,p_price) values("Tu Lanh",5);
insert into product(p_name,p_price) values("Điều hoà",7);
insert into product(p_name,p_price) values("Quạt",1);
insert into product(p_name,p_price) values("Bếp điện",2);
insert into order_detail values(1,1,3);
insert into order_detail values(1,3,7);
insert into order_detail values(1,4,2);
insert into order_detail values(2,1,1);
insert into order_detail values(3,1,8);
insert into order_detail values(2,5,4);
insert into order_detail values(2,3,3);
select *from order_detail;
select *from product;
select * from order_1;
select* from customer;
select order_1.o_id,order_1.o_date,order_1.o_total_price from order_1;
select distinct c.c_name, c.c_id , p.p_name from customer c right join order_1 o on c.c_id = o.c_id
 right join order_detail o_d on o.o_id = o_d.o_id
join product p on p.p_id = o_d.p_id;
select c.c_name from customer c left join order_1 o on c.c_id = o.c_id where o.c_id is null;
select o.o_id,o.o_date,p.p_price*o_d.od_qty as total_price
 from order_1 o join order_detail o_d on o.o_id= o_d.o_id
 join product p on p.p_id = o_d.p_id;
