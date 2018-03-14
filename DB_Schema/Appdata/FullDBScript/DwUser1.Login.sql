USE [master]
GO
/****** Object:  Login [DwUser1]    Script Date: 3/14/2018 6:12:00 AM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'DwUser1')
DROP LOGIN [DwUser1]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [DwUser1]    Script Date: 3/14/2018 6:12:00 AM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'DwUser1')
CREATE LOGIN [DwUser1] WITH PASSWORD=N'1JORD/+7GFJOUoZIu4shvs70gKYiuF5SzUniXx67mCA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [DwUser1] DISABLE
GO
