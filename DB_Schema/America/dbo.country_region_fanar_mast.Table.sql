USE [AMERICA]
GO
/****** Object:  Table [dbo].[country_region_fanar_mast]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country_region_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[country_id] [varchar](10) NULL,
	[country_fanar_code] [varchar](30) NULL,
	[region_fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[country_region_fanar_mast] TO  SCHEMA OWNER 
GO
