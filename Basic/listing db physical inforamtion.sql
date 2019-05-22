SELECT name, physical_name, type_desc, state_desc, size 
FROM sys.master_files
WHERE database_id = DB_ID(N'daniel')
GO