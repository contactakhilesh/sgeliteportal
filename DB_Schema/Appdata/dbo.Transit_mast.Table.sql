USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Transit_mast](
	[Port_load_id] [varchar](10) NULL,
	[port_disc_id] [varchar](10) NULL,
	[Carrier_id] [varchar](10) NULL,
	[transit_days] [numeric](4, 0) NULL
) ON [PRIMARY]

GO
