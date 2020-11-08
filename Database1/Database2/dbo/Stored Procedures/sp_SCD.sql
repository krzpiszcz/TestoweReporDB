
CREATE proc sp_SCD as 
begin

	drop table if exists [Employees]

	create table [Employees]
	(
		[EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
		[EmployeeNationalIDAlternateKey] [nvarchar](15) NULL,
		[FirstName] [nvarchar](50) NOT NULL,
		[LastName] [nvarchar](50) NOT NULL,
		[HireDate] [date] NULL,
		[BirthDate] [date] NULL,
		[LoginID] [nvarchar](256) NULL,
		[EmailAddress] [nvarchar](50) NULL,
		[Phone] [nvarchar](25) NULL,
		[MaritalStatus] [nchar](1) NULL,
		[DepartmentName] [nvarchar](50) NULL,
		[StartDate] [date] NULL,
		[EndDate] [date] NULL,
		[Status] [nvarchar](50) NULL,

	)
	SET IDENTITY_INSERT [Employees] ON

	insert into [Employees](EmployeeKey,	EmployeeNationalIDAlternateKey,	FirstName,	LastName,	HireDate,	BirthDate,
		LoginID,	EmailAddress,	Phone,	MaritalStatus,	DepartmentName,	StartDate,	EndDate,	Status)
	select
		top 10
		EmployeeKey,
		EmployeeNationalIDAlternateKey,
		FirstName,
		LastName,
		HireDate,
		BirthDate,
		LoginID,
		EmailAddress,
		Phone,
		MaritalStatus,
		DepartmentName,
		StartDate,
		EndDate,
		Status
	from AdventureWorksDW.dbo.DimEmployee 

	-- select * from Employees


	drop table if exists [EmployeeSource]

	create table [EmployeeSource]
	(
		[EmployeeID] [nvarchar](15) NULL,
		[FirstName] [nvarchar](50) NOT NULL,
		[LastName] [nvarchar](50) NOT NULL,
		[HireDate] [date] NULL,
		[BirthDate] [date] NULL,
		[LoginID] [nvarchar](256) NULL,
		[EmailAddress] [nvarchar](50) NULL,
		[Phone] [nvarchar](25) NULL,
		[MaritalStatus] [nchar](1) NULL,
		[DepartmentName] [nvarchar](50) NULL,
		[StartDate] [date] NULL,
		[EndDate] [date] NULL,
		[Status] [nvarchar](50) NULL,

	)

	insert into [EmployeeSource](EmployeeID,FirstName,	LastName,	HireDate,	BirthDate,
		LoginID,	EmailAddress,	Phone,	MaritalStatus,	DepartmentName,	StartDate,	EndDate,	Status)

	select 
		EmployeeID = EmployeeNationalIDAlternateKey,
		FirstName,
		LastName,
		HireDate,
		BirthDate,
		LoginID,
		EmailAddress,
		[Phone], 
		[MaritalStatus], 
		DepartmentName,
		cast(getdate() as date) StartDate,
		null EndDate,
		Status
	from Employees
	where EmployeeKey in (2,9)

end
