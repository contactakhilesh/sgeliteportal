USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LSR_LOG](
	[lsr_no] [varchar](50) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[cust_id] [varchar](10) NULL,
	[invoice_n] [numeric](12, 0) NULL,
	[freight_rate] [numeric](10, 2) NULL,
	[reason] [varchar](50) NULL,
	[process_date] [datetime] NULL,
	[complete] [varchar](1) NULL
) ON [PRIMARY]

GO
