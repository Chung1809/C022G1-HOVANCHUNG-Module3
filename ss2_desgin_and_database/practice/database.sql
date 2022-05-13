create database quan_li_diem_thi;
use quan_li_diem_thi;
create table hoc_sinh(
ma_hs varchar(50) primary key,
ten_hs varchar(50),
ngay_sinh datetime,
lop varchar(50),
gt varchar(50)
);
create table mon_hoc(
ma_mh varchar(50)  primary key,
ten_mh varchar(50),
ma_gv varchar(50));
create table bang_diem(
ma_hs varchar(50),
ma_mh varchar(50),
diem_thi int,
ngay_kiem_tra datetime,
primary key (ma_hs,ma_mh),
foreign key (ma_hs) references hoc_sinh(ma_hs),
foreign key (ma_mh) references mon_hoc(ma_mh)
);
create table giao_vien(
ma_gv varchar(50)  primary key,
ten_gv varchar(50),
so_dien_thoai int);
insert into hoc_sinh values("002","Nam","2001-05-02 00:00:00","C0222G1","Nam");
insert into hoc_sinh values("003","Nam","2001-05-02 00:00:00","C0222G1","Nam");
insert into mon_hoc values("004","English","006","007");
insert into bang_diem values("002","004",9,"2018-06-18 00:00:00");
insert into giao_vien values("006","Hoàng",15616516);
alter table mon_hoc add ma_gv1 varchar(50);	
alter table mon_hoc add constraint fk_ma_gv foreign key(ma_gv) references giao_vien(ma_gv);
select*from hoc_sinh;
select*from mon_hoc;
select*from bang_diem;
select*from giao_vien;



