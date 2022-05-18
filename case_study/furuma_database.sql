create database case_study_furama;
drop database case_study_furama;
use case_study_furama;
create table loai_khach(
ma_loai_khach int primary key auto_increment,
ten_loai_khach varchar(50));
create table khach_hang(
ma_khach_hang int primary key auto_increment,
ma_loai_khach int,
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
foreign key (ma_loai_khach) references loai_khach(ma_loai_khach));
create table vi_tri(
ma_vi_tri int primary key auto_increment,
ten_vi_tri varchar(45));
create table trinh_do(
ma_trinh_do int primary key auto_increment,
ten_trinh_do varchar(45));
create table bo_phan(
ma_bo_phan int primary key auto_increment,
ten_bo_phan varchar(45));
create table nhan_vien(
ma_nhan_vien int primary key auto_increment,
ho_ten varchar(45) not null,
ngay_sinh date not null,
so_cmnd varchar(45) not null,
luong double not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key(ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key(ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key(ma_bo_phan) references bo_phan(ma_bo_phan)
);
create table loai_dich_vu(
ma_loai_dich_vu int primary key auto_increment,
ten_loai_dich_vu varchar(45));
create table kieu_thue(
ma_kieu_thue int primary key auto_increment,
ten_kieu_thue varchar(45));
create table dich_vu(
ma_dich_vu int primary key auto_increment,
ten_dich_vu varchar(45) not null,
dien_tich int,
chi_phi_thue double not null,
so_luong_nguoi_toi_da int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
ma_loai_dich_vu int,
ma_kieu_thue int,
foreign key(ma_loai_dich_vu)references loai_dich_vu(ma_loai_dich_vu),
foreign key(ma_kieu_thue)references kieu_thue(ma_kieu_thue));
create table hop_dong(
ma_hop_dong int primary key auto_increment,
ngay_lam_hop_dong datetime not null,
ngay_ket_thuc datetime not null,
tien_dat_coc double not null,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key(ma_khach_hang) references khach_hang(ma_khach_hang),
foreign key(ma_dich_vu) references dich_vu(ma_dich_vu));
create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key auto_increment,
ten_dich_vu_di_kem varchar(45)not null,
gia double not null,
don_vi varchar(45) not null,
trang_thai varchar(45)
);
create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key auto_increment,
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int not null
,foreign key(ma_hop_dong) references hop_dong(ma_hop_dong)
,foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem));

select*from loai_khach;
insert into loai_khach values(null,"Diamond");
insert into loai_khach(ten_loai_khach) values("Platinium"),("Gold"),("Silver"),("Member");

select*from vi_tri;
insert into vi_tri values(null,"Lễ tân");
insert into vi_tri(ten_vi_tri) values("Phục vụ"),("Chuyên viên"),("Giám sát"),("Quản lí"),("Giám đốc");

select*from trinh_do;
insert into trinh_do values(null,"Trung cấp");
insert into trinh_do(ten_trinh_do) values("Cao đẳng"),("Đại học"),("Sau Đại học");

select*from bo_phan;
insert into bo_phan values(null,"Sale-Marketing");
insert into bo_phan(ten_bo_phan) values("Hành chính"),("Phục vụ"),("Quản lí");

select*from loai_dich_vu;
insert into loai_dich_vu values(null,"House");
insert into loai_dich_vu(ten_loai_dich_vu) values("Villa"),("Room");

select*from kieu_thue;
insert into kieu_thue values(null,"Year");
insert into kieu_thue(ten_kieu_thue) values("Month"),("Day"),("Hour");

select*from khach_hang;
insert into khach_hang values(null,1,"Hồ Quốc Đạt","2000-03-26",1,"01656165","0165161516","supperman1809@gmail.com","Đà Nẵng");
insert into khach_hang(ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi) 
values(2,"Hồ Quỳnh Hương ","2000-04-26",1,"016561645","016589161516","abc@gmail.com","Đà Nẵng"),
(3,"Phạm Xuân Diệu ","2000-05-26",1,"016561645","016589161516","abcd@gmail.com","Đà Nẵng"),
(1,"Dương Văn Quan","1981-07-08",1,"543432111","0490039241","duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng"),
(4,"Hoàng Trần Nhi Nhi ","1995-12-09",0,"795453345","0312345678","nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai"),
(4,"Tôn Nữ Mộc Châu ","2005-12-06",0,"732434215","0988888844","tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng"),
(1,"Nguyễn Mỹ Kim","1984-04-08",0,"856453123","0912345698","kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh"),
(3,"Nguyễn Thị Hào","1999-04-08",0,"965656433","0763212345","haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum"),
(1,"Trần Đại Danh","1994-07-01",1,"432341235","0643343433","danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi"),
(2,"Nguyễn Tâm Đắc","1989-07-01",1,"344343432","0987654321","dactam@gmail.com","22 Ngô Quyền, Đà Nẵng")
;

