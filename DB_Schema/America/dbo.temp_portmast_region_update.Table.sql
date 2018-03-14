USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_portmast_region_update]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_portmast_region_update](
	[port_id] [varchar](10) NULL,
	[region_id] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_portmast_region_update] TO  SCHEMA OWNER 
GO
