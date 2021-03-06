USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [export_jobs_alerts](
	[alert_type] [char](50) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](50) NOT NULL,
	[process_date] [datetime] NOT NULL,
	[assigned_to_user] [varchar](50) NULL
) ON [PRIMARY]

GO
