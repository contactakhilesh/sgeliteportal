USE [appdata]
GO
/****** Object:  Table [dbo].[office_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[office_master]
GO
/****** Object:  Table [dbo].[office_master]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[office_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[office_master](
	[mapmid] [float] NULL,
	[officecode] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hqofficecode] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[description] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ipaddress] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[adminemail] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[valid] [float] NULL,
	[lastupdate] [datetime] NULL,
	[seaconnectdbEnv] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[portCode] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seaconnectDBName] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seaconnectDBIP] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[iojt_email_add] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[office_master] TO  SCHEMA OWNER 
GO
