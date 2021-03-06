USE [appdata]
GO
/****** Object:  Table [dbo].[ascii_table]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[ascii_table]
GO
/****** Object:  Table [dbo].[ascii_table]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ascii_table]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ascii_table](
	[ascii_code] [int] NULL,
	[char_value] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[default_value] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_value] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ascii_table] TO  SCHEMA OWNER 
GO
