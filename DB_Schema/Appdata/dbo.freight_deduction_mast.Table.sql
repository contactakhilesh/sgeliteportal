USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [freight_deduction_mast](
	[cust_id] [varchar](10) NOT NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_id] [varchar](10) NOT NULL,
	[port_disc_id] [varchar](10) NOT NULL,
	[cont_size] [varchar](2) NOT NULL,
	[freight_amt_usd] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
