USE [appdata]
GO
/****** Object:  Table [dbo].[kpi_job_toprocess]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[kpi_job_toprocess]
GO
/****** Object:  Table [dbo].[kpi_job_toprocess]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kpi_job_toprocess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kpi_job_toprocess](
	[export_n] [numeric](10, 0) NOT NULL,
	[upd_dt] [datetime] NULL,
 CONSTRAINT [pk_kpi_job_toprocess] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[kpi_job_toprocess] TO  SCHEMA OWNER 
GO
