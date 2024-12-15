--use Net

create table Class
(
	ClassID int IDENTITY(1,1) not null primary key,
	ClassName varchar(20)
)

create table Student
(
	StudentID varchar(20) primary key,
	Name varchar(40),
	Gender bit,
	DateOfBirth datetime,
	ClassID int foreign key references dbo.Class (ClassID)
)

insert dbo.Class values
('LSH1'),
('LSH2'),
('LSH3')

insert dbo.Student values
('001', 'NVA', 0, '20210604', 1),
('002', 'NVB', 1, '20210605', 2),
('003', 'NVC', 1, '20210605', 3)