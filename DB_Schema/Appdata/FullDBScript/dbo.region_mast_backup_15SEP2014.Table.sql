USE [appdata]
GO
/****** Object:  Table [dbo].[region_mast_backup_15SEP2014]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[region_mast_backup_15SEP2014]
GO
/****** Object:  Table [dbo].[region_mast_backup_15SEP2014]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[region_mast_backup_15SEP2014]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[region_mast_backup_15SEP2014](
	[REGION_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REGION_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SORT_K] [numeric](5, 0) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[region_mast_backup_15SEP2014] TO  SCHEMA OWNER 
GO
