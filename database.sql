DROP DATABASE IF EXISTS QLYDANCU;
CREATE DATABASE QLYDANCU;
USE QLYDANCU;

create table HoKhau
(
    ID_HO int auto_increment,
    chu_ho nvarchar(100),
    dia_chi nvarchar(100),
    so_thanh_vien int,
    /*tt_nop_tien bool, */
    primary key(ID_HO)
);

insert into HoKhau
values
    (1, 'Nguyễn Văn A', 'Số nhà 20 - Ngách A /120 - Đường B', 4),
    (2, 'Nguyễn Thị Dung', 'Số nhà 58 - Ngách G/220 - Đường F', 5),
    (3, 'Trịnh Hoàng Hải', 'Số nhà 234 - Ngách A /342 - Đường T', 3),
    (4, 'Đoàn Trần Minh', 'Số nhà 356 - Ngách E  - Đường B', 4),
    (5, 'Lê Ngọc Mờ', 'Số nhà 520 - Ngách A /120 - Đường H', 4),
    (6, 'Trần Hữu Cơ', 'Số nhà 15 - Đường A', 5),
    (7, 'Lê Tuấn Hờ', 'Số nhà 145 - Đường B', 2);

--------------------------------------------------------------------------------------------------
--#update 2023/11/26

create table NHANKHAU
(
    ID_NGUOI int auto_increment,
    ho_ten nvarchar(100),
    bi_danh nvarchar(100),
    ngay_sinh date,
    gioi_tinh nvarchar(5),
    noi_sinh nvarchar(100),
    nguyen_quan nvarchar(100),
    dan_toc nvarchar(100),
    nghe_nghiep nvarchar(100),
    noi_lam_viec nvarchar(100),
    CCCD varchar(20),
    ngay_cap_CCCD date,
    noi_cap_CCCD nvarchar(30),
    vai_tro nvarchar(20),
    date_thuong_tru date,
    dia_chi_cu nvarchar(100),
    primary key (ID_NGUOI),
    ID_HO int,
    foreign key (ID_HO) references HOKHAU(ID_HO)
);

