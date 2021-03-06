USE [appdata]
GO
/****** Object:  Table [dbo].[XML_XOM_CHECK_LTO]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_XOM_CHECK_LTO]
GO
/****** Object:  Table [dbo].[XML_XOM_CHECK_LTO]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_CHECK_LTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_XOM_CHECK_LTO](
	[from_SO_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[from_LTO_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[to_SO_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[to_LTO_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cancel] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_XOM_CHECK_LTO] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_XOM_CHECK_LTO] TO [public] AS [dbo]
GO
