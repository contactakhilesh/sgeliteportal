USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_lc_SEc](
	[lc_nc_tran_no] [decimal](10, 0) NOT NULL,
	[NC_job_n] [numeric](10, 0) NOT NULL,
	[nc_cust_id] [varchar](10) NOT NULL,
	[lc_d_prepared_by] [varchar](10) NULL
) ON [PRIMARY]

GO
