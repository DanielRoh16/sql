--This will only change the name that appears on the Object Explorer.
EXEC sp_renamedb 'OldNameDB', 'Daniel_DW' 

SELECT name, physical_name, type_desc, state_desc, size FROM sys.master_files
WHERE database_id = DB_ID(N'daniel')

--1. Set the database to Single User
ALTER DATABASE daniel
SET SINGLE_USER WITH ROLLBACK IMMEDIATE

--2. modify the Logical Names
ALTER DATABASE daniel
MODIFY FILE (NAME = N'daniel', NEWNAME = N'Daniel_DW')
GO
ALTER DATABASE daniel
MODIFY FILE (NAME = N'daniel_log', NEWNAME = N'Daniel_DW_log')
GO

--3. detach database
EXEC sp_detach_db @dbname = N'daniel'
GO

--4. navigate database files and rename it

--5. attach renamed database
CREATE DATABASE Daniel_DW ON
	(FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Daniel_DW.mdf'),
	(FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Daniel_DW_log.ldf')
FOR ATTACH
GO


