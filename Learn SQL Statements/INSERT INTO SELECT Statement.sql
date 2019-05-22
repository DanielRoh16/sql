USE Daniel_DW
GO
--insert data from AdventureWorksDW2017(DimEmployee) to Daniel_DW(Employee)
INSERT INTO dbo.Employee(EmployeeName, DateOfBirth, EmailAddress, Department, YearlyIncome, Hobby, Height)
SELECT FirstName, BirthDate, EmailAddress, DepartmentName, BaseRate, Title, VacationHours FROM AdventureWorksDW2017.dbo.DimEmployee
