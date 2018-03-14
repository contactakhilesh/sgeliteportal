USE [appdata]
GO
/****** Object:  Table [dbo].[broker_email_param]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[broker_email_param]
GO
/****** Object:  Table [dbo].[broker_email_param]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[broker_email_param]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[broker_email_param](
	[export_n] [numeric](10, 0) NULL,
	[param1] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[param2] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[param3] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[param4] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[param5] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[param6] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[broker_email_param] TO  SCHEMA OWNER 
GO
