--use QLSV

create table LopSH
(
	ID_Lop int IDENTITY(1,1) not null primary key,
	NameLop nvarchar(20)
)

create table SV
(
	MSSV nvarchar(10) primary key,
	NameSV nvarchar(40),
	Gender bit,
	NS datetime,
	ID_Lop int foreign key references dbo.LopSH (ID_Lop)
)

insert dbo.LopSH values
('LSH1'),
('LSH2'),
('LSH3')

insert dbo.SV values
('001', 'NVA', 0, '20210604', 1),
('002', 'NVB', 1, '20210605', 2),
('003', 'NVC', 1, '20210605', 3)

--select object_id,name from sys.objects where type='u' and name ='SV'

--select cl.name as 'Tên column', tp.name as 'Kiểu dữ liệu',cl.max_length 
--	from sys.all_columns cl join sys.types tp on cl.user_type_id = tp.user_type_id where object_id = 357576312

--select sys.all_columns.name from sys.all_columns where object_id = (select object_id from sys.objects where type='u' and name ='SV')
