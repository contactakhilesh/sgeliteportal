USE [master]
GO
/****** Object:  Database [appdata]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP DATABASE IF EXISTS [appdata]
GO
/****** Object:  Database [appdata]    Script Date: 3/14/2018 6:12:00 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'appdata')
BEGIN
CREATE DATABASE [appdata] ON  PRIMARY 
( NAME = N'appdata', FILENAME = N'D:\Database\appdata.mdf' , SIZE = 126947584KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'applog', FILENAME = N'D:\Database\appdata_log.ldf' , SIZE = 1395264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 COLLATE SQL_Latin1_General_CP1_CI_AS
END

GO
ALTER DATABASE [appdata] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [appdata].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [appdata] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [appdata] SET ANSI_NULLS ON 
GO
ALTER DATABASE [appdata] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [appdata] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [appdata] SET ARITHABORT OFF 
GO
ALTER DATABASE [appdata] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [appdata] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [appdata] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [appdata] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [appdata] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [appdata] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [appdata] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [appdata] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [appdata] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [appdata] SET  DISABLE_BROKER 
GO
ALTER DATABASE [appdata] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [appdata] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [appdata] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [appdata] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [appdata] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [appdata] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [appdata] SET PARTNER TIMEOUT 10 
GO
ALTER DATABASE [appdata] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [appdata] SET RECOVERY FULL 
GO
ALTER DATABASE [appdata] SET  MULTI_USER 
GO
ALTER DATABASE [appdata] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [appdata] SET DB_CHAINING OFF 
GO
ALTER AUTHORIZATION ON DATABASE::[appdata] TO [sa]
GO
ALTER DATABASE [appdata] SET  READ_WRITE 
GO
