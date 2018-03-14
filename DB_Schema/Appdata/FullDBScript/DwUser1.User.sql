USE [appdata]
GO
/****** Object:  User [DwUser1]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP USER IF EXISTS [DwUser1]
GO
/****** Object:  User [DwUser1]    Script Date: 3/14/2018 6:12:00 AM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'DwUser1')
CREATE USER [DwUser1] FOR LOGIN [DwUser1] WITH DEFAULT_SCHEMA=[db_datareader]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DwUser1]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DwUser1]
GO