insert into NHANKHAU (ID_HO, ho_ten, ngay_sinh, gioi_tinh, dan_toc, nghe_nghiep, nguyen_quan, noi_sinh, noi_lam_viec, CCCD, ngay_cap_CCCD, noi_cap_CCCD, vai_tro)
values
    (3, 'Trịnh Hoàng Hải', '1985-5-1',	'Nam',	'Kinh', 'Kiến trúc sư', 'Lào Cai', 'Lào Cai', 'Hà Nội', '008430122322', '2020-1-15', 'Lào Cai', 'Chủ hộ'),
    (3, 'Trần Minh Nghi', '1988-8-9', 'Nữ', 'Kinh', 'Nội trợ', 'Bắc Ninh', 'Bắc Ninh',	'Hà Nội', '008923899023', '2020-7-6', 'Bắc Ninh',	'Vợ'),
    (3, 'Trịnh Mỹ Á', '2015-2-15',	'Nữ', 'Kinh',	'Học sinh', 'Lào Cai', 'Hà Nội',	'Hà Nội', NULL, NULL, NULL, 'Con'),
    (4, 'Đoàn Trần Minh', '1983-3-8', 'Nam', 'Kinh', 'Giảng viên', 'Bắc Ninh', 'Bắc Ninh', 'Hà Nội', '003420012232', '2019-8-17', 'Bắc Ninh', 'Chủ hộ'),
    (4, 'Từ An Vân', '1988-6-10', 'Nữ', 'Sán Dìu', 'Giáo viên',	'Bắc Ninh', 'Bắc Ninh', 'Hà Nội', '003823904827', '2018-5-16', 'Bắc Ninh', 'Vợ'),
    (4, 'Đoàn Văn Độ',	'2009-08-12', 'Nam', 'Kinh', 'Học sinh', 'Bắc Ninh', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Con'),
    (4, 'Đoàn Thế Lân', '2009-08-12', 'Nam', 'Kinh', 'Học sinh', 'Bắc Ninh', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Con'),
    (5, 'Lê Ngọc Mờ', '1990-9-19',	'Nam',	'Kinh', 'Kỹ sư', 'Thanh Hoá', 'Thanh Hoá', 'Hà Nội', '008943949012', '2021-5-19', 'Thanh Hoá', 'Chủ hộ'),
    (5, 'Lê Minh Nờ', '1990-2-2', 'Nữ', 'Kinh', 'Phóng viên', 'Nghệ An', 'Nghệ An', 'Hà Nội', '094832049483', '2021-2-5', 'Nghệ An', 'Vợ'),
    (5, 'Trần Thị Bành', '1965-1-9', 'Nữ', 'Kinh', 'Nghỉ hưu', 'Thanh Hoá', 'Thanh Hoá', 'Hà Nội', '003478232316', '2021-5-19', 'Thanh Hoá', 'Mẹ'),
    (5, 'Lê Ngọc Nét', '2016-2-29', 'Nam', 'Kinh', 'Học sinh', 'Thanh Hoá', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Con'),
    (6, 'Trần Hữu Cơ', '1958-8-5',	'Nam',	'Kinh', 'Nghỉ hưu', 'Hà Tĩnh', 'Hà Tĩnh', 'Hà Nội', '002340941233', '2022-6-3', 'Hà Tĩnh', 'Chủ hộ'),
    (6, 'Lê Thị Ngọc Liên', '1960-6-19', 'Nữ', 'Kinh', 'Nghỉ hưu', 'Hà Tĩnh', 'Hà Tĩnh', 'Hà Nội', '040343401323', '2022-5-5', 'Hà Tĩnh', 'Vợ'),
    (6, 'Trần Văn An',	'1990-8-8',	'Nam',	'Kinh', 'Kỹ sư', 'Hà Nội', 'Hà Nội', 'Hà Nội', '092421033023', '2021-8-8',	'Hà Nội', 'Con'),
    (6, 'Nguyễn Thị Hương Giang', '1992-2-9', 'Nữ', 'Kinh', 'Kỹ sư', 'Hà Nội',	'Hà Nội', 'Hà Nội', '034984239846', '2022-9-3', 'Hà Nội', 'Con'),
    (6, 'Trần Minh Đức', '2015-5-1', 'Nam', 'Kinh', 'Học sinh', 'Hà Nội', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Cháu'),
    (7, 'Lê Tuấn Hờ', '1960-6-19',	'Nam',	'Kinh', 'Nghỉ hưu', 'Ninh Bình', 'Ninh Bình', 'Hà Nội', '003403483474', '2015-5-5', 'Ninh Bình', 'Chủ hộ'),
    (7, 'Doãn Cẩm Hương', '1960-9-4', 'Nữ', 'Thái', 'Nghỉ hưu', 'Ninh Bình', 'Ninh Bình', 'Hà Nội', '002449210313', '2015-5-5', 'Ninh Bình', 'Vợ'),
    (2, 'Nguyễn Thị Dung', '1952-9-25', 'Nữ',	'Kinh', 'Nghỉ hưu', 'Ninh Bình', 'Ninh Bình', 'Hà Nội', '008234194049', '2020-6-12', 'Ninh Bình', 'Chủ hộ'),
    (2, 'Nguyễn Văn Trạng', '1975-4-30', 'Nam', 'Kinh', 'Công Nhâ', 'Hải Dương', 'Hải Dương', 'Hà Nội', '002948034891',	'2020-6-12', 'Hải Dương', 'Con'),
    (2, 'Đinh Thị Vân', '1980-8-19', 'Nữ', 'Kinh', 'Kinh Doanh', 'Hưng Yê', 'Hưng Yê', 'Hà Nội', '039424030401', '2020-6-12', 'Hưng Yê', 'Con'),
    (2, 'Nguyễn Tuấn Đá', '2007-7-27',	'Nam',	'Kinh', 'Học sinh', 'Hải Dương', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Cháu'),
    (2, 'Nguyễn Ngọc Bảo Trâu', '2011-11-20', 'Nữ', 'Kinh', 'Học sinh',	'Hải Dương', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Cháu'),
    (1, 'Nguyễn Văn A', '1980-8-19', 'Nam',	'Kinh', 'Công nhân', 'Hà Nội', 'Hà Nội', 'Hà Nội', '090934938412', '2019-12-21', 'Hà Nội', 'Chủ hộ'),
    (1, 'Nguyễn Hải Hoa', '1983-3-18', 'Nữ', 'Tày',	'Công nhân', 'Hà Nội', 'Hà Nội',	'Hà Nội', '048500058341',	'2019-12-21', 'Hà Nội', 'Vợ'),
    (1, 'Nguyễn Ngọc Hà', '2005-5-20', 'Nữ', 'Kinh', 'Sinh viên', 'Hà Nội', 'Hà Nội', 'Hà Nội', '048004249032', '2023-09-15', 'Hà Nội', 'Con'),
    (1, 'Nguyễn Đức Thuận', '2008-10-28', 'Nam', 'Kinh', 'Học sinh', 'Hà Nội', 'Hà Nội', 'Hà Nội', NULL, NULL, NULL, 'Con');


create table user_account(
                             id int auto_increment primary key,
                             user_name varchar(50) not null unique,
                             user_password varchar(50) not null,
                             user_role char(20) not null
);


insert into user_account values
                             (1, 'admin', 'admin', 'leader'),
                             ( 2,'manager', 'manager', 'manager'),
                             (3, 'vanhao', '2310', 'leader'),
                             (4, 'dodat', 'dodat', 'leader');


create table data_log(
		id int auto_increment primary key,
        loai int not null,
        ten_loai nvarchar(50) not null,
        ID_NGUOI int,
        ghi_chu nvarchar(200),
		noi_den nvarchar(100),
        ngay_thay_doi date,
        ngay_ket_thuc date,
        foreign key (ID_NGUOI) references NHANKHAU(ID_NGUOI)
);

insert into data_log values
						 (1, 1, 'Đăng ký thường trú', 11,  'Mới sinh', 'Số nhà 520 - Ngách A /120 - Đường H', '2016-3-1', NULL),
						 (2, 2, 'Đăng ký tạm trú', 22, NULL, 'Số nhà 58 - Ngách G/220 - Đường F', '2022-1-1', '2024-1-1'),
                         (3, 3, 'Đăng ký tạm vắng', 8, NULL, 'Thanh Hoá', '2023-6-5', NULL),
                         (4, 4, 'Xoá nhân khẩu', 13, 'Đã mất', NULL, '2023-9-5', NULL),
                         (5, 5, 'Thay đổi hộ', 17, 'Tách hộ', 'Số nhà 145 - Đường B', '2010-10-10', NULL),
                         (6, 5, 'Thay đổi hộ', 18, 'Tách hộ', 'Số nhà 145 - Đường B', '2010-10-10', NULL),
                         (7, 5, 'Thay đổi hộ', 8, 'Đổi chủ hộ', NULL, '2023-1-1', NULL),
                         (8, 1, 'Đăng ký thường trú', 17, 'Hộ mới', 'Số nhà 145 - Đường B', '2010-10-10', NULL),
						 (9, 1, 'Đăng ký thường trú', 18, 'Hộ mới', 'Số nhà 145 - Đường B', '2010-10-10', NULL);


create table Khoan_thu(
					  id_khoan_thu int auto_increment primary key,
                      loai int not null,
                      ten nvarchar(50) not null,
                      don_gia int,
                      ngay_bat_dau date,
                      ngay_ket_thuc date
);

insert into Khoan_thu values
						(1, 1, 'Phí vệ sinh', 6000, NULL, NULL),
                        (2, 1, 'Phí an ninh', 10000, NULL, NULL),
                        (3, 1, 'Phí xã hội', 5000, NULL, NULL),
                        (4, 0, 'Ủng hộ ngày tết thiếu nhi', NULL, '2023-05-01', '2023-05-25'),
                        (5, 0, 'Ủng hộ vì người nghèo', NULL, '2023-10-01', '2023-12-31'),
                        (6, 0, 'Trợ giúp đồng bào bị ảnh hưởng bão lụt', NULL, '2023-07-07', '2023-08-30'),
                        (7, 0, 'Ủng hộ ngày thương binh-liệt sỹ 27/07', NULL, '2023-06-15', '2023-07-20');

create table Khoan_thu_log(
						ID_HO int,
                        id_khoan_thu int,
                        so_tien int,
                        dot_nop int,
                        ngay_nop date,
                        primary key (ID_HO, id_khoan_thu),
                        foreign key (ID_HO) references HOKHAU(ID_HO),
                        foreign key (id_khoan_thu) references Khoan_thu(id_khoan_thu)
);

insert into Khoan_thu_log values
						(1, 1, 288000, 1, '2023-01-15'),
                        (2, 1, 360000, 3, '2023-03-12'),
                        (4, 1, 288000, 1, '2023-01-19'),
                        (5, 1, 288000, 1, '2023-01-29'),
                        (7, 1, 144000, 5, '2023-05-19'),
                        (1, 2, 480000, 1, '2023-01-15'),
                        (2, 2, 600000, 2, '2023-02-25'),
                        (3, 2, 360000, 9, '2023-09-09'),
                        (4, 2, 480000, 4, '2023-04-30'),
                        (6, 2, 600000, 8, '2023-08-12'),
                        (1, 3, 240000, 1, '2023-01-15'),
                        (3, 3, 180000, 3, '2023-03-08'),
                        (4, 3, 240000, 7, '2023-07-27'),
                        (5, 3, 240000, 5, '2023-05-20'),
                        (1, 7, 20000, 6, '2023-06-30'),
                        (1, 5, 40000, 11, '2023-11-11'),
                        (7, 7, 50000, 7, '2023-07-09'),
                        (2, 6, 100000, 8, '2023-08-08'),
						(2, 4, 50000, 5, '2023-05-15'),
                        (4, 4, 500000, 5, '2023-05-25'),
                        (4, 6, 200000, 7, '2023-07-29'),
                        (5, 7, 20000, 6, '2023-06-19'),
                        (7, 4, 20000, 5, '2023-05-05'),
                        (3, 5, 30000, 10, '2023-10-21'),
                        (3, 6, 100000, 8, '2023-08-16'),
                        (6, 6, 200000, 8, '2023-08-01');
                       