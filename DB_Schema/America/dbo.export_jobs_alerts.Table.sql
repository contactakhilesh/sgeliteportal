USE [AMERICA]
GO
/****** Object:  Table [dbo].[export_jobs_alerts]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[export_jobs_alerts](
	[alert_type] [char](50) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](50) NOT NULL,
	[process_date] [datetime] NOT NULL,
	[assigned_to_user] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[export_jobs_alerts] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [export_jobs_alerts_idx]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [export_jobs_alerts_idx] ON [dbo].[export_jobs_alerts]
(
	[alert_type] ASC,
	[cust_id] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
