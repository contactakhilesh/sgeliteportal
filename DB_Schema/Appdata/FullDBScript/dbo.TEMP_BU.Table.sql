USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_BU]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_BU]
GO
/****** Object:  Table [dbo].[TEMP_BU]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_BU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_BU](
	[bu_parent_id] [int] NULL,
	[bu_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_BU] TO  SCHEMA OWNER 
GO
