USE [appdata]
GO
/****** Object:  Index [export_jobs_alerts_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_jobs_alerts_idx] ON [dbo].[export_jobs_alerts]
GO
/****** Object:  Table [dbo].[export_jobs_alerts]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[export_jobs_alerts]
GO
/****** Object:  Table [dbo].[export_jobs_alerts]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[export_jobs_alerts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[export_jobs_alerts](
	[alert_type] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[process_date] [datetime] NOT NULL,
	[assigned_to_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[export_jobs_alerts] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [export_jobs_alerts_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[export_jobs_alerts]') AND name = N'export_jobs_alerts_idx')
CREATE NONCLUSTERED INDEX [export_jobs_alerts_idx] ON [dbo].[export_jobs_alerts]
(
	[alert_type] ASC,
	[cust_id] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
