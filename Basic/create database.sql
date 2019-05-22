IF EXISTS
	(
	 SELECT name FROM master.dbo.sysdatabases
	 WHERE name = N'New_Database'
	)
BEGIN
	SELECT 'Database name already exists!' AS warning
END
ELSE
BEGIN
	CREATE DATABASE [New_Database]
	SELECT 'New Database created!'
END