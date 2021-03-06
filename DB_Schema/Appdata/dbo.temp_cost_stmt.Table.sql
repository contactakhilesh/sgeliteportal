USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_cost_stmt](
	[cust_id] [varchar](10) NULL,
	[product_id] [varchar](20) NULL,
	[comp_name] [varchar](50) NULL,
	[cert_type] [varchar](2) NULL,
	[country] [varchar](100) NULL,
	[technical_name] [varchar](200) NULL,
	[cost_statement_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[hs_code] [varchar](10) NULL,
	[criterio] [numeric](5, 2) NULL,
	[origin_cri1] [varchar](25) NULL,
	[origin_cri2] [varchar](25) NULL,
	[origin_cri3] [varchar](25) NULL,
	[certdesc_hscode] [varchar](10) NULL
) ON [PRIMARY]

GO
