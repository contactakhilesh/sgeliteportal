USE [appdata]
GO
/****** Object:  Table [dbo].[temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp]
GO
/****** Object:  Table [dbo].[temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp](
	[job_n] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[assign_to_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assigned_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assigned_dt] [datetime] NULL,
	[confirmed_by_user] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[confirmed_dt] [datetime] NULL,
	[remarks] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_event_id] [numeric](18, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp] TO  SCHEMA OWNER 
GO
