USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_port_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_port_mast](
	[PORT_ID] [varchar](10) NOT NULL,
	[PORT_NAME] [varchar](50) NOT NULL,
	[REGION_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_TYPE_ID] [varchar](1) NOT NULL,
	[ELITE_OFF] [varchar](20) NULL,
	[PROVINCE] [varchar](100) NULL,
	[customs_port_code] [varchar](10) NULL,
	[cert_type] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_port_mast] TO  SCHEMA OWNER 
GO
