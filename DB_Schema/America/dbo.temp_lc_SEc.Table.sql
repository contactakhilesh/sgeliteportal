USE [AMERICA]
GO
/****** Object:  Table [dbo].[temp_lc_SEc]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_lc_SEc](
	[lc_nc_tran_no] [decimal](10, 0) NOT NULL,
	[NC_job_n] [numeric](10, 0) NOT NULL,
	[nc_cust_id] [varchar](10) NOT NULL,
	[lc_d_prepared_by] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[temp_lc_SEc] TO  SCHEMA OWNER 
GO
