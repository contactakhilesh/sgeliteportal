USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_export](
	[cust_id] [varchar](10) NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_desc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](40) NOT NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) NULL,
	[etd] [datetime] NOT NULL
) ON [PRIMARY]

GO
