IF EXISTS
	(
	 SELECT name FROM master.dbo.sysdatabases
	 WHERE name = N'New_Database'
	)
DROP DATABASE [New_Database]