create database demo;
use demo;
create table products(
id int not null primary key auto_increment,
product_code varchar(50),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(50),
product_status bit);

insert into products values(null,"02","Nam",10000,2,"Tự do",1);
insert into products(product_code,product_name,product_price,product_amount,product_description,product_status)
 values("03","Hoàng",20000,3,"Tự do",1),
 ("04","Đạt",30000,4,"Management",0),
 ("05","Anh",40000,5,"CEO",1);
 

 
 create unique index p_code on products(product_code);
 
 create index p_code_name on products(product_name,product_price) ;
 
 explain select * from products where product_name ="Hoàng";
 explain select * from products where id = 1;

 create view w_products	as select product_code,product_name,product_price,product_status from products;
 select *from  w_products; 

 update w_products set product_price = 5000 where product_code ;
 select * from w_products;
 
 drop view w_products;
 
 delimiter $$
 create procedure show_all_info_product ()
 begin
 select*from products ;
 end $$
 delimiter ;
 
 call show_all_info_product () ;
 
 delimiter $$
 create procedure add_new_product(
 product_code_p varchar(50) ,
 product_name_p varchar(50),
 product_price_p double,
 product_amount_p int,
 product_description_p varchar(50),
 product_status_p bit)
 begin
 insert into products(product_code,product_name,product_price,product_amount,product_description,product_status)
 values(product_code_p,product_name_p,product_price_p,product_amount_p, product_description_p,product_status_p);
 end $$
 delimiter ;
 call add_new_product("01","Đạt",10000,2,"Tự do",1);
  call show_all_info_product () ;
  
   delimiter $$
 create procedure edit_product(
 product_id int,
 product_code_p varchar(50) ,
 product_name_p varchar(50),
 product_price_p double,
 product_amount_p int,
 product_description_p varchar(50),
 product_status_p bit)
 begin
 update products p
 set
 p.id = product_id,
 p.product_code = product_code_p,
 p.product_name = product_name_p,
 p.product_price = product_price_p,
 p.product_amount = product_amount_p,
 p.product_description = product_description_p,
 p.product_status = product_status_p
 where  p.id = product_id;
 end $$
 delimiter ;
 call edit_product(1,"10","Nhân",70000,10,"Công nhân",0);
   call show_all_info_product () ;
   
   delimiter $$
 create procedure remove_product(product_id int)
 begin
 delete from products p
 where p.id = product_id;
 end $$
 delimiter ;
 call remove_product(1);
call show_all_info_product () ;
   
   
 
  
  
 

