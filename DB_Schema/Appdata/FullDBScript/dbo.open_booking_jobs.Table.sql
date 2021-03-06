USE [appdata]
GO
/****** Object:  Table [dbo].[open_booking_jobs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[open_booking_jobs]
GO
/****** Object:  Table [dbo].[open_booking_jobs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_booking_jobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[open_booking_jobs](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_rcv_d] [datetime] NULL,
	[srp_process_date] [datetime] NULL,
	[lt_cnt] [int] NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[open_booking_jobs] TO  SCHEMA OWNER 
GO
