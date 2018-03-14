USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [country_region_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[country_id] [varchar](10) NULL,
	[country_fanar_code] [varchar](30) NULL,
	[region_fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
