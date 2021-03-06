USE [appdata]
GO
/****** Object:  Table [dbo].[gz_hk_request]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[gz_hk_request]
GO
/****** Object:  Table [dbo].[gz_hk_request]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gz_hk_request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gz_hk_request](
	[title] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[application] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assigned_to] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[description] [char](4099) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dept_code] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[reqested_dt] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[requested_by] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[gz_hk_request] TO  SCHEMA OWNER 
GO
