USE [AMERICA]
GO
/****** Object:  Table [dbo].[xom_carrier_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xom_carrier_mast](
	[carrier_name] [varchar](70) NULL,
	[carrier_id] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[xom_carrier_mast] TO  SCHEMA OWNER 
GO
