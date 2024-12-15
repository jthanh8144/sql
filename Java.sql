create table Table1
(
	Id int primary key,
	Name nvarchar(20),
	Addresss nvarchar(20),
	Total int
)

insert dbo.Table1 values
(1, 'Lê A', 'Dana', 10),
(2, 'Trần B', 'QNam', 20),
(3, 'Mạc C', 'QBinh', 30)

--use DATA
--create table HOCVIEN
--(
--	MaHocVien nvarchar(10),
--	TenHocVien nvarchar(50),
--	NgaySinh datetime,
--	GioiTinh nvarchar(3),
--	DiemThi float
--)

--insert dbo.HOCVIEN values ('1', 'Thanh', '11/1/2001', 'Nam', 3.19)