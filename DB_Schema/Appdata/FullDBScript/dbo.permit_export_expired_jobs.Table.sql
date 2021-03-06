USE [appdata]
GO
/****** Object:  Table [dbo].[permit_export_expired_jobs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_export_expired_jobs]
GO
/****** Object:  Table [dbo].[permit_export_expired_jobs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_export_expired_jobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_export_expired_jobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[export_ref_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pmt_end_d] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_seq20] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_export_expired_jobs] TO  SCHEMA OWNER 
GO
