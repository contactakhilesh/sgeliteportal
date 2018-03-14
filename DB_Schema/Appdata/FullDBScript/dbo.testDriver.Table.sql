USE [appdata]
GO
/****** Object:  Table [dbo].[testDriver]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[testDriver]
GO
/****** Object:  Table [dbo].[testDriver]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[testDriver]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[testDriver](
	[field1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[field2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[testDriver] TO  SCHEMA OWNER 
GO
