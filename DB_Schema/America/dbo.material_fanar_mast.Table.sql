USE [AMERICA]
GO
/****** Object:  Table [dbo].[material_fanar_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[product_code] [varchar](20) NULL,
	[mat_fanar_code] [varchar](30) NULL,
	[packaging] [varchar](20) NULL,
	[code] [varchar](30) NULL,
	[product_plant_code] [varchar](10) NULL,
	[matcode] [varchar](30) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[material_fanar_mast] TO  SCHEMA OWNER 
GO
