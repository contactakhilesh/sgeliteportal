USE [appdata]
GO
/****** Object:  Table [dbo].[country_region_fanar_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[country_region_fanar_mast]
GO
/****** Object:  Table [dbo].[country_region_fanar_mast]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country_region_fanar_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[country_region_fanar_mast](
	[Plant_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_fanar_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[region_fanar_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[country_region_fanar_mast] TO  SCHEMA OWNER 
GO
