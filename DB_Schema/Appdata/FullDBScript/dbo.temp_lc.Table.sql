USE [appdata]
GO
/****** Object:  Table [dbo].[temp_lc]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_lc]
GO
/****** Object:  Table [dbo].[temp_lc]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_lc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_lc](
	[lc_nc_tran_no] [decimal](10, 0) NOT NULL,
	[NC_job_n] [numeric](10, 0) NOT NULL,
	[nc_cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[lc_d_prepared_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_lc] TO  SCHEMA OWNER 
GO
