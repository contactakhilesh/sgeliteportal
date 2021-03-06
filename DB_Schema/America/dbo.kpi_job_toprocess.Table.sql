USE [AMERICA]
GO
/****** Object:  Table [dbo].[kpi_job_toprocess]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kpi_job_toprocess](
	[export_n] [numeric](10, 0) NOT NULL,
	[upd_dt] [datetime] NULL,
 CONSTRAINT [pk_kpi_job_toprocess] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[kpi_job_toprocess] TO  SCHEMA OWNER 
GO
