--create table example
CREATE TABLE Customer
 (
	CustomerKey int NOT NULL,
	CustomerName varchar(150) NOT NULL,
	DateOfBirth date NOT NULL,
	EmailAddress nvarchar(50) NULL,
	Profession nvarchar(100) NULL
 )
GO
--Create Table with Identity Column
CREATE TABLE Employee
  (
	EmployeeKey int IDENTITY(1,1) NOT NULL,
	EmployeeName varchar(50) NOT NULL,
	DateOfBirth date NOT NULL,
	EmailAddress nvarchar(50) NOT NULL,
	Department nvarchar(50) NOT NULL,
	YearlyIncome money NOT NULL,
	Hobby nvarchar(50) NULL
  )
GO
--Create table with Primary Key
CREATE TABLE Client
  (
	ID int IDENTITY(1,1) NOT NULL,
	ClientKey int NOT NULL PRIMARY KEY,
	ClientName varchar(50) NOT NULL,
	EmailAddress nvarchar(50) NULL
  )