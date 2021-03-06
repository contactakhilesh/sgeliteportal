USE [appdata]
GO
/****** Object:  Table [dbo].[outstanding_gi_jobs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[outstanding_gi_jobs]
GO
/****** Object:  Table [dbo].[outstanding_gi_jobs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[outstanding_gi_jobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[outstanding_gi_jobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[export_ref_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assign_to_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gi_chemical_d] [datetime] NULL,
	[etd] [datetime] NOT NULL,
	[run_date] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[outstanding_gi_jobs] TO  SCHEMA OWNER 
GO
