USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Query](
	[team_id] [varchar](10) NOT NULL,
	[event_id] [decimal](18, 0) NOT NULL,
	[event_seq] [decimal](18, 0) NOT NULL,
	[event_desc] [varchar](2000) NULL,
	[valid] [varchar](1) NULL,
	[next_team_id] [varchar](10) NULL,
	[next_event_id] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
