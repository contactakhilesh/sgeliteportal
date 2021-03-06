USE [appdata]
GO
/****** Object:  Table [dbo].[EGS_SWITCHES]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EGS_SWITCHES]
GO
/****** Object:  Table [dbo].[EGS_SWITCHES]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EGS_SWITCHES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EGS_SWITCHES](
	[process_name] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[switch_status] [int] NOT NULL,
	[vend_cust_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[process_type] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EGS_SWITCHES] TO  SCHEMA OWNER 
GO
