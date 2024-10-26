CREATE DATABASE QuanLyCuaHangKinhDoanhVangBacDaQuy
USE QuanLyCuaHangKinhDoanhVangBacDaQuy

Create table PhieuMuaHang
(
	ID int primary key,
	IDNhaCungCap int,
	IDSanPham int,
	IDLoai int,
	NgayMua date,
	SoLuong int,
	DonGia float,
	ThanhTien float
)


Create table NhaCungCap
(
	ID int primary key,
	SoDienThoai nvarchar(50),
	DiaChi  nvarchar(50)
)

Create table SanPham
(
	ID int primary key,
	TenSanPham nvarchar(50),
	IDLoai int,
	DonGia float,
	SoLuong int,
	TrangThai bit,
	NgayThayDoiSoLuong date,
	SoLuongTruoc int
)

Create table LichSuKho
(
	ID int primary key,
	IDSanPham int,
	SoLuongTruoc int,
	LoaiGiaoDich nvarchar(50),
	Ngay date,
	SoLuongSau int,
)

Create table LoaiSanPham
(
	ID int primary key,
	Ten nvarchar(50),
	LoiNhuan int,
	DonViTinh nvarchar(10)
)

Create table PhieuBanHang
(
	ID int primary key,
	IDKhach int,
	IDSanPham int,
	TenSanPham nvarchar(50),
	SoLuong int,
	DonViTinh nvarchar(10),
	DonGia float,
	ThanhTien float,
	NgayBan date
)

Create table KhachHang
(
	ID int primary key,
	SoDienThoai nvarchar(50),
	Diem int
)

Create table PhieuDichVu
(
	ID int primary key,
	IDKhach int,
	Ngay date,
	IDDichVu int,
	SoLuong int,
	DonGia float,
	TinhTrang nvarchar(50),
	TongTien float,
	TraTruoc float,
	ConLai float
)

Create table LoaiDichVu
(
	ID int primary key,
	TenLoai nvarchar(50),
	DonGia float
)

/*Foreign key*/

Alter table PhieuMuaHang
Add constraint FK_PhieuMuaHang_SanPham_IDSanpham 
Foreign Key(IDSanPham) References SanPham(ID)

Alter table PhieuMuaHang
Add constraint FK_PhieuMuaHang_NhaCungCap_IDNhaCungCap
Foreign Key(IDNhaCungCap) References NhaCungCap(ID)

Alter table PhieuMuaHang
Add constraint FK_PhieuMuaHang_LoaiSanPham_IDLoai
Foreign Key(IDLoai) References LoaiSanPham(ID)

Alter table SanPham
Add constraint FK_SanPham_LoaiSanPham_IDLoai
Foreign Key(IDLoai) References LoaiSanPham(ID)

Alter table LichSuKho
Add constraint FK_LichSuKho_SanPham_IDSanPham
Foreign Key(IDSanPham) References SanPham(ID)

Alter table PhieuBanHang
Add constraint FK_PhieuBanHang_SanPham_IDSanPham
Foreign Key(IDSanPham) References SanPham(ID)

Alter table PhieuBanHang
Add constraint FK_PhieuBanHang_KhachHang_IDKhach
Foreign Key(IDKhach) References KhachHang(ID)

Alter table PhieuDichVu
Add constraint FK_PhieuDichVu_KhachHang_IDKhach
Foreign Key(IDKhach) References KhachHang(ID)

Alter table PhieuDichVu
Add constraint FK_PhieuDichVu_LoaiDichVu_IDDichVu
Foreign Key(IDDichVu) References LoaiDichVu(ID)

/*Insert data*/


INSERT INTO SanPham (ID, TenSanPham, IDLoai, DonGia, SoLuong, TrangThai, NgayThayDoiSoLuong, SoLuongTruoc) VALUES
(1, N'Nhẫn Vàng 18K', 1, 5000000, 10, 1, '2023-10-01', 15),
(2, N'Lắc Tay Bạc', 2, 1500000, 25, 1, '2023-10-02', 30),
(3, N'Dây Chuyền Vàng 24K', 1, 12000000, 5, 1, '2023-10-03', 7),
(4, N'Khuyên Tai Kim Cương', 3, 25000000, 3, 1, '2023-10-04', 5),
(5, N'Nhẫn Bạc', 2, 700000, 20, 1, '2023-10-05', 22),
(6, N'Vòng Cổ Ngọc Trai', 4, 18000000, 2, 1, '2023-10-06', 3),
(7, N'Dây Chuyền Bạc', 2, 1200000, 30, 1, '2023-10-07', 35),
(8, N'Lắc Tay Vàng 18K', 1, 5500000, 8, 1, '2023-10-08', 10),
(9, N'Nhẫn Kim Cương', 3, 35000000, 1, 1, '2023-10-09', 2),
(10, N'Vòng Tay Đá Quý', 5, 2500000, 15, 1, '2023-10-10', 18);

Select * From SanPham

