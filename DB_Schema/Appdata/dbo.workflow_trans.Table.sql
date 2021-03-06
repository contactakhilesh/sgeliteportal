USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [workflow_trans](
	[job_n] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[team_id] [varchar](10) NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[assign_to_user] [varchar](50) NULL,
	[assigned_by] [varchar](20) NULL,
	[assigned_dt] [datetime] NULL,
	[confirmed_by_user] [varchar](20) NULL,
	[confirmed_dt] [datetime] NULL,
	[remarks] [varchar](3000) NULL,
	[event_desc] [varchar](2000) NULL,
	[next_team_id] [varchar](10) NULL,
	[next_event_id] [numeric](18, 0) NULL,
	[reprint_ffi] [varchar](5) NULL,
 CONSTRAINT [PK_workflow_trans] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
