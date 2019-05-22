--Query to get Databases names 
USE master
GO
SELECT name FROM sys.databases

--Using stored procedure
EXEC sp_databases