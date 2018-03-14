USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_mdc](
	[cust_ord_no] [varchar](40) NULL,
	[ord_rcvd_dt] [datetime] NULL,
	[booked_dt] [datetime] NULL,
	[export_n] [numeric](10, 0) NULL
) ON [PRIMARY]

GO
