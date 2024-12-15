create table THANHVIEN
(
	MaThanhVien varchar(8),
	TenThanhVien varchar(100),
	NgaySinh date,
	DiaChi varchar(100),
	Email varchar(50),
	SoDienThoai varchar(15),
	ChiPhiNhan float
)

insert dbo.THANHVIEN values ('TV00000', 'Vo Van Thanh', '20011201', 'Quang Nam', 'thanhvo618@gmail.com', '0782378407', 100)

select * from THANHVIEN
select ChiPhiNhan from THANHVIEN where MaThanhVien = 'TV00001'

create table DonHang
(
	ID int primary key IDENTITY (1,1),
	TenMatHang varchar(MAX),
	SoTien int,
	TenNguoiMua varchar(MAX)
)

insert into dbo.DonHang (TenMatHang, SoTien, TenNguoiMua) output inserted.ID values ('Hang 0', 10000, 'Vo Van Thanh')
select * from dbo.DonHang
select count(*) as SL from DonHang where TenMatHang = 'Thit ba chi'
select * from DonHang where TenNguoiMua = 'Mai Van Ha'

select * from DonHang where TenMatHang != 'Thit ba chi' and (TenNguoiMua = 'Pham Minh Tuan' or TenNguoiMua = 'Dang Duy Thang')