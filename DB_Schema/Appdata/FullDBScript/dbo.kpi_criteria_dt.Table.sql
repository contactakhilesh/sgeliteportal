USE [appdata]
GO
/****** Object:  Index [kpi_criteria_dt_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [kpi_criteria_dt_idx1] ON [dbo].[kpi_criteria_dt]
GO
/****** Object:  Table [dbo].[kpi_criteria_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[kpi_criteria_dt]
GO
/****** Object:  Table [dbo].[kpi_criteria_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kpi_criteria_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kpi_criteria_dt](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hd_row_id] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[etd_from] [datetime] NOT NULL,
	[etd_to] [datetime] NOT NULL,
	[inv_from] [datetime] NOT NULL,
	[inv_to] [datetime] NOT NULL,
 CONSTRAINT [PK_kpi_criteria_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[kpi_criteria_dt] TO  SCHEMA OWNER 
GO
/****** Object:  Index [kpi_criteria_dt_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[kpi_criteria_dt]') AND name = N'kpi_criteria_dt_idx1')
CREATE NONCLUSTERED INDEX [kpi_criteria_dt_idx1] ON [dbo].[kpi_criteria_dt]
(
	[hd_row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
