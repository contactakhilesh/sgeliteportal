USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [open_booking_jobs](
	[cust_id] [varchar](10) NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) NULL,
	[order_rcv_d] [datetime] NULL,
	[srp_process_date] [datetime] NULL,
	[lt_cnt] [int] NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]

GO
