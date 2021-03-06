USE [appdata]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Query]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Query](
	[team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_id] [decimal](18, 0) NOT NULL,
	[event_seq] [decimal](18, 0) NOT NULL,
	[event_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[valid] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_event_id] [decimal](18, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Query] TO  SCHEMA OWNER 
GO
