USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [DwUser1]    Script Date: 3/14/2018 6:00:02 AM ******/
CREATE LOGIN [DwUser1] WITH PASSWORD=N'voeJD+Wn8b1Y+l8O3r1Em7WQ62LMDCIP7JvuQMtO/n8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [DwUser1] DISABLE
GO
