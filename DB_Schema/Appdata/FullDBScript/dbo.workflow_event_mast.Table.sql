USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[workflow_event_mast]') AND type in (N'U'))
ALTER TABLE [dbo].[workflow_event_mast] DROP CONSTRAINT IF EXISTS [DF_workflow_event_mast_next_event_id]
GO
/****** Object:  Table [dbo].[workflow_event_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[workflow_event_mast]
GO
/****** Object:  Table [dbo].[workflow_event_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[workflow_event_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[workflow_event_mast](
	[team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[event_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[valid] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_event_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_workflow_event_mast] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[workflow_event_mast] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[workflow_event_mast] TO [public] AS [dbo]
GO