INSERT INTO LoaiSanPham (ID, Ten, LoiNhuan, DonViTinh) VALUES
(1, N'Vàng 18K', 20, N'Chiếc'),
(2, N'Bạc', 15, N'Chiếc'),
(3, N'Kim Cương', 30, N'Viên'),
(4, N'Ngọc Trai', 25, N'Chuỗi'),
(5, N'Đá Quý', 18, N'Viên');

Select * From LoaiSanPham

INSERT INTO KhachHang (ID, SoDienThoai, Diem) VALUES
(1, N'0987654321', 100),
(2, N'0912345678', 200),
(3, N'0923456789', 150),
(4, N'0934567890', 250),
(5, N'0945678901', 300);

Select * From KhachHang

INSERT INTO NhaCungCap (ID, SoDienThoai, DiaChi) VALUES
(1, N'0981234567', N'123 Đường 1, Quận 1, TP.HCM'),
(2, N'0972345678', N'456 Đường 2, Quận 2, TP.HCM'),
(3, N'0963456789', N'789 Đường 3, Quận 3, TP.HCM'),
(4, N'0954567890', N'321 Đường 4, Quận 4, TP.HCM'),
(5, N'0945678901', N'654 Đường 5, Quận 5, TP.HCM');

Select * From NhaCungCap

INSERT INTO LoaiDichVu (ID, TenLoai, DonGia) VALUES
(1, N'Dịch vụ Vàng', 10000000),
(2, N'Dịch vụ Bạc', 5000000),
(3, N'Dịch vụ Kim Cương', 20000000),
(4, N'Dịch vụ Đá Quý', 15000000),
(5, N'Dịch vụ Ngọc Trai', 12000000);

Select * From LoaiDichVu

INSERT INTO LichSuKho (ID, IDSanPham, SoLuongTruoc, LoaiGiaoDich, Ngay, SoLuongSau) VALUES
(1, 1, 15, N'Tăng', '2023-10-11', 10),
(2, 2, 30, N'Tăng', '2023-10-12', 25),
(3, 3, 7, N'Giảm', '2023-10-13', 5),
(4, 4, 5, N'Giảm', '2023-10-14', 3),
(5, 5, 22, N'Tăng', '2023-10-15', 20),
(6, 6, 3, N'Giảm', '2023-10-16', 2),
(7, 7, 35, N'Tăng', '2023-10-17', 30),
(8, 8, 10, N'Giảm', '2023-10-18', 8),
(9, 9, 2, N'Giảm', '2023-10-19', 1),
(10, 10, 18, N'Tăng', '2023-10-20', 15);

Select * From LichSuKho

INSERT INTO PhieuDichVu (ID, IDKhach, Ngay, IDDichVu, SoLuong, DonGia, TinhTrang, TongTien, TraTruoc, ConLai) VALUES
(1, 1, '2023-10-21', 1, 1, 10000000, N'Hoàn thành', 10000000, 5000000, 5000000),
(2, 2, '2023-10-22', 2, 2, 5000000, N'Chưa thanh toán', 10000000, 2000000, 8000000),
(3, 3, '2023-10-23', 3, 1, 20000000, N'Hoàn thành', 20000000, 2000000, 18000000),
(4, 4, '2023-10-24', 4, 1, 15000000, N'Chưa thanh toán', 15000000, 15000000, 0),
(5, 5, '2023-10-25', 5, 1, 12000000, N'Hoàn thành', 12000000, 6000000, 6000000);

Select * From PhieuDichVu

INSERT INTO PhieuBanHang (ID, IDKhach, IDSanPham, TenSanPham, SoLuong, DonViTinh, DonGia, ThanhTien, NgayBan) VALUES
(1, 1, 1, N'Nhẫn Vàng 18K', 2, N'Chiếc', 5000000, 10000000, '2023-10-10'),
(2, 2, 2, N'Lắc Tay Bạc', 3, N'Chiếc', 1500000, 4500000, '2023-10-11'),
(3, 3, 3, N'Dây Chuyền Vàng 24K', 1, N'Chiếc', 12000000, 12000000, '2023-10-12'),
(4, 4, 4, N'Khuyên Tai Kim Cương', 1, N'Chiếc', 25000000, 25000000, '2023-10-13'),
(5, 5, 5, N'Nhẫn Bạc', 4, N'Chiếc', 700000, 2800000, '2023-10-14');

Select * From PhieuBanHang

INSERT INTO PhieuMuaHang (ID, IDNhaCungCap, IDSanPham, IDLoai, NgayMua, SoLuong, DonGia, ThanhTien) VALUES
(1, 1, 1, 1, '2023-10-01', 5, 4500000, 22500000),
(2, 2, 2, 2, '2023-10-02', 10, 1300000, 13000000),
(3, 3, 3, 3, '2023-10-03', 2, 11000000, 22000000),
(4, 4, 4, 4, '2023-10-04', 3, 9000000, 27000000),
(5, 5, 5, 5, '2023-10-05', 7, 800000, 5600000);

Select * From PhieuMuaHang



