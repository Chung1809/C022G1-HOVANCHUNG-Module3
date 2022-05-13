create database erd_database;
use erd_database;
create table phieu_xuat(
so_px int not null primary key auto_increment,
ngay_xuat datetime);
create table chi_tiet_phieu_xuat(
so_px int,
ma_vtu varchar(20),
don_gia_xuat double,
so_luong_xuat int,
primary key(so_px,ma_vtu),
foreign key (so_px) references phieu_xuat(so_px),
foreign key (ma_vtu) references vat_tu(ma_vtu) );
create table vat_tu(
ma_vtu varchar(20) primary key,
ten_vtu varchar(50));
create table chi_tiet_phieu_nhap(
so_pn int,
ma_vtu varchar(20),
don_gia_nhap double,
so_luong_xuat int,
primary key(so_pn,ma_vtu),
foreign key(so_pn) references phieu_nhap(so_pn),
foreign key(ma_vtu) references vat_tu(ma_vtu));
create table phieu_nhap(
so_pn int not null primary key auto_increment,
ngay_nhap datetime);
create table don_dat_hang(
so_dh int not null primary key auto_increment,
ngay_dh datetime,
ma_ncc varchar(20),
foreign key(ma_ncc) references nha_cung_cap(ma_ncc));
create table chi_tiet_don_dat_hang(
so_dh int,
ma_vtu varchar(20),
ngay_dh datetime,
ten_vt varchar(50),
primary key(so_dh,ma_vtu),
foreign key(so_dh) references don_dat_hang(so_dh),
foreign key(ma_vtu) references vat_tu(ma_vtu));
create table nha_cung_cap(
ma_ncc varchar(20) primary key,
ten_ncc varchar(50),
dia_chi varchar(50)
);
create table sdt(
ma_ncc varchar(20) ,
sdt varchar(10) primary key,
foreign key(ma_ncc)references nha_cung_cap(ma_ncc));



