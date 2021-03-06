USE [appdata]
GO
/****** Object:  Table [dbo].[temp_role2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_role2]
GO
/****** Object:  Table [dbo].[temp_role2]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_role2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_role2](
	[custid] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[roleid] [numeric](18, 0) NOT NULL,
	[rolename] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[username] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_role2] TO  SCHEMA OWNER 
GO
