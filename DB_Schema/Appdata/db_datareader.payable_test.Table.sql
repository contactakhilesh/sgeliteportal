USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [payable_test](
	[ref_no] [numeric](10, 0) NOT NULL,
	[chg_des] [varchar](40) NULL,
	[cost_ttl_amt_usd] [numeric](25, 7) NULL,
	[cost_ttl_amt_sgd] [numeric](25, 7) NULL,
	[sell_ttl_amt_usd] [numeric](25, 8) NULL,
	[sell_ttl_amt_sgd] [numeric](13, 2) NULL,
	[local_curr] [numeric](26, 8) NULL,
	[sell_sgd] [numeric](23, 8) NULL
) ON [PRIMARY]

GO
