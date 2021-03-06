USE [appdata]
GO
/****** Object:  Table [dbo].[open_order_jobs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[open_order_jobs]
GO
/****** Object:  Table [dbo].[open_order_jobs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_order_jobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[open_order_jobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[export_ref_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_seq20] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[actual_sail_d] [datetime] NOT NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[open_order_jobs] TO  SCHEMA OWNER 
GO
