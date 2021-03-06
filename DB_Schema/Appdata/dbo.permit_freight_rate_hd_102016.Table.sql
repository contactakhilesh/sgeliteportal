USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_freight_rate_hd_102016](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[country_id] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[effective_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL
) ON [PRIMARY]

GO
