USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [material_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[product_code] [varchar](20) NULL,
	[mat_fanar_code] [varchar](30) NULL,
	[packaging] [varchar](20) NULL,
	[code] [varchar](30) NULL,
	[product_plant_code] [varchar](10) NULL
) ON [PRIMARY]

GO
