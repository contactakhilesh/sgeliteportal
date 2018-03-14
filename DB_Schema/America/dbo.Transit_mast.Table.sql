USE [AMERICA]
GO
/****** Object:  Table [dbo].[Transit_mast]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transit_mast](
	[Port_load_id] [varchar](10) NULL,
	[port_disc_id] [varchar](10) NULL,
	[Carrier_id] [varchar](10) NULL,
	[transit_days] [numeric](4, 0) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Transit_mast] TO  SCHEMA OWNER 
GO
