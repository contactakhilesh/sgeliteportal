USE [appdata]
GO
/****** Object:  Table [dbo].[HBL_TEMP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[HBL_TEMP]
GO
/****** Object:  Table [dbo].[HBL_TEMP]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HBL_TEMP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HBL_TEMP](
	[EXPORT_N] [decimal](18, 0) NULL,
	[LINE_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS] [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINEPKGS] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINEDESC] [varchar](6000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_WT] [numeric](18, 3) NULL,
	[LINE_M3] [numeric](12, 4) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[HBL_TEMP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[HBL_TEMP] TO [public] AS [dbo]
GO
