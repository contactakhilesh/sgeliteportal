USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_permit_cost_statement_dt_2014_01](
	[row_id] [numeric](18, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cost_statement_dt] [datetime] NOT NULL,
	[validity_period] [int] NOT NULL,
	[expiry_dt] [datetime] NOT NULL,
	[hs_code] [varchar](10) NOT NULL,
	[match_product_by] [varchar](20) NOT NULL,
	[criterio] [numeric](5, 2) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
	[pref_code] [varchar](5) NULL
) ON [PRIMARY]

GO
