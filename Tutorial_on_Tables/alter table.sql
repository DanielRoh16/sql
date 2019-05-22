--add new column
ALTER TABLE Employee
ADD Height real NULL

--delete column
ALTER TABLE Employee
DROP COLUMN Height

--change column data type
ALTER TABLE Employee
ALTER COLUMN EmployeeName nvarchar(100) NULL

--Add primary key
ALTER TABLE Employee
ADD CONSTRAINT PrimaryKey PRIMARY KEY (EmployeeKey)
--drop primary key
ALTER TABLE Employee
DROP CONSTRAINT PrimaryKey