select*from nhan_vien;

insert into nhan_vien values(null,"Nguyễn Văn An","1970-11-07","456231786",10000000,"0901234121","annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1);
insert into nhan_vien(ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan) 
values("Lê Văn Bình","1997-04-09","654231234",7000000,"0934212314","binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2),
("Hồ Thị Yến","1995-12-12","999231723",14000000,"0412352315","thiyen@gmail.com","K234/11 Điện Biên Phủ, Gia Lai",1,3,2),
("Võ Công Toản","1980-04-04","123231365",17000000,"0374443232","toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,3,2),
("Nguyễn Bỉnh Phát","1999-12-09","454363232",6000000,"09023412315","phatphat@gmail.com","43 Yên Bái, Đà Nẵng, Gia Lai",2,1,1),
("Khúc Nguyễn An Nghi","2000-11-08","964542311",7000000,"0978653213","annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",2,2,3),
("Nguyễn Hữu Hà","1993-01-01","534323231",8000000,"0941234553","nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,3,2),
("Nguyễn Hà Đông","1989-09-03","234414123",9000000,"0642123111","donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4),
("Tòng Hoang","1982-09-03","256781231",6000000,"0245144444","hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4),
("Nguyễn Công Đạo","1994-01-08","755434343",8000000,"0988767111","nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);


select*from dich_vu;
insert into dich_vu values(1,'Villa Beach Front' ,25000 ,10000000 , 10,'vip','Có hồ bơi' ,500 ,4 ,3 , 1 );
insert into dich_vu(ten_dich_vu,dien_tich,chi_phi_thue,so_luong_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,ma_loai_dich_vu,ma_kieu_thue)
values
('House Princess 01' ,14000 ,5000000 , 7,'vip','Có thêm bếp nướng' ,null ,3 ,2 , 2 ),
('Room Twin 01' ,5000 ,1000000 , 2,'normal','Có tivi' ,null ,null ,3 , 4 ),
('Villa No Beach Front' ,22000 ,9000000 , 8,'normal','Có hồ bơi' ,300 ,3 ,1 , 3 ),
('House Princess 02' ,10000 ,4000000 , 5,'normal','Có thêm bếp nướng' ,null ,2 ,2 , 3 ),
('Room Twin 02' ,3000 ,900000 , 2,'normal','Có tivi' ,null ,null ,3 , 4 );

select*from hop_dong;
insert into hop_dong values(null,'2020-12-08','2020-12-08',0,3,1,3);
insert into hop_dong(ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
values
('2020-07-14','2020-07-21',200000,7,3,1),
('2021-03-15','2021-03-17',50000,3,4,2),
('2021-01-14','2021-01-18',100000,7,5,5),
('2021-07-14','2021-07-15',0,7,2,6),
('2021-06-01','2021-06-03',0,7,7,6),
('2021-09-02','2021-09-05',100000,7,4,4),
('2021-06-17','2021-06-18',150000,3,4,1),
('2020-11-19','2020-11-19',0,3,4,3),
('2021-04-12','2021-04-14',0,10,3,5),
('2021-04-25','2021-04-25',0,2,2,1),
('2021-05-25','2021-05-27',0,7,10,1)
;
select*from hop_dong_chi_tiet;
insert into hop_dong_chi_tiet values(null,2,4,5);
insert into hop_dong_chi_tiet(ma_hop_dong,ma_dich_vu_di_kem,so_luong)
values
(2,5,8),
(2,6,15),
(3,1,1),
(3,2,11),
(1,3,1),
(1,2,2),
(12,2,2);


select*from dich_vu_di_kem;
insert  into dich_vu_di_kem values(null,'Karaoke','10000','giờ','tiện nghi, hiện tại');
insert into dich_vu_di_kem(ten_dich_vu_di_kem,gia,don_vi,trang_thai)
values
('Thuê xe máy','10000','chiếc','hỏng 1 xe'),
('Thuê xe đạp','20000','chiếc','tốt'),
('Buffet buổi sáng','15000','suất','đầy đủ đồ ăn, tráng miệng'),
('Buffet buổi trưa','90000','suất','đầy đủ đồ ăn, tráng miệng'),
('Buffet buổi tối','16000','suất','đầy đủ đồ ăn, tráng miệng');


-- Task 2--
select*from nhan_vien where ho_ten regexp"^[HKT]" and char_length(ho_ten) <=15;
-- Task 3--
select k_h.*,round(datediff(curdate(),k_h.ngay_sinh)/365) as age
from khach_hang k_h where (round(datediff(curdate(),k_h.ngay_sinh)/365) between 18 and 50) and k_h.dia_chi like "%Đà Nẵng" or "%QuảngTrị";
-- Task4--
select k_h.ma_khach_hang , k_h.ho_ten , count(k_h.ma_khach_hang) as so_lan_dat_phong
from khach_hang k_h join hop_dong h_d on k_h.ma_khach_hang = h_d.ma_khach_hang
join loai_khach l_k on (l_k.ma_loai_khach = 1) = k_h.ma_loai_khach
group by ma_khach_hang
order by so_lan_dat_phong;
-- Task 5 -- 
-- hàm coalesce nếu null thì set giá trị về 0 (tự cho)
select k_h.ma_khach_hang,k_h.ho_ten,l_k.ten_loai_khach,h_d.ma_hop_dong,d_v.ten_dich_vu,h_d.ngay_lam_hop_dong,h_d.ngay_ket_thuc,
sum(d_v.chi_phi_thue +coalesce(( h_d_c_t.so_luong*d_v_d_k.gia),0) )as tong_tien
from khach_hang k_h join loai_khach l_k on k_h.ma_loai_khach = l_k.ma_loai_khach
join hop_dong h_d on h_d.ma_khach_hang = k_h.ma_khach_hang
join dich_vu d_v on  d_v.ma_dich_vu = h_d.ma_dich_vu
join hop_dong_chi_tiet h_d_c_t on h_d_c_t.ma_hop_dong = h_d.ma_hop_dong
join dich_vu_di_kem d_v_d_k on d_v_d_k.ma_dich_vu_di_kem = h_d_c_t.ma_dich_vu_di_kem
group by h_d.ma_hop_dong
order by k_h.ma_khach_hang;
-- Task 6--
select distinct d_v.ma_dich_vu,d_v.ten_dich_vu,d_v.dien_tich,d_v.chi_phi_thue,l_d_v.ten_loai_dich_vu 
from dich_vu d_v join loai_dich_vu l_d_v on d_v.ma_loai_dich_vu = l_d_v.ma_loai_dich_vu
join hop_dong h_d on h_d.ma_dich_vu = d_v.ma_dich_vu
where h_d.ma_dich_vu not in(select ma_dich_vu from hop_dong h_d where year(h_d.ngay_lam_hop_dong) = "2021" and quarter(h_d.ngay_lam_hop_dong)=1 );
-- join bảng dịch vụ với bảng loại dịch vụ để hiển thị tên loại dịch vụ trên select
-- join tiếp bảng hợp đồng, điều kiện ở where là mã dịch vụ ko nằm trong truy vấn các dịch vụ đã đặt trong năm 2021 và quý 1
-- Task 7--
select d_v.ma_dich_vu,d_v.ten_dich_vu,d_v.dien_tich,d_v.so_luong_nguoi_toi_da,d_v.chi_phi_thue,l_d_v.ten_loai_dich_vu,h_d.ngay_lam_hop_dong from
dich_vu d_v join loai_dich_vu l_d_v on d_v.ma_loai_dich_vu = l_d_v.ma_loai_dich_vu
join hop_dong h_d on h_d.ma_dich_vu = d_v.ma_dich_vu
where h_d.ma_dich_vu not in(select ma_dich_vu from hop_dong h_d where year(h_d.ngay_lam_hop_dong) != "2020" and year(h_d.ngay_lam_hop_dong) = "2021" )
group by d_v.ma_dich_vu
order by h_d.ma_dich_vu;

-- Task 8--
select distinct ho_ten from khach_hang;
select ho_ten from khach_hang group by ho_ten;
select ho_ten from khach_hang
union 
select ho_ten from khach_hang;
-- Task 9 --
select  month(ngay_lam_hop_dong) as thang  ,count(*) as so_luong_khach_hang from hop_dong 
where year(ngay_lam_hop_dong) =2021
group by(  month(ngay_lam_hop_dong))
order by thang;

-- Task 10--
select h_d.ma_hop_dong,h_d.ngay_lam_hop_dong,h_d.ngay_ket_thuc,h_d.tien_dat_coc,sum(h_d_c_t.so_luong) as so_luong_dich_vu_di_kem
from hop_dong h_d  left join hop_dong_chi_tiet h_d_c_t on h_d.ma_hop_dong=h_d_c_t.ma_hop_dong
group by h_d.ma_hop_dong
order by h_d.ma_hop_dong;

-- Task 11 --
select d_v_d_k.ma_dich_vu_di_kem , d_v_d_k.ten_dich_vu_di_kem 
from dich_vu_di_kem d_v_d_k
join hop_dong_chi_tiet h_d_c_t on d_v_d_k.ma_dich_vu_di_kem = h_d_c_t.ma_dich_vu_di_kem
join hop_dong h_d on h_d.ma_hop_dong = h_d_c_t.ma_hop_dong
join khach_hang k_h on k_h.ma_khach_hang = h_d.ma_khach_hang
join loai_khach l_k on (l_k.ma_loai_khach = 1) = k_h.ma_loai_khach
where k_h.dia_chi like "%Quảng Ngãi" or "%Vinh"
group by l_k.ma_loai_khach
order by d_v_d_k.ma_dich_vu_di_kem;

-- Task 12--
select h_d.ma_hop_dong,n_v.ho_ten,k_h.ho_ten,k_h.so_dien_thoai,d_v.ten_dich_vu,sum(coalesce(h_d_c_t.so_luong,0)) as so_luong_dich_vu_di_kem,h_d.tien_dat_coc
from hop_dong h_d left join khach_hang k_h   on h_d.ma_khach_hang = k_h.ma_khach_hang
left join nhan_vien n_v on n_v.ma_nhan_vien = h_d.ma_nhan_vien
left join hop_dong_chi_tiet h_d_c_t on h_d_c_t.ma_hop_dong = h_d.ma_hop_dong
join dich_vu d_v on d_v.ma_dich_vu = h_d.ma_dich_vu
where ( quarter(h_d.ngay_lam_hop_dong) = 4 and year(h_d.ngay_lam_hop_dong) = 2020 ) and h_d.ma_hop_dong
not in
(select h_d.ma_hop_dong
from hop_dong h_d  left join khach_hang k_h on h_d.ma_khach_hang = k_h.ma_khach_hang
left join nhan_vien n_v on n_v.ma_nhan_vien = h_d.ma_nhan_vien
left join hop_dong_chi_tiet h_d_c_t on h_d_c_t.ma_hop_dong = h_d.ma_hop_dong
join dich_vu d_v on d_v.ma_dich_vu = h_d.ma_dich_vu
where ( quarter(h_d.ngay_lam_hop_dong) in(1,2) and year(h_d.ngay_lam_hop_dong)= 2021))
group by h_d.ma_hop_dong;


-- Task 13--
select d_v_d_k.ma_dich_vu_di_kem ,d_v_d_k.ten_dich_vu_di_kem, sum(h_d_c_t.so_luong) as so_luong_dich_vu_di_kem from
hop_dong h_d join khach_hang k_h on h_d.ma_khach_hang=k_h.ma_khach_hang
join hop_dong_chi_tiet h_d_c_t on h_d_c_t.ma_hop_dong = h_d.ma_hop_dong
join dich_vu_di_kem d_v_d_k on d_v_d_k.ma_dich_vu_di_kem = h_d_c_t.ma_dich_vu_di_kem
group by d_v_d_k.ma_dich_vu_di_kem
order by sum(h_d_c_t.so_luong) desc limit 0,2;

-- Task 14 --
select h_d.ma_hop_dong,l_d_v.ten_loai_dich_vu,d_v_d_k.ten_dich_vu_di_kem,count(d_v_d_k.ma_dich_vu_di_kem) as so_lan_su_dung
from hop_dong h_d join dich_vu d_v on h_d.ma_dich_vu=d_v.ma_dich_vu
join loai_dich_vu l_d_v on l_d_v.ma_loai_dich_vu = d_v.ma_loai_dich_vu
join hop_dong_chi_tiet h_d_c_t on h_d_c_t.ma_hop_dong = h_d.ma_hop_dong
join dich_vu_di_kem d_v_d_k on d_v_d_k.ma_dich_vu_di_kem = h_d_c_t.ma_dich_vu_di_kem
group by d_v_d_k.ma_dich_vu_di_kem
having count(d_v_d_k.ma_dich_vu_di_kem) = 1
order by h_d.ma_hop_dong;

-- Task 15 --
select n_v.ma_nhan_vien,n_v.ho_ten,t_d.ten_trinh_do,b_p.ten_bo_phan,n_v.so_dien_thoai,n_v.dia_chi
from nhan_vien n_v join bo_phan b_p on n_v.ma_bo_phan = b_p.ma_bo_phan
join trinh_do t_d on t_d.ma_trinh_do = n_v.ma_trinh_do
join hop_dong h_d on h_d.ma_nhan_vien = n_v.ma_nhan_vien
where  year(h_d.ngay_lam_hop_dong) between 2020 and 2021
group by n_v.ma_nhan_vien
having count(h_d.ngay_lam_hop_dong) <=3
order by n_v.ma_nhan_vien;

-- Task 16--
delete from nhan_vien n_v
where n_v.ma_nhan_vien not in(select n_v.ma_nhan_vien from hop_dong h_d where year(h_d.ngay_lam_hop_dong) between 2019 and 2021);

-- Task 17 --
update khach_hang k_h set l_k.ma_loai_khach = 1 ;

-- Task 18 --
delete  khach_hang 
from khach_hang k_h join hop_dong h_d on k_h.ma_khach_hang = h_d.ma_khach_hang
where year(h_d.ngay_lam_hop_dong) <2021;














 
 








