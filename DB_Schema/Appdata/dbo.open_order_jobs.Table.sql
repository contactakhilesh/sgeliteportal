USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [open_order_jobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[export_ref_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) NULL,
	[user_seq20] [varchar](10) NULL,
	[actual_sail_d] [datetime] NOT NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]

GO
