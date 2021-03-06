USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [workflow_event_mast](
	[team_id] [varchar](10) NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[event_desc] [varchar](2000) NULL,
	[valid] [varchar](1) NULL,
	[next_team_id] [varchar](10) NULL,
	[next_event_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_workflow_event_mast] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
