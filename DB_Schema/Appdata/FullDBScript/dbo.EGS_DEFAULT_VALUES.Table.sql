USE [appdata]
GO
/****** Object:  Table [dbo].[EGS_DEFAULT_VALUES]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EGS_DEFAULT_VALUES]
GO
/****** Object:  Table [dbo].[EGS_DEFAULT_VALUES]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EGS_DEFAULT_VALUES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EGS_DEFAULT_VALUES](
	[tab_location] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[parent_acct_id] [int] NOT NULL,
	[column_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[default_value] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[different_logic] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EGS_DEFAULT_VALUES] TO  SCHEMA OWNER 
GO
