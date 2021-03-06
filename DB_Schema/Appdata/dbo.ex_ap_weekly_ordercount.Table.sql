USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ex_ap_weekly_ordercount](
	[start_date] [varchar](50) NOT NULL,
	[end_date] [varchar](50) NOT NULL,
	[week] [int] NOT NULL,
	[order_count] [numeric](10, 0) NULL,
	[ytd] [numeric](18, 0) NULL,
	[year] [numeric](5, 0) NOT NULL
) ON [PRIMARY]

GO
