USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_freight_rate_dt_twodecimal](
	[row_id] [numeric](18, 0) NOT NULL,
	[pol_id] [varchar](10) NOT NULL,
	[pod_id] [varchar](10) NOT NULL,
	[amt_20] [numeric](10, 2) NULL,
	[amt_40] [numeric](10, 2) NULL,
	[freight] [numeric](5, 4) NULL,
	[insurance] [numeric](5, 4) NULL
) ON [PRIMARY]

GO
