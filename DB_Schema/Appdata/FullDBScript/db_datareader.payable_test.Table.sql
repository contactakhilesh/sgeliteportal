USE [appdata]
GO
/****** Object:  Table [db_datareader].[payable_test]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [db_datareader].[payable_test]
GO
/****** Object:  Table [db_datareader].[payable_test]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[db_datareader].[payable_test]') AND type in (N'U'))
BEGIN
CREATE TABLE [db_datareader].[payable_test](
	[ref_no] [numeric](10, 0) NOT NULL,
	[chg_des] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cost_ttl_amt_usd] [numeric](25, 7) NULL,
	[cost_ttl_amt_sgd] [numeric](25, 7) NULL,
	[sell_ttl_amt_usd] [numeric](25, 8) NULL,
	[sell_ttl_amt_sgd] [numeric](13, 2) NULL,
	[local_curr] [numeric](26, 8) NULL,
	[sell_sgd] [numeric](23, 8) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [db_datareader].[payable_test] TO  SCHEMA OWNER 
GO
